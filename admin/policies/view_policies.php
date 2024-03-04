<?php
require_once('../../config.php');

if (isset($_GET['id']) && $_GET['id'] > 0) {
    $qry = $conn->query("SELECT * FROM `policies_list` WHERE id = '{$_GET['id']}' ");
    if ($qry->num_rows > 0) {
        $policy = $qry->fetch_assoc();
        $code = $policy['code'];
    }
}

/* $code_policies_query = $conn->query("SELECT * FROM `policies_list` WHERE code LIKE '%$code%' COLLATE utf8mb4_general_ci"); */
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

    .accordion-title {
        cursor: pointer;
        font-size: 17px;
        font-weight: bold;
        height: 30px;
        padding-top: 5px;
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
            <div id="accordion">
                <?php foreach ($code_policies as $index => $code_policy) : ?>
                    <?php if ($code_policy['status'] == 0 or $code_policy['status'] == 1 ) : ?>
                        <div class="card">
                            <div class="card-header" id="heading_<?php echo $index; ?>">
                                <h5 class="mb-0 accordion-title" data-toggle="collapse" data-target="#collapse_<?php echo $index; ?>" aria-expanded="<?php echo ($index === 0) ? 'true' : 'false'; ?>" aria-controls="collapse_<?php echo $index; ?>">
                                    <?php echo $code_policy['title']; ?>
                                </h5>
                            </div>

                            <div id="collapse_<?php echo $index; ?>" class="collapse <?php echo ($index === 0) ? 'show' : ''; ?>" aria-labelledby="heading_<?php echo $index; ?>" data-parent="#accordion">
                                <div class="card-body">
                                    <div class="description-container">
                                        <p><?php echo $code_policy['description']; ?></p>
                                    </div>

                                    <div class="description-container" style="text-align: center;">
                                        <p>For Detailed Policy, Refer to <a href="<?php echo base_url; ?><?php echo $code_policy['avatar']; ?>" target="_blank"><?php echo $code_policy['refer']; ?></a></p>
                                        <p>Code: <?php echo $code_policy['code'] ?></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>
                <?php endforeach; ?>
            </div>
        <?php else : ?>
            <div class="card">
                <div class="card-header" id="single-heading">
                    <h5 class="mb-0 accordion-title" data-toggle="collapse" data-target="#single-policy" aria-expanded="true" aria-controls="single-policy">
                        <?php echo $title; ?>
                    </h5>
                </div>
                <div id="single-policy" class="collapse show" aria-labelledby="single-heading" data-parent="#accordion">
                    <div class="card-body">
                        <div class="description-container">
                            <?php foreach ($code_policies as $code_policy) : ?>
                                <p><?php echo $code_policy['description']; ?></p>
                            <?php endforeach; ?>
                        </div>

                        <div class="description-container" style="text-align: center;">
                            <p>For Detailed Policy, Refer to <a href="<?php echo base_url; ?><?php echo $code_policy['avatar']; ?>" target="_blank"><?php echo $code_policy['refer']; ?></a></p>
                            <p>Code: <?php echo $code_policy['code'] ?></p>
                        </div>

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
    document.addEventListener('DOMContentLoaded', function () {
        var accordionTitles = document.querySelectorAll('.accordion-title');
        accordionTitles.forEach(function (title) {
            title.addEventListener('click', function () {
                var targetCollapse = this.getAttribute('data-target');
                var collapse = document.querySelector(targetCollapse);
                if (collapse) {
                    $(collapse).collapse('toggle');
                }
            });
        });
    });
</script>
