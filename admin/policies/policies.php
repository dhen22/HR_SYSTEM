<?php if($_settings->chk_flashdata('success')): ?>
<script>
	alert_toast("<?php echo $_settings->flashdata('success') ?>",'success')
</script>
<?php endif;?>

<style>
  .msg_announce {
      color: white; /* Set the text color to white */
      padding: 15px 15px; /* Add some padding for better visual appearance */
      border: none; /* Remove the button border */
      border-radius: 2px; /* Add rounded corners */
      text-decoration: none; /* Remove underlines from the link */
      display: inline-block; /* Make the link behave like a button */
  line-height: 1px;
  width: 100px;
  }

.msg_announce:hover {
      color: white; /* Set the text color to white on hover */
  }

  /* You can add more styles as needed */
</style>

<div class="card card-outline card-primary">
	<div class="card-header">
		<h3 class="card-title">Company Policies</h3>
		<?php if($_settings->userdata('type') != 3): ?>
		<div class="card-tools">
		<a href="?page=memo/manage_memo" class="btn btn-flat btn-primary"><span class="fas fa-plus"></span>  Create New</a>
		</div>
		<?php endif; ?>
	</div>
	<div class="card-body">
        <div class="container-fluid">
			<table class="table table-stripped table-hover">
                <div class="row">
                    <?php
                    $qry = $conn->query("SELECT * from `announcement_list` order by date_created desc LIMIT 15");
                    while ($row = $qry->fetch_assoc()):
                        $row['description'] = strip_tags(stripslashes(html_entity_decode($row['description'])));
                    ?>
                    <div class="col-md-4 mb-3">
                        <div class="card " style="background-color: light;">
                            <div class="card-body">
                                <h5 class="card-title" style="font-weight: bold;"><?php echo $row['title'] ?></h5>
                                <p class="card-text"> <?php echo $row['from_'] ?></p>
                                <button type="button" class="btn btn-flat btn-default btn-sm view_announce" data-id="<?php echo $row['id'] ?>" style=" background-color: white;"> <!-- Set your desired text color using the color property -->
                                    <span class="fa fa-eye"></span> View
                                </button>
                                <a class="btn btn-flat btn-primary msg_announce" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>"><span></span> Message </a></td>
                            </div>
                        </div>
                    </div>
                    <?php endwhile; ?>
                </div>
			</table>
		</div>
	</div>
</div>
<script>
	$(document).ready(function(){
		$('.delete_data').click(function(){
			_conf("Are you sure to delete this Memo permanently?","delete_memo",[$(this).attr('data-id')])
		})
		$('.view_memo').click(function(){
			uni_modal("</i>","memo/view_memo.php?id="+$(this).attr('data-id'))
		})
		/* $('.edit_data').click(function(){
			
			uni_modal("<i class='fa fa-edit'></i> Edit memo Details",'events/manage_memo.php?id='+$(this).attr('data-id'))
		}) */
		//$('#create_new').click(function(){
			//uni_modal("<i class='fa fa-plus'></i> Create New memo",'events/manage_memo.php')
		//})
		$('.table').dataTable();
	})
	function delete_memo($id){
		start_loader();
		$.ajax({
			url:_base_url_+"classes/Master.php?f=delete_memo",
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