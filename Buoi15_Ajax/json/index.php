
<!DOCTYPE html>
<html lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Title Page</title>

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">


	</head>
	<body>
		<div class="container">
			<h4>Danh sach hoc vien</h4>
			<div class="table-responsive">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Name</th>
							<th>Age</th>
							<th>Address</th>
						</tr>
					</thead>
					<tbody id="show_data">

					</tbody>

				</table>
				<button id="getData">Get Value</button>
			</div>
		</div>


		<script src="../js/jquery-3.5.1.min.js"></script>
		<script type="text/javascript">
				$(document).ready(function(){
				$("#getData").click(function() {
					$.ajax({
						url: 'data.php',
						type: 'POST',
						dataType: 'json',
					})
					.done(function(datas) {
						var result = '';
						$.each(datas, function(key, value) {
							result += '<tr>';
							result += '<td>' + value['name'] + '</td>';
							result += '<td>' + value['age'] + '</td>';
							result += '<td>' + value['address'] + '</td>';
							result += '</tr>';
						});

						$("#show_data").append(result);

					})


				});
			})
		</script>
	</body>
</html>
