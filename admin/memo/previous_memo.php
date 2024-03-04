<?php if($_settings->chk_flashdata('success')): ?>
<script>
	alert_toast("<?php echo $_settings->flashdata('success') ?>",'success')
</script>
<?php endif;?>

<?php
if(isset($_GET['id']) && $_GET['id'] > 0){
	/* require_once('../../config.php'); */
    $qry = $conn->query("SELECT * from `uploads` where id = '{$_GET['id']}' ");
    if($qry->num_rows > 0){
        foreach($qry->fetch_assoc() as $k => $v){
            $$k=$v;
        }
    }
}
?>

<style>
	.table tbody tr td {
		padding: 12px !important;
	}
	
</style>

<?php if($_settings->userdata('type') != 3): ?>
<div class="card card-outline card-primary">
	<div class="card-body">
		<form action="" id="upload-form">
			<input type="hidden" name ="id" value="<?php echo isset($id) ? $id : '' ?>">
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<div class="form-group">
							<label for="title" class="control-label">Title</label>
							<input name="title" id="title" type="text" class="form-control" value="<?php echo isset($title) ? $title : ''; ?>" required/>
						</div>
                    </div>
                    <div class="col-md-3">
						<div class="form-group">
							<label for="date_issuance" class="control-label">Date issuance</label>
							<input type="date" id="date_issuance" class="form-control" required name="date_issuance" value="<?php echo isset($date_issuance) ? date("Y-m-d",strtotime($date_issuance)) : '' ?>">
						</div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="" class="control-label">Attachment</label>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input rounded-circle" id="customFile" name="img" onchange="displayImg(this, $(this))">
                                <?php
                                    $upload_path = isset($upload_path) ? $upload_path : '';
                                    $filename = $upload_path ? basename($upload_path) : '';
                                ?>
                                <label class="custom-file-label" for="customFile" data-value="<?php echo $upload_path; ?>" required>
                                    <!-- Choose file: --> <?php echo $filename; ?>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="card" style="margin-top: 28px;">
                            <button class="btn btn-info" style="height: 38px;" form="upload-form">Upload</button>
                        </div>
                    </div>
				</div>
				<p>Please note: Our system automatically removes any memo lists older than five years.</p>
			</div>
		</form>
	</div>
</div>
<?php endif; ?>


<?php
// Delete records older than 5 years from the current date -denden
$delete_date = date('Y-m-d', strtotime('-5 years'));
$conn->query("DELETE FROM `uploads` WHERE date_issuance < '{$delete_date}'");

// Fetch and distinct years from the database -denden
$qry_years = $conn->query("SELECT DISTINCT YEAR(date_issuance) AS year FROM `uploads` ORDER BY year DESC");
?>

<?php if($qry_years->num_rows > 0): ?>
    <?php while($year_row = $qry_years->fetch_assoc()): ?>
        <div class="card">
            <div class="card-body">
                <div class="container-fluid">
				<h2><?php echo $year_row['year']; ?></h2>
                    <table class="table table-stripped table-hover">
                        <thead>
                            <tr style="height:40px;">
                                <th style="color: black; width: 5%;">No.</th>
                                <th style="color: black; width: 30%;">Title</th>
                                <th style="color: black; width: 10%;">Date Issuance</th>
                                <th style="color: black; width: 40%;">File Name</th>
                                <th style="color: black; width: 10%;">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php 
                            $i = 1;
                            // Fetch files for the current year -denden
                            $qry_files = $conn->query("SELECT * FROM `uploads` WHERE YEAR(date_issuance) = '{$year_row['year']}' ORDER BY date_issuance DESC");
                            while($row = $qry_files->fetch_assoc()):
                            ?>
                                <tr>
                                    <td class="text-center"><?php echo $i++; ?></td>
                                    <td><?php echo $row['title'] ?></td>
                                    <td><?php echo date('Y-m-d', strtotime($row['date_issuance'])); ?></td>
                                    <td><?php echo $row['upload_path'] ?></td>
                                    <td align="center">
										<?php if($_settings->userdata('type') == 1 || $_settings->userdata('type') == 2): ?>
											<a class="delete_data btn btn-sm btn-danger" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>">
												<span class="fa fa-trash"></span> Remove
											</a>
										<?php endif; ?>
                                    </td>
                                </tr>
                            <?php endwhile; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    <?php endwhile; ?>
<?php endif; ?>


<script>
	$(document).ready(function(){
		$('.delete_data').click(function(){
			_conf("Are you sure to delete this Memo permanently?","delete_upload_files",[$(this).attr('data-id')])
		});
		$('.view_memo').click(function(){
			uni_modal("</i>","memo/view_memo.php?id="+$(this).attr('data-id'));
		});
		
		$('.table').DataTable({
			"paging": false,
			"ordering": true,
			"info": false,
			"searching": false
		});
	});


	$(document).ready(function () {
		$('#upload-form').submit(function (e) {
			e.preventDefault();
			var _this = $(this);
			$('.err-msg').remove();
			start_loader();
			$.ajax({
				url: _base_url_ + "classes/Master.php?f=upload_files",
				data: new FormData($(this)[0]),
				cache: false,
				contentType: false,
				processData: false,
				method: 'POST',
				type: 'POST',
				dataType: 'json',
				error: err => {
					console.log(err);
					alert_toast("An error occurred", 'error');
					end_loader();
				},
				success:function(resp){
					if(typeof resp== 'object' && resp.status == 'success'){
						location.reload();
					}else{
						alert_toast("An error occured.",'error');
						end_loader();
					}
				}
			})
		})
	})


	function displayImg(input, fileInput) {
		var fileName = fileInput.val().split("\\").pop();
		var label = input.parentNode.getElementsByClassName('custom-file-label')[0];
		label.innerHTML = fileName;
	}

	function delete_upload_files($id){
		start_loader();
		$.ajax({
			url:_base_url_+"classes/Master.php?f=delete_upload_files",
			method:"POST",
			data:{id: $id},
			dataType:"json",
			error:err=>{
				console.log(err)
				alert_toast("An error occured.",'error');
				end_loader();
			},
			success:function(resp){
				if(typeof resp== 'object' && resp.status == 'success'){
					location.reload();
				}else{
					alert_toast("An error occured.",'error');
					end_loader();
				}
			}
		})
	}
</script>