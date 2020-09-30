<?php 
  $facul=$this->mem->getFaculty();


 //  echo "<pre>";
 //  print_r($facul);
 // echo "</pre>";

  if(isset($_POST['add_member'])){
      $id_khoa=$_POST['faculty'];
      $tenHV=$_POST['name'];
      $phoneHV=trim($_POST['phone']);
      $email=$_POST['e_mail'];
      $address=$_POST['addres'];
      $check=$this->mem->checkPhone($phoneHV);
      if($check>0){
          $error_phone="Số điện thoại đã tồn tại";
      }else if(strlen($phoneHV)!=10){
          $error_phone="Số điện thoại phải có 10 số";
      }else{
        $this->mem->addMember($id_khoa,$tenHV,$phoneHV,$email,$address);

      }

  }
 ?>
<h4>THÊM MỚI HỌC VIÊN</h4>
<form action="" method="POST" role="form">
  <legend>Thêm mới học viên</legend>

  <div class="form-group">
    <label for="">Họ tên<span style="color: red;">*</span></label>
    <input type="text" required class="form-control" name="name" placeholder="Họ tên học viên..." value="<?php if(isset($tenHV)) { echo $tenHV; } ?>">
  </div>
  <div class="form-group">
    <label for="">Khoa<span style="color: red;">*</span></label>
    <select name="faculty" id="input" class="form-control" required="required">
    <?php 
      foreach ($facul as $key => $value) {
        ?>
        <option value="<?php echo $value['id_khoa']; ?>"><?php echo $value['tenKhoa']; ?></option>
     <?php
      }

     ?>
    </select>

  </div>

  <div class="form-group">
    <label for="">Số điện thoại<span style="color: red;">*<?php if(isset($error_phone)) { echo $error_phone;}?></span></label>
    <input type="number" required class="form-control" name="phone" placeholder="098569789" value="<?php if(isset($phoneHV)) { echo $phoneHV; } ?>">
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