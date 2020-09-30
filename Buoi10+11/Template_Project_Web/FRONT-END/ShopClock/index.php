<!DOCTYPE html>
<html lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Shop Clock</title>

		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/myCSS.css" />
		<link rel="stylesheet" href="fonts/glyphicons-halflings-regular.ttf" />

		<script src="js/jquery-3.4.1.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
	</head>

	<body>
		<div class="container">
			<!-- START MENU Header -->
			<div class="row">
				<nav class="navbar navbar-default" role="navigation">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="#">Logo</a>
						</div>
				
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse navbar-ex1-collapse">
							<ul class="nav navbar-nav">
								<li class="active"><a href="#">Trang chủ</a></li>
								<li><a href="#">Sản phẩm</a></li>
							</ul>
							<form class="navbar-form navbar-left" role="search">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="Nhập mã sản phẩm...">
								</div>
								<button type="submit" class="btn btn-default">
									Tìm kiếm
								</button>
							</form>
							<ul class="nav navbar-nav navbar-right">
								<li>
									<a href="#">
									<i class="glyphicon glyphicon-shopping-cart"></i> 
										0
									</a>
								</li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">Tài khoản <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="#">Đăng ký</a></li>
										<li><a href="#">Đăng nhập</a></li>
										<li><a href="#">Đăng xuất</a></li>
									</ul>
								</li>
							</ul>
						</div><!-- /.navbar-collapse -->
					</div>
				</nav>
			</div>
			<!-- END MENU Header -->

			<!-- START banner -->
			<div class="row">
				<div id="carousel-id" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carousel-id" data-slide-to="0" class=""></li>
						<li data-target="#carousel-id" data-slide-to="1" class=""></li>
						<li data-target="#carousel-id" data-slide-to="2" class="active"></li>
					</ol>
					<div class="carousel-inner">
						<div class="item">
							<img alt="First slide" src="https://file.hstatic.net/1000269795/file/dong-ho-longines-record-chinh-hang_35a9e5d1c06f4c4790a7a73cab46e887.jpg" style="width: 100%;">
						</div>
						<div class="item">
							<img alt="First slide" src="https://file.hstatic.net/1000269795/file/dong-ho-longines-record-chinh-hang_35a9e5d1c06f4c4790a7a73cab46e887.jpg" style="width: 100%;">
						</div>
						<div class="item active">
							<img alt="First slide" src="https://file.hstatic.net/1000269795/file/dong-ho-longines-record-chinh-hang_35a9e5d1c06f4c4790a7a73cab46e887.jpg" style="width: 100%;">
						</div>
					</div>

					<a class="left carousel-control" href="#carousel-id" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
					<a class="right carousel-control" href="#carousel-id" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
				</div>
			</div>
			<!-- END banner -->

			<!-- START category product -->
			<div class="row">

				<div class="col-md-3 col-xs-12 col-sm-12 list_left">
					<div class="list-group">
					  <a href="#" class="list-group-item active">
					    DANH MỤC SẢN PHẨM
					  </a>
					  <a href="#" class="list-group-item">Đồng hồ Longines</a>
					  <a href="#" class="list-group-item">Đồng hồ Tissot</a>
					  <a href="#" class="list-group-item">Đồng hồ Citizen</a>
					  <a href="#" class="list-group-item">Đồng hồ Edox</a>
					  <a href="#" class="list-group-item">Đồng hồ Rolex</a>
					</div>
				</div>

				<div class="col-md-9">
					<div class="row">
						<div class="col-md-12">
							<h4><i class="glyphicon glyphicon-time"></i> SẢN PHẨM MỚI</h4>
						</div>
						<div class="col-xs-6 col-sm-6 col-md-4">
						    <div class="thumbnail">
						      <img src="images/citizen.jpg" width="100%" alt="...">
						      <div class="caption">
						        <h5>
						        	Tên sản phẩm
									<span style="float: right; color: red; font-weight: bold;">
										10,000,000
									</span>
						        </h5>
						        <p>
						        	<a href="#" class="btn btn-primary" role="button">Xem chi tiết</a> 

						        	<a href="#" class="btn btn-danger" role="button">
							        	Thêm vào giỏ
							        </a>
						        </p>
						      </div>
						    </div>
					 	</div>
					</div>
				</div>
			</div>
			<!-- START category product -->
		</div>

		<!-- START Footer -->
		<div id="footer" style="width: 100%; min-height: 50px; background: #4b4b4b; padding: 10px; color: #fff;">
			<div class="text-center">
				<p>
					© 2019 - <b>HỆ THỐNG DONGHOCHINHHANG.COM</b> <br>
					Email: tungtk@donghochinhhang.com | Điện thoại hỗ trợ 24/7:&nbsp;<a href="tel:0373263978" style="color: #fff;">0373.263.978</a> <br>
					Địa chỉ: Số 1 Hoàng Đạo Thúy - Hà Nội
				</p>
			</div>
		</div>
		<!-- END Footer -->

	</body>

</html>