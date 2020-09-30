<?php  
	$strCon = 'mysql:host=localhost;dbname=php0320e2_itplus';
	$user = 'root';
	$pass = '';

	try {

		$pdo = new PDO($strCon, $user, $pass);
		$pdo->query('SET NAMES utf8');

	} catch (PDOException $e) {
		echo $e->getMessage();
		exit();
	}


	// Hiển thị DS học viên trong database
	$sql1 = "SELECT *FROM tbl_hocvien";
	foreach ($pdo->query($sql1) as $value) {
		echo $value['tenHV']." ";
	}

	// Thêm mới học viên
	$name = 'Cao Thành Trung';
	$phone = '0909888999';
	$email = 'tungtk@gmail.com';
	$addres = 'Cao Bằng';
	$khoa = 1;

	$sql2 = "INSERT INTO tbl_hocvien(id_khoa, tenHV, phoneHV, email, address) VALUES (:id_khoa, :tenHV, :phoneHV, :email, :address)";
	$pre = $pdo->prepare($sql2); // Chuẩn bị thưc thi câu lệnh sql

	$pre->bindParam(':id_khoa', $khoa);
	$pre->bindParam(':tenHV', $name);
	$pre->bindParam(':phoneHV', $phone);
	$pre->bindParam(':email', $email);
	$pre->bindParam(':address', $addres);

	$add = $pre->execute();
	if ($add) {
		echo "Thêm mới thành công!";
	}else{
		echo "Lỗi không thêm được!";
	}
?>