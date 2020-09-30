
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
	</script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
	<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.js"></script>
</head>
<body>
	<div id="1"><div id="2">
		<table class="table table-striped" id="table_1">
			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Name</th>
					<th scope="col">Giá</th>
					<th scope="col">Hãng</th>

				</tr>
			</thead>

		</table>
	</div></div>
	<a href="">click to reload</a>













	<script type="text/javascript">
		// function InitTable(){
		// $.get('fetch.php', function(responseData) {
		// // $.each(responseData, function(key, value) {
		// // 	id_banner=value['id_banner'];
		// // 	name_banner=value['name_banner'];
		// // 	path=value['path'];
		// // });
		// 	var table=$("#table_1").DataTable({
		// 		"processing":true,
		// 		data : responseData,
		// 		dataType: 'json',
		// 		columns:[
		// 			{data : 'id_banner'},
		// 			{data : 'name_banner'},
		// 			{data : 'path'},

		// 		]
		// 	});
		// });
	// }

	$(document).ready(function() {
		// InitTable();

		$('#table_1').DataTable( {
			ajax: {
				url: 'fetch.php',
				dataSrc: ''
			},
			columns: [
			{ data: 'id_product' },		
			{ data: 'name_product' },
			{ data: 'price' },
			{ data: 'id_brand' },
			]
		} );

		$(document).on('click', 'a', function(event) {
			event.preventDefault();
			// alert("reload data !");
			$('#table_1').DataTable().ajax.reload();
		});
	});

</script>

</body>
</html>