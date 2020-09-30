<?php  
	session_start();
	$id = $_POST['id'];
	$qty = $_POST['qty'];

	if ($qty <= 0) {
		unset($_SESSION['cart'][$id]);
	}else{
		$_SESSION['cart'][$id]['qty'] = $qty;
		echo "Cập nhật thành công!";
	}
?>