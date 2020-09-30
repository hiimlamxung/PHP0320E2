<?php 
if(isset($_POST['submit_search'])){
	$search=$_POST['search'];
	$rs=$this->mem->searchMember($search);
$count_kq=0;
}

?>

<h2>DANH SÁCH HỌC VIÊN</h2>
<div class="table-responsive">
	<table class="table table-striped">
		<thead>
			<tr>
				<th>STT</th>
				<th>Name</th>
				<th>Phone</th>
				<th>Email</th>
				<th>Addres</th>
				<th>Action</th>
			</tr>
		</thead> 
		<tbody>
			<?php  

			foreach ($rs as $key => $value) {
				if(isset($count_kq)){
					$count_kq++;
				}
				?>
				<tr>
					<td>1</td>
					<td><?php echo $value['tenHV']; ?></td>
					<td><?php echo $value['phoneHV']; ?></td>
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
</div>
<?php 
	if(isset($count_kq)){
?>
<div class="alert alert-danger">
	<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
	<strong>Tìm thấy <?php echo $count_kq; ?> kết quả </strong>
</div>
<?php
	}
 ?>
