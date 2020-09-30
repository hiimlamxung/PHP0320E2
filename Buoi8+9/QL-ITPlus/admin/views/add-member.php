<?php 
// echo "<pre>";
// 		print_r($faculty);
if (isset($_POST['add_member'])) {
		$name = $_POST['name'];
		$faculty = $_POST['faculty'];
		$phone = trim($_POST['phone']);
		$email = $_POST['e_mail'];
		$address = $_POST['addres'];
		$check=checkPhone($phone);

		if($check==1){
			$error_phone="Số điện thoại đã tồn tại!";
		}else{

		$add = add_member($faculty, $name, $phone, $email, $address);
		}
	}
	$faculty=getAll_Faculty();

 ?>
<!-- START Thêm thành viên mới -->
						<form action="" method="POST" role="form">
							<legend>Thêm mới học viên</legend>

							<div class="form-group">
								<label for="">Họ tên<span style="color: red;">*</span></label>
								<input type="text" required class="form-control" name="name" placeholder="Họ tên học viên..." value="<?php if(isset($name)) { echo $name; } ?>">
							</div>
							<div class="form-group">
								<label for="">Khoa<span style="color: red;">*</span></label>
								<select name="faculty" id="input" class="form-control" required="required">
									<?php 
										foreach ($faculty as $key => $value) {
											?>
											<option value="<?php echo $value['idKhoa'];?>"><?php echo $value['tenKhoa']; ?></option>
										<?php  
									}
									 ?>
								</select>
								
							</div>

							<div class="form-group">
								<label for="">Số điện thoại<span style="color: red;">*<?php if(isset($error_phone)) { echo $error_phone;}?></span></label>
								<input type="number" required class="form-control" name="phone" placeholder="098569789" value="<?php if(isset($phone)) { echo $phone; } ?>">
							</div>

							<div class="form-group">
								<label for="">Email</label>
								<input type="mail" class="form-control" name="e_mail" placeholder="it-plus@gmail.com" value="<?php if(isset($email)) { echo $email; } ?>">
							</div>

							<div class="form-group">
								<label for="">Địa chỉ<span style="color: red;">*</span></label>
								<input type="text" required class="form-control" name="addres" placeholder="Địa chỉ học viên..." value="<?php if(isset($address)) { echo $address; } ?>">
							</div>

							<button type="submit" name="add_member" class="btn btn-primary">Thêm mới</button>
						</form>
						<!-- END Thêm thành viên mới -->
