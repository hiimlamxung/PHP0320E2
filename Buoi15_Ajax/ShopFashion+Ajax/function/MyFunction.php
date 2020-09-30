<?php 
	function getPro_Hot(){
		global $conn;
		$sql="SELECT * FROM tbl_product WHERE stt=2";
		$query=mysqli_query($conn,$sql);
		$result=array();
		while($row=mysqli_fetch_array($query)){
			$result[]=$row;

		}
		return $result;
	}
	function getPro_Featured(){
		global $conn;
		$sql="SELECT * FROM tbl_product WHERE stt=1";
		$query=mysqli_query($conn,$sql);
		$result=array();
		while($row=mysqli_fetch_array($query)){
			$result[]=$row;

		}
		return $result;
	}


	function getId_product($id){
		global $conn;
		$sql="SELECT * FROM tbl_product WHERE id=$id";
		$query=mysqli_query($conn,$sql);
		return mysqli_fetch_array($query,MYSQLI_ASSOC);
	}
	// Thêm thông tin khách hàng mua hàng
	function addMember($name_member, $phone_member, $addres, $email_member, $passw){
		global $conn;

		$sql = "INSERT INTO tbl_member(name_member, phone_member, addres, email_member, passw) VALUES('$name_member', '$phone_member', '$addres', '$email_member', '$passw')";
		$query = mysqli_query($conn, $sql);
		if ($query) {
			# code...
		}else{
			echo "Thêm mới thành viên thất bại!";
		}
	}


	// Thêm thông tin đơn hàng
	function addOrder($id_member, $note){
		global $conn;

		$sql = "INSERT INTO tbl_order(id_member, note) VALUES($id_member, '$note')";
		$query = mysqli_query($conn, $sql);
		if ($query) {
			# code...
		}else{
			echo "Thêm mới đơn hàng thất bại!";
		}
	}

	// Thêm sản phẩm khách hàng mua
	function addProduct($id_order, $id_product, $quantity, $price, $total){
		global $conn;
		
		$sql = "INSERT INTO 
			tbl_detail_order(id_order, id_product, quantity, price, total)
			VALUES($id_order, $id_product, $quantity, $price, $total)
		";
		$query = mysqli_query($conn, $sql);
		if ($query) {
			# code...
		}else{
			echo "Thêm mới chi tiết đơn hàng thất bại!";
		}
	}


 ?>