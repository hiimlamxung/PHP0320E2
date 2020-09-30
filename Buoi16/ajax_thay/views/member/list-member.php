<form action="" method="POST" style="margin-top: 30px;">
	
	<div class="form-group">
		<input type="number" id="phone_search" class="form-control" placeholder="Nhập số điện thoại cần tìm...">
	</div>

	<button type="button" name="submit" class="btn btn-primary">Tìm kiếm</button>
</form>

<p id="noti"></p> <!-- Hiển thị thông báo -->
<div class="table-responsive">
	<table class="table table-hover">
		<thead>
			<tr>
				<th>STT</th>
				<th>Name</th>
				<th>Phone</th>
				<th>Email</th>
				<th>Addres</th>
				<th>Aaction</th>
			</tr>
		</thead>
		<tbody id="view_data">
			
		</tbody>
	</table>
</div>