<?php 
	class Connect{
		private $strCon="mysql:host=localhost;dbname=db_shop";
		private $user="root";
		private $pass="";
		protected $pdo=null;

		public function __construct(){ //Hàm kết nối CSDL
			try{
				$this->pdo=new PDO($this->strCon,$this->user,$this->pass);
				$this->pdo->query("SET NAMES UTF8");

			}catch(PDOException $e){
				echo $e->getMessage();
				exit();

			}
		}




	}


 ?>