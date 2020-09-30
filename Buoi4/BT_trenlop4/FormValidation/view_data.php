<!DOCTYPE html>
<html lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Data</title>

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
	</head>
	<body>
		
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2 class="text-center">THÔNG TIN ĐĂNG KÝ</h2>

					<div class="table-responsive">
						<table class="table table-hover">
							<thead>
								<tr>
									<th>STT</th>
									<th>Name</th>
									<th>Email</th>
									<th>Phone</th>
								</tr>
							</thead>
							<tbody>
								<?php  
									$path = 'data/data.txt';
									$result = array();

									$file_r = fopen($path, 'r');

									while (!feof($file_r)) {
										$row = fgets($file_r);
										if (!empty($row)) {
											array_push($result, explode("*", $row));
										}
									}

									$stt = 0;
									// echo "<pre>";
									// print_r($result);
									// echo "</pre>";
									foreach ($result as $key => $value) {
										$stt += 1;
								?>
										<tr>
											<td><?php echo $stt; ?></td>
											<td><?php echo $value[0]; ?></td>
											<td><?php echo $value[1]; ?></td>
											<td><?php echo $value[2]; ?></td>
										</tr>
								<?php
									}
									fclose($file_r);
								?>
								
							</tbody>
						</table>
					</div>

				</div>
			</div>
		</div>

		<!-- jQuery -->
		<script src="//code.jquery.com/jquery.js"></script>
		<!-- Bootstrap JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
	</body>
</html>