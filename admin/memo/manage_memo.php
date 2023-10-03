<?php
if(isset($_GET['id']) && $_GET['id'] > 0){
	/* require_once('../../config.php'); */
    $qry = $conn->query("SELECT * from `memo_list` where id = '{$_GET['id']}' ");
    if($qry->num_rows > 0){
        foreach($qry->fetch_assoc() as $k => $v){
            $$k=$v;
        }
    }
}
?>

<div class="card card-outline card-primary">
	<div class="card-header">
		<h3 class="card-title">Create New Memo</h3>
	</div>
	<div class="card-body">
		<form action="" id="memo-form">
			<input type="hidden" name ="id" value="<?php echo isset($id) ? $id : '' ?>">
			<div class="row">
				<div class="col-6">
					<div class="form-group">
						<label for="title" class="control-label">Memo</label>
						<input name="title" id="title" type="text" class="form-control form  rounded-0" value="<?php echo isset($title) ? $title : ''; ?>" required/>
					</div>
					<div class="form-group">
						<label for="to_" class="control-label>">To</label>
						<input name="to_" id="to_" type="text" class="form-control form  rounded-0" value="<?php echo isset($to_) ? $to_ : ''; ?>" required/>
					</div>
					<div class="form-group">
						<label for="from_" class="control-label>">From</label>
						<input name="from_" id="from_" type="text" class="form-control form  rounded-0" value="<?php echo isset($from_) ? $from_ : ''; ?>" required/>
					</div>
					<div class="form-group">
						<label for="cc_" class="control-label>">Cc</label>
						<input name="cc_" id="cc_" type="text" class="form-control form  rounded-0" value="<?php echo isset($cc_) ? $cc_ : ''; ?>" required/>
					</div>
					<div class="form-group">
						<label for="ref_" class="control-label>">Ref./Rev</label>
						<input name="ref_" id="ref_" type="text" class="form-control form  rounded-0" value="<?php echo isset($ref_) ? $ref_ : ''; ?>" required/>
					</div>
					<div class="form-group">
						<label for="re_" class="control-label>">Re</label>
						<input name="re_" id="re_" type="text" class="form-control form  rounded-0" value="<?php echo isset($re_) ? $re_ : ''; ?>" required/>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="description" class="control-label">Description</label>
				<textarea name="description" id="description" cols="30" rows="3" style="resize:none !important" class="form-control summernote" required><?php echo isset($description) ? $description : ''; ?></textarea>
			</div>
		</form>
	</div>
	<div class="card-footer">
		<button class="btn btn-flat btn-primary" form="memo-form">Save</button>
		<a class="btn btn-flat btn-default" href="?page=memo/memo">Cancel</a>
	</div>
</div>

<script>
  
	$(document).ready(function(){
		$('#memo-form').submit(function(e){
			e.preventDefault();
var _this = $(this)
            var _this = $(this)
			 $('.err-msg').remove();
			start_loader();
			$.ajax({
				url:_base_url_+"classes/Master.php?f=save_memo",
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
						location.href = "./?page=memo/memo";
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
		 $('.summernote').summernote({
		        height: '45vh',
		        toolbar: [
		            [ 'style', [ 'style' ] ],
		            [ 'font', [ 'bold', 'italic', 'underline', 'strikethrough', 'superscript', 'subscript', 'clear'] ],
		            [ 'fontname', [ 'fontname' ] ],
		            [ 'fontsize', [ 'fontsize' ] ],
		            [ 'color', [ 'color' ] ],
		            [ 'para', [ 'ol', 'ul', 'paragraph', 'height' ] ],
		            [ 'table', [ 'table' ] ],
		            [ 'view', [ 'undo', 'redo', 'fullscreen', 'codeview', 'help' ] ]
		        ]
		    })
	})
</script>