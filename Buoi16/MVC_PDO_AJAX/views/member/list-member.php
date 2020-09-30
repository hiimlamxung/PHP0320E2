<form action="" method="POST" style="margin-top: 30px;">
	
	<div class="form-group">
		<input type="number" id="phone_search" class="form-control" placeholder="Nhập số điện thoại cần tìm...">
	</div>

	<button type="submit" name="submit" class="btn btn-primary">Tìm kiếm</button>
</form>

<p id="noti"></p> <!-- Hiển thị thông báo -->
<div class="table-responsive">
	<table class="table table-hover">
		<thead>
			<tr>
				<th>STT</th>
				<th>Họ tên SV</th>
				<th>Số điện thoại</th>
				<th>Email</th>
				<th>Địa chỉ</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody id="view_data">
			
		</tbody>
	</table>
</div>
<div id="modal_editmember">
	<div class="modal fade bs-example-modal-lg2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content" style="padding: 40px 40px;" id="modal-content">
      	
    </div>
  </div>
</div>
</div>