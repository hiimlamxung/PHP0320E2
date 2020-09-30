<?php 
	session_start();
	if(isset($_SESSION['accountID'])){
		header("Location:admin/index.php");
	}
 ?>
<!DOCTYPE html>
<html lang="">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>IT_Plus</title>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css" integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ" crossorigin="anonymous">
	<style type="text/css">
		#action_banner{
			margin-left:1200px;
			
		}
		#home{
			margin-left:1200px;
		}
	</style>
</head>
<body>
	<div class="container-fluid">
		<div class="banner">
			<div id="action_banner"><a href="index.php?page=login-register">Account</a></div>
			<br>
			<a id="home" href="index.php?page=home">Home</a>
			<hr>
		</div>
		<main id="content" class="col-sm-12 ml-sm-auto col-md-12 pt-3" role="main" style="background: gray;">
			<?php 
			include_once"controller/Member_c.php";
			$member=new Member_c();
			$member->view();
		


			?>
		</main>
	</div>










	<!-- jQuery -->
	<script src="js/jquery-3.5.1.min.js"></script>
	<!-- Bootstrap JavaScript -->
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
	<script src="js/MyJava.js"></script>

</body>
</html>