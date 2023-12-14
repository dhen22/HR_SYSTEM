<?php if($_settings->chk_flashdata('success')): ?>
    <script>
        alert_toast("<?php echo $_settings->flashdata('success') ?>",'success')
    </script>
<?php endif;?>
<?php 
if(isset($_GET['id']) && $_GET['id'] > 0){
    $user = $conn->query("SELECT * FROM users where id ='{$_GET['id']}'");
    foreach($user->fetch_array() as $k =>$v){
        $$k = $v;
    }
    $name = ucwords($lastname.', '.$firstname.' '.$middlename);
	$meta_qry = $conn->query("SELECT * FROM employee_meta where user_id = '{$_GET['id']}' ");
	while($row = $meta_qry->fetch_assoc()){
        ${$row['meta_field']} = $row['meta_value'];
    }

}
$department_qry = $conn->query("SELECT id,name FROM department_list");
$dept_arr = array_column($department_qry->fetch_all(MYSQLI_ASSOC),'name','id');
$designation_qry = $conn->query("SELECT id,name FROM designation_list");
$desg_arr = array_column($designation_qry->fetch_all(MYSQLI_ASSOC),'name','id');
?>
<?php 
if(isMobileDevice()):
?>
<style>
    .info-table td{
        display:block !important;
        width:100% !important;
    }


</style>
<?php endif; ?>
<div class="card">
    <div class="card-body">
        <div class="w-100 d-flex justify-content-end mb-3">
            <?php if($_settings->userdata('type') != 3): ?>
            <a href="?page=employees/manage_employee&id=<?php echo $id ?>" class="btn btn-flat btn-primary"><span class="fas fa-edit"></span>  Edit Employee</a>
            <a href="javascript:void(0)" class="btn btn-flat btn-success ml-3" id="print"><span class="fas fa-print"></span>  Print</a>
            <?php endif; ?>
        </div>
        <div id="print_out">
        <table class="table info-table"> <!-- INFORMATION OF EMPLOYEES -->
            <!-- <tr class='boder-0'>
                <td width="20%">
                    <div class="w-100 d-flex align-items-center justify-content-center">
                        <img src="<?php echo validate_image($avatar) ?>" alt="Employee Avatar" class="img-thumbnail" id="cimg">
                    </div>
                </td>
                <td width="70%" class='boder-0 align-bottom'>
                    <div class="row">
                        <div class="col-14">
                            <div class="card">
                                <div class="card-header" style="background-color: #27374D ;padding: 0.3rem 1rem">
                                    <h3 class="card-title" style="color:white;">Personal Information</h3>
                                </div>
                                <div class="card-body">
                                    <div class="row w-max-100 mr-0 mb-1">
                                        <div class="col-4 col-md-3">
                                            <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 12px;">Emp. ID:</label>
                                            <input type="text" class="form-control" style="background-color:white;" readonly value="<?php echo $employee_id ?>">
                                        </div>
                                        <div class="col-4 col-md-5">
                                            <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 10px;">Company:</label>
                                            <input type="text" class="form-control" style="background-color:white;" readonly value="<?php echo $company ?>">
                                        </div>
                                        <div class="col-3 col-md-4">
                                            <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 12px;">Date Hired:</label>
                                            <input type="text" class="form-control" style="background-color:white;" readonly value="<?php echo date("M d, Y",strtotime($date_hired)) ?>">
                                        </div>
                                    </div>

                                    <div class="row w-max-100 mr-0 mb-1">
                                        <div class="col-8 col-md-8">
                                            <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 23px;">Name:</label>
                                            <input type="text" class="form-control" style="background-color:white;" readonly value="<?php echo $name ?>">
                                        </div>
                                        <div class="col-3 col-md-4">
                                            <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 15px;">Birth Date:</label>
                                            <input type="text" class="form-control" style="background-color:white;" readonly value="<?php echo date("M d, Y",strtotime($dob)) ?>">
                                        </div>
                                    </div>

                                    <div class="row w-max-100 mr-0 mb-1">
                                        <div class="col-8 col-md-8">
                                            <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 10px;">Address:</label>
                                            <input type="text" class="form-control" style="background-color:white;" readonly value="<?php echo $address ?>">
                                        </div>
                                        <div class="col-3 col-md-4">
                                            <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 35px;">Gender:</label>
                                            <input type="text" class="form-control" style="background-color:white;" readonly value="<?php echo $sex ?>">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </td>
            </tr> -->
            
            <div class="card">
                <div class="card-header" style="background-color: #27374D ;padding: 0.3rem 1rem">
                    <h3 class="card-title" style="color:white;">Personal Information</h3>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-2 col-md-2">
                            <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 12px;">Employee Code</label>
                            <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $employee_id ?>">
                        </div>
                        <div class="col-2 col-md-2">
                            <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 12px;">Date Hired</label>
                            <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo date("M d, Y",strtotime($date_hired)) ?>">
                        </div>
                        <div class="col-4 col-md-4">
                            <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 10px;">Company</label>
                            <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $company ?>">
                        </div>
                        <div class="col-2 col-md-2">
                            <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 10px;">Status</label>
                            <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo 'Single' ?>">
                        </div>
                        <div class="col-2 col-md-2">
                            <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 35px;">Sex</label>
                            <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $sex ?>">
                        </div>
                        <div class="col-4 col-md-4">
                            <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 23px;">Last Name</label>
                            <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $lastname ?>">
                        </div>
                        <div class="col-4 col-md-4">
                            <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 23px;">First Name</label>
                            <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $firstname ?>">
                        </div>
                        <div class="col-4 col-md-4">
                            <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 23px;">Middle Name</label>
                            <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $middlename ?>">
                        </div>
                        <div class="col-8 col-md-8">
                            <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 10px;">Address</label>
                            <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $address ?>">
                        </div>
                        <div class="col-4 col-md-4">
                            <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 10px;">Email Address</label>
                            <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $email ?>">
                        </div>
                        <div class="col-4 col-md-4">
                            <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 10px;">Position</label>
                            <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $desg_arr[$designation_id] ?>">
                        </div>
                        <div class="col-4 col-md-4">
                            <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 10px;">Contact No</label>
                            <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $contact ?>">
                        </div>
                        <div class="col-2 col-md-2">
                            <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 15px;">Birth Date</label>
                            <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo date("M d, Y", strtotime($dob)) ?>">
                        </div>
                        <div class="col-2 col-md-2">
                            <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 15px;">Age</label>
                            <?php
                            // Calculate age
                            $birthDate = new DateTime($dob);
                            $today = new DateTime();
                            $age = $today->diff($birthDate)->y;

                            // Display age
                            ?>
                            <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $age; ?>">
                        </div>
                    </div>
                </div>
            </div>

        </table>

        <!-- <hr class="border-dark"> --> <!-- CONTACT INFO OF EMPLOYEES -->

        <div class="card">
            <div class="card-header" style="background-color: #27374D ;padding: 0.3rem 1rem">
                <h3 class="card-title" style="color:white;">Employee Data</h3>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-4 col-md-4">
                        <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 10px;">Department</label>
                        <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $dept_arr[$department_id] ?>">
                    </div>
                    <div class="col-4 col-md-4">
                        <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 10px;">Division</label>
                        <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $division ?>">
                    </div>
                    <div class="col-4 col-md-4">
                        <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 10px;">Employment Status</label>
                        <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $emp_status ?>">
                    </div>
                    <div class="col-4 col-md-4">
                        <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 10px;">Section</label>
                        <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $section ?>">
                    </div>
                    <div class="col-4 col-md-4">
                        <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 10px;">Designation</label>
                        <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $desg_arr[$designation_id] ?>">
                    </div>
                    <div class="col-4 col-md-4">
                        <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 10px;">SBC Account No</label>
                        <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $sbc ?>">
                    </div>
                    <div class="col-3 col-md-3">
                        <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 10px;">T.I.N No</label>
                        <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $tin ?>">
                    </div>
                    <div class="col-3 col-md-3">
                        <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 10px;">SSS No</label>
                        <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $sss ?>">
                    </div>
                    <div class="col-3 col-md-3">
                        <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 10px;">Pag-Ibig</label>
                        <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $pagibig ?>">
                    </div>
                    <div class="col-3 col-md-3">
                        <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 10px;">PhilHealth</label>
                        <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $philhealth ?>">
                    </div>
                </div>
            </div>
        </div>
        
        <!-- <hr class="border-dark"> --> <!-- COMPANY INFORMATION OF EMPLOYEES -->

        <div class="card">
            <div class="card-header" style="background-color: #27374D ;padding: 0.3rem 1rem">
                <h3 class="card-title" style="color:white;">Salary Info & Deductions</h3>
            </div>
            <div class="card-body">
                <ul class="nav nav-tabs mb-1">
                    <li class="nav-item">
                        <a class="nav-link active" id="salary-tab" data-toggle="tab" href="#salary" style="font-size: 16px; color: black;">Salary Info</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="monthly-tab" data-toggle="tab" href="#monthly" style="font-size: 16px; color: black;">Monthly Deductions</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="loan-tab" data-toggle="tab" href="#loan" style="font-size: 16px; color: black;">Loan Deductions</a>
                    </li>
                </ul>
                <div class="tab-content" style="paddin-top: 15px;">
                    <!-- Salary Tab Nav -->
                    <div class="tab-pane fade show active" id="salary">
                        <div class="row">
                            <div class="col-3 col-md-3">
                                <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 16px;">Salary 1</label>
                                <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo number_format($first_salary, 2) ?>">
                            </div>
                            <div class="col-3 col-md-3">
                                <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 16px;">Allowance 1</label>
                                <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $first_allow ?>">
                            </div>
                            <div class="col-3 col-md-3">
                                <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 16px;">Transpo Allowance</label>
                                <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $transpo ?>">
                            </div>
                            <div class="col-3 col-md-3">
                                <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 16px;">Effectivity Date</label>
                                <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $effectivity ?>">
                            </div>
                            <div class="col-3 col-md-3">
                                <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 16px;">Salary 2</label>
                                <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $second_salary ?>">
                            </div>
                            <div class="col-3 col-md-3">
                                <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 16px;">Allowance 2</label>
                                <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $second_allow ?>">
                            </div>
                            <div class="col-3 col-md-3">
                                <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 16px;">Cashier Allowance</label>
                                <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $cashier ?>">
                            </div>
                            <div class="col-3 col-md-3">
                                <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 16px;">ATM Account No</label>
                                <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $atm ?>">
                            </div>
                        </div>
                    </div>

                    <!-- Monthly Tab Nav -->
                    <div class="tab-pane fade" id="monthly">
                        <div class="row">
                            <div class="col-3 col-md-3">
                                <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 16px;">GHP</label>
                                <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $deduc_ghp ?>">
                            </div>
                            <div class="col-3 col-md-3">
                                <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 16px;">MA</label>
                                <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $deduc_ma ?>">
                            </div>
                            <div class="col-3 col-md-3">
                                <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 16px;">Tax Amount</label>
                                <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $deduc_tax ?>">
                            </div>
                        </div>
                    </div>

                    <!-- Loans Deductions Tab Nav -->
                    <div class="tab-pane fade" id="loan">
                        <div class="row">
                            <div class="col-3 col-md-3">
                                <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 16px;">Salary</label>
                                <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $deduc_salary ?>">
                            </div>
                            <div class="col-3 col-md-3">
                                <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 16px;">SSS Loan</label>
                                <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $deduc_sss ?>">
                            </div>
                            <div class="col-3 col-md-3">
                                <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 16px;">Pag-Ibig Loan (MPL)</label>
                                <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $deduc_pagibig_mpl ?>">
                            </div>
                            <div class="col-3 col-md-3">
                                <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 16px;">Pag-Ibig Loan (Cal)</label>
                                <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $deduc_pagibig_cal ?>">
                            </div>
                            <div class="col-3 col-md-3">
                                <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 16px;">Medical</label>
                                <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $deduc_medical ?>">
                            </div>
                            <div class="col-3 col-md-3">
                                <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 16px;">Emergency</label>
                                <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $deduc_emergency ?>">
                            </div>
                            <div class="col-3 col-md-3">
                                <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 16px;">Car Loan</label>
                                <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $deduc_car ?>">
                            </div>
                            <div class="col-3 col-md-3">
                                <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 16px;">Educational</label>
                                <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $deduc_educ ?>">
                            </div>

                            <!-- Planters Loadn 2 input -->

                            <div class="col-3 col-md-3">
                                <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 16px;">Planters Loan</label>
                                <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $deduc_planters1 ?>">
                            </div>
                            <div class="col-3 col-md-3">
                                <label class="float-left w-auto whitespace-nowrap" style="padding-top: 8px; padding-right: 16px;">Planters Loan 2nd</label>
                                <input type="text" class="form-control" style="background-color: white;" readonly value="<?php echo $deduc_planters2 ?>">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- <hr class="border-dark"> --> <!-- Leave List & Application Leave Records -->
        <div class="row">
            <div class="col-md-4 col-sm-12">
                <div class="callout border-0">
                    <?php if($_settings->userdata('type') != 3): ?>
                    <div class="float-right">
                        <button class="btn btn-sm btn-default bg-lightblue rounded-circle text-center" type="button" id="manage_leave"><span class="fa fa-cog"></span></button>
                    </div>
                    <?php endif; ?>

                    <h5 class="mb-2">Leave Credits</h5>
                    <table class="table table-hover ">
                        <colgroup>
                            <col width="70%">
                            <col width="15%">
                            <col width="15%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th class="py-1 px-2">Type</th>
                                <th class="py-1 px-2">Allowable</th>
                                <th class="py-1 px-2">Available</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php 
                        if(isset($leave_type_ids) && !empty($leave_type_ids)):
                        $leave_type_credits = isset($leave_type_credits) ? json_decode($leave_type_credits) : array();
                        $ltc = array();
                        foreach($leave_type_credits as $k=> $v){
                            $ltc[$k] = $v;
                        }
                        $lt = $conn->query("SELECT * FROM `leave_types` where `id` in ({$leave_type_ids}) order by code asc ");
                        while($row=$lt->fetch_assoc()):
                            $used = $conn->query("SELECT SUM(`leave_days`) as total FROM `leave_applications` where user_id = '{$id}' and status = 1 and date_format(date_start,'%Y') = '".date('Y')."' and date_format(date_end,'%Y') = '".date('Y')."' and leave_type_id = '{$row['id']}' ")->fetch_array()['total'];
                            $allowed = (isset($ltc[$row['id']])) ? $ltc[$row['id']] : 0;
                            $available =  $allowed - $used;
                        ?>
                        <tr>
                            <td><?php echo $row['code'] ?></td>
                            <td><?php echo number_format($allowed) ?></td>
                            <td><?php echo number_format($available,1) ?></td>
                        </tr>
                        <?php endwhile; ?>
                        <?php endif; ?>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="col-md-8 col-sm-12">
                <div class="callout border-0">
                    <h5>Records</h5>
                    <table class="table-stripped table">
                        <colgroup>
                                <col width="30%">
                                <col width="20%">
                                <col width="10%">
                                <col width="40%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th class="p-1">Leave Type</th>
                                <th class="p-1">Date</th>
                                <th class="p-1">Days</th>
                                <th class="p-1">Remarks</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php 
                            $la = $conn->query("SELECT l.*,lt.code, lt.name FROM `leave_applications` l inner join `leave_types` lt on l.leave_type_id = lt.id where l.status = 1 and l.user_id = '{$id}' and (date_format(l.date_start,'%Y') = '".date("Y")."' or date_format(l.date_end,'%Y') = '".date("Y")."')  order by unix_timestamp(l.date_start) asc,unix_timestamp(l.date_end) asc ");
                            while($row = $la->fetch_assoc()):
                            ?>
                            <tr>
                                <td class="p-1"><?php echo $row['code'].' - '.$row['name'] ?></td>
                                <td class="p-1">
                                    <?php
                                    if ($row['date_start'] == $row['date_end']) {
                                        echo substr($row['date_start'], 0, 10);
                                    }elseif($row['type'] == 2){
                                        echo substr($row['date_start'], 0, 10) . ' / HALF DAY';
                                    }
                                    else {
                                        echo substr($row['date_start'], 0, 10) . ' / ' . substr($row['date_end'], 0, 10);
                                    }
                                    ?>
                                </td>
                                <td class="p-1"><?php echo $row['leave_days'] ?></td>
                                <td class="p-1"><small><i><?php echo $row['reason'] ?></i></small></td>
                            </tr>
                            <?php endwhile; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        </div>
    </div>
</div>

<script>
    $(function(){
        $('#manage_leave').click(function(){
            uni_modal('<i class="fa fa-cog"></i> Manage Leave Credits of <?php echo $name ?>','employees/manage_leave_type.php?id=<?php echo $id ?>');
        })
        $('#print').click(function(){
            start_loader()
            var _h = $('head').clone()
            var _p = $('#print_out').clone();
            var _el = $('<div>')
            _el.append(_h)
            _el.append('<style>html, body, .wrapper {min-height: unset !important;}.btn{display:none !important}</style>')
            _p.prepend('<div class="d-flex mb-3 w-100 align-items-center justify-content-center">'+
            '<img class="mx-4" src="<?php echo validate_image($_settings->info('logo')) ?>" width="50px" height="50px"/>'+
            '<div class="px-2">'+
            '<h3 class="text-center"><?php echo $_settings->info('name') ?></h3>'+
            '<h3 class="text-center">Employee\'s Leave Information Year(<?php echo date("Y") ?>)</h3>'+
            '</div>'+
            '</div><hr/>');
            _el.append(_p)
            var nw = window.open("","_blank","width=1200,height=1200")
                nw.document.write(_el.html())
                nw.document.close()
                setTimeout(() => {
                    nw.print()
                    setTimeout(() => {
                        nw.close()
                        end_loader()
                    }, 300);
                }, 500);
        })
    })
</script>