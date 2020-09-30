<?php 
	include_once"config/Myconfig.php";
	class Product_m extends Connect{
	public function __construct(){
		parent::__construct();
	}

	public function getProduct(){
		$sql="SELECT ma_dienthoai,ten_dienthoai,ten_hang,mau_sac,gia_dienthoai,mo_ta,ngay_dang,trang_thai FROM dienthoai LEFT JOIN hang_dienthoai ON dienthoai.ma_hang = hang_dienthoai.ma_hang;";
		$pre=$this->pdo->prepare($sql);
		$pre->execute();
		return $rs=$pre->fetchAll(PDO::FETCH_ASSOC);
	}
}
$get=new Product_m();
$rs=$get->getProduct();
// echo "<pre>";
// print_r($rs);
// echo "</pre>";
 ?>
<!DOCTYPE html>
<html lang="">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Title Page</title>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css" integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ" crossorigin="anonymous">
	<style type="text/css">
		#nav_search{
			margin-left:500px;
		}
	</style>
</head>
<body>
	<div id="nav_search"><label for="search">Nhập từ khóa</label><input type="text" id="search" name=""><input type="submit" name="" id="submit_search" value="Tìm kiếm"></div><br>
	<div id="noti"></div>
	<table class="table table-bordered table-hover">
		<thead>
			<tr>
				<th>Tên điện thoại</th>
				<th>Hãng điện thoại</th>
				<th>Màu sắc</th>
				<th>Giá tiền</th>
				<th>Mô tả</th>
				<th>Ngày đăng</th>
				<th>Trạng thái</th>
				<th>Thao tác</th>
			</tr>
		</thead>
		<tbody>
			<?php 
				foreach ($rs as $key => $value) {
			?>
			<tr>
				<td><?php echo $value['ten_dienthoai']; ?></td>
				<td><?php echo $value['ten_hang']; ?></td>
				<td><?php echo $value['mau_sac']; ?></td>
				<td><?php echo $value['gia_dienthoai']; ?></td>
				<td><?php echo $value['mo_ta']; ?></td>
				<td><?php echo $value['ngay_dang']; ?></td>
				<td><?php echo $value['trang_thai']; ?></td>
				<td><a href="#" class="del" id_product="<?php echo $value['ma_dienthoai']; ?>">Xoá</a></td>
			</tr>
			<?php
				}

			 ?>
		</tbody>
	</table>

	<!-- jQuery -->
	<script src="js/jquery-3.5.1.min.js"></script>
	<!-- Bootstrap JavaScript -->
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
	<script src="js/MyJava.js"></script>

</body>
</html>