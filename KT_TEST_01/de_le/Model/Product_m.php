<?php 
	include_once "../ConFig/ConFig.php";
	class Product_m extends Connect{
		function __construct(){
			parent::__construct();
		}

		public function getProduct(){
			$sql=" SELECT id,name,name_cate,price,date_create FROM tbl_product LEFT JOIN tbl_cate ON tbl_product.id_cate = tbl_cate.id_cate;";
			$pre=$this->pdo->prepare($sql);
			$pre->execute();
			$result= $pre->fetchAll(PDO::FETCH_ASSOC);
			return $result;
		}

		public function del($id){
			$sql="DELETE FROM `tbl_product` WHERE id=:id";
			$pre=$this->pdo->prepare($sql);
			$pre->bindParam(':id',$id);
			return $pre->execute();
		}

	}


 ?>