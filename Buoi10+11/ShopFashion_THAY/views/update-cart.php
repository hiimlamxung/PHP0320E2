<?php  
	if (isset($_POST['submit_cart'])) {
		unset($_POST['submit_cart']);

		// echo "<pre>";
		// print_r($_POST);
		// echo "</pre>";

		// echo "<hr>";

		// echo "<pre>";
		// print_r($_SESSION['cart']);
		// echo "</pre>";

		if (isset($_SESSION['cart']) && !empty($_SESSION['cart'])){
			foreach ($_POST as $id => $qty) {
				$_SESSION['cart'][$id]['qty'] = $qty;
			}
			header("Location: index.php?page=cart");
		}
	}

?>