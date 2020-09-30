   <head>
      <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
      <meta name="description" content="">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="shortcut icon" href="images/favicon.png">
      <title>Welcome to FlatShop</title>

      <link href="css/bootstrap.css" rel="stylesheet">
      <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100' rel='stylesheet' type='text/css'>
      <link href="css/font-awesome.min.css" rel="stylesheet">
      <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen"/>
      <link href="css/sequence-looptheme.css" rel="stylesheet" media="all"/>
      <link href="css/style.css" rel="stylesheet">
   <!--    <script type="text/javascript" src="js/jquery-3.5.1.min.js"></script>
      <script src="js/MyJs.js"></script> -->
      

   </head>
<?php 
   if(isset($_SESSION['cart_noti'])){
?>
   <div class="alert alert-success">
      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
      <strong>Thông báo!</strong> Sản phẩm đã được thêm vào giỏ hàng.<a href="index.php?page=cart"><button class="btn btn-danger">Xem chi tiết</button></a>
   </div>
<?php
   unset($_SESSION['cart_noti']);
   } else if(isset($_SESSION['DelItemCart_noti'])){
?>
   <div class="alert alert-success">
      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
      <strong>Thông báo!</strong> Đã xóa sản phẩm khỏi giỏ hàng. Bạn có thể chọn mua sản phầm mới.<a href="index.php?page=cart">
   </div>
<?php
   unset($_SESSION['DelItemCart_noti']);
   }

 ?>