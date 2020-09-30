<!DOCTYPE html>
<html lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Học viên IT-Plus</title>
		<link rel="stylesheet" href="../css/bootstrap.min.css" />
		<link rel="stylesheet" href="../css/my_css.css">


	</head>
	<body>
		<?php 
			if(empty($_COOKIE['time_login'])){
				header("Location:../index.php");
			}


		 ?>
		<div class="container">
			<div class="row">
				<?php include_once 'layout/nav.php'; ?>
			</div>
			<!-- Start Banner website -->
			<div class="row">
				<?php include_once 'layout/slides.php'; ?>
			</div>
			<!-- End banner website -->

			<!-- Start main -->
			<div class="row main_member">
				<div class="col-md-12">
					
					<?php
					 	include_once 'layout/nav_left.php'; 
					 ?>
					
					<div class="col-md-9 col-sm-9 col-xs-12">
					<!-- START Nội dung thân website -->
						
					<?php  
						if (isset($_GET['page'])) {
							$page = $_GET['page'];
						}else{
							$page = 'list-member';
						}

						if (file_exists('views/'.$page.'.php')) { // kiểm tra xem file có tồn tại trong folder view hay không
							include_once 'views/'.$page.'.php';
						}else{
							echo "<h2 style='color: red;'>ERROR 404, trang không tồn tại</h2><a href='index.php'>Quay lại</a>";
						}
					?>

					<!-- START Nội dung thân website -->
					</div>
				</div>
			</div>
			<!-- End main -->

			<!-- Start Footer -->
			<?php include_once 'layout/footer.php'; ?>
			<!-- End Footer -->

		</div>

		<script src="../js/jquery.js"></script>
		<script src="../js/bootstrap.min.js"></script>
	</body>
</html>