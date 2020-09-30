<?php 
include_once "../controller/Product_c.php";
$product=new Product_c();
if(isset($_POST['key'])){
	$key='%'.$_POST['key'].'%';
	$rs=$product->searchProduct($key);
	// echo "<pre>";
	// print_r($rs);
	// echo "</pre>";
	$stt=0;
	foreach ($rs as $key => $value) {
		?>
		<tr>
			<td><?php echo $stt+=1; ?></td>
			<td><?php echo $value['name']; ?></td>
			<td><?php echo $value['name_cate']; ?></td>
			<td><?php echo $value['price']; ?></td>
			<td><?php echo $value['date_create']; ?></td>
			<td><button type="button" class="btn btn-danger" value="<?php echo $value['id']; ?>">Xóa</button></td>
		</tr>
		<?php
	}
}
?>

