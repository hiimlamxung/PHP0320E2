<!DOCTYPE html>
<html lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Demo Form Validation</title>

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="css/bootstrap.min.css">

	</head>
	<body>	
		//onsubmit="return validition();"
		<div class="container">
			<div class="row" style="margin-top: 50px;">
				<div class="col-md-6">
					<form action="action.php" method="POST" onsubmit="return validition();" name="frm_login">
						<legend>Đăng ký học viên</legend>
					
						<div class="form-group">
							<label for="">Họ tên <span id="error_name" style="color: red;">(*)</span></label>
							<input type="text" class="form-control" id="txt_name" name="name" placeholder="Nhập họ tên đầy đủ" onblur="checkName();" />
						</div>

						<div class="form-group">
							<label for="">Số điện thoại <span id="error_phone" style="color: red;">(*)</span></label>
							<input type="number" name="phone" onblur="checkPhone();" class="form-control" id="txt_phone" />
						</div>

						<div class="form-group">
							<label for="">Email/ Tài khoản <span id="error_email" style="color: red;">(*)</span></label>
							<input type="text" onblur="checkMail();" name="email" class="form-control" id="txt_email" />
						</div>

						<div class="form-group">
							<label for="">Mật khẩu <span id="error_pass" style="color: red;">(*)</span></label>
							<input type="password" onblur="checkPass();" class="form-control" name="pass" id="txt_pass" />
						</div>

						<div class="form-group">
							<label for="">Xác nhận mật khẩu <span id="error_conpass" style="color: red;">(*)</span></label>
							<input onblur="check_conPass();" type="password" class="form-control" name="repass" id="txt_conpass" />
						</div>
					
						<button type="submit" name="submit" class="btn btn-primary">
							Đăng ký
						</button>
						<button type="reset" class="btn btn-danger">
							Nhập lại
						</button>

					</form>
				</div>
				<div class="col-md-6" id="view_data">
				</div>
			</div>
		</div>


		<!-- jQuery -->
		<script src="js/jquery.js"></script>
		<!-- Bootstrap JavaScript -->
		<script src="js/bootstrap.min.js"></script>
		<script src="js/myJava.js"></script>
	</body>
</html>