<?php 
	include_once"../Controller/Product_c.php";
	$product=new Product_c();
	if(isset($_POST['id'])){
		$id=$_POST['id'];
		$rs=$product->del($id);
		if($rs){
			echo "Xóa thành công";
		}else{
			echo "Không thành công";
		}
	}
	



 ?>