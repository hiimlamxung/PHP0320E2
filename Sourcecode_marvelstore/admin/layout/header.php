	<div class="container-fluid" id="header-fluid" >
		
		<div class="container">

			<div class="row">

				<nav class="navbar navbar-inverse sidebarNavigation " data-sidebarClass="navbar-inverse" role="navigation" id="header" style="">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle left-navbar-toggle"
						style="margin-left: 1px;background: #706F6F" data-toggle="collapse" data-target=".navbar-ex1-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand " href="index.php" id="logo_link1"><img src="images/logo.webp" alt="Marvel" width="190px"></a>
					<ul class="right-navbar-toggle" style="float: right">
						<li class="dropdown user-res" style="margin-top: 10px;margin-left: 15px">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i style="color: #7C7A7A" class="fa fa-user fa-2x"></i> <b class="caret"></b></a>
							<ul class="dropdown-menu" >
								<li>
									<a href="#"><i class="fa fa-fw fa-user"></i> <?php echo $_SESSION['name_admin']; ?></a>
								</li>
								<li>
									<a href="index.php?page=home&views=profile"><i class="fa fa-fw fa-user"></i> Profile</a>
								</li>
								<li>
									<a href="index.php?page=home&views=logout"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="navbar-header col-md-3" >

					<a class="navbar-brand " href="index.php" id="logo_link"><img src="images/logo.webp" alt="Marvel" width="190px"></a>

				</div>
				<div class="col-md-9" >
					<div class="navbar-right">

						<ul class="nav navbar-nav" id="nav_header">
							<li class="">
								<a href="#" >Xin chào <?php echo $_SESSION['name_admin']; ?></a>
							</li>
							<li class="">
								<a href="index.php" class="home-rs">Trang chủ</a>
							</li>
							<li>
								<a href="index.php?page=home&views=profile">Profile</a>
							</li>
							<li>
								<a href="index.php?page=home&views=logout">Đăng Xuất</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="collapse navbar-collapse navbar-ex1-collapse navbar-header" id="show-nav-res">
					<ul class="list-group" id="menu_left1" style="">
						<a href="index.php?page=home&views=status" class="active set-text-nav"><li class="list-group-item">Báo cáo, thống kê</li></a>
						<a href="index.php?page=home&views=banner" class="set-text-nav"><li class="list-group-item" >Thêm ảnh banner</li></a>
						<a href="index.php?page=home&views=product" class="set-text-nav"><li class="list-group-item">Quản lý sản phẩm</li></a>
						<a href="index.php?page=home&views=order" class="set-text-nav"><li class="list-group-item">Quản lý đơn hàng</li></a>
						<a href="index.php?page=home&views=customer" class="set-text-nav"><li class="list-group-item">Quản lý khách hàng</li></a>
						<?php 
						if(isset($_SESSION['id_admin']) && $_SESSION['stt_admin']==1){
							?>
							<a href="index.php?page=home&views=admin-member" class="set-text-nav"><li class="list-group-item">Quản lý thành viên</li></a>
							<?php
						}
						?>
						<a href="index.php?page=home&views=voucher" class="set-text-nav"><li class="list-group-item">Voucher + mã giảm giá</li></a>
						<a href="index.php?page=home&views=contact" class="set-text-nav"><li class="list-group-item">Phản hồi khách hàng</li></a>
						<a href="index.php?page=home&views=news" class="set-text-nav"><li class="list-group-item">Quản lý bài viết</li></a>
					</ul>
				</div>
			</nav>

		</div>


	</div>

		<!-- <marquee>Khách hàng: Hoàng Lâm đã đặt đơn hàng 2 giờ trước <a href="">(Xem chi tiết)</a></marquee>
		-->
	</div>