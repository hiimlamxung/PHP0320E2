<h4>THÊM MỚI HỌC VIÊN</h4>
<form action="" method="POST" name="frm_member">
    <div class="form-group col-md-12">
      <label for="name">Họ tên</label>
      <input type="text" class="form-control" id="name" required="" placeholder="Họ tên..." name="name">
    </div>
  <div class="form-group col-md-12">
    <label for="phone">Số điện thoại</label>
    <input type="number" class="form-control" id="phone" required="" name="phone" placeholder="">
  </div>
  <div class="form-group col-md-12">
    <label for="email">Email</label>
    <input type="text" class="form-control" id="email" required="" name="email" placeholder="">
  </div>
  
    <div class="form-group col-md-12">
      <label for="inputCity">Địa chỉ</label>
      <input type="text" class="form-control" id="address" required="" name="address">
    </div>
    <div class="form-group col-md-12">
      <label for="faculty">Khoa</label>
      <select name="faculty" class="form-control" required="" id="faculty">
      <?php 
        foreach ($rsFaculty  as $keyFa => $valueFa) {
      ?>
        <option value="<?php echo $valueFa['id_khoa']; ?> "><?php echo $valueFa['tenKhoa'];  ?></option>
        <?php
        }

       ?>
      </select>
  
    </div>



  <div class="form-group">
  <button type="submit"  name="submit_add" class="btn btn-primary">Thêm mới</button>
  </div>
</form>