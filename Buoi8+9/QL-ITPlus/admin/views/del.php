<?php 
	if(isset($_GET['id'])){
		$id=(int)$_GET['id'];
		$del=del($id);
		header("Location:index.php");
	}
	else{
		header("Location:index.php");
	}


 ?>