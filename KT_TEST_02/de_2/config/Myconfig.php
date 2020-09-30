<?php 
	class Connect{
		private $strCon="mysql:host=localhost;dbname=kttest04";
		private $user="root";
		private $pass="";
		protected $pdo;

		public function __construct(){
			try{
				$this->pdo=new PDO($this->strCon,$this->user,$this->pass);
				$this->pdo->query("SET NAMES UTF8");
			}catch(PDOException $e){
				echo "Lỗi".$e->getMessage();
			}
			
		}
	}



 ?>