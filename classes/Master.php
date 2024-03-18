<?php
require_once('../config.php');
Class Master extends DBConnection {
	private $settings;
	public function __construct(){
		global $_settings;
		$this->settings = $_settings;
		$this->permitted_chars = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
		parent::__construct();
	}
	public function __destruct(){
		parent::__destruct();
	}
	function capture_err(){
		if(!$this->conn->error)
			return false;
		else{
			$resp['status'] = 'failed';
			$resp['error'] = $this->conn->error;
			return json_encode($resp);
			exit;
		}
	}


	//for logs activity
	function log_activity($date, $time, $module, $activity){

		$username = $_SESSION['userdata']['username'];
	
		$sql = "INSERT INTO logs (c_user, c_date, c_time, c_module, c_activity) VALUES (?, ?, ?, ?, ?)";
		$stmt = $this->conn->prepare($sql);
		$stmt->bind_param("sssss", $username, $date, $time, $module, $activity);
		$stmt->execute();
		$stmt->close();
	}
	
	function save_department(){
		extract($_POST);
		$data = "";
		foreach($_POST as $k =>$v){
			if(!in_array($k,array('id'))){
				$v = addslashes($v);
				if(!empty($data)) $data .=",";
				$data .= " `{$k}`='{$v}' ";
			}
		}
		$check = $this->conn->query("SELECT * FROM `department_list` where `name` = '{$name}' ".(!empty($id) ? " and id != {$id} " : "")." ")->num_rows;
		if($this->capture_err())
			return $this->capture_err();
		if($check > 0){
			$resp['status'] = 'failed';
			$resp['msg'] = " Department already exist.";
			return json_encode($resp);
			exit;
		}
		if(empty($id)){
			$sql = "INSERT INTO `department_list` set {$data} ";
			$save = $this->conn->query($sql);
		}else{
			$sql = "UPDATE `department_list` set {$data} where id = '{$id}' ";
			$save = $this->conn->query($sql);
		}
		if($save){
			$resp['status'] = 'success';
			if(empty($id)){
				//logs
				$this->log_activity( date('Y-m-d'), date('H:i:s'), 'Department', "Add -- $name -- $description");
				$this->settings->set_flashdata('success',"New Department successfully saved.");
			}else{
				//logs
				$this->log_activity( date('Y-m-d'), date('H:i:s'), 'Department', "Update -- $name -- $description");
				$this->settings->set_flashdata('success',"Department successfully updated.");
			}
		}else{
			$resp['status'] = 'failed';
			$resp['err'] = $this->conn->error."[{$sql}]";
		}
		return json_encode($resp);
	}

	function delete_department(){
		extract($_POST);
		
		//pagkuha ng column sa department
		$query2 = $this->conn->query("SELECT * FROM `department_list` where id = '{$id}'");
		if (!$query2) {
			$resp['status'] = 'failed';
			$resp['error'] = $this->conn->error;
			return json_encode($resp);
		}

		//pag lalagay sa variable
		$department_data = $query2->fetch_assoc();
		$name = $department_data['name'];
		$desc = $department_data['description'];
	
		$del = $this->conn->query("DELETE FROM `department_list` where id = '{$id}'");
		if($del){
			//logs
			$this->log_activity(date('Y-m-d'), date('H:i:s'), 'Department', "Deleted -- $name -- $desc");
			$resp['status'] = 'success';
			$this->settings->set_flashdata('success',"Department successfully deleted.");
		}else{
			$resp['status'] = 'failed';
			$resp['error'] = $this->conn->error;
		}
		return json_encode($resp);
	}
	
	function save_designation(){
		extract($_POST);
		$data = "";
		foreach($_POST as $k =>$v){
			if(!in_array($k,array('id'))){
				$v = addslashes($v);
				if(!empty($data)) $data .=",";
				$data .= " `{$k}`='{$v}' ";
			}
		}
		$check = $this->conn->query("SELECT * FROM `designation_list` where `name` = '{$name}' ".(!empty($id) ? " and id != {$id} " : "")." ")->num_rows;
		if($this->capture_err())
			return $this->capture_err();
		if($check > 0){
			$resp['status'] = 'failed';
			$resp['msg'] = " Designation already exist.";
			return json_encode($resp);
			exit;
		}
		if(empty($id)){
			$sql = "INSERT INTO `designation_list` set {$data} ";
			$save = $this->conn->query($sql);
		}else{
			$sql = "UPDATE `designation_list` set {$data} where id = '{$id}' ";
			$save = $this->conn->query($sql);
		}
		if($save){
			$resp['status'] = 'success';
			if(empty($id)){
				//logs
				$this->log_activity( date('Y-m-d'), date('H:i:s'), 'Designation', "Add -- $name -- $description");
				$this->settings->set_flashdata('success',"New Designation successfully saved.");
			}
			else{
				//logs
				$this->log_activity( date('Y-m-d'), date('H:i:s'), 'Designation', "Update -- $name -- $description");
				$this->settings->set_flashdata('success',"Designation successfully updated.");
			}
		}else{
			$resp['status'] = 'failed';
			$resp['err'] = $this->conn->error."[{$sql}]";
		}
		return json_encode($resp);
	}
	function delete_designation(){
		extract($_POST);

		$query2 = $this->conn->query("SELECT * FROM `designation_list` where id = '{$id}'");
		if (!$query2) {
			$resp['status'] = 'failed';
			$resp['error'] = $this->conn->error;
			return json_encode($resp);
		}

		$designation_data = $query2->fetch_assoc();
		$name = $designation_data['name'];
		$desc = $designation_data['description'];

		$del = $this->conn->query("DELETE FROM `designation_list` where id = '{$id}'");
		if($del){
			//logs
			$this->log_activity( date('Y-m-d'), date('H:i:s'), 'Designation', "Delete -- $name -- $desc");
			$resp['status'] = 'success';
			$this->settings->set_flashdata('success',"Designation successfully deleted.");
		}else{
			$resp['status'] = 'failed';
			$resp['error'] = $this->conn->error;
		}
		return json_encode($resp);

	}

	//----------------------------------------------------------------------------------------------------------------------------

	function save_announcement(){
		extract($_POST);
		$data = "";
		foreach($_POST as $k =>$v){
			if(!in_array($k,array('id'))){
				$v = addslashes($v);
				if(!empty($data)) $data .=",";
				$data .= " `{$k}`='{$v}' ";
			}
		}
		$check = $this->conn->query("SELECT * FROM `announcement_list` where `title` = '{$title}' ".(!empty($id) ? " and id != {$id} " : "")." ")->num_rows;
		if($this->capture_err())
			return $this->capture_err();
		if($check > 0){
			$resp['status'] = 'failed';
			$resp['msg'] = " announcement already exist.";
			return json_encode($resp);
			exit;
		}
		if(empty($id)){
			$sql = "INSERT INTO `announcement_list` set {$data} ";
			$save = $this->conn->query($sql);
		}else{
			$sql = "UPDATE `announcement_list` set {$data} where id = '{$id}' ";
			$save = $this->conn->query($sql);
		}
		if($save){
			$resp['status'] = 'success';
			if(empty($id)){
				$this->log_activity( date('Y-m-d'), date('H:i:s'), 'Announcement', "Add -- $title -- $ref_");
				$this->settings->set_flashdata('success',"New announcement successfully saved.");
			}
			else{
				$this->log_activity( date('Y-m-d'), date('H:i:s'), 'Announcement', "Update -- $title -- $ref_");
				$this->settings->set_flashdata('success',"announcement successfully updated.");
			}
		}else{
			$resp['status'] = 'failed';
			$resp['err'] = $this->conn->error."[{$sql}]";
		}
		return json_encode($resp);
	}
	function delete_announcement(){	
		extract($_POST);

		$query2 = $this->conn->query("SELECT * FROM `announcement_list` where id = '{$id}'");
		if (!$query2) {
			$resp['status'] = 'failed';
			$resp['error'] = $this->conn->error;
			return json_encode($resp);
		}

		$announcement_data = $query2->fetch_assoc();
		$title = $announcement_data['title'];
		$ref_ = $announcement_data['ref_'];

		$del = $this->conn->query("DELETE FROM `announcement_list` where id = '{$id}'");
		if($del){
			$this->log_activity( date('Y-m-d'), date('H:i:s'), 'Announcement', "Deleted -- $title -- $ref_");
			$resp['status'] = 'success';
			$this->settings->set_flashdata('success',"announcement successfully deleted.");
		}else{
			$resp['status'] = 'failed';
			$resp['error'] = $this->conn->error;
		}
		return json_encode($resp);

	}

	function save_memo(){
		extract($_POST);
		$data = "";
		foreach($_POST as $k =>$v){
			if(!in_array($k,array('id'))){
				$v = addslashes($v);
				if(!empty($data)) $data .=",";
				$data .= " `{$k}`='{$v}' ";
			}
		}
		$check = $this->conn->query("SELECT * FROM `memo_list` where `title` = '{$title}' ".(!empty($id) ? " and id != {$id} " : "")." ")->num_rows;
		if($this->capture_err())
			return $this->capture_err();
		if($check > 0){
			$resp['status'] = 'failed';
			$resp['msg'] = " memo already exist.";
			return json_encode($resp);
			exit;
		}
		if(empty($id)){
			$sql = "INSERT INTO `memo_list` set {$data} ";
			$save = $this->conn->query($sql);
		}else{
			$sql = "UPDATE `memo_list` set {$data} where id = '{$id}' ";
			$save = $this->conn->query($sql);
		}
		if($save){
			$resp['status'] = 'success';
			if(empty($id)){
				$this->log_activity( date('Y-m-d'), date('H:i:s'), 'Memo', "Add -- $title -- $ref_");
				$this->settings->set_flashdata('success',"New memo successfully saved.");
			}
			else{
				$this->log_activity( date('Y-m-d'), date('H:i:s'), 'Memo', "Update -- $title -- $ref_");
				$this->settings->set_flashdata('success',"memo successfully updated.");
			}
		}else{
			$resp['status'] = 'failed';
			$resp['err'] = $this->conn->error."[{$sql}]";
		}
		return json_encode($resp);
	}
	function delete_memo(){
		extract($_POST);

		$query2 = $this->conn->query("SELECT * FROM `memo_list` where id = '{$id}'");
		if (!$query2) {
			$resp['status'] = 'failed';
			$resp['error'] = $this->conn->error;
			return json_encode($resp);
		}

		$memo_data = $query2->fetch_assoc();
		$title = $memo_data['title'];
		$ref_ = $memo_data['ref_'];

		$del = $this->conn->query("DELETE FROM `memo_list` where id = '{$id}'");
		if($del){
			$this->log_activity( date('Y-m-d'), date('H:i:s'), 'Memo', "Deleted -- $title -- $ref_");
			$resp['status'] = 'success';
			$this->settings->set_flashdata('success',"memo successfully deleted.");
		}else{
			$resp['status'] = 'failed';
			$resp['error'] = $this->conn->error;
		}
		return json_encode($resp);

	}

	function save_policies(){
		extract($_POST);
		$data = "";
		foreach($_POST as $k => $v){
			if(!in_array($k, array('id'))){
				$v = addslashes($v);
				if(!empty($data)) $data .=",";
				$data .= " `{$k}`='{$v}' ";
			}
		}
		$check = $this->conn->query("SELECT * FROM `policies_list` where `title` = '{$title}' ".(!empty($id) ? " and id != {$id} " : "")." ")->num_rows;
		if($this->capture_err())
			return $this->capture_err();
		if($check > 0){
			$resp['status'] = 'failed';
			$resp['msg'] = " policies already exist.";
			return json_encode($resp);
			exit;
		}

		//update ko lang kasi di nagana nung nag lagay nako log_activity 2024-03-12
		if(empty($id)){
			// Insert data
			$sql = "INSERT INTO `policies_list` SET {$data}";
			$save = $this->conn->query($sql); // Execute the query
			$id = $this->conn->insert_id; // Get the inserted ID
		
			if ($save) {
				$this->log_activity(date('Y-m-d'), date('H:i:s'), 'Policies', "Add -- $title -- $refer -- $date_issuance");
				$this->settings->set_flashdata('success', "New policies successfully saved.");
				$resp['status'] = 'success';
			} else {
				$resp['status'] = 'failed';
				$resp['err'] = $this->conn->error . "[{$sql}]";
			}
		}else{
			 // Update data
			 $sql = "UPDATE `policies_list` SET {$data} WHERE id = '{$id}'";
			 $save = $this->conn->query($sql); // Execute the query
		 
			 if ($save) {
				 $this->log_activity(date('Y-m-d'), date('H:i:s'), 'Policies', "Update -- $title -- $refer -- $date_issuance");
				 $this->settings->set_flashdata('success', "Policies successfully updated.");
				 $resp['status'] = 'success';
			 } else {
				 $resp['status'] = 'failed';
				 $resp['err'] = $this->conn->error . "[{$sql}]";
			 }
		}
		

		if($save){
			#attachement of file
			$dir = 'admin/policies/uploads/';
			if (!is_dir(base_app.$dir)) {
				mkdir(base_app.$dir);
			}
			
			if (isset($_FILES['img'])) {
				if (!empty($_FILES['img']['tmp_name']) && isset($_SESSION['userdata']) && isset($_SESSION['system_info'])) {
					$originalFileName = pathinfo($_FILES['img']['name'], PATHINFO_FILENAME);
					$fileExtension = pathinfo($_FILES['img']['name'], PATHINFO_EXTENSION);
					/* $fname = $dir . "(" . $originalFileName . ")" . time() . "." . $fileExtension; */
					$fname = $dir . $originalFileName . "_" . date("Y-m-d") . "." . $fileExtension;

					$move = move_uploaded_file($_FILES['img']['tmp_name'], base_app.$fname);
			
					if ($move) {
						$this->conn->query("UPDATE `policies_list` SET `avatar` = '{$fname}' WHERE id ='{$id}' ");
			
						if (!empty($avatar) && is_file(base_app.$avatar)) {
							unlink(base_app.$avatar);
						}
					}
				}
			}
			
		}else{
			$resp['status'] = 'failed';
			$resp['err'] = $this->conn->error."[{$sql}]";
		}
		return json_encode($resp);
	}
	
	function delete_policies(){	
		extract($_POST);

		$query2 = $this->conn->query("SELECT * FROM `policies_list` where id = '{$id}'");
		if (!$query2) {
			$resp['status'] = 'failed';
			$resp['error'] = $this->conn->error;
			return json_encode($resp);
		}

		$policies_data = $query2->fetch_assoc();
		$title = $policies_data['title'];
		$refer = $policies_data['refer'];

		$del = $this->conn->query("DELETE FROM `policies_list` where id = '{$id}'");
		if($del){
			$this->log_activity( date('Y-m-d'), date('H:i:s'), 'Policies', "Deleted -- $title -- $refer");
			$resp['status'] = 'success';
			$this->settings->set_flashdata('success',"Policies successfully deleted.");
		}else{
			$resp['status'] = 'failed';
			$resp['error'] = $this->conn->error;
		}
		return json_encode($resp);

	}

	function upload_files(){
		extract($_POST);
		$data = "";
		foreach($_POST as $k => $v){
			if(!in_array($k, array('id'))){
				$v = addslashes($v);
				if(!empty($data)) $data .=",";
				$data .= " `{$k}`='{$v}' ";
			}
		}
		
		$check = $this->conn->query("SELECT * FROM `uploads` where `title` = '{$title}' ".(!empty($id) ? " and id != {$id} " : "")." ")->num_rows;
		if($this->capture_err())
			return $this->capture_err();
		if($check > 0){
			$resp['status'] = 'failed';
			$resp['msg'] = "Uploads Already Exist.";
			return json_encode($resp);
			exit;
		}
		if(empty($id)){
			$sql = "INSERT INTO `uploads` set {$data} ";
			$save = $this->conn->query($sql);
			$id = $this->conn->insert_id;

			if ($save) {
				$this->log_activity(date('Y-m-d'), date('H:i:s'), 'Uploads', "Add -- $title -- $date_issuance");
				$this->settings->set_flashdata('success', "New uploads successfully saved.");
				$resp['status'] = 'success';
			} else {
				$resp['status'] = 'failed';
				$resp['err'] = $this->conn->error . "[{$sql}]";
			}
		}else{
			$sql = "UPDATE `uploads` set {$data} where id = '{$id}' ";
			$save = $this->conn->query($sql);

			if ($save) {
				$this->log_activity(date('Y-m-d'), date('H:i:s'), 'Uploads', "Updated -- $title -- $date_issuance");
				$this->settings->set_flashdata('success', "Uploads successfully updated.");
				$resp['status'] = 'success';
			} else {
				$resp['status'] = 'failed';
				$resp['err'] = $this->conn->error . "[{$sql}]";
			}
		}
		if($save){
			#attachement of file -denden 2024-02-27
			$dir = 'admin/memo/uploads/';
			if (!is_dir(base_app.$dir)) {
				mkdir(base_app.$dir);
			}
			if (isset($_FILES['img'])) {
				if (!empty($_FILES['img']['tmp_name']) && isset($_SESSION['userdata']) && isset($_SESSION['system_info'])) {
					$originalFileName = pathinfo($_FILES['img']['name'], PATHINFO_FILENAME);
					$fileExtension = pathinfo($_FILES['img']['name'], PATHINFO_EXTENSION);

					$fname = $originalFileName . "_" . date("Y-m-d") . "." . $fileExtension;
			
					$move = move_uploaded_file($_FILES['img']['tmp_name'], base_app.$dir.$fname);
			
					if ($move) {
						$this->conn->query("UPDATE `uploads` SET `upload_path` = '{$fname}' WHERE id ='{$id}' ");
			
						if (!empty($upload_path) && is_file(base_app.$upload_path)) {
							unlink(base_app.$upload_path);
						}
					}
				}
			}

		}else{
			$resp['status'] = 'failed';
			$resp['err'] = $this->conn->error."[{$sql}]";
		}
		return json_encode($resp);
	}

	function delete_upload_files(){	
		extract($_POST);

		$query2 = $this->conn->query("SELECT * FROM `uploads` where id = '{$id}'");
		if (!$query2) {
			$resp['status'] = 'failed';
			$resp['error'] = $this->conn->error;
			return json_encode($resp);
		}

		$policies_data = $query2->fetch_assoc();
		$title = $policies_data['title'];
		$date_issuance = $policies_data['date_issuance'];

		$date = new DateTime($date_issuance);

		$format_date = $date->format('Y-m-d');

		$del = $this->conn->query("DELETE FROM `uploads` where id = '{$id}'");
		if($del){
			$this->log_activity( date('Y-m-d'), date('H:i:s'), 'Policies', "Deleted -- $title -- $format_date");
			$resp['status'] = 'success';
			$this->settings->set_flashdata('success',"Uploaded memo successfully deleted.");
		}else{
			$resp['status'] = 'failed';
			$resp['error'] = $this->conn->error;
		}
		return json_encode($resp);

	}

	/* function save_offense(){
		extract($_POST);
		$data = "";
		foreach($_POST as $k =>$v){
			if(!in_array($k,array('id'))){
				$v = addslashes($v);
				if(!empty($data)) $data .=",";
				$data .= " `{$k}`='{$v}' ";
			}
		}
		$check = $this->conn->query("SELECT * FROM `offense_list` where `title` = '{$title}' ".(!empty($id) ? " and id != {$id} " : "")." ")->num_rows;
		if($this->capture_err())
			return $this->capture_err();
		if($check > 0){
			$resp['status'] = 'failed';
			$resp['msg'] = " Offense already exist.";
			return json_encode($resp);
			exit;
		}
		if(empty($id)){
			$sql = "INSERT INTO `offense_list` set {$data} ";
			$save = $this->conn->query($sql);
		}else{
			$sql = "UPDATE `offense_list` set {$data} where id = '{$id}' ";
			$save = $this->conn->query($sql);
		}
		if($save){
			$resp['status'] = 'success';
			if(empty($id))
				$this->settings->set_flashdata('success',"New Offense successfully saved.");
			else
				$this->settings->set_flashdata('success',"Offense successfully updated.");
		}else{
			$resp['status'] = 'failed';
			$resp['err'] = $this->conn->error."[{$sql}]";
		}
		return json_encode($resp);
	}
	function delete_offense(){	
		extract($_POST);
		$del = $this->conn->query("DELETE FROM `offense_list` where id = '{$id}'");
		if($del){
			$resp['status'] = 'success';
			$this->settings->set_flashdata('success',"Offense successfully deleted.");
		}else{
			$resp['status'] = 'failed';
			$resp['error'] = $this->conn->error;
		}
		return json_encode($resp);

	} */
	//------------------------------------------------------------------------------------------------------

	function save_leave_type(){
		extract($_POST);
		$data = "";
		foreach($_POST as $k =>$v){
			if(!in_array($k,array('id'))){
				$v = addslashes($v);
				if(!empty($data)) $data .=",";
				$data .= " `{$k}`='{$v}' ";
			}
		}
		$check = $this->conn->query("SELECT * FROM `leave_types` where `name` = '{$name}' ".(!empty($id) ? " and id != {$id} " : "")." ")->num_rows;
		if($this->capture_err())
			return $this->capture_err();
		if($check > 0){
			$resp['status'] = 'failed';
			$resp['msg'] = " Leave Type already exist.";
			return json_encode($resp);
			exit;
		}
		if(empty($id)){
			$sql = "INSERT INTO `leave_types` set {$data} ";
			$save = $this->conn->query($sql);
		}else{
			$sql = "UPDATE `leave_types` set {$data} where id = '{$id}' ";
			$save = $this->conn->query($sql);
		}
		if($save){
			$resp['status'] = 'success';
			if(empty($id))
				$this->settings->set_flashdata('success',"New Leave Type successfully saved.");
			else
				$this->settings->set_flashdata('success',"Leave Type successfully updated.");
		}else{
			$resp['status'] = 'failed';
			$resp['err'] = $this->conn->error."[{$sql}]";
		}
		return json_encode($resp);
	}
	function delete_leave_type(){
		extract($_POST);
		$del = $this->conn->query("DELETE FROM `leave_types` where id = '{$id}'");
		if($del){
			$resp['status'] = 'success';
			$this->settings->set_flashdata('success',"Leave Type successfully deleted.");
		}else{
			$resp['status'] = 'failed';
			$resp['error'] = $this->conn->error;
		}
		return json_encode($resp);

	}
	function generate_string($input, $strength = 10) {
		
		$input_length = strlen($input);
		$random_string = '';
		for($i = 0; $i < $strength; $i++) {
			$random_character = $input[mt_rand(0, $input_length - 1)];
			$random_string .= $random_character;
		}
	 
		return $random_string;
	}

	/* function upload_files(){
		extract($_POST);
		$data = "";
		if(empty($upload_code)){
			while(true){
				$code = $this->generate_string($this->permitted_chars);
				$chk = $this->conn->query("SELECT * FROM `uploads` where dir_code ='{$code}' ")->num_rows;
				if($chk <= 0){
					$upload_code = $code;
					$resp['upload_code'] =$upload_code;
					break;
				}
			}
		}

		if(!is_dir(base_app.'uploads/blog_uploads/'.$upload_code))
			mkdir(base_app.'uploads/blog_uploads/'.$upload_code);
		$dir = 'uploads/blog_uploads/'.$upload_code.'/';
		$images = array();
		for($i = 0;$i < count($_FILES['img']['tmp_name']); $i++){
			if(!empty($_FILES['img']['tmp_name'][$i])){
				$fname = $dir.(time()).'_'.$_FILES['img']['name'][$i];
				$f = 0;
				while(true){
					$f++;
					if(is_file(base_app.$fname)){
						$fname = $f."_".$fname;
					}else{
						break;
					}
				}
				$move = move_uploaded_file($_FILES['img']['tmp_name'][$i],base_app.$fname);
				if($move){
					$this->conn->query("INSERT INTO `uploads` (dir_code,user_id,file_path)VALUES('{$upload_code}','{$this->settings->userdata('id')}','{$fname}')");
					$this->capture_err();
					$images[] = $fname;
				}
			}
		}
		$resp['images'] = $images;
		$resp['status'] = 'success';
		return json_encode($resp);
	} */	

	function save_employee(){
		foreach($_POST as $k =>$v){
			$_POST[$k] = addslashes($v);
		}
		extract($_POST);
		$chk = $this->conn->query("SELECT * FROM `employee_meta` where meta_field ='employee_id' and  meta_value = '{$employee_id}' ".($id>0? " and user_id!= '{$id}' " : ""))->num_rows;
		$this->capture_err();
		if($chk > 0){
			$resp['status'] = 'failed';
			$resp['msg'] = "Employee ID already exist in the database. Please review and try again.";
			return json_encode($resp);
			exit;
		}
		$chk2 = $this->conn->query("SELECT * FROM `users` where username ='{$username}' ".($id>0? " and id!= '{$id}' " : ""))->num_rows;
		$this->capture_err();
		if($chk2 > 0){
			$resp['status'] = 'failed';
			$resp['msg'] = "Username is not available. Please review and try again.";
			return json_encode($resp);
			exit;
		}
		$data = "";
		foreach($_POST as $k =>$v){
			if(in_array($k,array('firstname','lastname','middlename','username','type'))){
				if(!empty($data)) $data.=" , ";
				$data .= " `{$k}` = '{$v}' ";
			}
		}

		if (empty($id)) {
			$data .= ", `password` = md5('{$employee_id}') ";
			$sql1 = "INSERT INTO `users` SET {$data} ";
		} else {
			$sql1 = "UPDATE `users` SET {$data} WHERE id = '{$id}' ";
		}
		
		$save1 = $this->conn->query($sql1);
		$this->capture_err();
		if(!$save1){
			$resp['status'] = 'failed';
			$resp['error_sql'] = $sql1;
		}
		$user_id = empty($id) ? $this->conn->insert_id : $id ;
		$this->conn->query("DELETE FROM `employee_meta` where user_id = '{$user_id}' and meta_field not in ('leave_type_ids','leave_type_credits') ");
		$this->capture_err();
		$data = "";
		foreach($_POST as $k =>$v){
			if(!in_array($k,array('id','avatar'))){
				if(!empty($data)) $data .=",";
				$v = addslashes($v);
				$data .= " ('{$user_id}','{$k}','{$v}') ";
			}
		}
		if(!isset($approver)){
			$data .= ", ('{$user_id}','approver','off') ";
		}
		
		$sql = "INSERT INTO `employee_meta` (`user_id`,`meta_field`,`meta_value`) VALUES {$data} ";
		$save = $this->conn->query($sql);
		$this->capture_err();
		if($save){
			$resp['status'] = 'success';
			$resp['id'] = $user_id;
			if(empty($id)){
				//logs
				$this->log_activity(date('Y-m-d'), date('H:i:s'), 'Employee', "Add -- $employee_id -- $lastname -- $firstname");
				$this->settings->set_flashdata('success',"New Employee successfully saved.");
			}
			else{
				//logs
				$this->log_activity(date('Y-m-d'), date('H:i:s'), 'Employee', "Update -- $employee_id -- $lastname -- $firstname");
				$this->settings->set_flashdata('success',"Employee Details successfully updated.");
			}
			$dir = 'uploads/';
			if(!is_dir(base_app.$dir))
				mkdir(base_app.$dir);
			if(isset($_FILES['img'])){
				if(!empty($_FILES['img']['tmp_name']) && isset($_SESSION['userdata']) && isset($_SESSION['system_info'])){
					$fname = $dir.$user_id."_user.".(pathinfo($_FILES['img']['name'], PATHINFO_EXTENSION));
					$move =  move_uploaded_file($_FILES['img']['tmp_name'],base_app.$fname);
					if($move){
						$this->conn->query("UPDATE `users` set `avatar` = '{$fname}' where id ='{$user_id}' ");
						if(!empty($avatar) && is_file(base_app.$avatar))
							unlink(base_app.$avatar);
					}
				}
			}
		}else{
			$resp['status'] = 'failed';
			$resp['err'] = $this->conn->error."[{$sql}]";
		}
		return json_encode($resp);
	}
	function reset_password(){
		extract($_POST);
		$employee_id = $this->conn->query("SELECT meta_value FROM `employee_meta` where meta_field = 'employee_id' and user_id = '{$id}'")->fetch_array()['meta_value'];
		$this->capture_err();
		$update = $this->conn->query("UPDATE `users` set `password` = md5('{$employee_id}') where id = '{$id}'");
		$this->capture_err();
		$resp['status']='success';
		$this->log_activity(date('Y-m-d'), date('H:i:s'), 'Employee', "Reset Password -- $employee_id");
		$this->settings->set_flashdata('success',' User\'s password successfully updated. ');
		return json_encode($resp);
	}
	function delete_img(){
		extract($_POST);
		if(is_file(base_app.$path)){
			if(unlink(base_app.$path)){
				$del = $this->conn->query("DELETE FROM `uploads` where file_path = '{$path}'");
				$resp['status'] = 'success';
			}else{
				$resp['status'] = 'failed';
				$resp['error'] = 'failed to delete '.$path;
			}
		}else{
			$resp['status'] = 'failed';
			$resp['error'] = 'Unkown '.$path.' path';
		}
		return json_encode($resp);
	}
	function save_emp_leave_type(){
		extract($_POST);
		
		$leave_type_ids = array();
		$leave_type_credits = array();

		if(isset($leave_type_id) && count($leave_type_id) > 0){
			$leave_type_ids = $leave_type_id;
			foreach($leave_type_id as $k=> $v){
				$leave_type_credits[$v] = $leave_credit[$k];
			}
		}

		$this->conn->query("DELETE FROM `employee_meta` where (meta_field = 'leave_type_ids' or meta_field = 'leave_type_credits') and user_id = '{$user_id}' ");

		$leave_type_ids = implode(',',$leave_type_ids);
		$leave_type_credits = json_encode($leave_type_credits);
		$data = "('{$user_id}','leave_type_ids','{$leave_type_ids}')";
		$data .= ",('{$user_id}','leave_type_credits','{$leave_type_credits}')";
		$save = $this->conn->query("INSERT INTO `employee_meta` (`user_id`,`meta_field`,`meta_value`) Values {$data}");
		$this->capture_err();
		$resp['status'] = 'success';
		$this->settings->set_flashdata("success"," Leave Type Credits successfully updated.");
		return json_encode($resp);
	}
	function save_application(){
		extract($_POST);
		$data = "";
		foreach($_POST as $k =>$v){
			if(!in_array($k,array('id'))){
				$v = addslashes($v);
				if(!empty($data)) $data .=",";
				$data .= " `{$k}`='{$v}' ";
			}
		}
		$meta_qry = $this->conn->query("SELECT * FROM employee_meta where user_id = '{$user_id}' ");
		while($row = $meta_qry->fetch_assoc()){
			$meta[$row['meta_field']] = $row['meta_value'];
		}
		$leave_type_credits = isset($meta['leave_type_credits']) ? json_decode($meta['leave_type_credits']) : array();
		$ltc = array();
		foreach($leave_type_credits as $k=> $v){
			$ltc[$k] = $v;
		}
		$used = $this->conn->query("SELECT COALESCE(sum(`leave_days`),0) as total FROM leave_applications where user_id = '{$user_id}' and `leave_type_id` = '{$leave_type_id}' and date_format(date_start,'%Y') = '".date('Y')."' and date_format(date_end,'%Y') = '".date('Y')."' and status = 1 ")->fetch_array()['total'];
		$allowed = (isset($ltc[$leave_type_id])) ? $ltc[$leave_type_id] : 0;
		$available =  $allowed - $used;
		if(!isset($ltc[$leave_type_id])){
			$resp['status'] = 'failed';
			$resp['msg'] = " Selected employee does not have previlege for the selected leave type.";
			return json_encode($resp);
			exit;
		}
		if($leave_days > $available){
			$resp['status'] = 'failed';
			$resp['msg'] = " Days of Leave is greated than available days of selected leave type. Available ({$available}).";
			return json_encode($resp);
			exit;
		}
		$check = $this->conn->query("SELECT * FROM `leave_applications` where (('{$date_start}' BETWEEN date(date_start) and date(date_end)) OR ('{$date_end}' BETWEEN date(date_start) and date(date_end))) and user_id = '{$user_id}' and status in (0,1) ".(!empty($id) ? " and id != {$id} " : "")." ")->num_rows;
		if($this->capture_err())
			return $this->capture_err();
		if($check > 0){
			$resp['status'] = 'failed';
			$resp['msg'] = " Leave date has conflict to other applications. Please review and try again.";
			return json_encode($resp);
			exit;
		}
		if(empty($id)){
			$sql = "INSERT INTO `leave_applications` set {$data} ";
			$save = $this->conn->query($sql);
		}else{
			$sql = "UPDATE `leave_applications` set {$data} where id = '{$id}' ";
			$save = $this->conn->query($sql);
		}
		if($save){
			$resp['status'] = 'success';
			if(empty($id))
				$this->settings->set_flashdata('success',"New Leave Application successfully saved.");
			else
				$this->settings->set_flashdata('success',"Leave Application successfully updated.");
		}else{
			$resp['status'] = 'failed';
			$resp['err'] = $this->conn->error."[{$sql}]";
		}
		return json_encode($resp);
	}
	function delete_application(){
		extract($_POST);
		$del = $this->conn->query("DELETE FROM `leave_applications` where id = '{$id}'");
		if($del){
			$resp['status'] = 'success';
			$this->settings->set_flashdata('success',"Leave Application successfully deleted.");
		}else{
			$resp['status'] = 'failed';
			$resp['error'] = $this->conn->error;
		}
		return json_encode($resp);

	}
	function update_status(){
		extract($_POST);
		$data = "";
		foreach($_POST as $k =>$v){
			if(!in_array($k,array('id'))){
				$v = addslashes($v);
				if(!empty($data)) $data .=",";
				$data .= " `{$k}`='{$v}' ";
			}
		}
		$sql = "UPDATE `leave_applications` set {$data} where id = '{$id}' ";
		$save = $this->conn->query($sql);
		$this->capture_err();
		$resp['status'] = 'success';
		return json_encode($resp);
	}
}

$Master = new Master();
$action = !isset($_GET['f']) ? 'none' : strtolower($_GET['f']);
$sysset = new SystemSettings();
switch ($action) {
	case 'save_department':
		echo $Master->save_department();
	break;
	case 'delete_department':
		echo $Master->delete_department();
	break;
	case 'save_designation':
		echo $Master->save_designation();
	break;
	case 'delete_designation':
		echo $Master->delete_designation();
	break;
	case 'save_announcement':
		echo $Master->save_announcement();
	break;
	case 'delete_announcement':
		echo $Master->delete_announcement();
	break;
	case 'save_memo':
		echo $Master->save_memo();
	break;
	case 'delete_memo':
		echo $Master->delete_memo();
	break;
	case 'save_policies':
		echo $Master->save_policies();
	break;
	case 'delete_policies':
		echo $Master->delete_policies();
	break;
	case 'save_offense':
		echo $Master->save_offense();
	break;
	case 'delete_offense':
		echo $Master->delete_offense();
	break;
	case 'save_leave_type':
		echo $Master->save_leave_type();
	break;
	case 'delete_leave_type':
		echo $Master->delete_leave_type();
	break;
	case 'upload_files':
		echo $Master->upload_files();
	break;
	case 'delete_upload_files':
		echo $Master->delete_upload_files();
	break;
	case 'save_employee':
		echo $Master->save_employee();
	break;
	case 'reset_password':
		echo $Master->reset_password();
	break;
	case 'save_emp_leave_type':
		echo $Master->save_emp_leave_type();
	break;
	case 'save_application':
		echo $Master->save_application();
	break;
	case 'delete_application':
		echo $Master->delete_application();
	break;
	case 'update_status':
		echo $Master->update_status();
	break;
	case 'delete_img':
		echo $Master->delete_img();
	break;
	default:
		// echo $sysset->index();
		break;
}