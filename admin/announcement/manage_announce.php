<?php
if(isset($_GET['id']) && $_GET['id'] > 0){
	/* require_once('../../config.php'); */
    $qry = $conn->query("SELECT * from `announcement_list` where id = '{$_GET['id']}' ");
    if($qry->num_rows > 0){
        foreach($qry->fetch_assoc() as $k => $v){
            $$k=$v;
        }
    }
}
?>

<style>
    /* Custom CSS for adjusting input width */
    .custom-input {
        width: 500px; /* Adjust the width as needed */
    }
</style>


<div class="card card-outline card-primary">
	<div class="card-header">
		<h3 class="card-title">Create New Announcement</h3>
	</div>
	<div class="card-body">
		<form action="" id="announcement-form">
			<input type="hidden" name ="id" value="<?php echo isset($id) ? $id : '' ?>">
			<div class="card-header">
				<h3 class="card-title">Compose a Message</h3>
			</div>
			<div class="container">
				<div class="form-group">
					<label for="message" class="control-label">Message</label>
					<textarea name="message" id="message" cols="30" rows="3" style="height: 50px;" class="form-control summernote_1" required><?php echo isset($message) ? $message : ''; ?></textarea>
				</div>
			</div>
			<div class="card-header">
				<h3 class="card-title">Create the Announcement</h3>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label for="title" class="control-label">Title</label>
							<input name="title" id="title" type="text" class="form-control form rounded-0" value="<?php echo isset($title) ? $title : ''; ?>" required/>
						</div>
						<div class="form-group">
							<label for="to_" class="control-label">To</label>
							<input name="to_" id="to_" type="text" class="form-control form rounded-0" value="<?php echo isset($to_) ? $to_ : ''; ?>" required/>
						</div>
						<div class="form-group">
							<label for="from_" class="control-label">From</label>
							<input name="from_" id="from_" type="text" class="form-control form rounded-0" value="<?php echo isset($from_) ? $from_ : ''; ?>" required/>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label for="cc_" class="control-label">Cc</label>
							<input name="cc_" id="cc_" type="text" class="form-control form rounded-0" value="<?php echo isset($cc_) ? $cc_ : ''; ?>" required/>
						</div>
						<div class="form-group">
							<label for="ref_" class="control-label">Ref./Rev</label>
							<input name="ref_" id="ref_" type="text" class="form-control form rounded-0" value="<?php echo isset($ref_) ? $ref_ : ''; ?>" required/>
						</div>
						<div class="form-group">
							<label for="re_" class="control-label">Re</label>
							<input name="re_" id="re_" type="text" class="form-control form rounded-0" value="<?php echo isset($re_) ? $re_ : ''; ?>" required/>
						</div>
					</div>
				</div>
			</div>

			<div class="container">
				<div class="form-group">
					<label for="description" class="control-label">Description</label>
					<textarea name="description" id="description" cols="30" rows="3" style="resize:none !important" class="form-control summernote_2" required><?php echo isset($description) ? $description : ''; ?></textarea>
				</div>
			</div>
		</form>
	</div>
	<div class="card-footer">
		<button class="btn btn-flat btn-primary" form="announcement-form">Save</button>
		<a class="btn btn-flat btn-default" href="?page=announcement/announcement">Cancel</a>
	</div>
</div>

<script>
  
	$(document).ready(function(){
		$('#announcement-form').submit(function(e){
			e.preventDefault();
var _this = $(this)
            var _this = $(this)
			 $('.err-msg').remove();
			start_loader();
			$.ajax({
				url:_base_url_+"classes/Master.php?f=save_announcement",
				data: new FormData($(this)[0]),
                cache: false,
                contentType: false,
                processData: false,
                method: 'POST',
                type: 'POST',
                dataType: 'json',
				error:err=>{
					console.log(err)
					alert_toast("An error occured",'error');
					end_loader();
				},
				success:function(resp){
					if(typeof resp =='object' && resp.status == 'success'){
						location.href = "./?page=announcement/announcement";
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

	$(document).ready(function(){
		 $('.summernote_1').summernote({
		        height: '150px',
		        toolbar: [
		            [ 'style', [ 'style' ] ],
		            [ 'font', [ 'bold', 'italic', 'underline', 'strikethrough', 'superscript', 'subscript', 'clear'] ],
		            [ 'fontname', [ 'fontname' ] ],
		            [ 'fontsize', [ 'fontsize' ] ],
		            [ 'color', [ 'color' ] ],
		            [ 'para', [ 'ol', 'ul', 'paragraph', 'height' ] ],
		            [ 'table', [ 'table' ] ],
		            ['insert', ['link', 'picture', 'video']],
		            [ 'view', [ 'undo', 'redo', 'fullscreen', 'help' ] ]
		        ]
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
		            [ 'view', [ 'undo', 'redo', 'fullscreen', 'help' ] ]
		        ]
		    })
	})
</script>