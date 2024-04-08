
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
							<input type="text" name="username" id="username" class="form-control" value="<?php echo isset($meta['username']) ? $meta['username'] : '' ?>" required autocomplete="off" readonly>
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
							<input type="text" name="employee_id" id="employee_id" class="form-control"
								value="<?php echo isset($meta['employee_id']) ? $meta['employee_id'] : '' ?>" required>
						</div>
					</div>
					<div class="col-md-2">
                        <div class="form-group">
                            <label for="c_date_hired">Date Hired</label>
                            <input type="date" name="c_date_hired" id="c_date_hired" class="form-control"
                                   value="<?php echo isset($meta['c_date_hired']) ? date("Y-m-d", strtotime($meta['c_date_hired'])) : '' ?>"
                                   required>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="c_company">Company</label>
                            <select name="c_company" id="c_company"
                                    class="form-control select2bs4 select2"
                                    data-placeholder="Select Company" required>
                                <option value="" disabled <?php echo !isset($meta['c_company']) ? 'selected' : '' ?>></option>
                                <option value="ALSC - Asian Land Strategies Company" <?php echo (isset($meta['c_company']) && $meta['c_company'] == 'ALSC') ? 'selected' : '' ?>>ALSC - Asian Land Strategies Company
                                </option>
                                <option value="JAM" <?php echo (isset($meta['c_company']) && $meta['c_company'] == 'JAM') ? 'selected' : '' ?>>JAM
                                </option>
                            </select>
                        </div>
                    </div>
					<div class="col-md-2">
                        <div class="form-group">
                            <label for="c_status">Status</label>
                            <select name="c_status" id="c_status"
                                    class="form-control select2bs4 select2"
                                    data-placeholder="Select status" required>
                                <option value="" disabled <?php echo !isset($meta['c_status']) ? 'selected' : '' ?>></option>
                                <option value="Head of Family" <?php echo (isset($meta['c_status']) && $meta['c_status'] == 'Head of Family') ? 'selected' : '' ?>>Head of Family
                                </option>
                                <option value="Married" <?php echo (isset($meta['c_status']) && $meta['c_status'] == 'Married') ? 'selected' : '' ?>>Married
                                </option>
								<option value="Married 1 Children" <?php echo (isset($meta['c_status']) && $meta['c_status'] == 'Married 1 Children') ? 'selected' : '' ?>>Married 1 Children
                                </option>
								<option value="Married 2 Children" <?php echo (isset($meta['c_status']) && $meta['c_status'] == 'Married 2 Children') ? 'selected' : '' ?>>Married 2 Children
                                </option>
								<option value="Married 3 Children" <?php echo (isset($meta['c_status']) && $meta['c_status'] == 'Married 3 Children') ? 'selected' : '' ?>>Married 3 Children
                                </option>
								<option value="Married 4 Children" <?php echo (isset($meta['c_status']) && $meta['c_status'] == 'Married 4 Children') ? 'selected' : '' ?>>Married 4 Children
                                </option>
								<option value="Single" <?php echo (isset($meta['c_status']) && $meta['c_status'] == 'Single') ? 'selected' : '' ?>>Single
                                </option>
								<option value="Single 1 Dependent" <?php echo (isset($meta['c_status']) && $meta['c_status'] == 'Single 1 Dependent') ? 'selected' : '' ?>>Single 1 Dependent
                                </option>
								<option value="Single 2 Dependents" <?php echo (isset($meta['c_status']) && $meta['c_status'] == 'Single 2 Dependents') ? 'selected' : '' ?>>Single 2 Dependents
                                </option>
								<option value="Single 3 Dependents" <?php echo (isset($meta['c_status']) && $meta['c_status'] == 'Single 3 Dependents') ? 'selected' : '' ?>>Single 3 Dependents
                                </option>
								<option value="Single 4 Dependents" <?php echo (isset($meta['c_status']) && $meta['c_status'] == 'Single 4 Dependents') ? 'selected' : '' ?>>Single 4 Dependents
                                </option>
								<option value="Zero" <?php echo (isset($meta['c_status']) && $meta['c_status'] == 'Zero') ? 'selected' : '' ?>>Zero
                                </option>
                            </select>
                        </div>
                    </div>
					<div class="col-md-2">
                        <div class="form-group">
                            <label for="c_sex">Sex</label>
                            <select name="c_sex" id="c_sex"
                                    class="form-control select2bs4 select2"
                                    data-placeholder="Select Gender" required>
                                <option value="" disabled <?php echo !isset($meta['c_sex']) ? 'selected' : '' ?>></option>
                                <option value="Female" <?php echo (isset($meta['c_sex']) && $meta['c_sex'] == 'Female') ? 'selected' : '' ?>>Female
                                </option>
                                <option value="Male" <?php echo (isset($meta['c_sex']) && $meta['c_sex'] == 'Male') ? 'selected' : '' ?>>Male
                                </option>
                            </select>
                        </div>
                    </div>
                    <!-- Repeat this structure for each set of three inputs -->
                </div>

				<!-- Hindi pwedeng ibahin ang name ng last, frist and middle name kasi connectado sya sa table user !!!	 -->

                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="lastname">Last Name</label>
                            <input type="text" name="lastname" id="lastname" class="form-control"
                                   value="<?php echo isset($meta['lastname']) ? $meta['lastname'] : '' ?>">
                        </div>
                    </div>
					<div class="col-md-4">
                        <div class="form-group">
                            <label for="firstname">First Name</label>
                            <input type="text" name="firstname" id="firstname" class="form-control"
                                   value="<?php echo isset($meta['firstname']) ? $meta['firstname'] : '' ?>" required>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="middlename">Middle Name</label>
                            <input type="text" name="middlename" id="middlename" class="form-control"
                                   value="<?php echo isset($meta['middlename']) ? $meta['middlename'] : '' ?>" required>
                        </div>
                    </div>
                    <!-- Repeat this structure for each set of three inputs -->
                </div>
                <div class="row">
					<div class="col-md-8">
						<div class="form-group">
							<label for="c_address">Address</label>
							<input type="text" name="c_address" id="c_address" class="form-control"
                                   value="<?php echo isset($meta['c_address']) ? $meta['c_address'] : '' ?>" required>
						</div>
                    </div>
					<div class="col-md-2">
						<div class="form-group">
							<label for="c_email">Email Address</label>
							<input type="text" name="c_email" id="c_email" class="form-control"
									value="<?php echo isset($meta['c_email']) ? $meta['c_email']: '' ?>" required>
						</div>
                    </div>
					<div class="col-md-2">
                        <div class="form-group">
                            <label for="c_office_loc">Office Loc.</label>
                            <select name="c_office_loc" id="c_office_loc"
                                    class="form-control select2bs4 select2"
                                    data-placeholder="Select Office Location" required>
                                <option value="" disabled <?php echo !isset($meta['c_office_loc']) ? 'selected' : '' ?>></option>
                                <option value="Malolos" <?php echo (isset($meta['c_office_loc']) && $meta['c_office_loc'] == 'Malolos') ? 'selected' : '' ?>>Malolos
                                </option>
                                <option value="Caloocan" <?php echo (isset($meta['c_office_loc']) && $meta['c_office_loc'] == 'Caloocan') ? 'selected' : '' ?>>Caloocan
                                </option>
                            </select>
                        </div>
                    </div>
                </div>
				<div class="row">
					<div class="col-md-4">		
						<div class="form-group">
							<label for="designation_name">Position</label>
							<select name="designation_name" id="designation_name" class="form-control select2bs4 select2" data-placeholder="Please Select Position" required>
								<option value="" disabled <?php echo !isset($meta['designation_name']) ? 'selected' : '' ?>></option>
								<?php foreach($desg_arr as $v): ?>
									<option value="<?php echo $v ?>" <?php echo (isset($meta['designation_name']) && $meta['designation_name'] == $v) ? 'selected' : '' ?>><?php echo $v ?></option>
								<?php endforeach; ?>
							</select>
						</div>
					</div>
					<div class="col-md-4">
						<div class="form-group">
							<label for="c_contact">Contact No.</label>
							<input type="text" name="c_contact" id="c_contact" class="form-control"
								value="<?php echo isset($meta['c_contact']) ? $meta['c_contact'] : '' ?>" required>
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group">
							<label for="c_birthdate">Date of Birth</label>
							<input type="date" name="c_birthdate" id="c_birthdate" class="form-control"
								value="<?php echo isset($meta['c_birthdate']) ? date("Y-m-d", strtotime($meta['c_birthdate'])) : '' ?>" required>
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
							<label for="department_name">Department</label>
							<select name="department_name" id="department_name" class="form-control select2bs4 select2" data-placeholder="Please Select Department" required>
								<option value="" disabled <?php echo !isset($meta['department_name']) ? 'selected' : '' ?>></option>
								<?php foreach($dept_arr as $v): ?>
									<option value="<?php echo $v ?>" <?php echo (isset($meta['department_name']) && $meta['department_name'] == $v) ? 'selected' : '' ?>><?php echo $v ?></option>
								<?php endforeach; ?>
							</select>
						</div>
					</div>
					<div class="col-md-4">
						<div class="form-group">
							<label for="c_division">Division</label>
							<select name="c_division" id="c_division"
									class="form-control select2bs4 select2"
									data-placeholder="Please Select Division" required>
								<option value="" disabled <?php echo !isset($meta['c_division']) ? 'selected' : '' ?>></option>
								<option value="Finance" <?php echo (isset($meta['c_division']) && $meta['c_division'] == 'Finance') ? 'selected' : '' ?>>Finance
								</option>
								<option value="Engineering" <?php echo (isset($meta['c_division']) && $meta['c_division'] == 'Engineering') ? 'selected' : '' ?>>Engineering
								</option>
								<option value="BOD" <?php echo (isset($meta['c_division']) && $meta['c_division'] == 'BOD') ? 'selected' : '' ?>>BOD
								</option>
								<option value="Executive" <?php echo (isset($meta['c_division']) && $meta['c_division'] == 'Executive') ? 'selected' : '' ?>>Executive
								</option>
								<option value="MANCOMM" <?php echo (isset($meta['c_division']) && $meta['c_division'] == 'MANCOMM') ? 'selected' : '' ?>>MANCOMM
								</option>
								<option value="Sales and Marketing" <?php echo (isset($meta['c_division']) && $meta['c_division'] == 'Sales and Marketing') ? 'selected' : '' ?>>Sales and Marketing
								</option>
							</select>
						</div>
					</div>
					<div class="col-md-4">
						<div class="form-group">
							<label for="c_level">Level</label>
							<select name="c_level" id="c_level"
									class="form-control select2bs4 select2"
									data-placeholder="Please Select level" required>
								<option value="" disabled <?php echo !isset($meta['c_level']) ? 'selected' : '' ?>></option>
								<option value="Rank" <?php echo (isset($meta['c_level']) && $meta['c_level'] == 'Rank') ? 'selected' : '' ?>>Rank
								</option>
								<option value="Manager" <?php echo (isset($meta['c_level']) && $meta['c_level'] == 'Manager') ? 'selected' : '' ?>>Manager
								</option>
								<option value="Supervisor" <?php echo (isset($meta['c_level']) && $meta['c_level'] == 'Supervisor') ? 'selected' : '' ?>>Supervisor
								</option>
								<option value="AVP" <?php echo (isset($meta['c_level']) && $meta['c_level'] == 'AVP') ? 'selected' : '' ?>>AVP
								</option>
								<option value="Guard" <?php echo (isset($meta['c_level']) && $meta['c_level'] == 'Guard') ? 'selected' : '' ?>>Guard
								</option>
							</select>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<div class="form-group">
							<label for="c_section">Section</label>
							<select name="c_section" id="c_section"
									class="form-control select2bs4 select2"
									data-placeholder="Please Select Section" required>
								<option value="" disabled <?php echo !isset($meta['c_section']) ? 'selected' : '' ?>></option>
								<option value="Audit" <?php echo (isset($meta['c_section']) && $meta['c_section'] == 'Audit') ? 'selected' : '' ?>>Audit
								</option>
								<option value="Billing" <?php echo (isset($meta['c_section']) && $meta['c_section'] == 'Billing') ? 'selected' : '' ?>>Billing
								</option>
								<option value="Broker Sales" <?php echo (isset($meta['c_section']) && $meta['c_section'] == 'Broker Sales') ? 'selected' : '' ?>>Broker Sales
								</option>
								<option value="Client Assets" <?php echo (isset($meta['c_section']) && $meta['c_section'] == 'Client Assets') ? 'selected' : '' ?>>Client Assets
								</option>
								<option value="Comp&Ben" <?php echo (isset($meta['c_section']) && $meta['c_section'] == 'Comp&Ben') ? 'selected' : '' ?>>Comp&Ben
								</option>
								<option value="Corporate Assets" <?php echo (isset($meta['c_section']) && $meta['c_section'] == 'Corporate Assets') ? 'selected' : '' ?>>Corporate Assets
								</option>
								<option value="Credit Assessment and Loans" <?php echo (isset($meta['c_section']) && $meta['c_section'] == 'Credit Assessment and Loans') ? 'selected' : '' ?>>Credit Assessment and Loans
								</option>
								<option value="Direct Sales" <?php echo (isset($meta['c_section']) && $meta['c_section'] == 'Direct Sales') ? 'selected' : '' ?>>Direct Sales
								</option>
								<option value="Documentation" <?php echo (isset($meta['c_section']) && $meta['c_section'] == 'Documentation') ? 'selected' : '' ?>>Documentation
								</option>
								<option value="Electrical" <?php echo (isset($meta['c_section']) && $meta['c_section'] == 'Electrical') ? 'selected' : '' ?>>Electrical
								</option>
								<option value="Employee Engagement" <?php echo (isset($meta['c_section']) && $meta['c_section'] == 'Employee Engagement') ? 'selected' : '' ?>>Employee Engagement
								</option>
								<option value="Encoding and Support" <?php echo (isset($meta['c_section']) && $meta['c_section'] == 'Encoding and Support') ? 'selected' : '' ?>>Encoding and Support
								</option>
								<option value="Estimate" <?php echo (isset($meta['c_section']) && $meta['c_section'] == 'Estimate') ? 'selected' : '' ?>>Estimate
								</option>
								<option value="General Services" <?php echo (isset($meta['c_section']) && $meta['c_section'] == 'General Services') ? 'selected' : '' ?>>General Services
								</option>
								<option value="Housing Permits" <?php echo (isset($meta['c_section']) && $meta['c_section'] == 'Housing Permits') ? 'selected' : '' ?>>Housing Permits
								</option>
								<option value="Network/System" <?php echo (isset($meta['c_section']) && $meta['c_section'] == 'Network/System') ? 'selected' : '' ?>>Network/System
								</option>
								<option value="Operations" <?php echo (isset($meta['c_section']) && $meta['c_section'] == 'Operations') ? 'selected' : '' ?>>Operations
								</option>
								<option value="Permits" <?php echo (isset($meta['c_section']) && $meta['c_section'] == 'Permits') ? 'selected' : '' ?>>Permits
								</option>
								<option value="Programming" <?php echo (isset($meta['c_section']) && $meta['c_section'] == 'Programming') ? 'selected' : '' ?>>Programming
								</option>
								<option value="Property Admin" <?php echo (isset($meta['c_section']) && $meta['c_section'] == 'Property Admin') ? 'selected' : '' ?>>Property Admin
								</option>
								<option value="Purchasing" <?php echo (isset($meta['c_section']) && $meta['c_section'] == 'Purchasing') ? 'selected' : '' ?>>Purchasing
								</option>
								<option value="Quality Constrol" <?php echo (isset($meta['c_section']) && $meta['c_section'] == 'Quality Constrol') ? 'selected' : '' ?>>Quality Constrol
								</option>
								<option value="Recruitment" <?php echo (isset($meta['c_section']) && $meta['c_section'] == 'Recruitment') ? 'selected' : '' ?>>Recruitment
								</option>
								<option value="Security Admin" <?php echo (isset($meta['c_section']) && $meta['c_section'] == 'Security Admin') ? 'selected' : '' ?>>Security Admin
								</option>
								<option value="Structural Design" <?php echo (isset($meta['c_section']) && $meta['c_section'] == 'Structural Design') ? 'selected' : '' ?>>Structural Design
								</option>
								<option value="Technical" <?php echo (isset($meta['c_section']) && $meta['c_section'] == 'Technical') ? 'selected' : '' ?>>Technical
								</option>
								<option value="Technical Planning" <?php echo (isset($meta['c_section']) && $meta['c_section'] == 'Technical Planning') ? 'selected' : '' ?>>Technical Planning
								</option>
								<option value="Training" <?php echo (isset($meta['c_section']) && $meta['c_section'] == 'Training') ? 'selected' : '' ?>>Training
								</option>
								<option value="Tresury" <?php echo (isset($meta['c_section']) && $meta['c_section'] == 'Tresury') ? 'selected' : '' ?>>Tresury
								</option>
							</select>
						</div>
					</div>
					<div class="col-md-4">
						<div class="form-group">
							<label for="c_employment">Employment</label>
							<select name="c_employment" id="c_employment"
									class="form-control select2bs4 select2"
									data-placeholder="Please Select Employment Status" required>
								<option value="" disabled <?php echo !isset($meta['c_employment']) ? 'selected' : '' ?>></option>
								<option value="Probationary" <?php echo (isset($meta['c_employment']) && $meta['c_employment'] == 'Probationary') ? 'selected' : '' ?>>Probationary
								</option>
								<option value="Regular" <?php echo (isset($meta['c_employment']) && $meta['c_employment'] == 'Regular') ? 'selected' : '' ?>>Regular
								</option>
								<option value="Contractual" <?php echo (isset($meta['c_employment']) && $meta['c_employment'] == 'Contractual') ? 'selected' : '' ?>>Contractual
								</option>
								<option value="Terminated" <?php echo (isset($meta['c_employment']) && $meta['c_employment'] == 'Terminated') ? 'selected' : '' ?>>Terminated
								</option>
								<option value="AVP-In Position" <?php echo (isset($meta['c_employment']) && $meta['c_employment'] == 'AVP-In Position') ? 'selected' : '' ?>>AVP-In Position
								</option>
							</select>
						</div>
					</div>
					<div class="col-md-4">
                        <div class="form-group">
                            <label for="c_sbc_account_no">SBC Account No</label>
                            <input type="text" name="c_sbc_account_no" id="c_sbc_account_no" class="form-control"
                                   value="<?php echo isset($meta['c_sbc_account_no']) ? $meta['c_sbc_account_no'] : '' ?>">
                        </div>
                    </div>
				</div>
				<div class="row">
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="c_tin">T.I.N No</label>
                            <input type="text" name="c_tin" id="c_tin" class="form-control"
                                   value="<?php echo isset($meta['c_tin']) ? $meta['c_tin'] : '' ?>">
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="c_sss">SSS No</label>
                            <input type="text" name="c_sss" id="c_sss" class="form-control"
                                   value="<?php echo isset($meta['c_sss']) ? $meta['c_sss'] : '' ?>">
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="c_pagibig">Pag-Ibig</label>
                            <input type="text" name="c_pagibig" id="c_pagibig" class="form-control"
                                   value="<?php echo isset($meta['c_pagibig']) ? $meta['c_pagibig'] : '' ?>">
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="c_philhealth">PhilHealth</label>
                            <input type="text" name="c_philhealth" id="c_philhealth" class="form-control"
                                   value="<?php echo isset($meta['c_philhealth']) ? $meta['c_philhealth'] : '' ?>">
                        </div>
                    </div>
				</div>

				<br>
				<h5> Salary Info </h5>
				<hr class="border-dark">
				<div class="row">
					<div class="col-md-3">
						<div class="form-group">
							<label for="c_salary1">Salary 1</label>
							<input type="text" name="c_salary1" id="c_salary1" class="form-control"
								value="<?php echo isset($meta['c_salary1']) ? $meta['c_salary1'] : '0' ?>">
						</div>
					</div>

					<div class="col-md-3">
						<div class="form-group">
							<label for="c_allowance">Allowance 1</label>
							<input type="text" name="c_allowance" id="c_allowance" class="form-control"
								value="<?php echo isset($meta['c_allowance']) ? $meta['c_allowance'] : '0' ?>">
						</div>
					</div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="c_transpo">Transpo Allowance</label>
                            <input type="text" name="c_transpo" id="c_transpo" class="form-control"
								   value="<?php echo isset($meta['c_transpo']) ? $meta['c_transpo'] : '0' ?>">
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="c_e_date">Effectivity Date</label>
                            <input type="date" name="c_e_date" id="c_e_date" class="form-control"
                                   value="<?php echo isset($meta['c_e_date']) ? date("Y-m-d", strtotime($meta['c_e_date'])) : '' ?>"
                                   required>
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="c_salary2">Salary 2</label>
                            <input type="text" name="c_salary2" id="c_salary2" class="form-control"
                                   value="<?php echo isset($meta['c_salary2']) ? $meta['c_salary2'] : '0' ?>">
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="c_allowance2">Allowance 2</label>
                            <input type="text" name="c_allowance2" id="c_allowance2" class="form-control"
                                   value="<?php echo isset($meta['c_allowance2']) ? $meta['c_allowance2'] : '0' ?>">
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="c_cashiers_allow">Cashier Allowance</label>
                            <input type="text" name="c_cashiers_allow" id="c_cashiers_allow" class="form-control"
                                   value="<?php echo isset($meta['c_cashiers_allow']) ? $meta['c_cashiers_allow'] : '0' ?>">
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="c_atm_account">ATM Account No</label>
                            <input type="text" name="c_atm_account" id="c_atm_account" class="form-control"
                                   value="<?php echo isset($meta['c_atm_account']) ? $meta['c_atm_account'] : '0' ?>">
                        </div>
                    </div>
				</div>

				<br>
				<h5> Monthly Deductions </h5>
				<hr class="border-dark">
				<div class="row">
					<div class="col-md-3">
						<div class="form-group">
							<label for="c_ghp">GHP</label>
							<input type="text" name="c_ghp" id="c_ghp" class="form-control"
								value="<?php echo isset($meta['c_ghp']) ? $meta['c_ghp'] : '0' ?>">
						</div>
					</div>

					<div class="col-md-3">
						<div class="form-group">
							<label for="c_deduction_ma">MA</label>
							<input type="text" name="c_deduction_ma" id="c_deduction_ma" class="form-control"
								value="<?php echo isset($meta['c_deduction_ma']) ? $meta['c_deduction_ma'] : '0' ?>">
						</div>
					</div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="c_tax_amount">Tax Amount</label>
                            <input type="text" name="c_tax_amount" id="c_tax_amount" class="form-control"
								   value="<?php echo isset($meta['c_tax_amount']) ? $meta['c_tax_amount'] : '0' ?>">
                        </div>
                    </div>
				</div>

				<br>
				<h5> Loan Deductions </h5>
				<hr class="border-dark">
				<div class="row">
					<div class="col-md-3">
						<div class="form-group">
							<label for="c_loan_sal">Salary</label>
							<input type="text" name="c_loan_sal" id="c_loan_sal" class="form-control"
								value="<?php echo isset($meta['c_loan_sal']) ? $meta['c_loan_sal'] : '0' ?>">
						</div>
					</div>

					<div class="col-md-3">
						<div class="form-group">
							<label for="c_loan_sss">SSS Loan</label>
							<input type="text" name="c_loan_sss" id="c_loan_sss" class="form-control"
								value="<?php echo isset($meta['c_loan_sss']) ? $meta['c_loan_sss'] : '0' ?>">
						</div>
					</div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="c_loan_pib">Pag-Ibig Loan (MPL)</label>
                            <input type="text" name="c_loan_pib" id="c_loan_pib" class="form-control"
								   value="<?php echo isset($meta['c_loan_pib']) ? $meta['c_loan_pib'] : '0' ?>">
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="c_loan_calamity">Pag-Ibig Loan (Cal)</label>
                            <input type="text" name="c_loan_calamity" id="c_loan_calamity" class="form-control"
								value="<?php echo isset($meta['c_loan_calamity']) ? $meta['c_loan_calamity'] : '0' ?>">
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="c_loan_med">Medical</label>
                            <input type="text" name="c_loan_med" id="c_loan_med" class="form-control"
                                   value="<?php echo isset($meta['c_loan_med']) ? $meta['c_loan_med'] : '0' ?>">
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="c_loan_eme">Emergency</label>
                            <input type="text" name="c_loan_eme" id="c_loan_eme" class="form-control"
                                   value="<?php echo isset($meta['c_loan_eme']) ? $meta['c_loan_eme'] : '0' ?>">
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="c_loan_car">Car Loan</label>
                            <input type="text" name="c_loan_car" id="c_loan_car" class="form-control"
                                   value="<?php echo isset($meta['c_loan_car']) ? $meta['c_loan_car'] : '0' ?>">
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="c_loan_edu">Educational</label>
                            <input type="text" name="c_loan_edu" id="c_loan_edu" class="form-control"
                                   value="<?php echo isset($meta['c_loan_edu']) ? $meta['c_loan_edu'] : '0' ?>">
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="c_loan_planters">Planters Loan</label>
                            <input type="text" name="c_loan_planters" id="c_loan_planters" class="form-control"
                                   value="<?php echo isset($meta['c_loan_planters']) ? $meta['c_loan_planters'] : '0' ?>">
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label for="c_loan_planters2">Planters Loan 2nd</label>
                            <input type="text" name="c_loan_planters2" id="c_loan_planters2" class="form-control"
                                   value="<?php echo isset($meta['c_loan_planters2']) ? $meta['c_loan_planters2'] : '0' ?>">
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
		$('.select2-selection').addClass('form-control')
	})


	function calculateAge() {
        var dobValue = document.getElementById('c_birthdate').value;

        if (dobValue) {
            var dob = new Date(dobValue);
            var today = new Date();
            var age = today.getFullYear() - dob.getFullYear();

            if (today.getMonth() < dob.getMonth() || (today.getMonth() === dob.getMonth() && today.getDate() < dob.getDate())) {
                age--;
            }
            document.getElementById('age').value = age;
        } else {
            document.getElementById('age').value = '';
        }
    }

    document.getElementById('c_birthdate').addEventListener('change', calculateAge);

    document.addEventListener('DOMContentLoaded', function() {
        calculateAge();
    });

	$(document).ready(function() {
        $('#designation_id').on('change', function() {
            var selectedText = $('#designation_id option:selected').text();
            $('#readonly_designation').val(selectedText);
        });

		//same value from username and employee_id by default -denden
		$(document).ready(function(){

			$('#username').val($('#employee_id').val());
			
			$('#employee_id').on('input', function(){
				$('#username').val($(this).val());
			});
		});
    });
</script>