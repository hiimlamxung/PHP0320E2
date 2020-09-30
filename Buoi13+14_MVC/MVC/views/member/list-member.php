				<h2>Danh sách học viên</h2>
				<form action="" method="POST" name="frm_search">
					<div class="form-row">
						<div class="col-auto">
							<div class="input-group">
								<input type="text" name="key" class="form-control" id="inlineFormInputGroup" placeholder="Nhập số điện thoại hoặc tên cần tìm...">
							</div>
						</div>
						<div class="col-auto">
							<button type="submit" name="submit_search" class="btn btn-primary mb-2">Tìm kiếm</button>
						</div>
					</div>
				</form>
				<?php 
				include_once "views/noti.php";
				?>
				<div class="table-responsive">
					<table class="table table-striped">
						<tbody>
							<?php 
							$stt=0;
							foreach ($rs as $key => $value) {
								?>
								<tr>
									<td><?php echo $stt+=1; ?></td>
									<td><?php echo $value['tenHV']; ?></td>
									<td><?php echo $value['phoneHV']; ?></td>
									<td><?php echo $value['email']; ?></td>
									<td><?php echo $value['address']; ?></td>
									<td>
										<a href="index.php?page=list-member&method=edit&id=<?php echo $value['id_hocvien']; ?>">
											<button class="btn btn-primary">Sửa</button>
										</a>
										<a  href="index.php?page=list-member&method=del&id=<?php echo $value['id_hocvien']; ?>">
											<button class="btn btn-danger" onclick="return confirm('Bạn có thực sự muốn xóa học viên này không ?');">Xóa</button>
										</a>
									</td>
								</tr>
								<?php
							}


							?>
							
						</tbody>
					</table>
					</div>