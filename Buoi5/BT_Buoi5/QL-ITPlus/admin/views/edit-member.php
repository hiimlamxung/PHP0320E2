<!-- START sửa thông tin thành viên -->
						<form action="" method="POST" role="form">
							<legend>Sửa thông tin học viên</legend>

							<div class="form-group">
								<label for="">Họ tên<span style="color: red;">*</span></label>
								<input type="text" required class="form-control" name="name" value="" />
							</div>

							<div class="form-group">
								<label for="">Số điện thoại<span style="color: red;">*</span></label>
								<input type="number" required class="form-control" name="phone" value="">
							</div>

							<div class="form-group">
								<label for="">Email</label>
								<input type="mail" class="form-control" name="e_mail" value="" />
							</div>

							<div class="form-group">
								<label for="">Địa chỉ<span style="color: red;">*</span></label>
								<input type="text" required class="form-control" name="addres" value="" />
							</div>

							<button type="submit" name="update_member" class="btn btn-primary">Cập nhật</button>
						</form>
						<!-- END sửa thông tin thành viên -->