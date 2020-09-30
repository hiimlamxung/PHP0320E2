<?php 
	include_once"../Controller/Product_c.php";
	$product=new Product_c();
	$rs=$product->getProduct();
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
			<td><button class="btn btn-danger delpro" value="<?php echo $value['id']; ?>">Xoá</button><button type="button" class="btn btn-primary view_des" data-toggle="modal" data-target="#myModal"  value="<?php echo $value['id']; ?>" >Xem</button></td>
		</tr>
<?php
	}





 ?>