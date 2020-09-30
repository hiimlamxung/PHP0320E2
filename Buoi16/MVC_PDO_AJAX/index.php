<!DOCTYPE html>
<html lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>MVC - PDO - AJAX</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
	</head>
	<body>
		
		<div class="container">
			<div class="row">

				<?php  
			


					if (isset($_GET['page'])) {
						$page = $_GET['page'];
					}else{
						$page = 'member';
					}

					switch ($page) {
						case 'member':
						include_once"views/member/member.php";
							// include_once 'controller/Member_c.php';
							// $mem= new Member_c();
							// $mem->getMember();
							break;
						
						default:
							# code...
							break;
					}

				?>

			</div>
		</div>

		<!-- jQuery -->
		<script src="//code.jquery.com/jquery.js"></script>
		<!-- Bootstrap JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
		<script src="js/myJava.js?<?php echo fileatime('js/myJava.js') ?>"></script> <!-- Xử lý lỗi 	 ko load đc js -->
		

	</body>
</html>