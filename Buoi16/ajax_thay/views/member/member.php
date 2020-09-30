<div class="col-md-6 col-md-push-3">
	<form action="" method="POST" id="configform">
		<legend>Thêm mới học viên</legend>
	
		<div class="form-group">
			<label for="">Tên học viên</label>
			<input type="text" required="" class="form-control" id="name" placeholder="Nhập đầy đủ họ tên">
		</div>

		<div class="form-group">
			<label for="">Số điện thoại</label>
			<input type="number" required="" class="form-control" id="phone" placeholder="Số điện thoại...">
		</div>

		<div class="form-group">
			<label for="">Email</label>
			<input type="email" required="" class="form-control" id="email" placeholder="Email...">
		</div>

		<div class="form-group">
			<label for="">Địa chỉ</label>
			<input type="text" required="" class="form-control" id="addres" placeholder="Địa chỉ...">
		</div>


		<button type="submit" id="submit_add" class="btn btn-primary">Thêm mới</button>
		<span id="noti_check"></span>
	</form>
</div>

<div class="col-md-12">
	<?php 
		include_once 'add-member.php';
		include_once 'list-member.php';
	?>
</div>