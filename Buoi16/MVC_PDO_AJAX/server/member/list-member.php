<?php 
	include_once'../../controller/Member_c.php';
	$member=new Member_c();

	if(isset($_POST['key'])){
		$key='%'.$_POST['key'].'%';
		$rs=$member->getSearch($key);
	}else{
	$rs=$member->getMember();	
	}

	$dem=0;

	foreach ($rs as $key => $value) {
		$dem+=1;
?>
	<tr>
		<td><?php echo $dem; ?></td>
		<td><?php echo $value['tenHV']; ?></td>
		<td><?php echo $value['phoneHV']; ?></td>
		<td><?php echo $value['email']; ?></td>
		<td><?php echo $value['address']; ?></td>
		<td class="active_mem">


			<button class="btn btn-danger btn_edit" value="<?php echo $value['id_hocvien']; ?>" >Sửa</button>



			<button class="btn btn-danger dele_member" value="<?php echo $value['id_hocvien']; ?>">Delete
				
			</button>
		</td>
	</tr>
<?php
	}




 ?>