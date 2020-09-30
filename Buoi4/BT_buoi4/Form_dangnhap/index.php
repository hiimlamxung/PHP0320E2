<!DOCTYPE html>
<html lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Title Page</title>

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
	</head>
	<body>
		<div class="container">
			<div class="col-md-8">
				<div class="row">
					<form action="" method="POST" role="form">
						<legend>Đăng nhập tài khoản</legend>
					
						<div class="form-group">
							<label for="">Tài khoản</label>
							<input type="text" class="form-control" id="" name="user" placeholder="Tài khoản" required="">
						</div>
						<div class="form-group">
							<label for="">Mật khẩu</label>
							<input type="password" class="form-control" id="" name="pass" placeholder="Mật khẩu" required="">
						</div>
					
						
					
						<button type="submit" class="btn btn-primary" name="submit">Đăng nhập</button>
					</form>
					<?php 
						$path="acount.txt";
						$file_r=fopen($path,'r') or die("Không thể mở file !");
						$arr=array();
						while (!feof($file_r)) {
							array_push($arr, explode("*", fgets($file_r)));
						}

						if(isset($_POST['submit'])){
							$user=$_POST['user'];
							$pass=$_POST['pass'];


							foreach ($arr as $key => $value) {
								if($_POST['user']==$value[1]){
									if($_POST['pass']==$value[2]){
										echo "Thành công";
										header("Location: thongbao.php");
									}
								
								}
							}
							?>

							<p style="color: red;">Sai tên tài khoản hoặc mật khẩu ! Vui lòng kiểm tra lại !</p>
							<?php

						}
						echo "<pre>";
						print_r($arr);
						echo "</pre>";

						fclose($file_r);
					 ?>
				</div>
			</div>
		</div>


	
		<script src="//code.jquery.com/jquery.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
	</body>
</html>