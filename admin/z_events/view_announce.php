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
    /* Announcement Modal Body */
    /* p,label{
        margin-bottom:5px;
    } */
    
    #uni_modal .modal-footer{
        display:none !important;
    }

    #uni_modal .modal-dialog{
        max-width: 800px;
    }

    #uni_modal .modal-content {
        width: 100%;
    }
    
    /* Announcement Logo */
    .modal-logo {
        display: flex;
        align-items: center;
    }

    .modal-logo img {
        max-width: 100%;
        max-height: 120px;
    }

    .modal-header {
        flex: 1;
        text-align: right;
        padding-right: 20px;
        border-collapse: collapse;
        border: none;
    }

    /* Announcement Letter */
    .announcement-letter {
        font-size: 15px;
        margin: 0 30px; 
        overflow: auto;
        margin-bottom: 20px;
    }

    .info-table {
        border-collapse: collapse;
        border-spacing: 0;
    }

    .info-table td {
        border: none;
        padding: 0;
    }

    .long-line {
        border-bottom: 1px solid #000;
        margin-bottom: 10px; 
    }

    .description-container {
        margin-bottom: 10px; 
        overflow: hidden;
        word-wrap: break-word;
    }
    
</style>

<div class="container-fluid">
    <!-- Announcement Logo -->
    <div class="modal-logo">
        <img id="logoImg" src="" alt="Logo">
        <h2 class="modal-header">Asian Land Strategies Corporation</h2>
    </div>

    <!-- Announcement Letter -->
    <div class="card-body announcement-letter">
        <table class="table info-table">
            <tr>
                <td><b>To</b></td>
                <td><?php echo $to_ ?></td>
            </tr>
            <tr>
                <td><b>From</b></td>
                <td><?php echo $from_ ?></td>
            </tr>
            <tr>
                <td><b>Date</b></td>
                <td><?php echo $date_created ?></td>
            </tr>
            <tr>
                <td><b>Cc</b></td>
                <td><?php echo $cc_ ?></td>
            </tr>
            <tr>
                <td><b>Ref./Rev</b></td>
                <td><?php echo $ref_ ?></td>
            </tr>
            <tr>
                <td><b>Re</b></td>
                <td><?php echo $re_ ?></td>
            </tr>
        </table>
        <br>
        <div class="long-line"></div>
        <br>
        <div class="description-container">
            <p><?php echo $description ?></p>
        </div>
        <br>
        <p><b>MA. SHIELA G. MANALO</b></p>
        <p>Chief Human Resources Officer</p>
    </div>

</div>

<!-- Announcement Close Button -->
<div class="w-100 d-flex justify-content-end mb-2">
    <button class="btn btn-flat btn-sm btn-default bg-black" data-dismiss="modal">
        <i class="fa fa-times">Close</i>
    </button>
</div>


<script>
    var img = document.getElementById("logoImg");

    img.src = "/leave_system/img/logo.jpg";
</script>

