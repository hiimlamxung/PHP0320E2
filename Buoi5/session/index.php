<?php 
	session_start();// KHởi tạo ss, Luôn được đặt lên trên đầu
	$_SESSION['name']='Tung';
	$_SESSION['age']='30';
	$_SESSION['city']='Ha Noi';

	// //huy bo ss name
	// unset($_SESSION['name']);

	//Pha hủy toàn bộ session
	// session_destroy();
	//hoặc
	session_unset();

	if(isset($_SESSION['name'])){
		echo $_SESSION['name'];
	}
	else echo " Session khong ton tai !";
 ?>