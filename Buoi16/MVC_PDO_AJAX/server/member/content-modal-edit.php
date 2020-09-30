<?php
include_once '../../controller/Member_c.php';
$member= new Member_c();
if(isset($_POST['id'])){
	$id=$_POST['id'];
	$rsFaculty=$member->getFaculty();
	$rs=$member->getMember_ID($id);
	// echo "<pre>";
	// print_r($rs);
	// echo "</pre>";

	foreach ($rs as $key => $value) {

		?>
		<form action="" method="POST" role="form" id="forms_md">
			<legend>Sửa học viên</legend>

			<div class="form-group">
				<label for="">ID Học viên</label>
				<input type="text" readonly="" class="form-control" id="id_edit" placeholder="Nhập đầy đủ họ tên" value="<?php echo $value['id_hocvien']; ?>">
			</div>
			<div class="form-group">
				<label for="">Tên học viên</label>
				<input type="text" required="" class="form-control" id="name_edit" placeholder="Nhập đầy đủ họ tên" value="<?php echo $value['tenHV']; ?>">
			</div>

			<div class="form-group">
				<label for="">Số điện thoại</label>
				<input type="number" required="" class="form-control" id="phone_edit" placeholder="Số điện thoại..." value="<?php echo $value['phoneHV']; ?>">
			</div>

			<div class="form-group">
				<label for="">Email</label>
				<input type="email" required="" class="form-control" id="email_edit" placeholder="Email..." value="<?php echo $value['email']; ?>">
			</div>

			<div class="form-group">
				<label for="">Địa chỉ</label>
				<input type="text" required="" class="form-control" id="address_edit" placeholder="Địa chỉ..." value="<?php echo $value['address']; ?>">
			</div>

			<div class="form-group">
				<label for="">Khoa</label>
				<select class="form-control" id="khoa_edit" >
					<?php
					foreach ($rsFaculty as $key => $value2) {
						?>
						<option value="<?php echo $value2['id_khoa']; ?>" <?php if($value['id_khoa']==$value2['id_khoa']){echo "selected";} ?> ><?php echo $value2['tenKhoa']; ?></option>
						<?php
					}
					?>
				</select>
			</div>


			<button type="submit" id="submit-edit" class="btn btn-primary">Thêm mới</button>
			<span id="noti_editmember"></span>
		</form>
		<?php
	}
}
?>