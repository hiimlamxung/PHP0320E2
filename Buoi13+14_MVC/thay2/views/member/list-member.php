<h2>DANH SÁCH HỌC VIÊN</h2>
	
	<form action="" method="POST" name="frm_search">
	  <div class="form-row">
	    <div class="col-auto">
	      <div class="input-group">
	        <input type="number" name="key" class="form-control" id="inlineFormInputGroup" placeholder="Nhập số điện thoại hoặc tên cần tìm...">
	      </div>
	    </div>
	    <div class="col-auto">
	      <button type="submit" name="submit_search" class="btn btn-primary mb-2">Tìm kiếm</button>
	    </div>
	  </div>
	</form>

	<?php include_once 'views/notification.php'; ?>

	<div class="table-responsive">
		<table class="table table-striped">
			<thead>
			<tr>
				<th>STT</th>
				<th>Name</th>
				<th>Phone</th>
				<th>Faculty</th>
				<th>Email</th>
				<th>Addres</th>
				<th>Action</th>
			</tr>
		</thead> 
		<tbody>
			<?php  
				$dem = 0;
				foreach ($rs as $key => $value) {
					$dem += 1;
			?>
				<tr>
					<td><?php echo $dem; ?></td>
					<td><?php echo $value['tenHV']; ?></td>
					<td><?php echo $value['phoneHV']; ?></td>
					<td><?php echo $value['tenKhoa']; ?></td>
					<td><?php echo $value['email']; ?></td>
					<td><?php echo $value['address']; ?></td>
					<td>
						<a href="index.php?page=edit-member">
							<button class="btn btn-primary">Sửa</button>
						</a>
						<a onclick="return confirm('Bạn có thực sự muốn xóa học viên này không?');" href="index.php?page=list-member&method=del&id=<?php echo $value['id_hocvien']; ?>">
							<button class="btn btn-danger">Xóa</button>
						</a>
					</td>
				</tr>
			<?php
				}
			?>
			
			</tbody>
		</table>
		<nav aria-label="Page navigation example">
		  <ul class="pagination">
		  	<?php  
		  		for ($i = 1; $i <= $pagination; $i++) { 
		  	?>
				<li class="page-item"><a class="page-link" href="index.php?pages=<?php echo $i; ?>"><?php echo $i; ?></a></li>
		  	<?php
		  		}
		  	?>
		  </ul>
		</nav>
	</div>