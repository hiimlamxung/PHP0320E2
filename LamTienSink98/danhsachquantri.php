<?php 
	include_once"function/config.php";
	include_once"function/function.php";

	$rs=danhsach();


	// echo"<pre>";
	// print_r($rs);

 ?>
<!DOCTYPE html>
<html lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Danh sách quản trị viên</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

	</head>
	<body>
		<table class="table table-hover">
			<thead>
				<tr>
				<th style="text-align: center;" colspan="4">
					Danh Sách Quản Trị Viên
				</th>
				</tr>

				<tr>
					<th>Mã</th>
					<th>Tài khoản</th>
					<th>Mật khẩu</th>
					<th>Họ tên</th>
				</tr>				

			</thead>
			<tbody>
				<?php 
					foreach ($rs as $key => $value) {
				?>
				<tr>
					<td><?php echo $value['MaQT']; ?></td>
					<td><?php echo $value['Taikhoan']; ?></td>
					<td><?php echo $value['MatKhau']; ?></td>
					<td><?php echo $value['Hoten']; ?></td>
				</tr>
				<?php
					}

				 ?>
			</tbody>
		</table>
		<script src="//code.jquery.com/jquery.js"></script>

		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

	</body>
</html>