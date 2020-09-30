<!DOCTYPE html>
<html lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Bài 2</title>

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

	
	</head>
	<body>
		<h2 style="margin-left:500px;">Quản Lý Đồng Hồ</h2>>
		<img src="img/banner1.png" alt="" style="margin-left: 200px;">
		<div id="noti" style="color: green; font-weight: bold;"></div>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>#</th>
					<th>Tên đồng hồ</th>
					<th>Thương Hiệu</th>
					<th>Giá Tiền</th>
					<th>Ngày đăng</th>
					<th>Chức năng</th>
				</tr>
			</thead>
			<tbody id="body">

			</tbody>
		</table>

		<div class="container">
 
 <!--  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button> -->

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
<!--       <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Mô tả sản phẩm</h4>
        </div>
        <div class="modal-body">
          <p>Some text in the modal.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div> -->
      
    </div>
  </div>
  
</div>

		<script src="//code.jquery.com/jquery.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
		<script src="js/MyJava.js"></script>

	</body>
</html>