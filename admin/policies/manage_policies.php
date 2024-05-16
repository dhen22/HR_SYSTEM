<?php
if(isset($_GET['id']) && $_GET['id'] > 0){
	/* require_once('../../config.php'); */
    $qry = $conn->query("SELECT * from `policies_list` where id = '{$_GET['id']}' ");
    if($qry->num_rows > 0){
        foreach($qry->fetch_assoc() as $k => $v){
            $$k=$v;
        }
    }
}
?>


<div class="card card-outline card-primary">
	<div class="card-header">
		<h3 class="card-title">Create New Policies</h3>
	</div>
	<div class="card-body">
		<form action="" id="policies-form">
			<input type="hidden" name ="id" value="<?php echo isset($id) ? $id : '' ?>">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label for="title" class="control-label">Title</label>
							<input name="title" id="title" type="text" class="form-control form" value="<?php echo isset($title) ? $title : ''; ?>" required/>
						</div>
						<div class="form-group">
							<label for="refer" class="control-label">Refer</label>
							<input name="refer" id="refer" type="text" class="form-control form" value="<?php echo isset($refer) ? $refer : ''; ?>" required/>
						</div>
						<div class="form-group">
							<label for="date_issuance" class="control-label">Date issuance</label>
							<input type="date" id="date_issuance" class="form-control form" required name="date_issuance" value="<?php echo isset($date_issuance) ? date("Y-m-d",strtotime($date_issuance)) : '' ?>">
						</div>
						<div class="form-group">
							<label for="code" class="control-label">Code</label>
							<input name="code" id="code" type="text" class="form-control form" value="<?php echo isset($code) ? $code : ''; ?>" required/>
						</div>

						<!-- attachement of file -->

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

						<div class="form-group">
							<label for="status" class="control-label">Status</label>
							<select name="status" id="status" class="custom-select" required>
								<option value="1" <?php echo isset($status) && $status == 1 ? "selected" : '' ?>>Active</option>
								<option value="0" <?php echo isset($status) && $status == 0 ? "selected" : '' ?>>Inacitve</option>
							</select>
						</div>
					</div>
				</div>
			</div>

			<!-- alisin muna to for future daw sabi ng HR 2024-04-18 -denden -->

			<!-- <div class="container">
				<div class="form-group">
					<label for="description" class="control-label">Description</label>
					<textarea name="description" id="description" cols="30" rows="3" style="resize:none !important" class="form-control summernote_2" required><?php echo isset($description) ? $description : ''; ?></textarea>
				</div>
			</div> -->
		</form>
	</div>
	<div class="card-footer">
		<button class="btn btn-primary" form="policies-form">Save</button>
		<a class="btn btn-default" href="?page=policies/list_policies">Cancel</a>
	</div>
</div>

<script>
	$(document).ready(function () {
		$('#policies-form').submit(function (e) {
			e.preventDefault();
			var _this = $(this);
			$('.err-msg').remove();
			start_loader();
			$.ajax({
				url: _base_url_ + "classes/Master.php?f=save_policies",
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
						window.location.href = '?page=policies/list_policies';
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


	$(document).ready(function(){
		$('.summernote_2').summernote({
				tabsize: 5,
				height: '45vh',
				toolbar: [
					[ 'style', [ 'style' ] ],
					[ 'font', [ 'bold', 'italic', 'underline', 'strikethrough', 'superscript', 'subscript', 'clear'] ],
					[ 'fontname', [ 'fontname' ] ],
					[ 'fontsize', [ 'fontsize' ] ],
					[ 'color', [ 'color' ] ],
					[ 'para', [ 'ol', 'ul', 'paragraph', 'height' ] ],
					[ 'table', [ 'table' ] ],
					['insert', ['link', 'picture', 'video']],
					[ 'view', [ 'undo', 'redo', 'fullscreen', 'codeview', 'help' ] ]
				]
			})
	})

	function displayImg(input, fileInput) {
        var fileName = fileInput.val().split("\\").pop();
        var label = input.parentNode.getElementsByClassName('custom-file-label')[0];
        label.innerHTML = fileName;
    }
</script>