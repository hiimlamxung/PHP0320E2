<?php 
include_once 'model/Member_m.php';

class Member_c extends Member_m{
	private $mem;
	function __construct(){
		$this->mem=new Member_m();
	}

	public function member(){
		if (isset($_GET['method'])) {
			$method = $_GET['method'];
		}else{
			$method = 'index';
		}

		switch ($method) {
			case 'add':
			if(isset($_POST['submit_add'])){
				$name=$_POST['name'];
				$phone=$_POST['phone'];
				$email=$_POST['email'];
				$faculty=$_POST['faculty'];
				$address=$_POST['address'];

				$add=$this->mem->addMember($faculty,$name,$phone,$email,$address);
				if($add){
					$_SESSION['noti']=1;
					header("Location:index.php?page=list-member");
				}else{
					echo "<script>alert('Lỗi thêm mới!');</script>";
				}
			}
			$rsFaculty=$this->mem->getFaculty();
					// echo "<pre>";
					// print_r($rsFaculty);
					// echo "</pre>";

			include_once 'views/member/add-member.php';
			break;

			case 'edit':
			$rsFaculty=$this->mem->getFaculty();
			$rs=$this->mem->search_Member_ID($_GET['id']);
			foreach ($rs as $key => $value) {
				$checkIdFaculty=$value['id_khoa'];
			}
			if(isset($_POST['edit_member'])){
				$id_hocvien=$_GET['id'];
				$id_khoa=$_POST['id_khoa'];
				$tenHV=$_POST['tenHV'];
				$phoneHV=$_POST['phoneHV'];
				$email=$_POST['email'];
				$address=$_POST['address'];
			echo $id_hocvien."<br>";
			echo $id_khoa."<br>";
			echo $tenHV."<br>";
			echo $phoneHV."<br>";
			echo $email."<br>";
			echo $address."<br>";
			$edit=$this->mem->edit_Member($id_hocvien,$id_khoa,$tenHV,$phoneHV,$email,$address);
			}
			include_once 'views/member/edit-member.php';
			break;
			case 'del':
			if(isset($_GET['id'])){
				$id=(int)$_GET['id'];
				$del=$this->mem->del_member($id);
				if($del){
					$_SESSION['noti']=2;
					header("Location:index.php?page=list-member");
				}else{
					echo "<script>alert('Lỗi xóa!');</script>";
				}
			}else{
				header("Location:index.php?page=list-member");
			}
			break;

			default:

			if(isset($_POST['submit_search'])){
				$key='%'.$_POST['key'].'%';
				$rs=$this->mem->search_member($key);
			}else{
						$row=3;//Số thành phần,học viên,tin,..  1 trang
						$number=count($this->mem->getNumber());//Tổng số bản ghi
						$pagination=ceil($number/$row);

						if(isset($_GET['pages']) && $_GET['pages']<=$pagination){
							$pages=$_GET['pages'];
						}else{
							$pages=1;
						}
						$form=($pages-1)*$row;
						$rs=$this->mem->getMember($form,$row);
					}
					include_once 'views/member/list-member.php';
					if(isset($pagination)){
						include_once"views/member/pagination_member.php";
					}

					break;
				}


			}
		}

		?>