<?php  
	include_once 'config.php';
	$sql = "SELECT *FROM tb_facultys";
	$query = mysqli_query($conn, $sql);
?>

<!DOCTYPE html>
<html lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Demo Ajax</title>

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

	</head>
	<body>
		<div class="container">
			<h4 style="margin: 30px 0px;">DEMO AJAX</h4>
			<div class="row">
				<div class="col-md-6">
					<select name="" id="faculty" class="form-control">
						<option value="0">-- Chọn Khoa --</option>
						<?php  
							while ($rs = mysqli_fetch_assoc($query)) {
						?>
							<option value="<?php echo $rs['id']; ?>"><?php echo $rs['title']; ?></option>
						<?php
							}
						?>
					</select>
				</div>
				<div class="col-md-6 view_data">
					
				</div>
			</div>
		</div>

		<!-- jQuery -->
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
		<!-- Bootstrap JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
		<script>
			$(document).ready(function(){
				$("#faculty").change(function() {
					var idKhoa = $(this).val();
					
					$.post('data.php', {idKhoa: idKhoa}, function(data) {
						$(".view_data").html(data);
					});
				});
			})
		</script>
	</body>
</html>