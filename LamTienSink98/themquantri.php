<?php 
	include_once"function/config.php";
	include_once"function/function.php";

	if(isset($_POST['submit_add'])){
		$tk=$_POST['tk'];
		$mk=$_POST['mk'];
		$name=$_POST['name'];
		addQT($tk,$mk,$name);
		header("Location:danhsachquantri.php");
	}


 ?>
<!DOCTYPE html>
<html lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Thêm Quản trị</title>


		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

	</head>
	<body>
		<form action="" method="POST" role="form" onsubmit="Submit_Quantri()">
			<legend>Thêm mới quản trị viên</legend>
		
			<div class="form-group">
				<label for="">Tài Khoản</label>
				<input type="text" class="form-control" id="tk" name="tk">
			</div>
			<div class="form-group">
				<label for="">Mật khẩu</label>
				<input type="text" class="form-control" id="mk" name="mk">
			</div>			
			<div class="form-group">
				<label for="">Họ tên</label>
				<input type="text" class="form-control" id="name" name="name">
			</div>
		
			
		
			<button type="submit" class="btn btn-primary" name="submit_add">Submit</button>
		</form>


		<script src="//code.jquery.com/jquery.js"></script>

		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
		<script src="js/MyJs.js"></script>
	</body>
</html>