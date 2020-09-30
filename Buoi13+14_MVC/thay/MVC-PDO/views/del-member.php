<?php 
	if(isset($_GET['id'])){
		$id_hocvien=$_GET['id'];
		$this->mem->delMember($id_hocvien);
		header("Location: index.php");
	}




 ?>