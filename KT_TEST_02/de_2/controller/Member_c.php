<?php 
	include_once"model/Member_m.php";
	class Member_c extends Member_m
	{
		protected $mem;

		public function __construct()
		{
			$this->mem=new Member_m();
		}

		// public function login($user,$pass){
		// 	return $this->mem->login($user,$pass);
		// }

		public function view(){
			if(isset($_GET['page'])){
				$page=$_GET['page'];
			}else{
				$page='home';
			}

			switch ($page) {
				case 'home':
					include_once"view/home.php";
					break;
				case 'login-register':
				if(isset($_POST['submit_login'])){
					$user=$_POST['user'];
					$pass=$_POST['pass'];
					$rs=$this->mem->login($user,$pass);
					if($rs==1){
						$info_member=$this->mem->getMember_user($user);
						foreach ($info_member as $key => $value) {
							$_SESSION['accountID']=$value['id'];
							$_SESSION['username']=$value['username'];
							echo $_SESSION['accountID'];
							echo $_SESSION['username'];
						}
						header("Location:admin/index.php");
					}else{
						echo "<script>alert('Bạn nhập sai thông tin đăng nhập !');</script>";
					}

				}

				if(isset($_POST['submit_register'])){
					$user_rg=$_POST['user_rg'];
					$pass_rg=$_POST['pass_rg'];
					$email_rg=$_POST['email_rg'];
					$hobby_rg=$_POST['hobby_rg'];
					$this->mem->check_register($user_rg,$pass_rg,$email_rg,$hobby_rg);
					if($_SESSION['check_userRG']==1 ||  $_SESSION['check_emailRG']==1){
						echo "<script>alert('Username hoặc email đã có người khởi tạo, vui lòng điền thông tin khác !');</script>";
					unset($_SESSION['check_userRG']);
					unset($_SESSION['check_emailRG']);
					}else{
						$rs=$this->mem->register($user_rg,$pass_rg,$email_rg,$hobby_rg);
						if($rs){
							echo "<script>alert('Thêm thành công!');</script>";
						}else{
							echo "<script>alert('Thêm thất bại!');</script>";
						}
					}
				}
					include_once"view/login-register.php";
					break;
				default:
					echo "Trang khong ton tai";
					break;
			}
		}

	}


 ?>