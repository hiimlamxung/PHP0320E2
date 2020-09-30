<div class="col-md-12 col-sm-12" >
	<form action="index.php?page=home&views=status&action=report-raiting" method="POST" role="form">
		<legend>Thống kê lượt đánh giá từng sản phẩm</legend>
		<div class="col-md-6 col-sm-6">
			<label for="key_search">Tìm kiếm sản phẩm</label>
			<input type="text" name="key_search" class="form-control" id="key_search" value="<?php if(isset($_SESSION['report_nameproduct_raiting'])){echo str_replace('%', '', $_SESSION['report_nameproduct_raiting']);} ?>" placeholder="Nhập sản phẩm cần tìm kiếm">
		</div>
		<div class="col-md-12 col-sm-12">
			<button type="submit" name="submit_report_raiting" class="btn btn-primary">Lọc</button>
		</div>

	</form>
</div>
<div class="clearfix"></div><hr>
<div class="col-md-12 col-sm-12"><br>
	<div class="col-md-6 col-sm-12" style="color: red;"><?php echo 'Có '.$number.' kết quả được tìm thấy'; ?></div>

	<div class="col-md-6 col-sm-12">
	<select name="city" id="sort_report_raiting" class="form-control">
		<option value="">--Sắp xếp theo--</option>
		<option value="count_rating_DESC" <?php if(isset($_SESSION['sort_raiting']) && $_SESSION['sort_raiting']=='count_rating_DESC'){echo 'selected';} ?> >Được đánh giá nhiều nhất</option><option value="count_rating_ASC"  <?php if(isset($_SESSION['sort_raiting']) && $_SESSION['sort_raiting']=='count_rating_ASC'){echo 'selected';} ?> >Được đánh giá ít nhất</option>
		<option value="AVG_raiting_DESC" <?php if(isset($_SESSION['sort_raiting']) && $_SESSION['sort_raiting']=='AVG_raiting_DESC'){echo 'selected';} ?> >Số sao trung bình cao nhất</option>
		<option value="AVG_raiting_ASC" <?php if(isset($_SESSION['sort_raiting']) && $_SESSION['sort_raiting']=='AVG_raiting_ASC'){echo 'selected';} ?> >Số sao trung bình thấp nhất</option>
	</select>
	</div><br><br><br>
	<div id="report_raiting_box" style="overflow: scroll;">
	<table class="table table-hover" id="table_report_raiting">
		<thead>
			<tr>
				<th>ID</th>
				<th>Image</th>
				<th>Tên sản phẩm</th>
				<th>1 sao(lần)</th>
				<th>2 sao(lần)</th>
				<th>3 sao(lần)</th>
				<th>4 sao(lần)</th>
				<th>5 sao(lần)</th>
				<th>Tổng(lần)</th>
				<th>Trung bình(sao)</th>
			</tr>
		</thead>
		<tbody>
			<?php 
			// echo "<pre>";
			// print_r($rs_detail);
			// echo "</pre>";
			foreach ($rs_all as $key => $all) {
				?>
				<tr style="color: red;">
				<td>Tổng:</td>
				<td></td>
				<td></td>
				<td><?php echo $all['tongsolan1s']; ?></td>
				<td><?php echo $all['tongsolan2s']; ?></td>
				<td><?php echo $all['tongsolan3s']; ?></td>
				<td><?php echo $all['tongsolan4s']; ?></td>
				<td><?php echo $all['tongsolan5s']; ?></td>
				<td><?php echo $all['tong']; ?></td>
				<td></td>
				</tr>
				<?php
			}
			foreach ($rs_detail_limit as $key => $limit) {
				?>
				<tr>
					<td><?php echo $limit['idsp']; ?></td>
					<td style="width: 30px"><img style="width: 100%;" src="<?php echo '../'.$limit['img']; ?>" alt=""></td>
					<td><?php echo $limit['name_product']; ?></td>
					<td><?php echo $limit['solan1s']; ?></td>
					<td><?php echo $limit['solan2s']; ?></td>
					<td><?php echo $limit['solan3s']; ?></td>
					<td><?php echo $limit['solan4s']; ?></td>
					<td><?php echo $limit['solan5s']; ?></td>
					<td><?php echo $limit['tong']; ?></td>
					<td><?php echo round($limit['AVG']); ?></td>
				</tr>
				<?php
			}
			 ?>
		</tbody>
	</table>
	</div>
	<!-- 	Phân trang -->
		<div class="col-md-6 col-md-push-3">
			<ul class="pagination">
				<?php 
				if (isset($_GET['pages']) && $_GET['pages'] > 1) {
					$back = $_GET['pages'] - 1;

					?>
					<li><a href="index.php?page=home&views=<?php echo $views; ?>&action=report-raiting&pages=<?php echo $back; ?>">Back</a></li>
					<?php 
				}	
				?>
				<?php
				for($i = 1; $i <= $pagination; $i++){
					if ($i > $current - 3 && $i < $current + 3) {
					?>
					<li <?php if($i==$_GET['pages']){echo 'class="active"';} ?> ><a href="index.php?page=home&views=<?php echo $views; ?>&action=report-raiting&pages=<?php echo $i; ?>"><?php echo $i; ?></a></li>
					<?php 
				}
			}
				?>
				<?php 
				if (isset($_GET['pages']) && $_GET['pages'] < $pagination) {
					$next = $_GET['pages'] + 1;	
					?>
					<li><a href="index.php?page=home&views=<?php echo $views; ?>&action=report-raiting&pages=<?php echo $next; ?>">Next</a></li>
					<?php 
				}	
				?>
			</ul>

		</div>
		<!-- END Phân trang -->
	</div>