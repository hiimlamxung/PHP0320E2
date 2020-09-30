<?php 
	//Lay san pham khach hang muon mua
	if(isset($_GET['id'])){
		$id=(int)$_GET['id'];
		$product=getId_product($id);//Sản phẩm khách hàng muốn mua


		//Giỏ hàng:$_SESSION['cart']
		//$_SESSION['cart'];

		if(!isset($_SESSION['cart'])&&empty($_SESSION['cart'])){
			$_SESSION['cart'][$id]=$product;
			$_SESSION['cart'][$id]['qty']=1;
		}else{
			if(array_key_exists($id, $_SESSION['cart'])){
				$_SESSION['cart'][$id]['qty']+=1;
			}else{
				$_SESSION['cart'][$id]=$product;
				$_SESSION['cart'][$id]['qty']=1;
			}


		}
		$_SESSION['cart_noti']=1;
		header("Location:index.php");
	}else{
		header("Location:index.php");
	}


 ?