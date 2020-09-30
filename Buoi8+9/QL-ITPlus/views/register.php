<form action="" method="POST" onsubmit="return Submit_Frm();">
	<legend>Đăng ký tài khoản</legend>

	<div class="form-group">
		<label for="">Họ tên <span id="error_name" style="color: red;">(*)</span></label>
		<input type="text" required name="name" id="name" class="form-control" value="" placeholder="Nhập họ tên của bạn" onblur="CheckName();">
	</div>

	<div class="form-group">
		<label for="">Tài khoản (Email) <span id="error_email" style="color: red;">(*)</span></label>
		<input type="email" required name="user" id="email" class="form-control" value="" placeholder="Nhập email của bạn" onblur="CheckEmail();">
	</div>

	<div class="form-group">
		<label for="">Mật khẩu <span id="error_passw" style="color: red;">(*)</span></label>
		<input type="password" required name="passw" id="passw" class="form-control" placeholder="*******" onblur="CheckPass();">
	</div>

	<div class="form-group">
		<label for="">Xác nhận lại mật khẩu <span id="error_repassw" style="color: red;">(*)</span></label>
		<input type="password" required name="confirm_pass" id="confirm_pass" class="form-control" placeholder="******" onblur="CheckRePass();">
	</div>

	<button type="submit" name="sm_register" class="btn btn-danger">Đăng ký </button>
	<span>Bạn đã có tài khoản <a href="index.php">Đăng nhập</a></span>

</form>
<?php 
	if(isset($_POST['sm_register'])){
		$name=$_POST['name'];
		$email=$_POST['user'];
		$passw=md5($_POST['passw']);
		$sql="SELECT* FROM tbl_user WHERE email='$email'";
		$query=mysqli_query($conn,$sql);
		$num=mysqli_num_rows($query);
		if($num==0){
			$sql="INSERT INTO tbl_user (name,email,pass) VALUES('$name','$email','$passw');";
			mysqli_query($conn,$sql);
			echo "<h5 style='color:red;'>Đăng ký thành công, bạn có thể trở lại đăng nhập</h5>";

		}
		else {
			echo "<h5 style='color:red;'>Rất tiếc, Email của bạn đã được khởi tạo trước đó bằng một tài khoản khác, vui lòng sử dụng Email khác !</h5>";
		}
	}



 ?>