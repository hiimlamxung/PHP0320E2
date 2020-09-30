<?php 
	// function call_replace($content){
	// 	$str=str_replace("Xin chào", "Hello World", $content); //$content đại diện cho toàn bộ
	// 	//nội dung html của trang
	// 	return $str;
	// }
	// ob_start('call_replace');//Bật bộ nhớ đệm
ob_start();

 echo $content='
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Cache</title>
</head>
<body>
	<h3>
		Xin chào các bạn !
	</h3>
</body>
</html>';
	ob_clean();//Xóa bộ nhớ đệm( xóa $content)
	$data=ob_get_contents();
?>
<?php
ob_flush();//tắt bộ nhớ đệm
echo $data."Dữ liệu lưu trong bộ nhớ đệm";

 ?>