<h4>THÊM MỚI HỌC VIÊN</h4>

<form action="" method="POST" name="frm_member">
  <div class="form-group col-md-12">
    <label for="name">Họ tên</label>
    <input type="text" required="" class="form-control" name="name" id="name" placeholder="Họ tên...">
  </div>

  <div class="form-group col-md-12">
    <label for="phone">Số điện thoại</label>
    <input type="number" required="" class="form-control" name="phone" id="phone" placeholder="Số điện thoại...">
  </div>

  <div class="form-group col-md-12">
    <label for="email">Email</label>
    <input type="email" required="" class="form-control" name="email" id="email" placeholder="Email...">
  </div>

  <div class="form-group col-md-12">
    <label for="addres">Địa chỉ</label>
    <input type="text" required="" class="form-control" name="addres" id="addres" placeholder="Địa chỉ...">
  </div>

  <div class="form-group col-md-12">
    <label for="addres">Khoa</label>
    <select name="faculty" class="form-control" id="faculty">
      <?php  
        foreach ($rsFaculty as $keyFa => $valueFa) {
      ?>
        <option value="<?php echo $valueFa['id_khoa']; ?>"><?php echo $valueFa['tenKhoa']; ?></option>
      <?php
        }
      ?>
      
    </select>
  </div>
  <div class="form-group col-md-12">
    <button type="submit" name="submit_add" class="btn btn-primary">Thêm mới</button>
  </div>
</form>