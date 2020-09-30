<?php 
	$strCon='mysql:host=localhost;dbname=php0320e2_itplus';
	$user='root';
	$pass='';

	try{
		$pdo = new PDO($strCon,$user,$pass);
		$pdo->query('SET NAMES utf8');

	}catch (PDOException $e){
		echo $e->getMessage();
		exit();
	}
//Hiên thị dữ liệu trong database
	$sql = "SELECT * FROM tbl_hocvien";
	foreach ($pdo->query($sql) as $value) {
		echo $value['tenHV']."<br> ";
	}

//Thêm mới học viên
	$name="Cao Thanh Trung";
	$phone='0398299330';
	$email="tungtk@gmail.com";
	$address="Cao Bang";
	$khoa=1;

//Hoặc viết	$sql="INSERT INTO tbl_hocvien (id_khoa,tenHV,phoneHV,email,address) VALUES (?,?,?,?,?)"; 
	$sql="INSERT INTO tbl_hocvien (id_khoa,tenHV,phoneHV,email,address) VALUES (:id_khoa,:tenHV,:phoneHV,:email,:address)";//Viết kiểu placesholder

	$pre=$pdo->prepare($sql);//Chuẩn bị thực thi câu lệnh sql

	$pre->bindParam(':id_khoa',$khoa);
	$pre->bindParam(':tenHV',$name);
	$pre->bindParam(':phoneHV',$phone);
	$pre->bindParam(':email',$email);
	$pre->bindParam(':address',$address);

	$add=$pre->execute();
	if($add){
		echo "Them moi thanh cong";
	}else{
		echo"Loi khong them moi duoc";
	}



 ?>