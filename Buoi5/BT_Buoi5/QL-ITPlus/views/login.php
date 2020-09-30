<?php 
	session_start();
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
	
	<form action="" method="POST">
		<legend>Đăng nhập hệ thống</legend>

		<div class="form-group">
			<label for="">Username</label>
			<input type="email" required name="user" class="form-control" value="" placeholder="Nhập email của bạn">
		</div>

		<div class="form-group">
			<label for="">Password</label>
			<input type="password" required name="passw" class="form-control" value="" placeholder="Nhập pass">
		</div>

		<button type="submit" name="sm_login" class="btn btn-primary">Đăng nhập</button>
		<span>Nếu bạn chưa có tài khoản? <a href="index.php?page=register" style="color: red;">Đăng ký</a></span>
		<?php 
			$path="views/data.txt";
			$file_r=fopen($path,'r') or die("Không thể mở file !");
			$arr=array();
			while (!feof($file_r)) {
				$row=fgets($file_r);
				if(!empty($row)){
					array_push($arr,explode("*", $row));
				}
			}
			if(isset($_POST['sm_login'])){
				$user=$_POST['user'];
				$pass=$_POST['passw'];

				foreach ($arr as $key => $value) {
					if($user==$value[1]){
						if($pass==$value[2]){
							echo "Thành công";
							header("Location: admin/index.php");
							setcookie('time_login','Sau 10s trang sex ddang nhaajp laji',time()+10);
							$_SESSION['name']=$value[1];

						}
								
					}
				}
				?>

					<p style="color: red;">Sai tên tài khoản hoặc mật khẩu ! Vui lòng kiểm tra lại !</p>
				<?php


			}

			fclose($file_r);
			// echo "<pre>";
			// print_r($arr);
			// echo "</pre>";



		 ?>

	</form>
</body>
</html>