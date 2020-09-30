<?php 
include_once"../controller/Product_c.php";
if(isset($_GET['key'])){
	$key='%'.$_GET['key'].'%';
	$product=new Product_c();
	$rs=$product->viewSearch($key);
	foreach ($rs as $key => $value) {
		?>
		<tr>
			<td><?php echo $value['ten_dienthoai']; ?></td>
			<td><?php echo $value['ten_hang']; ?></td>
			<td><?php echo $value['mau_sac']; ?></td>
			<td><?php echo $value['gia_dienthoai']; ?></td>
			<td><?php echo $value['mo_ta']; ?></td>
			<td><?php echo $value['ngay_dang']; ?></td>
			<td><?php echo $value['trang_thai']; ?></td>
			<td><a href="#" class="del" id_product="<?php echo $value['ma_dienthoai']; ?>">Xoá</a></td>
		</tr>
		<?php
	}
}




?>