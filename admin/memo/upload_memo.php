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
    .custom-file-label {
        overflow: hidden;
        white-space: nowrap;
        text-overflow: ellipsis;
        max-width: 100%;
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
                                    $avatar = isset($avatar) ? $avatar : '';
                                    $filename = $avatar ? basename($avatar) : '';
                                ?>
                                <label class="custom-file-label" for="customFile" data-value="<?php echo $avatar; ?>" required>
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
    
    </div>
</div>

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
				success: function (resp) {
					if (typeof resp == 'object' && resp.status == 'success') {
						// Redirect to the desired page
						window.location.href = '?page=memo/upload_memo';
					} else if (resp.status == 'failed' && !!resp.msg) {
						var el = $('<div>')
						el.addClass("alert alert-danger err-msg").text(resp.msg)
						_this.prepend(el)
						el.show('slow')
						$("html, body").animate({ scrollTop: 0 }, "fast");
						end_loader();
					} else {
						alert_toast("An error occurred", 'error');
						end_loader();
						console.log(resp);
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