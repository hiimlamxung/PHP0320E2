<!DOCTYPE html>
<html lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Đăng ký với nhiều hình ảnh</title>

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
		<script src="js/Myjava.js"></script>

	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<form action="" method="POST" role="form" onsubmit="return validation();" enctype="multipart/form-data">
						<legend>Đăng ký</legend>
					
						<div class="form-group">
							<label for="">Name<span id="error_name" style="color: red;">(*)</span></label>
							<input type="text" class="form-control" id="name" name="name" placeholder="Họ tên" onblur="checkName()">
						</div>
						<div class="form-group">
							<label for="">Phone<span id="error_phone" style="color: red;">(*)</span></label>
							<input type="text" class="form-control" id="phone" name="phone" placeholder="Số điện thoại" onblur="checkPhone()">
						</div>
						<div class="form-group">
							<label for="">Email<span id="error_email" style="color: red;">(*)</span></label>
							<input type="text" class="form-control" id="email" name="email" placeholder="Email" onblur="checkEmail()">
						</div>
						<div class="form-group">
							<label for="">Avatar</label>
							<input type="file" class="form-control" id="avatar" name="avatar[]" multiple="">
						</div>
						
					
						<button type="submit" name="submit" class="btn btn-primary">Submit</button>
					</form>
				</div>
				<div class="col-md-6">
					<?php 
						if(isset($_POST['submit'])){


							$name=$_POST['name'];
							$phone=$_POST['phone'];
							$email=$_POST['email'];
							$file=$_FILES['avatar'];
							$arr_tmpname=$file['tmp_name'];
							$arr_name=$file['name'];
							echo "<pre>";
							print_r($file);
							echo "</pre>";
							

							foreach ($file as $key => $value) {
								foreach ($file['type'] as $key => $infoType) {
									if($infoType!="image/jpg"&&$infoType!="image/png"&&$infoType!="image/jpeg"&&$infoType!="image/gif"){
										?>
										<div class="alert alert-success">
											<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
											<strong>Lỗi!</strong> Vui lòng chọn file upload có định dạng là hình ảnh.
										</div>
										<?php
										die();
									}
								}
							}
							foreach ($file as $key => $value) {
								foreach ($file['size'] as $key => $infoSize) {
									if($infoSize>1000000){
										?>
										<div class="alert alert-success">
											<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
											<strong>Lỗi!</strong> Dung lượng ảnh của bạn quá lớn, vui lòng chọn ảnh có dung lượng thích hợp (<=1000 Kb)
										</div>
										<?php
										die();
									}
								}
							}
							echo "Name: ".$name."<br>";
							echo "Phone: ".$phone."<br>";
							echo "Email: ".$email."<br>";

							



							for($i=0;$i<count($arr_tmpname);$i++){
								$nameFile=time().$arr_name[$i];
								move_uploaded_file($arr_tmpname[$i],"images/".$nameFile);
								?>
								<br><br>
								<img src="images/<?php echo $nameFile; ?> " style=" width: 50%; border-radius: 20%;" >


					<?php
							}

						
						
								}


						
						
					 ?>
				</div>
			</div>
		</div>

	
		<script src="//code.jquery.com/jquery.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
		

	</body>
</html>