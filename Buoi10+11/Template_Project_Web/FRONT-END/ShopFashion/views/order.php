<?php  
	

	// Lấy sản phẩm khách hàng muốn mua
	if (isset($_GET['id'])) {
		$id = (int)$_GET['id'];
		$product = getId_product($id); // sẩn phẩm khách hàng muốn mua
		// echo "<pre>";
		// print_r($product);


		// Giỏ hàng: $_SESSION['cart'] | $cart
		// $_SESSION['cart'];

		if (!isset($_SESSION['cart']) && empty($_SESSION['cart'])) {
			$_SESSION['cart'][$id] = $product;
			$_SESSION['cart'][$id]['qty'] = 1;
			//  echo "<pre>";
			// print_r($_SESSION['cart']);
		}else{
			if (array_key_exists($id, $_SESSION['cart'])) {
				$_SESSION['cart'][$id]['qty'] += 1;
			}else{
				$_SESSION['cart'][$id] = $product;
				$_SESSION['cart'][$id]['qty'] = 1;
			}
		}
		$_SESSION['cart_noti'] = 1;
		header("Location: index.php");

	}else{
		header("Location: index.php");
	}
	echo "<pre>";
	print_r($_SESSION['cart']);

?>