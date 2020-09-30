<?php 
include_once "../config/MyConFig.php";
class Product_m extends Connect{
	public function __construct(){
		parent::__construct();
	}

	public function getProduct(){
		$sql=" SELECT id,name,name_cate,price,date_create,description FROM tbl_product LEFT JOIN tbl_cate ON tbl_product.id_cate = tbl_cate.id_cate;";
		$pre=$this->pdo->prepare($sql);
		$pre->execute();
		return $rs=$pre->fetchAll(PDO::FETCH_ASSOC);
	}

	public function searchProduct($key){
		$sql="SELECT id,name,name_cate,price,date_create FROM tbl_product LEFT JOIN tbl_cate ON tbl_product.id_cate = tbl_cate.id_cate WHERE name LIKE :key ";
		$pre=$this->pdo->prepare($sql);
		$pre->bindParam(':key',$key);
		$pre->execute();
		return $rs=$pre->fetchAll(PDO::FETCH_ASSOC);
	}

	public function delProduct($id){
		$sql="DELETE FROM tbl_product WHERE id=:id";
		$pre=$this->pdo->prepare($sql);
		$pre->bindParam(':id',$id);
		return $pre->execute();
	}




}
 ?>