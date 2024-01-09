<?php if ($_settings->chk_flashdata('success')): ?>
    <script>
        alert_toast("<?php echo $_settings->flashdata('success') ?>", 'success')
    </script>
<?php endif; ?>

<style>
	.card-title{
		color:white;
		padding-top: 5px;
	}
</style>

<div class="card">
    <div class="card-header" style="background-color: #0039a6 ;padding: 0.4rem 1rem">
		<h3 class="card-title">Company Policies</h3>
	</div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-striped table-hover">
                <tbody>
                    <?php
                    $qry = $conn->query("SELECT * FROM `policies_list` WHERE `status` = 1 ORDER BY `no` ASC LIMIT 15");
                    while ($row = $qry->fetch_assoc()):
                        $row['description'] = strip_tags(stripslashes(html_entity_decode($row['description'])));
                    ?>
                        <tr>
                            <td>
                                <div class="card">
                                    <div class="card-body">
                                        <h5 class="title" style="font-weight: bold; font-size: 20px; margin-bottom: 15px;"><?php echo $row['no'] ?>. <?php echo $row['title'] ?></h5>
                                        <p class="card-text" id="description_<?php echo $row['id']; ?>" style="font-size: 14px;">
                                            <?php echo substr($row['description'], 0, 400); ?>... <!-- Displaying the first 150 characters -->
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
                            </td>
                        </tr>
                    <?php endwhile; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
        $('.view_policies').click(function () {
            uni_modal("</i>", "policies/view_policies.php?id=" + $(this).attr('data-id'))
        })
        $('.table').dataTable(); // Note: Make sure you have included the DataTables library
    })
</script>
