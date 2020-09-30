<?php 

 function test_củaLâm(){//hàm ngắn gọn hơn list_member
 	global $conn;
		$sql="SELECT* FROM tbl_hocvien";
		$query= mysqli_query($conn,$sql);
		$test=mysqli_fetch_all($query,MYSQLI_ASSOC);
		return $test;
 }
//Hien thi danh sach hoc vien
	function list_member(){
		global $conn;
		$sql="SELECT* FROM tbl_hocvien";
		$query= mysqli_query($conn,$sql);
		$result=array();
		while ($row=mysqli_fetch_array($query)) {
			$result[]=$row;
		}

		return $result;

	}
	
//Lay ra thong tin khoa
	function getAll_Faculty(){
		global $conn;
		$sql="SELECT *From tbl_khoa";
		$query=mysqli_query($conn,$sql);

		$result=array();
		while ($row=mysqli_fetch_array($query)) {
			$result[]=$row;
		}
		return $result;
	}





//Them moi hoc vien
	function add_member($idkhoa,$nameHV,$phone,$email,$address){
		global $conn;
		$sql="INSERT INTO tbl_hocvien (idKhoa,nameHV,phone,email,address) VALUES ($idkhoa,'$nameHV','$phone','$email','$address');";
		$query=mysqli_query($conn,$sql);
		if ($query) {
			$_SESSION['check'] = 1;
			header("Location: index.php");
		}else{
			echo "Lỗi thêm dữ liệu!";
		}
	}

//Tim kiem
	function search($key){
			global $conn;
		$sql="SELECT *FROM tbl_hocvien WHERE phone LIKE '%$key%' OR nameHV LIKE '%$key%'" ;
		$query=mysqli_query($conn,$sql);

		$result=array();
		while ($row=mysqli_fetch_array($query)) {
			$result[]=$row;
		}
		return $result;
	}

//Xoa hoc vien
	function del($id){
		global $conn;
		$sql="DELETE FROM tbl_hocvien WHERE idHV=$id";
		$query=mysqli_query($conn, $sql);
		echo $query;
		if ($query) {
			$_SESSION['check'] = 2;
			header("Location: index.php");
		}else{
			echo "Lỗi xóa dữ liệu!";
		}
	}
//Sửa thông tin học viên
	function edit($idHV,$idKhoa,$nameHV,$email,$phone,$address){
		global $conn;
		$sql="UPDATE tbl_hocvien SET idKhoa=$idKhoa,nameHV='$nameHV',email='$email',phone='$phone',address='$address' WHERE idHV=$idHV";
		$query=mysqli_query($conn,$sql);
		if($query){
			$_SESSION['check']=3;
			header("Location:index.php");
		}else{
			echo"Cập nhật thất bại";
		}

	}
//Kiem tra so dien thoai trug
	function checkPhone($phone){
		global $conn;
		$sql="SELECT phone FROM tbl_hocvien WHERE phone='$phone'";
		$query=mysqli_query($conn,$sql);
		return mysqli_num_rows($query);
	}
 ?>

