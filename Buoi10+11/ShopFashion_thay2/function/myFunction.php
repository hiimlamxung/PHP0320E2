<?php  
	// Lấy ra sản phẩm hot
	function getPro_Hot(){
		global $conn;

		$sql = "SELECT *FROM tbl_product WHERE stt = 2";
		$query = mysqli_query($conn, $sql);
		$result = array();

		while ($row = mysqli_fetch_array($query)) {
			$result[] = $row;
		}
		return $result;
	}

	// Lấy thông tin sản phẩm theo id, lấy thông tin sản phẩm khách hàng muốn mua
	function getPro_Id($id){
		global $conn;

		$sql = "SELECT *FROM tbl_product WHERE id = $id";
		$query = mysqli_query($conn, $sql);
		$result = array();
		$result = mysqli_fetch_array($query);

		return $result;
	}

	// Lấy thông itn khách hàng đặt hàng
	function addMember($name, $phone, $addres, $email, $passw){
		global $conn;

		$sql = "INSERT INTO tbl_member(name_member, phone_member, addres, email_member, passw) VALUES('$name', '$phone', '$addres', '$email', '$passw')";
		$query = mysqli_query($conn, $sql);
	}

	// Insert đơn hàng khách hàng đặt
	function addOrder($id_member, $note){
		global $conn;

		$sql = "INSERT INTO tbl_order(id_member, note) VALUES($id_member, '$note')";
		$query = mysqli_query($conn, $sql);
	}

	// Lấy thông tin sản phẩm khách hàng muốn mua đưa vào detail order
	function addPro_order($id_order, $id_product, $quantity, $price, $total){
		global $conn;
		
		$sql = "INSERT INTO tbl_detail_order(id_order, id_product, quantity, price, total) VALUES($id_order, $id_product, $quantity, $price, $total)";
		$query = mysqli_query($conn, $sql);
	}


?>