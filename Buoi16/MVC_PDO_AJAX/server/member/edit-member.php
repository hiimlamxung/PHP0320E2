<?php 
	include_once "../../controller/Member_c.php";
	$member= new Member_c();
	$id_hocvien=$_POST['id_hocvien'];
	$id_khoa=$_POST['id_khoa'];
	$tenHV=$_POST['tenHV'];
	$phoneHV=$_POST['phoneHV'];
	$email=$_POST['email'];
	$address=$_POST['address'];

	$edit=$member->editMember($id_khoa,$tenHV,$phoneHV,$email,$address,$id_hocvien);
	if($edit){
		echo " Sửa thành công";
	}else{
		echo "Lỗi";
	}



 ?>