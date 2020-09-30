<?php 
	include_once"config/Myconfig.php";
	
	class Member_m extends Connect
	{
		
		public function __construct()
		{
			parent::__construct();
		}
//Xử lý đăng nhập
		public function login($user,$pass){
			$sql="SELECT * FROM tbl_user WHERE username=:user AND password=:pass";
			$pre=$this->pdo->prepare($sql);
			$pre->bindParam(':user',$user);
			$pre->bindParam(':pass',$pass);
			$pre->execute();
			$rs=$pre->fetchAll(PDO::FETCH_ASSOC);
			return count($rs);
		}
//Check form đăng ký
		public function check_register($user_rg,$pass_rg,$email_rg,$hobby_rg){
			$sql="SELECT * FROM tbl_user WHERE username=:user";
			$pre=$this->pdo->prepare($sql);
			$pre->bindParam(':user',$user_rg);			
			$pre->execute();
			$_SESSION['check_userRG']=count($pre->fetchAll(PDO::FETCH_ASSOC));
			

			$sql="SELECT * FROM tbl_user WHERE email=:email";
			$pre=$this->pdo->prepare($sql);
			$pre->bindParam(':email',$email_rg);			
			$pre->execute();
			$_SESSION['check_emailRG']=count($pre->fetchAll(PDO::FETCH_ASSOC));
			

		}
//Đăng ký thành viên
		public function register($user_rg,$pass_rg,$email_rg,$hobby_rg){
			$sql="INSERT INTO tbl_user (username,password,email,hobby) VALUES (:username,:password,:email,:hobby)";
			$pre=$this->pdo->prepare($sql);
			$pre->bindParam('username',$user_rg);
			$pre->bindParam('password',$pass_rg);
			$pre->bindParam('email',$email_rg);
			$pre->bindParam('hobby',$hobby_rg);
			return $pre->execute();
		}
//Lấy thông tin member theo user
		public function getMember_user($user){
			$sql="SELECT * FROM tbl_user WHERE username=:user";
			$pre=$this->pdo->prepare($sql);
			$pre->bindParam(':user',$user);			
			$pre->execute();
			return $info=$pre->fetchAll(PDO::FETCH_ASSOC);
		}
	}




 ?>