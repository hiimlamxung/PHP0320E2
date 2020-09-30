<?php  
	
	include_once 'config/myConfig.php';

	class Member_m extends Connect
	{
		
		function __construct()
		{
			parent::__construct(); // Thực hiện việc kết nối CSDL khi khởi tạo đối tượng. Biến $conn luôn tồn tại
		}

		// Các hàm truy vấn với CSDL
		public function getMember($from, $row){
			$sql = "SELECT *FROM tbl_hocvien, tbl_khoa WHERE tbl_hocvien.id_khoa = tbl_khoa.id_khoa ORDER BY tbl_hocvien.id_hocvien DESC LIMIT $from, $row";
			return $this->pdo->query($sql);


			// $sql = "SELECT *FROM tbl_hocvien";
			// $query = mysqli_query($this->conn, $sql);
			// $result = array();

			// while ($row = mysqli_fetch_array($query)) {
			// 	$result[] = $row;
			// }

			// return $result;
		}

		public function getNumber(){
			$sql = "SELECT *FROM tbl_hocvien";
			$pre = $this->pdo->prepare($sql);
			$pre->execute();

			return $pre->fetchAll(PDO::FETCH_ASSOC);
		}

		// Lấy ra dữ liệu trong khoa
		public function getFaculty(){
			$sql = "SELECT *FROM tbl_khoa";
			$pre = $this->pdo->prepare($sql);
			$pre->execute();

			return $pre->fetchAll(PDO::FETCH_ASSOC);
		}

		// Thêm mới học viên
		public function addMember($id_khoa, $tenHV, $phoneHV, $email, $address){
			$sql = "INSERT INTO tbl_hocvien(id_khoa, tenHV, phoneHV, email, address) VALUES (:id_khoa, :tenHV, :phoneHV, :email, :address)";
			$pre = $this->pdo->prepare($sql);
			$pre->bindParam(':id_khoa', $id_khoa);
			$pre->bindParam(':tenHV', $tenHV);
			$pre->bindParam(':phoneHV', $phoneHV);
			$pre->bindParam(':email', $email);
			$pre->bindParam(':address', $address);

			return $pre->execute();
		}

		// Xóa học viên
		public function del_member($id){
			$sql = "DELETE FROM tbl_hocvien WHERE id_hocvien = :id_hocvien";
			$pre = $this->pdo->prepare($sql);
			$pre->bindParam(':id_hocvien', $id);

			if($pre->execute()){
				$_SESSION['noti'] = 2;
				header('Location: index.php?page=list-member');
			}else{
				echo "<script>alert('Lỗi không xóa được!');</script>";
			}
		}

		// Tìm kiếm
		public function search_member($key){
			$sql = "SELECT *FROM tbl_hocvien, tbl_khoa WHERE tbl_hocvien.id_khoa = tbl_khoa.id_khoa AND tbl_hocvien.phoneHV LIKE :key ORDER BY tbl_hocvien.id_hocvien DESC";

			$pre = $this->pdo->prepare($sql);
			$pre->bindParam(':key', $key);
			$pre->execute();

			return $pre->fetchAll(PDO::FETCH_ASSOC);

		}

	}

?>