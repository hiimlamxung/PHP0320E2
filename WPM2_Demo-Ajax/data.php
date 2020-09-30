<?php  
	include_once 'config.php';
	$idKhoa = $_POST['idKhoa'];

	$sql = "SELECT *FROM tb_members WHERE id_faculty = $idKhoa";
	$query = mysqli_query($conn, $sql);
	while ($row = mysqli_fetch_assoc($query)) {
	?>
		<button class="btn btn-danger" value="<?php echo $row['id']; ?>"><?php echo $row['name']; ?></button>
	<?php
	}
?>

