<?php 
	
	class Connect {
		private $dns = "mysql:host=localhost;dbname=PHP0320E2_nhom3";
		private $user = "PHP0320E2_nhom3";
		private $pass = 'PHP0320E2_nhom3*';
		protected $pdo = null;

		function __construct()
		{ 
			try{
				$this->pdo = new PDO($this->dns, $this->user, $this->pass);
				$this->pdo->query("SET NAMES utf8");
			}catch(PDOException $e){
				echo $e->getMessage();
				exit;
			}

		}
	}

?>