<!DOCTYPE html>
<html lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Title Page</title>

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
	</head>
	<body>
		<div class="container">
			<div class="row">
				<form action="" method="GET" name="frm_login">
					<legend>Form title</legend>
				
					<div class="form-group">
						<label for="">Username</label>
						<input required="" name="user" type="text" class="form-control" placeholder="Input field">
					</div>
					<div class="form-group">
						<label for="">Password</label>
						<input required="" name="pass" type="password" class="form-control" placeholder="Input field">
					</div>
				
					
				
					<button type="submit" class="btn btn-primary" name="submit">Login</button>
				</form>
			</div>
		</div>
		<div class="row">
			<h4>Du lieu nguoi dung nhap!</h4>
			<?php 
			if(isset($_REQUEST['submit'])){//Kiem tra nguoi dung neu nhan vao submit
			echo "user: ".$_REQUEST['user']."<br>";
			echo "pass: ".$_REQUEST['pass']."<br>";
			}
			 ?>
			}

		</div>
		<!-- jQuery -->
		<script src="//code.jquery.com/jquery.js"></script>
		<!-- Bootstrap JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
		<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
 		
	</body>
</html>