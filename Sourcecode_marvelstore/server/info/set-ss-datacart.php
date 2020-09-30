<?php 
session_start();
$ajax_flag=1;
include_once "../../controller/product_c.php";
$show = new Product_c();
if(!isset($_SESSION['cart']) && isset($_COOKIE['id_user'])){ //Trường hợp tắt trình duyệt đi ss cart sẽ mất, nên khi bật lại cần lấy lại data ss cart cho user
	$get_data_user=$show->get_datauser_ID($_COOKIE['id_user']);
	$_SESSION['cart']=json_decode($get_data_user['data_cart'],true);

}
if(isset($_SESSION['cart']) && isset($_COOKIE['id_user'])){
	$_SESSION['cart']=$show->Update_product_info_inSScart($_SESSION['cart']);

	$edit=$show->edit_data_cart($_SESSION['cart'],$_COOKIE['id_user']);
echo "<pre>";
		print_r($_SESSION['cart']);
		echo "</pre>";
}

?>