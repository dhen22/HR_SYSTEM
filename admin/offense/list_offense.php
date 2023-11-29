<?php if($_settings->chk_flashdata('success')): ?>
<script>
	alert_toast("<?php echo $_settings->flashdata('success') ?>",'success')
</script>
<?php endif;?>

<div class="card card-outline card-primary">
	<div class="card-header">
		<h3 class="card-title">List of Offense</h3>
		<?php if($_settings->userdata('type') != 3): ?>
		<div class="card-tools">
		<a href="?page=offense/manage_offense" class="btn btn-primary"><span class="fas fa-plus"></span>  Create New</a>
		</div>
		<?php endif; ?>
	</div>
	<div class="card-body">
        <div class="container-fluid">
			<table class="table table-stripped table-hover table-bordered">
				<thead>
					<tr>
						<th style="width: 2%;">No.</th>
						<th style="width: 10%;">Rule No</th>
						<th style="width: 15%;">Title</th>
						<th style="width: 8%;">Date Created</th>
						<th style="width: 5%;">Action</th>
					</tr>
				</thead>
				<tbody>
					<?php 
					$i = 1;
						$qry = $conn->query("SELECT * from `offense_list` order by id asc ");
						while($row = $qry->fetch_assoc()):
					?>
						<tr>
							<td class="text-center"><?php echo $i++; ?></td>
							<td><?php echo $row['rule'] ?></td>
							<td><?php echo $row['title'] ?></td>
							<td><?php echo ($row['date_created'] != null) ? date('Y-m-d', strtotime($row['date_created'])) : date('Y-m-d', strtotime($row['date_created'])); ?></td>
							
							<td align="center">
								<button type="button" class="btn btn-default btn-sm dropdown-toggle dropdown-icon" data-toggle="dropdown">
				                  		Action
				                    <span class="sr-only">Toggle Dropdown</span>
				                </button>
								<div class="dropdown-menu" role="menu">
									<a class="dropdown-item view_offense" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>"><span class="fa fa-eye"></span> View</a>
									<?php if($_settings->userdata('type') == 1 || $_settings->userdata('type') == 2): ?>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item edit_data"  href="./?page=offense/manage_offense&id=<?php echo $row['id'] ?>"><span class="fa fa-edit text-primary"></span> Edit</a>
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
			_conf("Are you sure to delete this Offense permanently?","delete_offense",[$(this).attr('data-id')])
		})
		$('.view_offense').click(function(){
			uni_modal("</i>","offense/view_offense.php?id="+$(this).attr('data-id'))
		})
		/* $('.msg_announce').click(function(){
			uni_modal("</i>","announcement/msg_announce.php?id="+$(this).attr('data-id'))
		}) */
		/* $('.edit_data').click(function(){
			
			uni_modal("<i class='fa fa-edit'></i> Edit announcement Details",'announcement/manage_announce.php?id='+$(this).attr('data-id'))
		}) */
		//$('#create_new').click(function(){
			//uni_modal("<i class='fa fa-plus'></i> Create New announcement",'announcement/manage_announce.php')
		//})
		$('.table').dataTable();
	})
	function delete_offense($id){
		start_loader();
		$.ajax({
			url:_base_url_+"classes/Master.php?f=delete_offense",
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