<?php 
	include_once "../Model/Product_m.php";
	class Product_c extends Product_m{
		private $pro;
		function __construct(){
			$this->pro=new Product_m();
		}

		public function getProduct(){
			return $this->pro->getProduct();
		}

		public function del($id){
			return $this->pro->del($id);
		}
	}

 ?>