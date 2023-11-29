<?php
if(isset($_GET['id']) && $_GET['id'] > 0){
	/* require_once('../../config.php'); */
    $qry = $conn->query("SELECT * from `offense_list` where id = '{$_GET['id']}' ");
    if($qry->num_rows > 0){
        foreach($qry->fetch_assoc() as $k => $v){
            $$k=$v;
        }
    }
}
?>

<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<div class="card card-outline card-primary">
	<div class="card-header">
		<h3 class="card-title">Create Table of Offenses</h3>
	</div>
	<div class="card-body">
		<form action="" id="offense-form">
			<input type="hidden" name ="id" value="<?php echo isset($id) ? $id : '' ?>">
			<div class="container">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-2">
                                <div class="form-group">
                                    <label for="rule" class="control-label">Rule No.</label>
                                    <input name="rule" id="rule" type="text" class="form-control form rounded-0" value="<?php echo isset($rule) ? $rule : ''; ?>" style="font-weight: bold;" required/>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="title" class="control-label">Title</label>
                                    <input name="title" id="title" type="text" class="form-control form rounded-0" value="<?php echo isset($title) ? $title : ''; ?>" style="font-weight: bold;" required/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="containerWrapper">
                    <div id="mainContainer">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="section" class="control-label">Section Offense</label>
                                            <textarea name="section" id="section"  style="resize:none !important" class="form-control" required><?php echo isset($section) ? $section : ''; ?></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label for="first" class="control-label">1st offense</label>
                                            <input name="first" id="first" type="text" class="form-control form rounded-0" value="<?php echo isset($first) ? $first : ''; ?>" required/>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label for="second" class="control-label">2nd offense</label>
                                            <input name="second" id="second" type="text" class="form-control form rounded-0" value="<?php echo isset($second) ? $second : ''; ?>" required/>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label for="third" class="control-label">3rd offense</label>
                                            <input name="third" id="third" type="text" class="form-control form rounded-0" value="<?php echo isset($third) ? $third : ''; ?>" required/>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label for="fourth" class="control-label">4th offense</label>
                                            <input name="fourth" id="fourth" type="text" class="form-control form rounded-0" value="<?php echo isset($fourth) ? $fourth : ''; ?>" required/>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label for="fifth" class="control-label">5th offense</label>
                                            <input name="fifth" id="fifth" type="text" class="form-control form rounded-0" value="<?php echo isset($fifth) ? $fifth : ''; ?>" required/>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label for="sixth" class="control-label">6th offense</label>
                                            <input name="sixth" id="sixth" type="text" class="form-control form rounded-0" value="<?php echo isset($sixth) ? $sixth : ''; ?>" required/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <button type="button" id="addMoreButton" class="btn btn-primary" style="float: right;" >Add Section</button>
                    </div>
                </div>
            </div>
		</form>
	</div>
	<div class="card-footer">
		<button class="btn btn-primary" form="offense-form">Save</button>
		<a class="btn btn-default" href="?page=offense/list_offense">Cancel</a>
	</div>
</div>

<script>
	$(document).ready(function () {
		$('#offense-form').submit(function (e) {
			e.preventDefault();
			var _this = $(this);
			$('.err-msg').remove();
			start_loader();
			$.ajax({
				url: _base_url_ + "classes/Master.php?f=save_offense",
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
						window.location.href = '?page=offense/list_offense';
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


    $(document).ready(function () {
        // Counter to keep track of added containers
        var containerCounter = 1; // Start from 1 because you already have the initial container

        // Event listener for the "Add More" button
        $("#addMoreButton").on("click", function () {
            // Increment the container counter
            containerCounter++;

            // Clone the existing container and update IDs
            var newContainer = $("#mainContainer").clone();
            newContainer.attr("id", "mainContainer" + containerCounter);

            // Clear input values in the cloned container
            newContainer.find('input[type="text"]').val('');

            // Append the new container to the parent
            $("#containerWrapper").append(newContainer);
        });
    });
</script>