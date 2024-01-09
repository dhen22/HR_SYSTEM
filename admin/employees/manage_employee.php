
<style>
	.select2-container--default .select2-selection--single{
		height:calc(2.25rem + 2px) !important;
	}
</style>
<?php 
if(isset($_GET['id']) && $_GET['id'] > 0){
    $user = $conn->query("SELECT * FROM users where id ='{$_GET['id']}'");
    foreach($user->fetch_array() as $k =>$v){
        $meta[$k] = $v;
    }
	$meta_qry = $conn->query("SELECT * FROM employee_meta where user_id = '{$_GET['id']}' ");
	while($row = $meta_qry->fetch_assoc()){
        $meta[$row['meta_field']] = $row['meta_value'];
    }

}
$department_qry = $conn->query("SELECT id,name FROM department_list");
$dept_arr = array_column($department_qry->fetch_all(MYSQLI_ASSOC),'name','id');
$designation_qry = $conn->query("SELECT id,name FROM designation_list");
$desg_arr = array_column($designation_qry->fetch_all(MYSQLI_ASSOC),'name','id');
?>
<?php if($_settings->chk_flashdata('success')): ?>
<script>
	alert_toast("<?php echo $_settings->flashdata('success') ?>",'success')
</script>
<?php endif;?>

<div class="card">
    <div class="card-body">
        <div class="container-fluid">
            <div id="msg"></div>
            <form action="" id="manage-user">
                <input type="hidden" name="id" value="<?php echo isset($meta['id']) ? $meta['id'] : '' ?>">
                <input type="hidden" name="type" value="3">

				<div class="row">
					<div class="col-md-4">
						<div class="form-group">
							<label for="username">Username</label>
							<input type="text" name="username" id="username" class="form-control rounded-0" value="<?php echo isset($meta['username']) ? $meta['username']: '' ?>" required  autocomplete="off">
						</div>
					</div>
					<div class="col-md-4">
						<div class="form-group">
							<label for="" class="control-label">Avatar</label>
							<div class="custom-file">
								<!-- <input type="hidden" name="avatar" value="<?php echo isset($meta['avatar']) ? $meta['avatar']: '' ?>"> -->
								<input type="hidden" name="avatar" value="<?php echo $meta['avatar'] ?? ''; ?>">
							<input type="file" class="custom-file-input rounded-circle" id="customFile" name="img" onchange="displayImg(this,$(this))">
							<label class="custom-file-label" for="customFile">Choose file</label>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="form-group d-flex justify-content-center">
							<img src="<?php echo validate_image(isset($meta['avatar']) ? $meta['avatar'] :'') ?>" alt="" id="cimg" class="img-fluid img-thumbnail">
						</div>
					</div>
				</div>

				<h5> Personal Information </h5>
				<hr class="border-dark">

                <div class="row">
                    <div class="col-md-2">
                        <div class="form-group">
                            <label for="employee_id">Employee ID</label>
                            <input type="text" name="employee_id" id="employee_id" class="form-control rounded-0"
                                   value="<?php echo isset($meta['employee_id']) ? $meta['employee_id'] : '' ?>" required>
                        </div>
                    </div>
					<div class="col-md-2">
                        <div class="form-group">
                            <label for="date_hired">Date Hired</label>
                            <input type="date" name="date_hired" id="date_hired" class="form-control rounded-0"
                                   value="<?php echo isset($meta['date_hired']) ? date("Y-m-d", strtotime($meta['date_hired'])) : '' ?>"
                                   required>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="company">Company</label>
                            <select name="company" id="company"
                                    class="form-control select2bs4 select2 rounded-0"
                                    data-placeholder="Select Company" required>
                                <option value="" disabled <?php echo !isset($meta['company']) ? 'selected' : '' ?>></option>
                                <option value="ALSC - Asian Land Strategies Company" <?php echo (isset($meta['company']) && $meta['company'] == 'ALSC') ? 'selected' : '' ?>>ALSC - Asian Land Strategies Company
                                </option>
                                <option value="JAM" <?php echo (isset($meta['company']) && $meta['company'] == 'JAM') ? 'selected' : '' ?>>JAM
                                </option>
                            </select>
                        </div>
                    </div>
					<div class="col-md-2">
                        <div class="form-group">
                            <label for="status">Status</label>
                            <select name="status" id="status"
                                    class="form-control select2bs4 select2 rounded-0"
                                    data-placeholder="Select status" required>
                                <option value="" disabled <?php echo !isset($meta['status']) ? 'selected' : '' ?>></option>
                                <option value="Head of Family" <?php echo (isset($meta['status']) && $meta['status'] == 'Head of Family') ? 'selected' : '' ?>>Head of Family
                                </option>
                                <option value="Married" <?php echo (isset($meta['status']) && $meta['status'] == 'Married') ? 'selected' : '' ?>>Married
                                </option>
								<option value="Married 1 Children" <?php echo (isset($meta['status']) && $meta['status'] == 'Married 1 Children') ? 'selected' : '' ?>>Married 1 Children
                                </option>
								<option value="Married 2 Children" <?php echo (isset($meta['status']) && $meta['status'] == 'Married 2 Children') ? 'selected' : '' ?>>Married 2 Children
                                </option>
								<option value="Married 3 Children" <?php echo (isset($meta['status']) && $meta['status'] == 'Married 3 Children') ? 'selected' : '' ?>>Married 3 Children
                                </option>
								<option value="Married 4 Children" <?php echo (isset($meta['status']) && $meta['status'] == 'Married 4 Children') ? 'selected' : '' ?>>Married 4 Children
                                </option>
								<option value="Single" <?php echo (isset($meta['status']) && $meta['status'] == 'Single') ? 'selected' : '' ?>>Single
                                </option>
								<option value="Single 1 Dependent" <?php echo (isset($meta['status']) && $meta['status'] == 'Single 1 Dependent') ? 'selected' : '' ?>>Single 1 Dependent
                                </option>
								<option value="Single 2 Dependents" <?php echo (isset($meta['status']) && $meta['status'] == 'Single 2 Dependents') ? 'selected' : '' ?>>Single 2 Dependents
                                </option>
								<option value="Single 3 Dependents" <?php echo (isset($meta['status']) && $meta['status'] == 'Single 3 Dependents') ? 'selected' : '' ?>>Single 3 Dependents
                                </option>
								<option value="Single 4 Dependents" <?php echo (isset($meta['status']) && $meta['status'] == 'Single 4 Dependents') ? 'selected' : '' ?>>Single 4 Dependents
                                </option>
								<option value="Zero" <?php echo (isset($meta['status']) && $meta['status'] == 'Zero') ? 'selected' : '' ?>>Zero
                                </option>
                            </select>
                        </div>
                    </div>
					<div class="col-md-2">
                        <div class="form-group">
                            <label for="sex">Sex</label>
                            <select name="sex" id="sex"
                                    class="form-control select2bs4 select2 rounded-0"
                                    data-placeholder="Select Gender" required>
                                <option value="" disabled <?php echo !isset($meta['sex']) ? 'selected' : '' ?>></option>
                                <option value="Female" <?php echo (isset($meta['sex']) && $meta['sex'] == 'Female') ? 'selected' : '' ?>>Female
                                </option>
                                <option value="Male" <?php echo (isset($meta['sex']) && $meta['sex'] == 'Male') ? 'selected' : '' ?>>Male
                                </option>
                            </select>
                        </div>
                    </div>
                    <!-- Repeat this structure for each set of three inputs -->
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="lastname">Last Name</label>
                            <input type="text" name="lastname" id="lastname" class="form-control rounded-0"
                                   value="<?php echo isset($meta['lastname']) ? $meta['lastname'] : '' ?>">
                        </div>
                    </div>
					<div class="col-md-4">
                        <div class="form-group">
                            <label for="firstname">First Name</label>
                            <input type="text" name="firstname" id="firstname" class="form-control rounded-0"
                                   value="<?php echo isset($meta['firstname']) ? $meta['firstname'] : '' ?>" required>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="middlename">Middle Name</label>
                            <input type="text" name="middlename" id="middlename" class="form-control rounded-0"
                                   value="<?php echo isset($meta['middlename']) ? $meta['middlename'] : '' ?>" required>
                        </div>
                    </div>
                    <!-- Repeat this structure for each set of three inputs -->
                </div>
                <div class="row">
					<div class="col-md-8">
						<div class="form-group">
							<label for="address">Address</label>
							<input type="text" name="address" id="address" class="form-control rounded-0"
                                   value="<?php echo isset($meta['address']) ? $meta['address'] : '' ?>" required>
						</div>
                    </div>
					<div class="col-md-4">
						<div class="form-group">
							<label for="email">Email Address</label>
							<input type="text" name="email" id="email" class="form-control rounded-0"
									value="<?php echo isset($meta['email']) ? $meta['email']: '' ?>" required>
						</div>
                    </div>
                </div>
				<div class="row">
					<div class="col-md-4">
						<div class="form-group">
							<label for="designation_id">Position</label>
							<select name="designation_id" id="designation_id" class="form-control select2bs4 select2 rounded-0" data-placeholder="Please Select Designation here" reqiured>
								<option value="" disabled <?php echo !isset($meta['designation_id']) ? 'selected' : '' ?>></option>
								<?php foreach($desg_arr as $k=>$v): ?>
									<option value="<?php echo $k ?>" <?php echo (isset($meta['designation_id']) && $meta['designation_id'] == $k) ? 'selected' : '' ?>><?php echo $v ?></option>
								<?php endforeach; ?>
							</select>
						</div>
					</div>
					<div class="col-md-4">
						<div class="form-group">
							<label for="contact">Contact No.</label>
							<input type="text" name="contact" id="contact" class="form-control rounded-0"
								value="<?php echo isset($meta['contact']) ? $meta['contact'] : '' ?>" required>
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group">
							<label for="dob">Date of Birth</label>
							<input type="date" name="dob" id="dob" class="form-control rounded-0"
								value="<?php echo isset($meta['dob']) ? date("Y-m-d", strtotime($meta['dob'])) : '' ?>" required>
						</div>
					</div>
					<div class="col-md-2">
						<label for="age">Age</label>
						<input type="text" id="age" class="form-control" style="background-color:#f9f9f9;" readonly>
					</div>
				</div>
				
				<br>
				<h5> Employee Data </h5>
				<hr class="border-dark">
				
				<div class="row">
					<div class="col-md-4">		
						<div class="form-group">
							<label for="department_id">Department</label>
							<select name="department_id" id="department_id" class="form-control select2bs4 select2 rounded-0" data-placeholder="Please Select Department" reqiured>
								<option value="" disabled <?php echo !isset($meta['department_id']) ? 'selected' : '' ?>></option>
								<?php foreach($dept_arr as $k=>$v): ?>
									<option value="<?php echo $k ?>" <?php echo (isset($meta['department_id']) && $meta['department_id'] == $k) ? 'selected' : '' ?>><?php echo $v ?></option>
								<?php endforeach; ?>
							</select>
						</div>
					</div>
					<div class="col-md-4">
						<div class="form-group">
							<label for="division">Division</label>
							<select name="division" id="division"
									class="form-control select2bs4 select2 rounded-0"
									data-placeholder="Please Select division" required>
								<option value="" disabled <?php echo !isset($meta['division']) ? 'selected' : '' ?>></option>
								<option value="Rank" <?php echo (isset($meta['division']) && $meta['division'] == 'Rank') ? 'selected' : '' ?>>Rank
								</option>
								<option value="Manager" <?php echo (isset($meta['division']) && $meta['division'] == 'Manager') ? 'selected' : '' ?>>Manager
								</option>
								<option value="Supervisor" <?php echo (isset($meta['division']) && $meta['division'] == 'Supervisor') ? 'selected' : '' ?>>Supervisor
								</option>
								<option value="AVP" <?php echo (isset($meta['division']) && $meta['division'] == 'AVP') ? 'selected' : '' ?>>AVP
								</option>
								<option value="Guard" <?php echo (isset($meta['division']) && $meta['division'] == 'Guard') ? 'selected' : '' ?>>Guard
								</option>
							</select>
						</div>
					</div>
					<div class="col-md-4">
						<div class="form-group">
							<label for="emp_status">Employment Status</label>
							<select name="emp_status" id="emp_status"
									class="form-control select2bs4 select2 rounded-0"
									data-placeholder="Please Select Employment Status" required>
								<option value="" disabled <?php echo !isset($meta['emp_status']) ? 'selected' : '' ?>></option>
								<option value="Probationary" <?php echo (isset($meta['emp_status']) && $meta['emp_status'] == 'Probationary') ? 'selected' : '' ?>>Probationary
								</option>
								<option value="Regular" <?php echo (isset($meta['emp_status']) && $meta['emp_status'] == 'Regular') ? 'selected' : '' ?>>Regular
								</option>
								<option value="Contractual" <?php echo (isset($meta['emp_status']) && $meta['emp_status'] == 'Contractual') ? 'selected' : '' ?>>Contractual
								</option>
								<option value="Terminated" <?php echo (isset($meta['emp_status']) && $meta['emp_status'] == 'Terminated') ? 'selected' : '' ?>>Terminated
								</option>
								<option value="AVP-In Position" <?php echo (isset($meta['emp_status']) && $meta['emp_status'] == 'AVP-In Position') ? 'selected' : '' ?>>AVP-In Position
								</option>
							</select>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<div class="form-group">
							<label for="section">Section</label>
							<select name="section" id="section"
									class="form-control select2bs4 select2 rounded-0"
									data-placeholder="Please Select Section" required>
								<option value="" disabled <?php echo !isset($meta['section']) ? 'selected' : '' ?>></option>
								<option value="Accounting" <?php echo (isset($meta['section']) && $meta['section'] == 'Accounting') ? 'selected' : '' ?>>Accounting
								</option>
								<option value="Billing" <?php echo (isset($meta['section']) && $meta['section'] == 'Billing') ? 'selected' : '' ?>>Billing
								</option>
								<option value="Const. and Impln." <?php echo (isset($meta['section']) && $meta['section'] == 'Const. and Impln.') ? 'selected' : '' ?>>Const. and Impln.
								</option>
								<option value="Contracts and Doc." <?php echo (isset($meta['section']) && $meta['section'] == 'Contracts and Doc.') ? 'selected' : '' ?>>Contracts and Doc.
								</option>
								<option value="Design and Devt." <?php echo (isset($meta['section']) && $meta['section'] == 'Design and Devt.') ? 'selected' : '' ?>>Design and Devt.
								</option>
								<option value="Documentation and Loan" <?php echo (isset($meta['section']) && $meta['section'] == 'Documentation and Loan') ? 'selected' : '' ?>>Documentation and Loan
								</option>
								<option value="EDP" <?php echo (isset($meta['section']) && $meta['section'] == 'EDP') ? 'selected' : '' ?>>EDP
								</option>
								<option value="Electrical" <?php echo (isset($meta['section']) && $meta['section'] == 'Electrical') ? 'selected' : '' ?>>Electrical
								</option>
								<option value="Engineering" <?php echo (isset($meta['section']) && $meta['section'] == 'Engineering') ? 'selected' : '' ?>>Engineering
								</option>
								<option value="Executive" <?php echo (isset($meta['section']) && $meta['section'] == 'Executive') ? 'selected' : '' ?>>Executive
								</option>
								<option value="Finance" <?php echo (isset($meta['section']) && $meta['section'] == 'Finance') ? 'selected' : '' ?>>Finance
								</option>
								<option value="General Services" <?php echo (isset($meta['section']) && $meta['section'] == 'General Services') ? 'selected' : '' ?>>General Services
								</option>
								<option value="Marketing" <?php echo (isset($meta['section']) && $meta['section'] == 'Marketing') ? 'selected' : '' ?>>Marketing
								</option>
								<option value="Personnel" <?php echo (isset($meta['section']) && $meta['section'] == 'Personnel') ? 'selected' : '' ?>>Personnel
								</option>
								<option value="Permits and Licenses" <?php echo (isset($meta['section']) && $meta['section'] == 'Permits and Licenses') ? 'selected' : '' ?>>Permits and Licenses
								</option>
								<option value="Project Admin" <?php echo (isset($meta['section']) && $meta['section'] == 'Project Admin') ? 'selected' : '' ?>>Project Admin
								</option>
								<option value="Purchasing" <?php echo (isset($meta['section']) && $meta['section'] == 'Purchasing') ? 'selected' : '' ?>>Purchasing
								</option>
								<option value="Repair and Maintenance" <?php echo (isset($meta['section']) && $meta['section'] == 'Repair and Maintenance') ? 'selected' : '' ?>>Repair and Maintenance
								</option>
								<option value="Security Admin" <?php echo (isset($meta['section']) && $meta['section'] == 'Security Admin') ? 'selected' : '' ?>>Security Admin
								</option>
								<option value="Technical Planning" <?php echo (isset($meta['section']) && $meta['section'] == 'Technical Planning') ? 'selected' : '' ?>>Technical Planning
								</option>
								<option value="Training and Recruitment" <?php echo (isset($meta['section']) && $meta['section'] == 'Training and Recruitment') ? 'selected' : '' ?>>Training and Recruitment
								</option>
								<option value="Treasury" <?php echo (isset($meta['section']) && $meta['section'] == 'Treasury') ? 'selected' : '' ?>>Treasury
								</option>
								<option value="Water and Electric Services" <?php echo (isset($meta['section']) && $meta['section'] == 'Water and Electric Services') ? 'selected' : '' ?>>Water and Electric Services
								</option>
							</select>
						</div>
					</div>
					<div class="col-md-4">
						<div class="form-group">
							<label for="readonly_designation">Designation</label>
							<input type="text" id="readonly_designation" class="form-control" style="background-color:#f9f9f9;" readonly>
						</div>
					</div>
					<div class="col-md-4">
                        <div class="form-group">
                            <label for="sbc">SBC Account No</label>
                            <input type="text" name="sbc" id="sbc" class="form-control rounded-0"
                                   value="<?php echo isset($meta['sbc']) ? $meta['sbc'] : '' ?>">
                        </div>
                    </div>
				</div>
				<div class="row">
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="tin">T.I.N No</label>
                            <input type="text" name="tin" id="tin" class="form-control rounded-0"
                                   value="<?php echo isset($meta['tin']) ? $meta['tin'] : '' ?>">
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="sss">SSS No</label>
                            <input type="text" name="sss" id="sss" class="form-control rounded-0"
                                   value="<?php echo isset($meta['sss']) ? $meta['sss'] : '' ?>">
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="pagibig">Pag-Ibig</label>
                            <input type="text" name="pagibig" id="pagibig" class="form-control rounded-0"
                                   value="<?php echo isset($meta['pagibig']) ? $meta['pagibig'] : '' ?>">
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="philhealth">PhilHealth</label>
                            <input type="text" name="philhealth" id="philhealth" class="form-control rounded-0"
                                   value="<?php echo isset($meta['philhealth']) ? $meta['philhealth'] : '' ?>">
                        </div>
                    </div>
				</div>

				<br>
				<h5> Salary Info </h5>
				<hr class="border-dark">
				<div class="row">
					<div class="col-md-3">
						<div class="form-group">
							<label for="first_salary">Salary 1</label>
							<input type="text" name="first_salary" id="first_salary" class="form-control rounded-0"
								value="<?php echo isset($meta['first_salary']) ? $meta['first_salary'] : '0.00' ?>">
						</div>
					</div>

					<div class="col-md-3">
						<div class="form-group">
							<label for="first_allow">Allowance 1</label>
							<input type="text" name="first_allow" id="first_allow" class="form-control rounded-0"
								value="<?php echo isset($meta['first_allow']) ? $meta['first_allow'] : '0.00' ?>">
						</div>
					</div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="transpo">Transpo Allowance</label>
                            <input type="text" name="transpo" id="transpo" class="form-control rounded-0"
								   value="<?php echo isset($meta['transpo']) ? $meta['transpo'] : '0.00' ?>">
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="effectivity">Effectivity Date</label>
                            <input type="date" name="effectivity" id="effectivity" class="form-control rounded-0"
                                   value="<?php echo isset($meta['effectivity']) ? date("Y-m-d", strtotime($meta['effectivity'])) : '' ?>"
                                   required>
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="second_salary">Salary 2</label>
                            <input type="text" name="second_salary" id="second_salary" class="form-control rounded-0"
                                   value="<?php echo isset($meta['second_salary']) ? $meta['second_salary'] : '0.00' ?>">
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="second_allow">Allowance 2</label>
                            <input type="text" name="second_allow" id="second_allow" class="form-control rounded-0"
                                   value="<?php echo isset($meta['second_allow']) ? $meta['second_allow'] : '0.00' ?>">
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="cashier">Cashier Allowance</label>
                            <input type="text" name="cashier" id="cashier" class="form-control rounded-0"
                                   value="<?php echo isset($meta['cashier']) ? $meta['cashier'] : '0.00' ?>">
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="atm">ATM Account No</label>
                            <input type="text" name="atm" id="atm" class="form-control rounded-0"
                                   value="<?php echo isset($meta['atm']) ? $meta['atm'] : '0.00' ?>">
                        </div>
                    </div>
				</div>

				<br>
				<h5> Monthly Deductions </h5>
				<hr class="border-dark">
				<div class="row">
					<div class="col-md-3">
						<div class="form-group">
							<label for="deduc_ghp">GHP</label>
							<input type="text" name="deduc_ghp" id="deduc_ghp" class="form-control rounded-0"
								value="<?php echo isset($meta['deduc_ghp']) ? $meta['deduc_ghp'] : '0.00' ?>">
						</div>
					</div>

					<div class="col-md-3">
						<div class="form-group">
							<label for="deduc_ma">MA</label>
							<input type="text" name="deduc_ma" id="deduc_ma" class="form-control rounded-0"
								value="<?php echo isset($meta['deduc_ma']) ? $meta['deduc_ma'] : '0.00' ?>">
						</div>
					</div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="deduc_tax">Tax Amount</label>
                            <input type="text" name="deduc_tax" id="deduc_tax" class="form-control rounded-0"
								   value="<?php echo isset($meta['deduc_tax']) ? $meta['deduc_tax'] : '0.00' ?>">
                        </div>
                    </div>
				</div>

				<br>
				<h5> Loan Deductions </h5>
				<hr class="border-dark">
				<div class="row">
					<div class="col-md-3">
						<div class="form-group">
							<label for="deduc_salary">Salary</label>
							<input type="text" name="deduc_salary" id="deduc_salary" class="form-control rounded-0"
								value="<?php echo isset($meta['deduc_salary']) ? $meta['deduc_salary'] : '0.00' ?>">
						</div>
					</div>

					<div class="col-md-3">
						<div class="form-group">
							<label for="deduc_sss">SSS Loan</label>
							<input type="text" name="deduc_sss" id="deduc_sss" class="form-control rounded-0"
								value="<?php echo isset($meta['deduc_sss']) ? $meta['deduc_sss'] : '0.00' ?>">
						</div>
					</div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="deduc_pagibig_mpl">Pag-Ibig Loan (MPL)</label>
                            <input type="text" name="deduc_pagibig_mpl" id="deduc_pagibig_mpl" class="form-control rounded-0"
								   value="<?php echo isset($meta['deduc_pagibig_mpl']) ? $meta['deduc_pagibig_mpl'] : '0.00' ?>">
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="deduc_pagibig_cal">Pag-Ibig Loan (Cal)</label>
                            <input type="text" name="deduc_pagibig_cal" id="deduc_pagibig_cal" class="form-control rounded-0"
								value="<?php echo isset($meta['deduc_pagibig_cal']) ? $meta['deduc_pagibig_cal'] : '0.00' ?>">
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="deduc_medical">Medical</label>
                            <input type="text" name="deduc_medical" id="deduc_medical" class="form-control rounded-0"
                                   value="<?php echo isset($meta['deduc_medical']) ? $meta['deduc_medical'] : '0.00' ?>">
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="deduc_emergency">Emergency</label>
                            <input type="text" name="deduc_emergency" id="deduc_emergency" class="form-control rounded-0"
                                   value="<?php echo isset($meta['deduc_emergency']) ? $meta['deduc_emergency'] : '0.00' ?>">
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="deduc_car">Car Loan</label>
                            <input type="text" name="deduc_car" id="deduc_car" class="form-control rounded-0"
                                   value="<?php echo isset($meta['deduc_car']) ? $meta['deduc_car'] : '0.00' ?>">
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="deduc_educ">Educational</label>
                            <input type="text" name="deduc_educ" id="deduc_educ" class="form-control rounded-0"
                                   value="<?php echo isset($meta['deduc_educ']) ? $meta['deduc_educ'] : '0.00' ?>">
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="deduc_planters1">Planters Loan</label>
                            <input type="text" name="deduc_planters1" id="deduc_planters1" class="form-control rounded-0"
                                   value="<?php echo isset($meta['deduc_planters1']) ? $meta['deduc_planters1'] : '0.00' ?>">
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="deduc_planters2">Planters Loan 2nd</label>
                            <input type="text" name="deduc_planters2" id="deduc_planters2" class="form-control rounded-0"
                                   value="<?php echo isset($meta['deduc_planters2']) ? $meta['deduc_planters2'] : '0.00' ?>">
                        </div>
                    </div>
				</div>
            </form>
        </div>
    </div>
    <div class="card-footer">
        <div class="col-md-12">
            <div class="row">
                <button class="btn btn-sm btn-primary mr-2" form="manage-user">Save</button>
                <a class="btn btn-sm btn-secondary" href="./?page=employees">Cancel</a>
            </div>
        </div>
    </div>
</div>

<style>
	img#cimg{
		height: 15vh;
		width: 15vh;
		object-fit: cover;
		border-radius: 100% 100%;
	}
</style>
<script>
	function displayImg(input,_this) {
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	        	$('#cimg').attr('src', e.target.result);
	        }

	        reader.readAsDataURL(input.files[0]);
	    }
	}
	$('#manage-user').submit(function(e){
		e.preventDefault();
var _this = $(this)
		start_loader()
		$.ajax({
			url:_base_url_+'classes/Master.php?f=save_employee',
			data: new FormData($(this)[0]),
		    cache: false,
		    contentType: false,
		    processData: false,
		    method: 'POST',
		    type: 'POST',
		    dataType: 'json',
			error:err=>{
					console.log(err)
					alert_toast("An error occured",'error');
					end_loader();
				},
			success:function(resp){
				if(typeof resp =='object' && resp.status == 'success'){
					location.href = './?page=employees/records&id='+resp.id;
				}else if(resp.status == 'failed' && !!resp.msg){
					var el = $('<div>')
						el.addClass("alert alert-danger err-msg").text(resp.msg)
						_this.prepend(el)
						el.show('slow')
						$("html, body").animate({ scrollTop: 0 }, "fast");
				}else{
					alert_toast("An error occured",'error');
					console.log(resp)
				}
                end_loader()
			}
		})
	})
	$(function(){
		$('.select2').select2()
		$('.select2-selection').addClass('form-control rounded-0')
	})


	function calculateAge() {
        var dobValue = document.getElementById('dob').value;

        if (dobValue) {
            var dob = new Date(dobValue);
            var today = new Date();
            var age = today.getFullYear() - dob.getFullYear();

            if (today.getMonth() < dob.getMonth() || (today.getMonth() === dob.getMonth() && today.getDate() < dob.getDate())) {
                age--;
            }

            // Update the age input field
            document.getElementById('age').value = age;
        } else {
            // Clear the age input field if date of birth is not set
            document.getElementById('age').value = '';
        }
    }

    // Attach the calculateAge function to the change event of the date of birth input
    document.getElementById('dob').addEventListener('change', calculateAge);

    // Trigger the calculateAge function on page load if the date of birth is pre-filled
    document.addEventListener('DOMContentLoaded', function() {
        calculateAge();
    });

	$(document).ready(function() {
        // Update readonly input when the dropdown changes
        $('#designation_id').on('change', function() {
            var selectedText = $('#designation_id option:selected').text();
            $('#readonly_designation').val(selectedText);
        });
    });

</script>