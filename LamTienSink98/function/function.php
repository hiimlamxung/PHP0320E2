<?php 
	function addQT($taikhoan,$matkhau,$hoten){
		global $conn;
		$sql="INSERT INTO tblquantri (Taikhoan,MatKhau,Hoten) VALUES ('$taikhoan','$matkhau','$hoten')";
		$query=mysqli_query($conn,$sql);



	}

	function danhsach(){
		global $conn;
		$sql="SELECT * FROM tblquantri";
		$query=mysqli_query($conn,$sql);
		$result=mysqli_fetch_all($query,MYSQLI_ASSOC);
		return $result;
	}


 ?>