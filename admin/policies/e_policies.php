
<!-- ETO SA EMPLOYEE SIDE LANG MAKAKAKITA (CONNECTED SYA SA /inc/navigation.php/ NAKABUKOD NA NAV) KAYA SYA e_policies.php -->

<?php if($_settings->chk_flashdata('success')): ?>
<script>
	alert_toast("<?php echo $_settings->flashdata('success') ?>",'success')
</script>
<?php endif;?>

<div class="card">
	<div class="card-header" style="background-color: #0039a6; padding: 0.4rem 1rem">
		<div class="row">
			<div class="col">
				<h3 class="card-title" style="padding-top: 5px; color:white;">List of Policies</h3>
			</div>
		</div>
	</div>
	<div class="card-body">
        <div class="container-fluid">
			<table class="table table-stripped table-hover">
				<thead>
					<tr>
						<th style="width: 5%;">No.</th>
						<th style="width: 40%;">Title</th>
						<th style="width: 20%;">Refer</th>
						<th style="width: 20%;">Date Issuance</th>
						<th style="width: 10%;">Action</th>
					</tr>
				</thead>
				<tbody>
					<?php 
					$i = 1;
						$qry = $conn->query("SELECT * FROM `policies_list` WHERE `status` = 1 ORDER BY `status` DESC, `date_issuance` DESC");
						while($row = $qry->fetch_assoc()):
                            $row['description'] = strip_tags(stripslashes(html_entity_decode($row['description'])));
					?>
						<tr>
							<td class="text-center"><?php echo $i++; ?></td>
							<td><?php echo $row['title'] ?></td>
							<td><a href="<?php echo base_url; ?><?php echo $row['avatar']; ?>" target="_blank"><?php echo $row['refer'] ?></td>
							<td><?php echo ($row['date_issuance'] != null) ? date('Y-m-d', strtotime($row['date_issuance'])) : date('Y-m-d', strtotime($date_issuance)); ?></td>
							
							<td align="center">
								<a class="btn btn-default btn-sm view_policies" style="width: 100%;" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>"><span class="fa fa-list-ol text-info"></span> Revised</a>
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
		$('.view_policies').click(function(){
			uni_modal("</i>","policies/view_policies.php?id="+$(this).attr('data-id'))
		})
		/* $('.table').dataTable({
            "lengthMenu": [[50, 100, -1], [50, 100, "All"]] This will display dropdown with options for 50, 100 and all entries
        }); */
		$('.table').DataTable({
			"paging": true,
			"ordering": false,
			"info": true,
			"searching": true
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