<?php 
	include_once"../../controller/Member_c.php";
	$member= new Member_c();
	$faculty=$member->getFaculty();
	// echo "<pre>";
	// print_r($faculty);
	// echo "</pre>";


 	foreach ($faculty as $key => $value) {
 ?>
 		<option value="<?php echo $value['id_khoa']; ?>"><?php echo $value['tenKhoa']; ?></option>
 <?php
 	}
 ?>
