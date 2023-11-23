<?php if($_settings->chk_flashdata('success')): ?>
<script>
	alert_toast("<?php echo $_settings->flashdata('success') ?>",'success')
</script>
<?php endif;?>
<div class="card card-outline card-primary">
	<div class="card-header">
		<h3 class="card-title">List of Memo</h3>
		<?php if($_settings->userdata('type') != 3): ?>
		<div class="card-tools">
		<a href="?page=memo/manage_memo" class="btn btn-primary"><span class="fas fa-plus"></span>  Create New</a>
		</div>
		<?php endif; ?>
	</div>
	<div class="card-body">
        <div class="container-fluid">
			<table class="table table-stripped table-hover table-bordered">
				<!-- <thead style="background-color: black;"> -->
				<thead>
					<tr>
						<th style="color: black;">No.</th>
						<th style="color: black;">Title</th>
						<th style="color: black;">From</th>
						<th style="color: black;">Ref/Rev</th>
						<th style="color: black;">Date Updated</th>
						<th style="color: black;">Action</th>
					</tr>
				</thead>
				<tbody>
					<?php 
					$i = 1;
						/* $qry = $conn->query("SELECT * from `memo_list` order by unix_timestamp(date_updated) desc, unix_timestamp(date_created) desc "); */
						$qry = $conn->query("SELECT * from `memo_list` order by unix_timestamp(date_created) desc ");
						while($row = $qry->fetch_assoc()):
                            $row['description'] = strip_tags(stripslashes(html_entity_decode($row['description'])));
					?>
						<!-- <tr title="<?php echo $row['description'] ?>"> -->
						<tr>
							<td class="text-center"><?php echo $i++; ?></td>
							<td><?php echo $row['title'] ?></td>
							<td><?php echo $row['from_'] ?></td>
							<td><?php echo $row['re_'] ?></td>
							<td><?php echo ($row['date_updated'] != null) ? date('Y-m-d H:i',strtotime($row['date_updated'])) : date('Y-m-d H:i',strtotime($row['date_created'])); ?></td>
							<td align="center">
								 <button type="button" class="btn btn-default btn-sm dropdown-toggle dropdown-icon" data-toggle="dropdown">
				                  		Action
				                    <span class="sr-only">Toggle Dropdown</span>
				                  </button>
				                  <div class="dropdown-menu" role="menu">
								  	<a class="dropdown-item view_memo" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>"><span class="fa fa-eye"></span> View</a>
									<div class="dropdown-divider"></div>
									<!-- <div class="dropdown-divider"></div> -->

									<?php if($_settings->userdata('type') == 1 || $_settings->userdata('type') == 2): ?>
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