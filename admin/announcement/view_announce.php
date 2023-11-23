<?php
if(isset($_GET['id']) && $_GET['id'] > 0){
	/* require_once('../../config.php'); */
    $qry = $conn->query("SELECT * from `announcement_list` where id = '{$_GET['id']}' ");
    if($qry->num_rows > 0){
        foreach($qry->fetch_assoc() as $k => $v){
            $$k=$v;
        }
    }
}
?>

<style>
    .card-primary {
        max-width: 800px;
        width: 100%;
        margin: 0 auto;
    }

    .modal-logo {
        display: flex;
        align-items: center;
        justify-content: center; 
        padding: 10px;
    }

    .modal-logo img {
        max-width: 100%;
        max-height: 100px;
        margin-right: 10px;
    }

    .modal-logo h1 {
        font-size: 30px;
        text-align: center;
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
    .signature {
        margin-left: 50px;
    }

    @media (max-width: 767px) {
        .card-primary {
            max-width: 100%;
            margin: 0 auto; 
        }

        .modal-logo h1 {
            font-size: 25px;
            text-align: left;
        }

        .info-table {
            border-collapse: collapse;
            border-spacing: 0;
        }

        .info-table td {
            border: none;
            padding: 5px;
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
        .signature {
            margin-left: 50px;
        }
    }
</style>

<!-- <a class="btn btn-flat btn-primary btn-sm" href="?page=announcement/announcement">Back</a> -->

<div class="card card-primary mx-auto" >
    <div class="card-body">
        <div class="container-fluid">
            <!-- announcement Logo -->
            <div class="modal-logo">
                <img id="logoImg" src="" alt="Logo">
                <h1>Asian Land Strategies Corporation</h1>
            </div>

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

                    <br>
                    <br>
                    
                    <p><b>MA. SHIELA G. MANALO</b></p>
                    <p>Chief Human Resources Officer</p>
                </div>
            </div>
        </div>
    </div>

    <div class="card-footer">
		<a class="btn btn-default" href="?page=announcement/announcement">Close</a>
	</div>

</div>

<script>
    var img = document.getElementById("logoImg");
    img.src = "/HR_SYSTEM/img/logo.jpg";
</script>
