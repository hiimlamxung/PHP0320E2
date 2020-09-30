<?php 
$conn=mysqli_connect('localhost','root','','dbtest2') or die("Can't connect database");
	if($conn){
		mysqli_set_charset($conn,'utf8');
	}
	else{
		echo "Can't connect database";
		exit();
	}

	$sql="SELECT * FROM tbl_banner";
	$query=mysqli_query($conn,$sql);
	// $result=array();
	// if(mysqli_num_rows($query)>0){
	// 	while ($row=mysqli_fetch_array($query,MYSQLI_ASSOC)) {
	// 		$result[]=$row;
	// 	}
	// }

	//Tương tự,ngắn gọn hơn rất nhiều
	$result=mysqli_fetch_all($query,MYSQLI_ASSOC);


	// echo "<pre>";
	// print_r($result);
	// echo "</pre>";

	echo $a=json_encode($result);
	// echo "<pre>";
	// print_r(json_decode($a));
	// echo "</pre>";

 ?>