<?php 
	include_once'../../controller/Member_c.php';
	$id=$_POST['id'];
	$member=new Member_c();
	$del=$member->delete($id);
	if($del){
		echo "<span style='color: green;'>Xoá thành công! </span> ";
	}else{
		echo "<span style='color: red;'>Lỗi không xóa được!</span>";
	}





 ?>