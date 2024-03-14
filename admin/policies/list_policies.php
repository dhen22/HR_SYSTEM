<?php if($_settings->chk_flashdata('success')): ?>
<script>
	alert_toast("<?php echo $_settings->flashdata('success') ?>",'success')
</script>
<?php endif;?>

<style>
	.card-title{
		color:white;
		padding-top: 5px;
	}
</style>

<div class="card">
	<div class="card-header" style="background-color: #0039a6 ;padding: 0.4rem 1rem">
		<h3 class="card-title">List of Policies</h3>
		<?php if($_settings->userdata('type') != 3): ?>
		<div class="card-tools">
		<a href="?page=policies/manage_policies" class="btn btn-success"><span class="fas fa-plus"></span>  Create New</a>
		</div>
		<?php endif; ?>
	</div>
	<div class="card-body">
        <div class="container-fluid">
			<table class="table table-stripped table-hover table-bordered">
				<thead>
					<tr>
						<th style="width: 5%;">No.</th>
						<th style="width: 20%;">Title</th>
						<th style="width: 15%;">Refer</th>
						<th style="width: 8%;">Date Issuance</th>
						<th style="width: 8%;">Status</th>
						<th style="width: 8%;">Action</th>
					</tr>
				</thead>
				<tbody>
					<?php 
					$i = 1;
						$qry = $conn->query("SELECT * from `policies_list` order by `date_issuance` desc");
						while($row = $qry->fetch_assoc()):
                            $row['description'] = strip_tags(stripslashes(html_entity_decode($row['description'])));
					?>
						<tr>
							<td class="text-center"><?php echo $i++; ?></td>
							<td><?php echo $row['title'] ?></td>
							<td><?php echo $row['refer'] ?></td>
							<td><?php echo ($row['date_issuance'] != null) ? date('Y-m-d', strtotime($row['date_issuance'])) : date('Y-m-d', strtotime($date_issuance)); ?></td>
							
							<td class='text-center'>
								<?php if($row['status'] == 1): ?>
									<span class="badge badge-success" style="width:40%;">Active</span>
								<?php else: ?>
									<span class="badge badge-secondary" style="width:40%;">Inactive</span>
								<?php endif; ?>
							</td>
							
							<td align="center">
								<button type="button" class="btn btn-default btn-sm dropdown-toggle dropdown-icon" data-toggle="dropdown">
				                  		Action
				                    <span class="sr-only">Toggle Dropdown</span>
				                </button>
								<div class="dropdown-menu" role="menu">
									<a class="dropdown-item view_policies" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>"><span class="fa fa-eye"></span> View</a>
									<?php if($_settings->userdata('type') == 1 || $_settings->userdata('type') == 2): ?>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item edit_data"  href="./?page=policies/manage_policies&id=<?php echo $row['id'] ?>"><span class="fa fa-edit text-primary"></span> Edit</a>
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
			_conf("Are you sure to delete this Policies permanently?","delete_policies",[$(this).attr('data-id')])
		})
		$('.view_policies').click(function(){
			uni_modal("</i>","policies/view_policies.php?id="+$(this).attr('data-id'))
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
		$('.table').dataTable({
            "lengthMenu": [[50, 100, -1], [50, 100, "All"]] // This will display dropdown with options for 50, 100 and all entries
        });
	})
	function delete_policies($id){
		start_loader();
		$.ajax({
			url:_base_url_+"classes/Master.php?f=delete_policies",
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