<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Cache</title>
</head>
<body>
	<h1>Xin chào các bạn</h1>
	<?php 
	// echo time()."<br>"; // Tỏng số giây từ 1970 đến thời điểm hiện tại
	// echo fileatime('cache.php')."<br>";//Thời gian truy xuất file
	if(time()-fileatime('cache.php')<10){
		include_once"cache.php";
	}else{
		ob_start();
		for ($i=1; $i <=1000 ; $i++) { 
			echo "Hello World";
		}
		$data=ob_get_contents();
		file_put_contents('cache.php', $data);
		ob_end_flush();

	}

	 ?>
	 <h4>
	 	Nội dung thay đổi
	 </h4>
</body>
</html>