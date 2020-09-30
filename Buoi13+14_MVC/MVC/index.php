<?php 
session_start();
 ?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="">
		<meta name="author" content="">

		<title>MVC</title>

		<!-- Bootstrap core CSS -->
		<link rel="stylesheet" href="css/bootstrap.min.css">

		<!-- Custom styles for this template -->
		<link href="css/myCSS.css" rel="stylesheet">
	</head>
	<body>
		<?php 
			include_once 'layout/header.php';
		 ?>


		<div class="container-fluid">
			<div class="row">
			<?php 
			include_once 'layout/col-left.php';
			 ?>

				<main id="content" class="col-sm-9 ml-sm-auto col-md-10 pt-3" role="main">
					<!-- Đây là phần phân trang -->
				<?php 
					if(isset($_GET['page'])){
						$page=$_GET['page'];
					}else{
						$page='list-member';
					}

					switch ($page) {
						case 'list-member':
							include_once'controller/Member_c.php';
							$member=new Member_c();
							$member->member();
							break;
						
						default:
							header('Location:index.php');
							break;
					}





				 ?>
				</main>
			</div>
		</div>

		<!-- Bootstrap core JavaScript
		================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="js/jquery-3.4.1.slim.min.js"></script>
		<script src="js/popper.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
	</body>
</html>