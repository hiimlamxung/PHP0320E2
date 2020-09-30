<?php 
	$faculty=getAll_Faculty();
	// echo "<pre>";
	// print_r($faculty);
	$idHV=$_GET['idHV'];
	$idKhoa=$_GET['idKhoa'];
	$nameHV=$_GET['nameHV'];
	$email=$_GET['email'];
	$phone=$_GET['phone'];
	$address=$_GET['address'];
	if(isset($_POST['update_member'])){
		$name_edit=$_POST['name'];
		$phone_edit=$_POST['phone'];
		$email_edit=$_POST['e_mail'];
		$address_edit=$_POST['addres'];
		$idKhoa_edit=$_POST['khoa'];
		$edit=edit($idHV,$idKhoa_edit,$name_edit,$email_edit,$phone_edit,$address_edit);


	}


 ?>

<!-- START sửa thông tin thành viên -->
						<form action="" method="POST" role="form">
							<legend>Sửa thông tin học viên</legend>
							
							<div class="form-group">
								<label for="">ID Học viên</label>
								<input type="text" readonly="" value="<?php echo $idHV;?>" class="form-control" name="name" />
							</div>
							<div class="form-group">
								<label for="">Họ tên<span style="color: red;">*</span></label>
								<input type="text" required class="form-control" name="name" value="<?php echo $nameHV ?>" />
							</div>

							<div class="form-group">
								<label for="">Số điện thoại<span style="color: red;">*</span></label>
								<input type="number" required class="form-control" name="phone" value="<?php echo $phone ?>">
							</div>

							<div class="form-group">
								<label for="">Email</label>
								<input type="mail" class="form-control" name="e_mail" value="<?php echo $email ?>" />
							</div>

							<div class="form-group">
								<label for="">Địa chỉ<span style="color: red;">*</span></label>
								<input type="text" required class="form-control" name="addres" value="<?php echo $address ?>" />
							</div>
							<div class="form-group">
								<label for="">Khoa<span style="color: red;">*</span></label>
								<select class="form-control" name="khoa" value="<?php echo $idKhoa; ?>" >
									<?php 
										foreach ($faculty as $key => $value) {
									?>
										<option value="<?php echo $value['idKhoa']; ?>" <?php if($value['idKhoa']==$idKhoa){echo'selected=""';} ?>><?php echo $value['tenKhoa']; ?></option>
									<?php
										}
									 ?>
								</select>
							</div>

							<button type="submit" name="update_member" class="btn btn-primary">Cập nhật</button>
						</form>
						<!-- END sửa thông tin thành viên -->

