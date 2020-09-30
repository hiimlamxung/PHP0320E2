<!DOCTYPE html>
<html lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Form Đăng ký IT Plus</title>

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="css/bootstrap.min.css">

	</head>
	<body>	
		<div class="container">
			<div class="row" style="margin-top: 50px;">
				<div class="col-md-6">
					<form action="" method="POST" name="frm_login" onsubmit="return validation();">
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
							<label for="">Email <span id="error_email" style="color: red;">(*)</span></label>
							<input type="text" onblur="checkMail();" name="email" class="form-control" id="txt_email" />
						</div>

						<div class="form-group">
							<label for="">Địa chỉ <span id="error_address" style="color: red;">(*)</span></label>
							<input type="text" onblur="checkAddress();" name="address" class="form-control" id="txt_address" />
						</div>

						<div class="form-group">
							<label for="">Môn học<br>
							<label for="php">PHP</label>
							<input type="checkbox" name="monhoc[]"  class="checkbox_me" checked="true" value="PHP" class="form-control" id="php" />
							<label for="ios">  IOS</label>
							<input type="checkbox" name="monhoc[]"  class="checkbox_me" value="IOS" class="form-control" id="ios" />
							<label for="android">  Android</label>
							<input type="checkbox" name="monhoc[]"  class="checkbox_me" value="Android" class="form-control" id="android" />
							<label for="java">  Java</label>
							<input type="checkbox" name="monhoc[]"  class="checkbox_me" value="Java" class="form-control" id="java" />
							<label for="python">  Python</label>
							<input type="checkbox" name="monhoc[]" class="checkbox_me"  value="Python" class="form-control" id="python" />
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
					<?php 
						// print_r($_REQUEST['monhoc']);
						if(isset($_REQUEST['submit'])){
							if(isset($_REQUEST['name'])&&isset($_REQUEST['phone'])&&isset($_REQUEST['email'])&&isset($_REQUEST['address'])&&isset($_REQUEST['monhoc'])){
					 ?>
					
					<table class="table table-hover">
						<thead>
							<tr>
								<th>Thông tin đăng ký của bạn là:</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Họ tên</td>
								<td>
								<?php 
								echo $_REQUEST['name'];
								 ?>
								</td>
							</tr>
							<tr>
								<td>Số điện thoại</td>
								<td>
									<?php 
								echo $_REQUEST['phone'];
								 ?>
								</td>
							</tr>
							<tr>
								<td>Email</td>
								<td>
								<?php 
								echo $_REQUEST['email'];
								 ?>
								</td>
							</tr>
							<tr>
								<td>Địa chỉ</td>
								<td>
							<?php 
								echo $_REQUEST['address'];
								 ?>
								</td>
							</tr>
							<tr>
								<td>Môn học đăng ký</td>
								<td>
								<?php 
								foreach ($_REQUEST['monhoc'] as $key => $value) {
									echo $value." ";
								}
								 ?>
								</td>
							</tr>
						</tbody>
					</table>
					<?php
					 }
						}
						 ?>
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