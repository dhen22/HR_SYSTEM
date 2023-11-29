<?php
require_once('../../config.php');
if(isset($_GET['id']) && $_GET['id'] > 0){
    $qry = $conn->query("SELECT * FROM `announcement_list` WHERE id = '{$_GET['id']}' ");
    if($qry->num_rows > 0){
        foreach($qry->fetch_assoc() as $k => $v){
            $$k=$v;
        }
    }
}
?>
<style>
    #uni_modal .modal-footer{
        display:none !important;
    }

    #uni_modal .modal-dialog{
        max-width: 700px;
    }

    #uni_modal .modal-content {
        width: 100%;
    }
    
    /* announcement Logo */
    .modal-logo {
        display: flex;
        align-items: center;
    }

    .modal-logo img {
        max-width: 100%;
        max-height: 100px;
    }

    .modal-header {
        flex: 1;
        text-align: right;
        font-size: 30px;
        border-collapse: collapse;
        border: none;
    }

    /* announcement Letter */
    .description-container {
        margin: 0 50px;
        margin-bottom: 10px; 
        overflow: hidden;
        word-wrap: break-word;
    }
    
</style>
<div id="print_out">
    <div class="container-fluid">
        <!-- announcement Logo -->
        <div class="modal-logo">
            <img id="logoImg" src="" alt="Logo">
            <h3 class="modal-header">Announcements | Asian Land</h3>
        </div>

        <!-- announcement Letter -->
        <div class="card-body announcement-letter">
            <div class="description-container">
                <p><?php echo $message ?></p>
            </div>
        </div>
    </div>
</div>

<!-- announcement Close Button -->
<div class="w-100 d-flex justify-content-end mb-2">
    <button type="button" class="btn btn-secondary" style="float: right;" data-dismiss="modal">Close</button>
</div>


<script>
    var img = document.getElementById("logoImg");

    img.src = "/HR_SYSTEM/img/logo.jpg";
</script>

<script>

</script>

