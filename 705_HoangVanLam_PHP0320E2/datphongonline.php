<?php 
	session_start();
	if(isset($_POST['submit'])){
		$name=$_POST['name'];
		$_SESSION['name']=$name;
		header("Location:index/index.php");
	}


 ?>
<!DOCTYPE html>
<html lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Đặt phòng online</title>

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">


	</head>
	<body>
		<form style="width: 500px; border: solid 1px red;" method="POST" >
			<table>
			<h3 style="color:green; text-align:center;">ĐẶT PHÒNG ONLINE</h3>
			<tr><td><label>Ngày đến<span>(*)</span>:</label></td><td><input type="text" id="date_in" name="date_in"><br></td></tr>
			<tr><td><label>Ngày đi<span>(*)</span>:</label></td><td><input type="text"  id="date_out" name="date_out"><br></td></tr>
			<tr><td><label>Loại phòng<span>(*)</span>:</label></td><td><input type="text" id="room_type" name="room_type"><br></td></tr>
			<tr><td><label>Họ tên<span>(*)</span>:</label></td><td><input type="text" id="name" name="name"><br></td></tr>
			<tr><td><label>Số điện thoại<span>(*)</span>:</label></td><td><input type="number" id="phone" name="phone"><br></td></tr>
			<tr><td><label>Email<span>(*)</span>:</label></td><td><input type="email" id="email" name="email"><br></td></tr>
			<tr><td><label>Nội dung<span>(*)</span>:</label></td><td><textarea cols="50" rows="5" id="note"></textarea></td></tr>

			</table>
			<button type="submit" onclick="return submit_frm3()" name="submit">Đặt phòng</button><button type="reset">Nhập lại</button>
		</form>


		<script src="//code.jquery.com/jquery.js"></script>

		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

 		<script src="Hello World"></script>
 		<script src="js/MyJs.js"></script>
	</body>
</html>