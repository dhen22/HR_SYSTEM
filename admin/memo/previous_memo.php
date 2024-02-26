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
		padding: 12px !important; /* Adjust the value as needed */
	}
	
</style>


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
			</div>
		</form>
	</div>
</div>

<div class="card">
	<div class="card-body">
        <div class="container-fluid">
			<table class="table table-stripped table-hover">
				<!-- <thead style="background-color: black;"> -->
				<thead>
					<tr style="height:40px;">
						<th style="color: black; width: 5%;">No.</th>
						<th style="color: black; width: 30%;">Title</th>
						<th style="color: black; width: 10;">Date Issuance</th>
						<th style="color: black; width: 40%;">File Name</th>
						<th style="color: black; width: 10%;">Action</th>
					</tr>
				</thead>
				<tbody>
					<?php 
					$i = 1;
						$qry = $conn->query("SELECT * from `uploads` order by id desc ");
						while($row = $qry->fetch_assoc()):
					?>
						<tr>
							<td class="text-center"><?php echo $i++; ?></td>
							<td><?php echo $row['title'] ?></td>
							<td><?php echo date('Y-m-d', strtotime($row['date_issuance'])); ?></td>
							<td><?php echo $row['upload_path'] ?></td>
							<td align="center">
								 <button type="button" class="btn btn-default btn-sm dropdown-toggle dropdown-icon" data-toggle="dropdown">
				                  		Action
				                    <span class="sr-only">Toggle Dropdown</span>
				                  </button>
				                  <div class="dropdown-menu" role="menu">
								  	<a class="dropdown-item view_memo" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>"><span class="fa fa-eye"></span> View</a>

									<?php if($_settings->userdata('type') == 1 || $_settings->userdata('type') == 2): ?>
										
									<div class="dropdown-divider"></div>
				                    <a class="dropdown-item edit_data"  href="./?page=memo/manage_memo&id=<?php echo $row['id'] ?>"><span class="fa fa-edit text-primary"></span> Edit</a>
				                    <div class="dropdown-divider"></div>
				                    <a class="dropdown-item delete_data" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>"><span class="fa fa-trash text-danger"></span> Delete</a>
									<?php endif; ?>

				                  </div>
							</td>
						</tr>
					<?php endwhile; ?>
				</tbody>
			</table>
		</div>
	</div>
</div>

<script>
	$(document).ready(function(){
		$('.delete_data').click(function(){
			_conf("Are you sure to delete this Memo permanently?","delete_memo",[$(this).attr('data-id')])
		});
		$('.view_memo').click(function(){
			uni_modal("</i>","memo/view_memo.php?id="+$(this).attr('data-id'));
		});
		
		$('.table').DataTable({
			"paging": false,
			"ordering": true,
			"info": false,
			"searching": false,
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
					if(typeof resp =='object' && resp.status == 'success'){
						location.href = "./?page=memo/previous_memo";
					}else if(resp.status == 'failed' && !!resp.msg){
                        var el = $('<div>')
                            el.addClass("alert alert-danger err-msg").text(resp.msg)
                            _this.prepend(el)
                            el.show('slow')
                            $("html, body").animate({ scrollTop: 0 }, "fast");
                            end_loader()
                    }else{
						alert_toast("An error occured",'error');
						end_loader();
                        console.log(resp)
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
</script>