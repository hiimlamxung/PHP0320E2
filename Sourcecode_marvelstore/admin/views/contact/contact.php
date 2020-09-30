
<!-- START Main-Content -->
<!-- Tìm kiếm -->
<form action="" method="POST" role="form" >

	<div class="form-group" >
		<input type="text" name="key_contact" class="form-control col-md-11" id="" placeholder="Tìm kiếm phản hồi của khách hàng" value="<?php if(isset($_SESSION['key_contact'])){ echo str_replace('%', '', $_SESSION['key_contact']);} ?>"><button type="submit" name="search_contact" class="btn btn-default col-md-1">Tìm kiếm</button><br><br><br>
	</div>
</form>
<!-- END Tìm kiếm -->




<!-- Product View Table -->
<div id="tbl_contact_boxout">
	<div id="tbl_contact_boxin" style="overflow: auto;">
		<h4 class="center_text" style="">Danh Sách Phản Hồi </h4>
		<p style="color: red;">Có <?php echo $number; ?> kết quả</p>
		<?php 
		if(count($rs)<1){
			echo "<span style='color:red;'>Không có phản hồi nào !</span>";
		}else{
			?>
			<table  class="table table-hover" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th style="width: 80px;">STT</th>
						<th style="width: 250px;">Họ tên</th>
						<th style="width: 80px;">SĐT</th>
						<th style="width: 250px;">Email</th>
						<th>Ngày gửi</th>
						<th>Chi tiết</th>
						<?php 
						if(isset($_SESSION['stt_admin']) && $_SESSION['stt_admin']==1){
							?>
							<th style="width: 150px;">Action</th>
							<?php
						}
						?>
					</tr>
				</thead>
				<tbody>
					<?php 
					$stt=$row*($pages-1);
					foreach ($rs as $key => $value) {
						?>
						<tr>
							<td><?php echo $stt+=1; ?></td>
							<td><?php echo $value['name']; ?></td>
							<td><?php echo $value['phone']; ?></td>
							<td><?php echo $value['email']; ?></td>
							<td><?php echo $value['created']; ?></td>
							<td><button type="button" class="btn_detail_contact btn btn-info" data-toggle="modal" data-target="#exampleModal" data-backdrop="static" data-keyboard="false" value="<?php echo $value['id_contact']; ?>">Xem nội dung</button></td>
							<?php 
							if(isset($_SESSION['stt_admin']) && $_SESSION['stt_admin']==1){
								?>
								<td>
									<button type="button" class="btn_del_contact btn btn-danger" value="<?php echo $value['id_contact']; ?>">Xóa</button>
								</td>
								<?php
							}
							?>
						</tr>
						<?php
					}
					?>


				</tbody>
			</table>
		</div>
	</div>
	<?php 
}
?>

<!-- END Product View Table -->

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">

</div>
<!-- END Modal -->

<!-- 	Phân trang -->
<div class="col-md-6 col-md-push-3">
	<ul class="pagination">
		<?php 
		if (isset($_GET['pages']) && $_GET['pages'] > 1) {
			$back = $_GET['pages'] - 1;

			?>
			<li><a href="index.php?page=home&views=<?php echo $views; ?>&pages=<?php echo $back; ?>">Back</a></li>
			<?php 
		}	
		?>
		<?php
									// echo $pagination;
		for($i = 1; $i <= $pagination; $i++){

			?>
			<li <?php if($i==$_GET['pages']){echo 'class="active"';} ?> ><a href="index.php?page=home&views=<?php echo $views; ?>&pages=<?php echo $i; ?>"><?php echo $i; ?></a></li>
			<?php 
		}
		?>
		<?php 
		if (isset($_GET['pages']) && $_GET['pages'] < $pagination) {
			$next = $_GET['pages'] + 1;	
			?>
			<li><a href="index.php?page=home&views=<?php echo $views; ?>&pages=<?php echo $next; ?>">Next</a></li>
			<?php 
		}	
		?>
	</ul>

</div>
<!-- END Phân trang -->
