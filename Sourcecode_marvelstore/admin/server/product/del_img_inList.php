<?php 
session_start();
$ajax_flag=1;
include_once"../../controller/admin_c.php";
$admin=new Admin_c();
if(isset($_GET['id']) && isset($_GET['src']) && $_GET['id']>0){
	$id=(int)$_GET['id'];
	$src=$_GET['src'];
	$del=$admin->del_Img_inList($id,$src);
	if($del){
		echo "<script>alert(' Xoá ảnh thành công !');</script>";

		 $content_noti="Quản trị viên ".$_SESSION['name_admin']."(".$_SESSION['email_admin'].") đã xóa 1 ảnh mô tả của sản phẩm có ID là: ".$id." vào lúc ".date('Y/m/d-H:i:s',time());
                       $add_noti=$admin->add_noti_product($id,$content_noti,2);
	}else{
		echo "<script>alert('Không xóa được ảnh !');</script>";
	}
	if(file_exists("../../../".$src)){
		unlink("../../../".$src);
	}
	
}

 ?>