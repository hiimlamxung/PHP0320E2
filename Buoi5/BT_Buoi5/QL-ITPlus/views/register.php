<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
	

<form action="" method="POST">
	<legend>Đăng ký tài khoản</legend>

	<div class="form-group" >
		<label for="">Họ tên <span style="color: red;">(*)</span></label>
		<input type="text" required name="name" class="form-control" value="" placeholder="Nhập họ tên của bạn">
	</div>

	<div class="form-group">
		<label for="">Tài khoản (Email) <span style="color: red;">(*)</span></label>
		<input type="email" required name="user" class="form-control" value="" placeholder="Nhập email của bạn">
	</div>

	<div class="form-group">
		<label for="">Mật khẩu <span style="color: red;">(*)</span></label>
		<input type="password" required name="passw" class="form-control" placeholder="*******">
	</div>

	<div class="form-group">
		<label for="">Xác nhận lại mật khẩu <span style="color: red;">(*)</span></label>
		<input type="password" required name="confirm_pass" class="form-control" placeholder="******">
	</div>

	<button type="submit" name="sm_register" class="btn btn-danger">Đăng ký </button>
	<span>Bạn đã có tài khoản <a href="index.php">Đăng nhập</a></span>
	<?php 
		$path="views/data.txt";
		$file_a=fopen($path, 'a') or die('Khong the mo file');
		if(isset($_POST['sm_register'])){
			$name=$_POST['name'];
			$email=$_POST['user'];
			$pass=$_POST['passw'];
			$repass=$_POST['confirm_pass'];

			
			fwrite($file_a,$name.'*'.$email.'*'.$pass.'*'.$repass."\n");
			fclose($file_a);
			?>
			<p style="color: red">Đăng ký thành công !</p>
			<?php





		}




	 ?>

</form>
</body>
</html>