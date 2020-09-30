<?php  
	include_once 'model/Member_m.php';

	class Member_c extends Member_m
	{

		private $mem;
		
		function __construct()
		{
			$this->mem = new Member_m();
		}

		public function member(){
			if (isset($_GET['method'])) {
				$method = $_GET['method'];
			}else{
				$method = 'index';
			}

			switch ($method) {
				case 'add':
					if (isset($_POST['submit_add'])) {
						$name = $_POST['name'];
						$phone = $_POST['phone'];
						$email = $_POST['email'];
						$faculty = $_POST['faculty'];
						$addres = $_POST['addres'];

						$add = $this->mem->addMember($faculty, $name, $phone, $email, $addres);

						if ($add) {
							$_SESSION['noti'] = 1;
							header('Location: index.php?page=list-member');
						}else{
							echo "<script>alert('Lỗi thêm mới!');</script>";
						}
					}

					$rsFaculty = $this->mem->getFaculty();
					include_once 'views/member/add-member.php';
					break;
 
				case 'del':
					if (isset($_GET['id'])) {
						$id = (int)$_GET['id'];
						
						$this->mem->del_member($id);
					}else{
						header("Location: index.php?page=list-member");
					}
					break;

				case 'update':
					include_once 'views/member/update-member.php';
					break;
				
				default:

					if (isset($_POST['submit_search'])) {
						$key = '%'.$_POST['key'].'%';
						$rs = $this->mem->search_member($key);
					}else{
						$row = 3; // số tin một trang
						$number = count($this->mem->getNumber()); // Tổng số bản ghi
						$pagination = ceil($number/$row);
						
						if (isset($_GET['pages'])) {
							$pages = $_GET['pages'];
						}else{
							$pages = 1;
						}
						
						$from = ($pages - 1) * $row;
						$rs = $this->mem->getMember($from, $row);
					}

					include_once 'views/member/list-member.php';
					break;
			}

			
		}

	}

?>