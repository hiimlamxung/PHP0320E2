<?php  
	if (isset($_SESSION['noti']) && $_SESSION['noti'] == 1) {
?>
	<div class="alert alert-success" role="alert">
		<strong>Thông báo!</strong> Thêm mới thành công!
	</div>
<?php

	}else if(isset($_SESSION['noti']) && $_SESSION['noti'] == 2){
?>
	<div class="alert alert-success" role="alert">
		<strong>Thông báo!</strong> Xóa thành công!
	</div>
<?php
	}
	unset($_SESSION['noti']);
?>