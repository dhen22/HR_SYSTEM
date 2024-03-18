<?php
require_once '../config.php';
class Login extends DBConnection {
	private $settings;
	public function __construct(){
		global $_settings;
		$this->settings = $_settings;

		parent::__construct();
		ini_set('display_error', 1);
	}
	public function __destruct(){
		parent::__destruct();
	}
	public function index(){
		echo "<h1>Access Denied</h1> <a href='".base_url."'>Go Back.</a>";
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

	/* public function login(){
		extract($_POST);
	
		$qry = $this->conn->query("SELECT * FROM users WHERE username = '$username' AND password = md5('$password')");
		if($qry->num_rows > 0){
			// Set user data
			foreach($qry->fetch_array() as $k => $v){
				if(!is_numeric($k) && $k != 'password'){
					$this->settings->set_userdata($k, $v);
				}
			}
	
			// Set login type
			$this->settings->set_userdata('login_type', 1);
	
			// Log activity
			$this->log_activity(date('Y-m-d'), date('H:i:s'), 'Login', "User logged in -- $username");
	
			return json_encode(array('status' => 'success'));
		} else {
			return json_encode(array('status' => 'incorrect', 'last_qry' => "SELECT * FROM users WHERE username = '$username' AND password = md5('$password')"));
		}
	} */

	public function login(){
		extract($_POST);
	
		$qry = $this->conn->query("SELECT * FROM users WHERE username = '$username' AND password = md5('$password')");
		if($qry->num_rows > 0){
			//Kuha data sa query
			$user_data = $qry->fetch_assoc();
			$lastname = $user_data['lastname'];
			$firstname = $user_data['firstname'];
	
			
			foreach($user_data as $k => $v){
				if(!is_numeric($k) && $k != 'password'){
					$this->settings->set_userdata($k, $v);
				}
			}
	
			$this->settings->set_userdata('login_type', 1);
	
			//logs
			$this->log_activity(date('Y-m-d'), date('H:i:s'), 'Login', "User logged -- $username -- ($lastname, $firstname) ");
	
			return json_encode(array('status' => 'success'));
		} else {
			return json_encode(array('status' => 'incorrect', 'last_qry' => "SELECT * FROM users WHERE username = '$username' AND password = md5('$password')"));
		}
	}
	

	public function logout(){
		if($this->settings->sess_des()){
			redirect('admin/login.php');
		}
	}
	function login_user(){
		extract($_POST);
		$qry = $this->conn->query("SELECT * from clients where email = '$email' and password = md5('$password') ");
		if($qry->num_rows > 0){
			foreach($qry->fetch_array() as $k => $v){
				$this->settings->set_userdata($k,$v);
			}
			$this->settings->set_userdata('login_type',1);
		$resp['status'] = 'success';
		}else{
		$resp['status'] = 'incorrect';
		}
		if($this->conn->error){
			$resp['status'] = 'failed';
			$resp['_error'] = $this->conn->error;
		}
		return json_encode($resp);
	}
}
$action = !isset($_GET['f']) ? 'none' : strtolower($_GET['f']);
$auth = new Login();
switch ($action) {
	case 'login':
		echo $auth->login();
		break;
	case 'login_user':
		echo $auth->login_user();
		break;
	case 'logout':
		echo $auth->logout();
		break;
	default:
		echo $auth->index();
		break;
}

