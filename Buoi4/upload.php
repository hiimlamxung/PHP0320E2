<!DOCTYPE html>
<html lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Upload File</title>

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
	</head>
	<body>
		
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<form action="" method="POST" enctype="multipart/form-data">
						<legend>Thông tin</legend>
					
						<div class="form-group">
							<label for="">Ảnh đại diện</label>
							<input type="file" name="avatar" class="form-control">
						</div>
					
						<button type="submit" name="submit" class="btn btn-primary">Upload</button>
					</form>
				</div>
				<div class="col-md-6">
				
					<?php  

						if (isset($_POST['submit'])) {
							$file = $_FILES['avatar'];

							echo "<pre>";
							print_r($file);
							echo "</pre>";

							$nameFile = time().$file['name'];

							echo "Ten file: ".$file['name']."<br>";
							echo "Type: ".$file['type']."<br>";
							echo "Đường dẫn lưu trữ tạm thời: ".$file['tmp_name']."<br>";
							echo "Size: ".$file['size']."<br>";

							move_uploaded_file($file['tmp_name'], "images/".time().$file['name']);
						}

						if (isset($nameFile)) {
					?>
							<img src="images/<?php echo $nameFile; ?>" style="width: 100%; border-radius: 20%;" alt="">
					<?php
						}
					?>

					

				</div>
				
			</div>
		</div>

		<!-- jQuery -->
		<script src="//code.jquery.com/jquery.js"></script>
		<!-- Bootstrap JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
	</body>
</html>