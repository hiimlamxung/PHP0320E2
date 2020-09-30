<?php  
	include_once '../../controller/Member_c.php';
	$member = new Member_c();

	$id = $_POST['id'];
	$del = $member->delete($id);
	//echo "<span style='color: green;'>Xóa thành công!</span>";

	if ($del) {
		echo "<span style='color: green;'>Xóa thành công!</span>";
	}else{
		echo "<span style='color: red;'>Lỗi không xóa được!</span>";
	}

?>