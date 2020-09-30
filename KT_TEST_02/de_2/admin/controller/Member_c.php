<?php 
include_once"model/Member_m.php";
class Member_c extends Member_m
{
	protected $mem;

	public function __construct()
	{
		$this->mem=new Member_m();
	}


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
			case 'profile':
			$id=$_SESSION['accountID'];
			$info_member=$this->mem->getMember_ID($id);
					// echo "<pre>";
					// print_r($info_member);
					// echo "</pre>";
			if(isset($_POST['submit_edit'])){
				$id=$_SESSION['accountID'];
				$user_edit=$_POST['user_edit'];
				$pass_edit=$_POST['pass_edit'];
				$email_edit=$_POST['email_edit'];
				$hobby_edit=$_POST['hobby_edit'];
				$description_edit=$_POST['description_edit'];

				$this->mem->check_update($user_edit,$email_edit);
				foreach ($info_member as $key => $value) {
					if(($_SESSION['check_userEdit']==1 && $user_edit!=$value['username'] )|| ($_SESSION['check_emailEdit']==1 && $email_edit!=$value['email'])){
						echo "<script>alert('Username hoặc Email bạn muốn sửa đã tồn tại !');</script>";
					}else{
						$edit=$this->mem->update($id,$user_edit,$pass_edit,$email_edit,$hobby_edit,$description_edit);
						if($edit){
							echo "<script>alert('Update thành công !');</script>";
							header("Location:index.php?page=profile");
						}else{
							echo "<script>alert('Thất bại !');</script>";
						}
					}
				}

			}


			include_once "view/profile.php";
			break;
			default:
			echo "Trang khong ton tai";
			break;
		}
	}

}


?>