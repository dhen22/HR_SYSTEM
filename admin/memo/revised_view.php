<?php
require_once('../../config.php');
if(isset($_GET['id']) && $_GET['id'] > 0){
    $qry = $conn->query("SELECT * FROM `uploads` WHERE id = '{$_GET['id']}' ");
    if($qry->num_rows > 0){
        foreach($qry->fetch_assoc() as $k => $v){
            $$k=$v;
        }
    }
}
?>

<style>
    #uni_modal .modal-footer {
        display:none !important;
    }

    #uni_modal .modal-dialog {
        max-width: 1000px;
    }

    #uni_modal .modal-content {
        width: 100%;
    }

    .modal-header {
        padding-top: 0px;
    }

</style>

<!--
<div class="container-fluid">

    <h4 class="modal-header">Asian Land - Memo and Announcement</h4>

    <iframe src="<?php echo base_url . $upload_path; ?>" width="100%" height="500px"></iframe>

</div> 

<div class="w-100 d-flex justify-content-end mb-2">
    <button type="button" class="btn btn-secondary" style="float: right;" data-dismiss="modal">Close</button>
</div>-->

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

<script>
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
</script>