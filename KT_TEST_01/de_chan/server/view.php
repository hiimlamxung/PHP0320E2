<?php 
include_once "../controller/Product_c.php";
$product=new Product_c();
$rs=$product->getProduct();
$stt=0;
foreach ($rs as $key => $value) {
?>
<tr>
	<td><?php echo $stt+=1; ?></td>
	<td><?php echo $value['name']; ?></td>
	<td><?php echo $value['name_cate']; ?></td>
	<td><?php echo $value['price']; ?></td>
	<td><?php echo $value['date_create']; ?></td>
	<td><?php echo $value['description']; ?></td>
	<td><button type="button" class="btn btn-danger" value="<?php echo $value['id']; ?>">Xóa</button></td>
</tr>
<?php
}
 ?>