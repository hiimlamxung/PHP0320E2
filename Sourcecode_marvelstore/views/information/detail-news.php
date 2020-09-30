<div class="container" >
	<?php 
	if(count($get_news)==0){
		header("Location:error");
	}else{
?>	
	<div class="row"  >
		<ol class="breadcrumb" >
			<li>Trang chủ</li>
			<li>Tin tức</li>
			<li><?php 
			foreach ($get_news as $key => $value) {
				echo $value['title'];
			}
			 ?></li>
		</ol>
	</div>
	<div class="row" >
		<div class="col-md-12">
		<div class="col-md-8" >
			<?php foreach ($get_news as $key => $value) {
								
			?>
			<h3 style="color: #2AE497"><?php echo $value['title']; ?></h3>
			<?php 
			echo $value['content'];
			?>
			<div class="fb-comments" data-href="http://php0320e2-3.itpsoft.com.vn/index.php?page=info&method=blog&id=<?php echo $value['id_news']; ?>" data-numposts="5" data-width="" order_by="reverse_time"></div>
			<?php
			}
			?>
		</div>
		<div class="col-md-4" >
			<div class="panel panel-default	">
				<div class="panel-heading"><b>BÀI VIẾT MỚI NHẤT</b></div>
				<?php 
					foreach ($get_all_news as $key => $value) {
						?>
							<div class="panel-body" style="">
					<a href="info/news/<?php echo $value['id_news']; ?>/<?php echo $value['url_name']; ?>"><div class="row" style="">
						<div class="col-md-4" style="">
							<div class="row">
								<img src="<?php echo $value['img']; ?>" width="110px" alt="">
							</div>
						</div>
						<div class="col-md-8" style="">
							<a href="info/news/<?php echo $value['id_news']; ?>/<?php echo $value['url_name']; ?>"><h5 ><?php echo $value['title']; ?></h5></a>
							

						</div>
					</div></a>
				</div>
						<?php
					}
				 ?>
<!-- 				<div class="panel panel-default	">
					<div class="panel-heading"><b>NHỮNG SẢN PHẨM HOT NHẤT</b></div>
					<div class="panel-body" style="">
						<a href=""><div class="row" style="">
							<div class="col-md-4" style="">
								<div class="row">
									<img class="related_img" src="images/product/transformer/mo_hinh/Bumblebee Comicave kim loại/1.jpg" alt="">
								</div>
							</div>
							<div class="col-md-8" style="">
								<h4>Bumblebee Comicave 80% kim loại</h4><br>
								<span class="price_main_product">
									600,000 VNĐ
								</span>
								<span class="price_discount_product">
									1,850,000 VNĐ
								</span><br>

							</div>
						</div></a>
						<br>
						<a href=""><div class="row" style="">
							<div class="col-md-4" style="">
								<div class="row">
									<img class="related_img" src="images/product/transformer/mo_hinh/3AThreeZero Optimus Prime DLX Scale/1.jpg" alt="">
								</div>
							</div>
							<div class="col-md-8" style="">
								<h4>Bumblebee Comicave 80% kim loại</h4><br>
								<span class="price_main_product">
									600,000 VNĐ
								</span>
								<span class="price_discount_product">
									1,850,000 VNĐ
								</span><br>

							</div>
						</div></a>
						<br>
						<a href=""><div class="row" style="">
							<div class="col-md-4" style="">
								<div class="row">
									<img class="related_img" src="images/product/transformer/mo_hinh/COMBO LS-14 + LS-15/1.jpg" alt="">
								</div>
							</div>
							<div class="col-md-8" style="">
								<h4>Bumblebee Comicave 80% kim loại</h4><br>
								<span class="price_main_product">
									600,000 VNĐ
								</span>
								<span class="price_discount_product">
									1,850,000 VNĐ
								</span><br>

							</div>
						</div></a>
					</div>
				</div>
 -->
			</div>
		</div>
</div>
	</div>
</div>
<?php
}
	 ?>