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
		<h3 class="card-title">List of Announcement</h3>
		<?php if($_settings->userdata('type') != 3): ?>
		<div class="card-tools">
		<a href="?page=announcement/manage_announce" class="btn btn-primary"><span class="fas fa-plus"></span>  Create New</a>
		</div>
		<?php endif; ?>
	</div>
	<div class="card-body">
        <div class="container-fluid">
			<table class="table table-stripped table-hover table-bordered">
				<thead>
					<tr>
						<th>No.</th>
						<th>Title</th>
						<th>From</th>
						<!-- <th>Message</th> -->
						<th>Ref./Rev</th>
						<th>Date Updated</th>
						<th>Message</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<?php 
					$i = 1;
						/* $qry = $conn->query("SELECT * from `announcement_list` order by unix_timestamp(date_updated) desc, unix_timestamp(date_created) desc "); */
						$qry = $conn->query("SELECT * from `announcement_list` order by unix_timestamp(date_created) desc ");
						while($row = $qry->fetch_assoc()):
                            $row['description'] = strip_tags(stripslashes(html_entity_decode($row['description'])));
					?>
						<tr>
							<td class="text-center"><?php echo $i++; ?></td>
							<td><?php echo $row['title'] ?></td>
							<td><?php echo $row['from_'] ?></td>
							<td><?php echo $row['ref_'] ?></td>
							<td><?php echo ($row['date_updated'] != null) ? date('Y-m-d H:i',strtotime($row['date_updated'])) : date('Y-m-d H:i',strtotime($row['date_created'])); ?></td>
							<td><a class="btn btn-primary msg_announce" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>"><span></span> Message </a></td>
							<td align="center">
								<button type="button" class="btn btn-default btn-sm dropdown-toggle dropdown-icon" data-toggle="dropdown">
				                  		Action
				                    <span class="sr-only">Toggle Dropdown</span>
				                </button>
								<div class="dropdown-menu" role="menu">
									<a class="dropdown-item view_announce" href="./?page=announcement/view_announce&id=<?php echo $row['id'] ?>"><span class="fa fa-eye"></span> View</a>
									<?php if($_settings->userdata('type') == 1 || $_settings->userdata('type') == 2): ?>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item edit_data"  href="./?page=announcement/manage_announce&id=<?php echo $row['id'] ?>"><span class="fa fa-edit text-primary"></span> Edit</a>
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
			_conf("Are you sure to delete this announcement permanently?","delete_announcement",[$(this).attr('data-id')])
		})
		/* $('.view_announce').click(function(){
			uni_modal("</i>","announcement/view_announce.php?id="+$(this).attr('data-id'))
		}) */
		$('.msg_announce').click(function(){
			uni_modal("</i>","announcement/msg_announce.php?id="+$(this).attr('data-id'))
		})
		/* $('.edit_data').click(function(){
			
			uni_modal("<i class='fa fa-edit'></i> Edit announcement Details",'announcement/manage_announce.php?id='+$(this).attr('data-id'))
		}) */
		//$('#create_new').click(function(){
			//uni_modal("<i class='fa fa-plus'></i> Create New announcement",'announcement/manage_announce.php')
		//})
		$('.table').dataTable();
	})
	function delete_announcement($id){
		start_loader();
		$.ajax({
			url:_base_url_+"classes/Master.php?f=delete_announcement",
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