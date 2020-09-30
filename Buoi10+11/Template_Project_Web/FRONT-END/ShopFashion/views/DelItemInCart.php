<?php 
	if(isset($_GET['id'])){
		$id_del=(int)$_GET['id'];
		unset($_SESSION['cart'][$id_del]);
		$_SESSION['DelItemCart_noti']=1;
		header("Location:index.php?page=cart");
	}

 ?>