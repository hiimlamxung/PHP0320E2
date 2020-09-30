<?php
	if(isset($_POST['submit_search'])){
		$key=$_POST['keyw'];
		$rs=search($key);
		$count=count($rs);
	}else{
		$rs=list_member();
		// echo "<pre>";
		// print_r($rs);


	

	}
	if(isset($_SESSION['check'])&& $_SESSION['check']==1){
?>
	<div class="alert alert-success">
		<button type="button" class="close" data-dismiss="alert" aria-hidden="true">Close</button> 
		<strong>Thông báo!</strong> Thêm mới thành công!
	</div>
<?php 
	}else if(isset($_SESSION['check']) && $_SESSION['check'] == 2){
?>
	<div class="alert alert-success">
		<button type="button" class="close" data-dismiss="alert" aria-hidden="true">Close</button>
		<strong>Thông báo!</strong> Xóa thành công!
	</div>
<?php 
	}
	else if(isset($_SESSION['check']) && $_SESSION['check'] == 3){
?>
	<div class="alert alert-success">
		<button type="button" class="close" data-dismiss="alert" aria-hidden="true">Close</button> 
		<strong>Thông báo!</strong> Cập nhật thành công!
	</div>
<?php
	}
	unset($_SESSION['check']);

 ?>
<h4>DANH SÁCH HỌC VIÊN IT-PLUS</h4>
<form action=""method="POST" role="form">
	<div class="input-group">
		<input type="text" name="keyw" required="" placeholder="Nhập Họ tên hoặc số điện thoại của học viên cần tìm" class="form-control" value="<?php if(isset($key)){
			echo $key;
			}?>">
		<span class="input-group-btn">
			<button class="btn btn-default" name="submit_search" type="submit">Tìm kiếm!</button>
		</span>
		
	</div>
</form>
<?php  
	if (isset($count)) {
?>
	<div class="alert alert-danger">
		<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
		<strong>Có <?php echo $count; ?>!</strong> kết quả được tìm thấy!
	</div>
<?php
	}
?>
<div class="table-responsive">
	<table class="table table-hover">
		<thead>
			<tr>
				<th>STT</th>
				<th>Name</th>
				<th>Phone</th>
				<th>Email</th>
				<th>Addres</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<?php 
				$stt=0;
				foreach ($rs as $key => $value) {
			?>
				<tr>
				<td><?php echo $stt+=1; ?></td>
				<td><?php echo $value['nameHV']; ?></td>
				<td><?php echo $value['phone']; ?></td>
				<td><?php echo $value['email']; ?></td>
				<td><?php echo $value['address']; ?></td>
				<td>
					<a href="index.php?page=edit-member&idKhoa=<?php echo $value['idKhoa']; ?>&nameHV=<?php echo $value['nameHV']; ?>&email=<?php echo $value['email']; ?>&phone=<?php echo $value['phone']; ?>&address=<?php echo $value['address']; ?>&idHV=<?php echo $value['idHV']; ?>">
						<button class="btn btn-primary">Sửa</button>
					</a>
					<a  href="index.php?page=del&id=<?php echo $value['idHV']; ?>">
						<button class="btn btn-danger" onclick="return confirm('Bạn có thực sự muốn xóa học viên này không ?');">Xóa</button>
					</a>
				</td>
			</tr>
					<?php
				}


			 ?>
			
		</tbody>
	</table>
</div>