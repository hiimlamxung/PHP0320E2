<?php 
include_once"../model/Product_m.php";
class Product_c extends Product_m{
	private $pro;

	public function __construct(){
		$this->pro= new Product_m();
	}

	public function getProduct(){
		return $this->pro->getProduct();
	}

	public function searchProduct($key){
		return $this->pro->searchProduct($key);
	}

	public function delProduct($id){
		return $this->pro->delProduct($id);
	}
}




 ?>