<?php
require_once('../../config.php');
if (isset($_GET['id']) && $_GET['id'] > 0) {
    $stmt = $conn->prepare("SELECT * FROM `policies_list` WHERE id = ?");
    $stmt->bind_param("i", $_GET['id']);
    $stmt->execute();
    $result = $stmt->get_result();
    
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        foreach ($row as $k => $v) {
            $$k = $v;
        }
    }
}
?>

<style>
    #uni_modal .modal-footer button {
        display: none !important;
    }

    #uni_modal .modal-dialog {
        max-width: 900px;
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

    table, th, td {
        border: 1px solid black;
        border-collapse: collapse;
    }   

    .choices {
        height: 60px;
        text-align: center;
        font-weight: bold;
        font-size: 18px;
    }

    .cell {
        height: 40px;
        text-align: center;
        font-weight: bold;
    }

    .check {
        text-align: center;
        font-weight: bold;
        width: 100px;
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

        <table style="width:100%">
            <tr>
                <td rowspan="2" style="width:50%;"> </td>
                <td colspan="5" class="choices"> NO. OF OFFENSE </td>
            </tr>
            <tr>
                <td class="cell"> 1st </td>
                <td class="cell"> 2nd </td>
                <td class="cell"> 3rd </td>
                <td class="cell"> 4th </td>
                <td class="cell"> 5th </td>
            </tr>

            <tr>
                <td>1</td>
                <td class="check"> Dissmisal </td>
                <td class="check"> </td>
                <td class="check"> </td>
                <td class="check"> </td>
                <td class="check"> </td>
            </tr>
            <tr>
                <td>1</td>
                <td class="check"> </td>
                <td class="check"> Dissmisal </td>
                <td class="check"> </td>
                <td class="check"> </td>
                <td class="check"> </td>
            </tr>
        </table>
    </div>
</div>

<!-- Cancel Button -->
<div class="modal-cancel">
    <button type="button" class="btn btn-secondary" style="float: right;" data-dismiss="modal">Close</button>
</div>
