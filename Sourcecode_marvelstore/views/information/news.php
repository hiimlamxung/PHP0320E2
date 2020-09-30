<div class="container" >
	<div class="row"  >
		<ol class="breadcrumb" >
			<li>Trang chủ</li>
			<li>Tin tức</li>
		</ol>
	</div>
	<div class="row" >
		<div class="col-md-8 col xs-8" >
			<div class="panel panel-default">
				<div class="panel-heading"><b>TIN TỨC</b></div>
				<div class="row">
					<?php 
					foreach ($get_news as $key => $news) {
						?>
						<div class="col-md-6 col-xs-6">
							<div class="thumbnail">
								<div style="min-height: 150px;position: relative;">
								<img src="<?php echo $news['img']; ?>" alt="..." class="img_product">
								</div>
								<div class="caption" style="text-align: left">
									<a href="info/news/<?php echo $news['id_news']; ?>/<?php echo $news['url_name']; ?>"><h4 style="color: #000"><?php echo $news['title']; ?></h4></a>
									<p style="font-style: italic;"><?php 
									$content=strip_tags($news['content']);
									for ($i=0; $i <=ceil((strlen($content)*20/100)); $i++) { 
										echo $content[$i];
									}
									echo ".....";?></p>
									<p style="font-style: italic;color: gray;"><i class="fa fa-clock-o" aria-hidden="true"></i>-<?php echo $news['created']; ?></p>
									<p style="text-align: right;"><a href="info/news/<?php echo $news['id_news']; ?>/<?php echo $news['url_name']; ?>" class="btn btn-primary" role="button">Xem tiếp >></a></p>

								</div>

							</div>
						</div>
						<?php
					}
					?>
					
				</div>

			</div>

		</div>
		<div class="col-md-4" >
			<div class="panel panel-default	">
				<div class="panel-heading"><b>BÀI VIẾT MỚI NHẤT</b></div>
				<?php 
				foreach ($get_news2 as $key => $new2) {
					?>
					<div class="panel-body" style="">
						<a href="info/news/<?php echo $new2['id_news']; ?>/<?php echo $new2['url_name']; ?>"><div class="row" style="">
							<div class="col-md-4" style="position: relative;min-height: 80px;">
								<img  src="<?php echo $new2['img']; ?>" alt="" class="img_product">

							</div>
							<div class="col-md-8" style="">
								<a href="info/news/<?php echo $new2['id_news']; ?>/<?php echo $new2['url_name']; ?>"><h5><?php echo $new2['title']; ?></h5></a>


							</div>
						</div></a>

					</div>
					<?php
					break;
				}
				?>
				
				<div class="panel panel-default	">
					<div class="panel-heading"><b>CÓ THỂ BẠN QUAN TÂM</b></div>
					<div class="panel-body" style="">
						<?php 
						foreach ($product_rand as $key => $hot) {
							?>
							<a href="product-detail/<?php echo $hot['id_product']; ?>/<?php echo $hot['url_name']; ?>"><div class="row" style="">
								<div class="col-md-4 col-xs-4" style="">
									<div class="row">
										<img class="related_img" src="<?php echo $hot['img']; ?>" alt="">
									</div>
								</div>
								<div class="col-md-8" style="">
									<h4><?php echo $hot['name_product']; ?></h4><br>
									<?php 
									if($hot['discount']>0){
										?>
										<span class="price_main_product">
											<?php echo number_format($hot['discount_price']).' VNĐ'; ?>
										</span><br>
										<span class="price_discount_product">
											<?php echo number_format($hot['price']).' VNĐ'; ?>
										</span><br>
										<?php
									}else{
										?>
										<span class="price_discount_product">
											<?php echo number_format($hot['price']).' VNĐ'; ?>
										</span>
										<?php
									}
									?>


								<!-- <span class="price_main_product">
									600,000 VNĐ
								</span>
								<span class="price_discount_product">
									1,850,000 VNĐ
								</span><br> -->

							</div>
						</div></a>
						<br>
						<?php
					}
					?>

				</div>
			</div></a>
		</div>
	</div>

</div>
</div>

</div>
</div>