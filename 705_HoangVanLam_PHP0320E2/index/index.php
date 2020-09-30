<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
	<?php 
	session_start();
	echo "Cám ơn anh/chị ".$_SESSION['name']. " đã đặt phòng! Chúng tôi sẽ liên hệ xác nhận lại với anh/chị trong 24h tới!";




	 ?>
</body>
</html>