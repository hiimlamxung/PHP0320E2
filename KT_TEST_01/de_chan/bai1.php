<?php session_start();  ?>
<!DOCTYPE html>
<html lang="">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Title Page</title>

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
	<script src="../../ckeditor_test2/ckeditor.js"></script>
	<style type="text/css">
		#search{
			margin-left: 400px;
		}
		input[type=text]{
			width: 500px;
		}
		img{
			margin-left: 200px;
		}
	</style>


</head>
<body>
	<h1 class="text-center">Quản lý đồng hồ</h1><br>
	<div class="col-md-12"><img src="img/banner1.png"></div>
	<div id="search"><input type="text" name="" id="key" placeholder="Tìm kiếm theo tên sản phẩm"><input type="submit" name="" id="submit_search" value="Tìm kiếm"></div>
	<div class="container-fluid">
		<div id="noti"></div>
		
		<table class="table table-hover">
			<thead>
				<tr>
					<th>#</th>
					<th>Tên đồng hồ</th>
					<th>Thương hiệu</th>
					<th>Giá Tiền</th>
					<th>Ngày đăng</th>
					<th>Mô tả</th>
					<th>Chức năng</th>
				</tr>
			</thead>
			<tbody>
				
			</tbody>
		</table>
	</div>	


	<!-- jQuery -->
	<script src="js/jquery-3.5.1.min.js"></script>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css" integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ" crossorigin="anonymous">

	<!-- Latest compiled and minified JavaScript -->
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
	<script src="js/MyJava.js"></script>

</body>
</html>