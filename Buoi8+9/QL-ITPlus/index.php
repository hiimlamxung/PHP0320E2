<?php 
	session_start();

	if(isset($_SESSION['id'])){
		header("Location:admin/index.php");
	}
	include_once "config/MyConfig.php";
// $sql="SELECT *FROM tbl_hocvien";// cau lenh truy van
// $query=mysqli_query($conn,$sql);//Thuc hien viec truy van
// $number=mysqli_num_rows($query);
// echo $number;
// echo "<pre>";
// print_r($query);

// $rs=mysqli_fetch_array($query);
// echo "<pre>";
// print_r($rs);





 ?>
<!DOCTYPE html>
<html lang="">
	<?php include_once 'layout/head.php'; ?>
	<body>

		<div class="container">
			
			<div class="row" style="margin-top: 150px;">
				<div class="col-md-6 col-md-push-3">
					
					<?php  
						if (isset($_GET['page'])) {
							$page = $_GET['page'];
						}else{
							$page = 'login';
						}

						switch ($page) {
							case 'register':
								include_once 'views/register.php';
								break;

							case 'login':
								include_once 'views/login.php';
								break;
							
							default:
								echo "<h2 style='color: red;'>ERROR 404, trang không tồn tại</h2><a href='index.php'>Quay lại</a>";
								break;
						}

					?>

				</div>
			</div>

		</div>

		<script src="js/jquery.js"></script>
		<script src="js/MyJs.js"></script>
		<script src="js/bootstrap.min.js"></script>
	</body>
</html>