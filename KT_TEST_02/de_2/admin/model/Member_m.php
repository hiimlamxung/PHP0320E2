<?php 
	include_once"config/Myconfig.php";
	
	class Member_m extends Connect
	{
		
		public function __construct()
		{
			parent::__construct();
		}

		//Lấy thông tin member theo ID
		public function getMember_ID($id){
			$sql="SELECT * FROM tbl_user WHERE id=:id";
			$pre=$this->pdo->prepare($sql);
			$pre->bindParam(':id',$id);			
			$pre->execute();
			return $info=$pre->fetchAll(PDO::FETCH_ASSOC);
		}

		//Check form Update
		public function check_update($user_edit,$email_edit){
			$sql="SELECT * FROM tbl_user WHERE username=:user";
			$pre=$this->pdo->prepare($sql);
			$pre->bindParam(':user',$user_edit);			
			$pre->execute();
			$_SESSION['check_userEdit']=count($pre->fetchAll(PDO::FETCH_ASSOC));
			

			$sql="SELECT * FROM tbl_user WHERE email=:email";
			$pre=$this->pdo->prepare($sql);
			$pre->bindParam(':email',$email_edit);			
			$pre->execute();
			$_SESSION['check_emailEdit']=count($pre->fetchAll(PDO::FETCH_ASSOC));
			

		}

		//Update
		public function update($id,$user_edit,$pass_edit,$email_edit,$hobby_edit,$description_edit){
			$sql="UPDATE tbl_user SET username=:user_edit,password=:pass_edit,email=:email_edit,hobby=:hobby_edit,description=:description_edit WHERE id=:id";
			$pre=$this->pdo->prepare($sql);
			$pre->bindParam('id',$id);
			$pre->bindParam('user_edit',$user_edit);
			$pre->bindParam('pass_edit',$pass_edit);
			$pre->bindParam('email_edit',$email_edit);
			$pre->bindParam('hobby_edit',$hobby_edit);
			$pre->bindParam('description_edit',$description_edit);
			return $pre->execute();
		}

	}






 ?>