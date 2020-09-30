<?php 
$ajax_flag=1;
include_once"../../controller/admin_c.php";
$admin=new Admin_c();
if(isset($_GET['id']) && $_GET['id']>0){
	$id=(int)$_GET['id'];
	$rs=$admin->getDetail_Contact_Id($id);
	?>
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h3 class="modal-title" id="exampleModalLabel">Chi tiết nội dung phản hồi của khách hàng</h3>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body" style="overflow: auto;">
					<?php 
					foreach ($rs as $key => $contact) {
						?>
						<div class="form-group">
							<label for="">ID</label>
							<input type="text" name="" class="form-control" value="<?php echo $contact['id_contact']; ?>">
						</div>
						<div class="form-group">
							<label for="">Họ tên người gửi</label>
							<input type="text"  class="form-control"  value="<?php echo $contact['name']; ?>">
						</div>
						<div class="form-group">
							<label for="">Số điện thoại</label>
							<input type="number" class="form-control" value="<?php echo $contact['phone']; ?>">
						</div>
						<div class="form-group">
							<label for="">Email</label>
							<input type="email" class="form-control" value="<?php echo $contact['email']; ?>" >
						</div>
						<div class="form-group">
							<label for="">Thời gian gửi</label>
							<input type="text"  class="form-control" value="<?php echo $contact['created']; ?>" >
						</div>
						<div class="form-group">
							<label for="">Nội dung</label>
							<textarea class="form-control" style="resize: none" cols="10" rows="8"><?php echo $contact['contact']; ?></textarea>
						</div>

						<?php
					}
					?>
				</form>
								<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
				</div>
			</div>
		</div>
	</div>
	<?php
}

?>