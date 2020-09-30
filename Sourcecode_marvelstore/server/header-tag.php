<?php 
include_once "controller/product_c.php";
$show = new Product_c();
if(isset($_GET['id']) && $_GET['id']>0){
	$id=(int)$_GET['id'];
	$rs=$show->getProduct_Id($id);
	// echo "<pre>";
	// print_r($rs);
	// echo "</pre>";
	foreach ($rs as $key => $value) {

		?>
		<head>
			<meta charset="utf-8">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<base href="http://php0320e2-3.itpsoft.com.vn/">
			<title>Marvel Shop</title>
			<link rel="shortcut icon" href="images/icon-marvel.png">
			<link rel="stylesheet" href="css/bootstrap.min.css" />
			<link rel="stylesheet" type="text/css" href="css/myCSS.css">
			<link rel="stylesheet" type="text/css" href="css/res_plus.css">
			<link rel="stylesheet" type="text/css" href="css/res_tab.css">
			<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css" />	
			<link rel="stylesheet" href="fonts/glyphicons-halflings-regular.ttf" />
			<script src='https://www.google.com/recaptcha/api.js?hl=vi'></script>	

			<meta property="og:url" content="http://php0320e2-3.itpsoft.com.vn<?php echo $_SERVER['REQUEST_URI']; ?>" />
			<meta property="og:type"          content="website" />
			<meta property="og:title"         content="<?php echo $value['name_product']; ?> " />
			<meta property="og:description"   content="Thế giới mô hình đồ chơi chất lượng" />
			<meta property="og:image"         content="http://php0320e2-3.itpsoft.com.vn/<?php echo $value['img']; ?>" />
			<meta property="fb:app_id" content="3440048582721380" />

		</head>
		<?php
	}
}

?>