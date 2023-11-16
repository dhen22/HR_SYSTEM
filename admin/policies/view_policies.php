<?php
require_once('../../config.php');
if(isset($_GET['id']) && $_GET['id'] > 0){
    $qry = $conn->query("SELECT * FROM `policies_list` WHERE id = '{$_GET['id']}' ");
    if($qry->num_rows > 0){
        foreach($qry->fetch_assoc() as $k => $v){
            $$k=$v;
        }
    }
}
?>
<style>

    #uni_modal .modal-footer button:not(.btn-secondary) {
    display: none !important;
    }
    
    #uni_modal .modal-dialog{
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
    <!-- memo Letter -->
    <div class="card-body memo-letter">
        <div class="modal-logo">
            <h1>Asian Land Strategies Corporation</h1>
        </div>

        <div class="long-line"></div>
            <br>
            <div class="title">
                <h5><?php echo $title ?></h5>
            </div>
            
            <div class="description-container">
                <p><?php echo $description ?></p>
            </div>
        </div>
    </div>
</div>