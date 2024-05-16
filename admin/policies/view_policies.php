<?php
require_once('../../config.php');

if (isset($_GET['id']) && $_GET['id'] > 0) {
    $qry = $conn->query("SELECT * FROM `policies_list` WHERE id = '{$_GET['id']}' ");
    if ($qry->num_rows > 0) {
        $policy = $qry->fetch_assoc();
        $code = $policy['code'];
    }
}

$code_policies_query = $conn->query("SELECT * FROM `policies_list` WHERE code = '$code' COLLATE utf8mb4_general_ci ORDER BY date_issuance DESC");
$code_policies = $code_policies_query->fetch_all(MYSQLI_ASSOC);

?>

<style>
    #uni_modal .modal-footer button {
        display: none !important;
    }   

    #uni_modal .modal-dialog {
        max-width: 750px;
    }

    #uni_modal .modal-content {
        width: 100%;
    }

    .modal-logo h1 {
        font-size: 20px;
        text-align: center;
    }

    .long-line {
        border-bottom: 1px solid #000;
    }

    .description-container {
        font-size: 15px;
        overflow: hidden;
        word-wrap: break-word;
    }
</style>

<div class="container-fluid">
    <div class="card-body memo-letter">
        <div class="modal-logo">
            <h1>Asian Land Strategies Corporation</h1>
        </div>

        <div class="long-line"></div>
        <br>

        <?php if (count($code_policies) >= 1) : ?>
            <?php foreach ($code_policies as $index => $code_policy) : ?>
                <?php if ($code_policy['status'] == 0 or $code_policy['status'] == 1 ) : ?>
                    <div class="card">
                        <div class="card-body">
                            <!-- <div class="description-container">
                                <p><?php echo $code_policy['description']; ?></p>
                            </div> -->

                            <div class="description-container" style="text-align: center;">
                                <h5><b><?php echo $code_policy['title']; ?></b></h5>
                                <p>For Detailed Policy, Refer to <a href="<?php echo base_url; ?><?php echo $code_policy['avatar']; ?>" target="_blank"><?php echo $code_policy['refer']; ?></a></p>
                                <!-- <p>Code: <?php echo $code_policy['code'] ?></p> -->
                            </div>
                        </div>
                    </div>
                <?php endif; ?>
            <?php endforeach; ?>
        <?php else : ?>
            <div class="card">
                <div class="card-body">
                    <!-- <div class="description-container">
                        <?php foreach ($code_policies as $code_policy) : ?>
                            <p><?php echo $code_policy['description']; ?></p>
                        <?php endforeach; ?>
                    </div> -->

                    <div class="description-container" style="text-align: center;">
                        <p><?php echo $code_policy['title']; ?></p>
                        <p>For Detailed Policy, Refer to <a href="<?php echo base_url; ?><?php echo $code_policy['avatar']; ?>" target="_blank"><?php echo $code_policy['refer']; ?></a></p>
                        <!-- <p>Code: <?php echo $code_policy['code'] ?></p> -->
                    </div>

                </div>
            </div>
        <?php endif; ?>
    </div>
</div>


<div class="modal-cancel">
    <button type="button" class="btn btn-secondary" style="float: right;" data-dismiss="modal">Close</button>
</div>

<script>
    // No JavaScript required for accordion since it's removed
</script>
