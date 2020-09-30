<?php  
	include_once '../../controller/Member_c.php';
	$member = new Member_c();

	$name = $_POST['name'];
	$phone = $_POST['phone'];
	$email = $_POST['email'];
	$address = $_POST['addres'];
	$id_khoa = $_POST['idKhoa'];

	$add = $member->addMember($id_khoa, $name, $phone, $email, $address);

	if ($add) {
		echo "<span style='color: green;'>Thêm mới thành công!</span>";
	}else{
		echo "<span style='color: red;'>Lỗi không thêm được được!</span>";
	}

?>