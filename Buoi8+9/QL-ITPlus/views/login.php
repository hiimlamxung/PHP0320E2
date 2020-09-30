<?php 
	if(isset($_POST['sm_login'])){
		//Hàm mysqli_real_escape_string trong trường hợp này giúp tránh bị hack SQL(tìm hiểu thêm)
		$user=mysqli_real_escape_string($conn,$_POST['user']);
		$password= mysqli_real_escape_string($conn,$_POST['passw']);
		$passw=md5($password);


		$sql="SELECT * FROM tbl_user WHERE email = '$user' AND pass='$passw'";
		$query = mysqli_query($conn,$sql);
		$num=mysqli_num_rows($query);
		$row=mysqli_fetch_array($query);

		if($num==1){// giai đoạn Dang nhap thanh cong
			$_SESSION['id']=$row['id'];
			$_SESSION['name']=$row['name'];
			header("Location:admin/index.php");
		}else {
			$error="<h3 style='color:red;'>Tài khoản hoặc mật khẩu không đúng!</h3>";
		}
	}

 ?>


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
		if(isset($error)){
			echo $error;
		}
	 ?>

</form>