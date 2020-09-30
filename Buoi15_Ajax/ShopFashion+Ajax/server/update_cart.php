<?php
	session_start();
	$qty=$_POST['qty']; 
	$id=$_POST['id']; 
	if($qty<1){
		unset($_SESSION['cart'][$id]);
	}else{
		$_SESSION['cart'][$id]['qty']=$qty;
		echo "Sửa thành công";
	}


 ?>