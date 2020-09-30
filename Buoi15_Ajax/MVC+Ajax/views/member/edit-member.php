
<!-- START sửa thông tin thành viên -->
						<form action="" method="POST" role="form">
							<legend>Sửa thông tin học viên</legend>
							
							<div class="form-group">
								<label for="">ID Học viên</label>
								<input type="text" readonly="" value="<?php foreach($rs as $key => $value){ echo $value['id_hocvien']; } ?>" class="form-control" name="name" />
							</div>
							<div class="form-group">
								<label for="">Họ tên<span style="color: red;">*</span></label>
								<input type="text" required class="form-control" name="tenHV" value="<?php foreach($rs as $key => $value){ echo $value['tenHV']; } ?>" />
							</div>

							<div class="form-group">
								<label for="">Số điện thoại<span style="color: red;">*</span></label>
								<input type="number" required class="form-control" name="phoneHV" value="<?php foreach($rs as $key => $value){ echo $value['phoneHV']; } ?>">
							</div>

							<div class="form-group">
								<label for="">Email</label>
								<input type="mail" class="form-control" name="email" value="<?php foreach($rs as $key => $value){ echo $value['email']; } ?>" />
							</div>

							<div class="form-group">
								<label for="">Địa chỉ<span style="color: red;">*</span></label>
								<input type="text" required class="form-control" name="address" value="<?php foreach($rs as $key => $value){ echo $value['address']; } ?>" />
							</div>
							<div class="form-group">
								<label for="">Khoa<span style="color: red;">*</span></label>
								<select class="form-control" name="id_khoa" value="<?php echo $idKhoa; ?>" >
									<?php 
										foreach ($rsFaculty as $key => $value) {
									?>
										<option value="<?php echo $value['id_khoa']; ?>" <?php if($value['id_khoa']==$checkIdFaculty){echo "selected";} ?>><?php echo $value['tenKhoa']; ?></option>
									<?php
										}
									 ?>
								</select>
							</div>

							<button type="submit" name="edit_member" class="btn btn-primary">Cập nhật</button>
						</form>
						<!-- END sửa thông tin thành viên -->