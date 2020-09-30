<!-- Large modal -->
<button class="btn btn-danger" data-toggle="modal" data-target=".bs-example-modal-lg">Thêm mới_Modal</button>

<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content" style="padding: 40px 40px;">
      	<form action="" method="POST" role="form" id="forms_md">
			<legend>Thêm mới học viên _ Modal</legend>
		
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
				<input type="text" required="" class="form-control" id="address" placeholder="Địa chỉ...">
			</div>

			<div class="form-group">
				<label for="">Khoa</label>
				<input type="text" required="" class="form-control" id="address" placeholder="Khoa...">
			</div>


			<button type="submit" id="submit-add" class="btn btn-primary">Thêm mới</button>
			<span id="noti_check_md"></span>
		</form>
    </div>
  </div>
</div>