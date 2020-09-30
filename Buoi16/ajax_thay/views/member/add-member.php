<!-- Large modal -->
<button class="btn btn-danger" data-toggle="modal" data-target=".bs-example-modal-lg">Thêm mới_Modal</button>

<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content" style="padding: 40px 40px;">
      	<form action="" method="POST" role="form" id="forms_md">
			<legend>Thêm mới học viên _ Modal</legend>
		
			<div class="form-group">
				<label for="">Tên học viên</label>
				<input type="text" required="" class="form-control" id="name_md" placeholder="Nhập đầy đủ họ tên">
			</div>

			<div class="form-group">
				<label for="">Số điện thoại</label>
				<input type="number" required="" class="form-control" id="phone_md" placeholder="Số điện thoại...">
			</div>

			<div class="form-group">
				<label for="">Email</label>
				<input type="email" required="" class="form-control" id="email_md" placeholder="Email...">
			</div>

			<div class="form-group">
				<label for="">Địa chỉ</label>
				<input type="text" required="" class="form-control" id="addres_md" placeholder="Địa chỉ...">
			</div>


			<button type="submit" id="add_member_md" class="btn btn-primary">Thêm mới</button>
			<span id="noti_check_md"></span>
		</form>
    </div>
  </div>
</div>