<?php 

session_start();
$_SESSION['sum']=0;
foreach ($_SESSION['cart'] as $key => $value) {
	$_SESSION['sum']+=$value['price']*$value['qty'];
}
echo number_format($_SESSION['sum']).' VNĐ'; 
?>