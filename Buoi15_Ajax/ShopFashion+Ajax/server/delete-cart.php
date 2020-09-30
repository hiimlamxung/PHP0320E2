<?php 
	session_start();
	$id=$_POST['id'];
	if(isset($_SESSION['cart']) && !empty($_SESSION['cart'])){
		unset($_SESSION['cart'][$id]);
		echo "Xoá thành công !";
	}




 ?>