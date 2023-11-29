<?php if($_settings->chk_flashdata('success')): ?>
<script>
	alert_toast("<?php echo $_settings->flashdata('success') ?>",'success')
</script>
<?php endif;?>

<div class="card card-outline card-primary">
	<div class="card-header">
		<h3 class="card-title">Company Policies</h3>
	</div>
	<div class="card-body">
        <div class="container-fluid">
			<table class="table table-stripped table-hover">
			<div class="row">
				<?php
				$qry = $conn->query("SELECT * from `policies_list` WHERE `status` = 1 order by `no` asc LIMIT 15");
				while ($row = $qry->fetch_assoc()):
					$row['description'] = strip_tags(stripslashes(html_entity_decode($row['description'])));
				?>
				<div class="col-md-4 mb-3">
					<div class="card" style="background-color: light; height: 220px; display: flex; flex-direction: column; justify-content: space-between;">
						<div class="card-body">
							<h5 class="card-title" style="font-weight: bold;"><?php echo $row['no'] ?>. <?php echo $row['title'] ?></h5>
							<br>
							<br>
							<p class="card-text" id="description_<?php echo $row['id']; ?>">
								<?php echo substr($row['description'], 0, 150); ?>... <!-- Displaying the first 100 characters -->
								<span style="display:none;"><?php echo $row['description']; ?></span>
							</p>
						</div>
						<div class="card-footer">
							<div class="row">
								<div class="col-md-6">
									<?php echo ($row['date_updated'] != null) ? date('F j, Y', strtotime($row['date_updated'])) : date('F j, Y', strtotime($row['date_created'])); ?>
								</div>
								<div class="col-md-6 text-right">
									<a class="btn btn-flat btn-primary view_policies" style="border-radius: 5px;" href="javascript:void(0)" data-id="<?php echo $row['id']; ?>" onclick="toggleDescription(<?php echo $row['id']; ?>)">
										<span></span> View Policy
									</a>
								</div>
							</div>
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
		$('.view_policies').click(function(){
			uni_modal("</i>","policies/view_policies.php?id="+$(this).attr('data-id'))
		})
		$('.table').dataTable();
	})
</script>