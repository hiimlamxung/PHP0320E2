<?php 
	include_once"controller/Member_c.php";
	$member= new Member_c();
	$key='%'.trim($_GET['key']).'%';
	$rs=$member->mem->search_member($key);
						
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