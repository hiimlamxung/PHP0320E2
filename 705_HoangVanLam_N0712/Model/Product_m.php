<?php 
	include_once "../config/Config.php";
	class Product_m extends Connect{
		function __construct(){
			parent::__construct();
		}

		public function getProduct(){ //Hàm lấy ra tất cả thông tin của tất cả sản phẩm bảng product
			$sql=" SELECT id,name,name_cate,price,date_create FROM tbl_product LEFT JOIN tbl_cate ON tbl_product.id_cate = tbl_cate.id_cate;";
			$pre=$this->pdo->prepare($sql);
			$pre->execute();
			$result= $pre->fetchAll(PDO::FETCH_ASSOC);
			return $result;
		}

		public function del($id){ //Hàm xóa sản phẩm theo id
			$sql="DELETE FROM `tbl_product` WHERE id=:id";
			$pre=$this->pdo->prepare($sql);
			$pre->bindParam(':id',$id);
			return $pre->execute();
		}

		public function getDescription_ID($id){ //Hàm lấy mô tả sản phẩm theo ID
			$sql="SELECT description FROM tbl_product WHERE id=:id";
			$pre=$this->pdo->prepare($sql);
			$pre->bindParam(':id',$id);
			$pre->execute();
			return $result= $pre->fetchAll(PDO::FETCH_ASSOC);

		}

	}


 ?>