<?php  

	/**
	 * 
	 */
	include_once '../../config/myConfig.php';

	class Member_m extends Connect
	{
		
		function __construct(){
			parent::__construct(); // Gọi hàm __construct bên myConfig, luôn tồn tại $pdo để kết nối tới CSDL
		}
		//Lấy ra thông tin học viên
		public function getMember(){
			$sql="SELECT * FROM tbl_hocvien ORDER BY id_hocvien DESC";
			$pre=$this->pdo->prepare($sql);
			$pre->execute();
			$result = $pre->fetchAll(PDO::FETCH_ASSOC);
			return $result;
		}

		//Xóa học viên
		public function delete_member($id){
			$sql="DELETE FROM tbl_hocvien WHERE id_hocvien=:id";
			$pre = $this->pdo->prepare($sql);
			$pre->bindParam(':id',$id);
			return $pre->execute();
		}
		//Tìm kiếm học viên
		public function getSearch($key){
			$sql="SELECT * FROM tbl_hocvien WHERE phoneHV LIKE :key ORDER BY id_hocvien DESC";
			$pre=$this->pdo->prepare($sql);
			$pre->bindParam(':key',$key);
			$pre->execute();
			$result=$pre->fetchAll(PDO::FETCH_ASSOC);
			return $result;
		}

		//Thêm mới học viên
		public function addMember($id_khoa,$name,$phone,$email,$address){
			$sql="INSERT INTO tbl_hocvien(id_khoa,tenHV,phoneHV,email,address) VALUES (:id_khoa,:tenHV,:phoneHV,:email,:address)";
			$pre=$this->pdo->prepare($sql);
			$pre->bindParam(':id_khoa',$id_khoa);
			$pre->bindParam(':tenHV',$name);
			$pre->bindParam(':phoneHV',$phone);
			$pre->bindParam(':email',$email);
			$pre->bindParam(':address',$address);
			return $pre->execute();

		}

		//lấy thông tin khoa
		public function getFaculty(){
			$sql="SELECT* FROM tbl_khoa";
			$pre=$this->pdo->prepare($sql);
			$pre->execute();
			$result=$pre->fetchAll(PDO::FETCH_ASSOC);
			return $result;
		}


		//Sua thong tin hoc vien
		public function editMember($id_khoa,$tenHV,$phoneHV,$email,$address,$id_hocvien){
			$sql="UPDATE tbl_hocvien SET id_khoa=:id_khoa,tenHV=:tenHV,phoneHV=:phoneHV,email=:email,address=:address WHERE id_hocvien=:id_hocvien";
			$pre=$this->pdo->prepare($sql);
			$pre->bindParam(':id_khoa',$id_khoa);
			$pre->bindParam(':tenHV',$tenHV);
			$pre->bindParam(':phoneHV',$phoneHV);
			$pre->bindParam(':email',$email);
			$pre->bindParam(':address',$address);
			$pre->bindParam(':id_hocvien',$id_hocvien);
			return $pre->execute();

		}

		//Lay thong tin 1 hoc vien theo id
		public function getMember_ID($id){
			$sql="SELECT * FROM tbl_hocvien WHERE id_hocvien=:id";
			$pre=$this->pdo->prepare($sql);
			$pre->bindParam(':id',$id);
			$pre->execute();
			return $result=$pre->fetchAll(PDO::FETCH_ASSOC);
		}
	}
	


?>