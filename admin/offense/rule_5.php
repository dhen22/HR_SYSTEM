
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>

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
        font-size: 15px;
    }

    .section {
        height: 100px;
        width: 100px;
        font-size: 15px;
        padding-left: 5px;
        padding-right: 5px;
    }

    @media only screen and (max-width: 600px) {
        .choices {
            height: auto;
            font-size: 16px;
        }

        .cell {
            height: 30px;
            font-size: 14px;
        }

        .check {
            font-size: 14px;
        }

        .section {
            font-size: 14px;
        }

        .table-container {
            overflow-x: auto;
        }
    }

</style>

<div class="card">
    <div class="card-body">
        <div class="container-fluid">
            <div class="card-body">
                    
                <h5 style="text-align:center; font-size: 20px;">Asian Land Strategies Corporation</h5>
                
                <div class="long-line"></div>
                <br>

                <h5 style="text-align:center; font-weight: bold; font-size: 18px;">TABLE OF OFFENSE</h5>
                <h5 style="text-align:center; font-weight: bold; font-size: 18px;">RULE V</h5>
                <h5 style="text-align:center; font-weight: bold; font-size: 18px;">RESPECT FOR SUPERIORS</h5>

                <div class="table-container">
                    <table style="width:100%">
                        <tr>
                            <td rowspan="2" style="width:50%;"> </td>
                            <td colspan="6" class="choices"> NO. OF OFFENSE </td>
                        </tr>
                        <tr>
                            <td class="cell"> 1st </td>
                            <td class="cell"> 2nd </td>
                            <td class="cell"> 3rd </td>
                            <td class="cell"> 4th </td>
                            <td class="cell"> 5th </td>
                            <td class="cell"> 6th </td>
                        </tr>

                        <tr>
                            <td class="section"><span style="font-weight: bold;">Section 1</span> Failure to follow reasonable directives and instructions from immediate
                            superior or deliberate disregard of authority vested by management to any company officials. </td>
                            <td class="check"> Dismissal </td>
                            <td class="check"> </td>
                            <td class="check"> </td>
                            <td class="check"> </td>
                            <td class="check"> </td>
                            <td class="check"> </td>
                        </tr>

                        <tr>
                            <td class="section"><span style="font-weight: bold;">Section 2</span> Insubordination/refusal to obey orders on work matter. </td>
                            <td class="check"> Dismissal </td>
                            <td class="check"> </td>
                            <td class="check"> </td>
                            <td class="check"> </td>
                            <td class="check"> </td>
                            <td class="check"> </td>
                        </tr>

                        <tr>
                            <td class="section"><span style="font-weight: bold;">Section 3</span> Disrespect towards superior. </td>
                            <td class="check"> Dismissal </td>
                            <td class="check"> </td>
                            <td class="check"> </td>
                            <td class="check"> </td>
                            <td class="check"> </td>
                            <td class="check"> </td>
                        </tr>

                        <tr>
                            <td class="section"><span style="font-weight: bold;">Section 4</span> Serious misconduct or willful disobedience by the
                            employee of the lawful orders of his employer or its representative in connection with his work. </td>
                            <td class="check"> Dismissal </td>
                            <td class="check"> </td>
                            <td class="check"> </td>
                            <td class="check"> </td>
                            <td class="check"> </td>
                            <td class="check"> </td>
                        </tr>

                        <tr>
                            <td class="section"><span style="font-weight: bold;">Section 5</span> Multiple or repeated violations of company rules and
                            Regulations despite warning from management. </td>
                            <td class="check"> Dismissal </td>
                            <td class="check"> </td>
                            <td class="check"> </td>
                            <td class="check"> </td>
                            <td class="check"> </td>
                            <td class="check"> </td>
                        </tr>
                    </table>
                </div>
                <br>
                <!-- Back Button -->
                <a href="<?php echo base_url ?>admin/?page=offense/offense" type="button" class="btn btn-secondary" style="float: right;" data-dismiss="modal">Back</a>    
            </div>
        </div>
    </div>
</div>