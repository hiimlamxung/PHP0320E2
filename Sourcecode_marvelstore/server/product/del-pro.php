<?php 
session_start();
$ajax_flag=1;
include_once "../../controller/product_c.php";
$add=new Product_c();

if (isset($_POST['id']) && $_POST['id']>0) {
	$id = (int)$_POST['id'];
	if (isset($_SESSION['cart'][$id])) {
		unset($_SESSION['cart'][$id]);

			//Cập nhật lại data user
		if(isset($_COOKIE['id_user']) && isset($_COOKIE['name_user'])){
		// echo $_COOKIE['id_user']."<br>";
			$edit_data=$add->edit_data_cart($_SESSION['cart'],$_COOKIE['id_user']);
		}
	}else {
		echo 'Sản phẩm này không có trong giỏ hàng';
	}

}else{
	echo "id sản phẩm không hợp lệ";
}

?>