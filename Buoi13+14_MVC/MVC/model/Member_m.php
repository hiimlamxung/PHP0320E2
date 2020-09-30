<?php 
include_once'config/myConfig.php';

class Member_m extends Connect{
	public function __construct(){
		parent::__construct();// Thực hiện việc kết nối csdl  khi nếu bạn khởi tạo đối tượng.(Biến $conn luôn tồn tại)
	}

	//Các hàm truy vấn với CSDL
	public function getMember($form,$row){
		//Viết Kiểu PDO
		$sql = "SELECT *FROM tbl_hocvien,tbl_khoa WHERE tbl_hocvien.id_khoa=tbl_khoa.id_khoa ORDER BY tbl_hocvien.id_hocvien DESC LIMIT $form,$row";
		return $this->pdo->query($sql);

	}

	public function getNumber(){
		$sql="SELECT * FROM tbl_hocvien";
		$pre=$this->pdo->prepare($sql);
		$pre->execute();

		return $pre->fetchAll(PDO::FETCH_ASSOC);//tương tự giống mysqli
	}





	//Lay du lieu bang khoa
	public function getFaculty(){
		$sql="SELECT* FROM tbl_khoa";
		$pre=$this->pdo->prepare($sql);
		$pre->execute();

		return $pre->fetchAll(PDO::FETCH_ASSOC); //tương tự giống mysqli
	}
	//Them moi hoc vien
	public function addMember($id_khoa,$tenHV,$phoneHV,$email,$address){
		$sql="INSERT INTO tbl_hocvien(id_khoa,tenHV,phoneHV,email,address) VALUES (:id_khoa,:tenHV,:phoneHV,:email,:address)";
		$pre=$this->pdo->prepare($sql);
		$pre->bindParam(':id_khoa',$id_khoa);
		$pre->bindParam(':tenHV',$tenHV);
		$pre->bindParam(':phoneHV',$phoneHV);
		$pre->bindParam(':email',$email);
		$pre->bindParam(':address',$address);

		return $pre->execute();

	}


	//Xoa hoc vien
	public function del_member($id){
		$sql="DELETE FROM tbl_hocvien WHERE id_hocvien=:id_hocvien";
		$pre=$this->pdo->prepare($sql);
		$pre->bindParam(':id_hocvien',$id);
		$add=$pre->execute();
		if($add){
			$_SESSION['noti']=2;
			header("Location:index.php?page=list-member");
		}else{
			echo "<scrip>alert('Lỗi không xóa được !');</scrip>";
		}

	}



	//Tìm kiếm
	public function search_member($key){
		$sql="SELECT * FROM tbl_hocvien,tbl_khoa WHERE tbl_hocvien.id_khoa=tbl_khoa.id_khoa AND (tbl_hocvien.phoneHV LIKE :key OR tbl_hocvien.tenHV LIKE :key) ORDER BY tbl_hocvien.id_hocvien DESC";
		$pre=$this->pdo->prepare($sql);
		$pre->bindParam(':key',$key);
		$pre->execute();

		return $pre->fetchAll(PDO::FETCH_ASSOC);
	}

	public function search_member_ID($id_hocvien){
		$sql="SELECT * FROM tbl_hocvien WHERE id_hocvien=:id_hocvien";
		$pre=$this->pdo->prepare($sql);
		$pre->bindParam(':id_hocvien',$id_hocvien);
		$pre->execute();
		return $pre->fetchAll(PDO::FETCH_ASSOC);
	}

	public function edit_Member($id_hocvien,$id_khoa,$tenHV,$phoneHV,$email,$address){
		$sql="UPDATE tbl_hocvien SET id_khoa=:id_khoa,tenHV=:tenHV,phoneHV=:phoneHV,email=:email,address=:address WHERE id_hocvien=:id_hocvien";
		$pre=$this->pdo->prepare($sql);
		$pre->bindParam(':id_hocvien',$id_hocvien);
		$pre->bindParam(':id_khoa',$id_khoa);
		$pre->bindParam(':tenHV',$tenHV);
		$pre->bindParam(':phoneHV',$phoneHV);
		$pre->bindParam(':email',$email);
		$pre->bindParam(':address',$address);
		$add=$pre->execute();
		if($add){
			echo " sua thanh cong !!!!!";
			header("Location:index.php?page=list-member");
		}else{
			echo "Loi !!!";
			echo $id_hocvien."<br>";
			echo $id_khoa."<br>";
			echo $tenHV."<br>";
			echo $phoneHV."<br>";
			echo $email."<br>";
			echo $address."<br>";
		}
	}

}


?>