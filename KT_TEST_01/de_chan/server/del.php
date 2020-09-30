<?php 
	session_start();
	include_once"../controller/Product_c.php";
	if(isset($_GET['id'])){
		$id=$_GET['id'];
		$product=new Product_c();
		$rs=$product->delProduct($id);
		if($rs){
			echo "Xoá thành công!";
		}else{
			echo "Xóa thất bại!";
		}
	
	}




 ?>