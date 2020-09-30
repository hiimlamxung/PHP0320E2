<?php 
	//Viết kiểu Mysqli
	// class Connect{
	// 	private $local='localhost';
	// 	private $user='root';
	// 	private $pass='';
	// 	private $db='php0320e2_itplus';
	// 	protected $conn=null;
	// 	function __construct(){
	// 		$this->conn = mysqli_connect($this->local,$this->user,$this->pass,$this->db) or die("Can't connect database");
	// 		if($this->conn){
	// 			mysqli_set_charset($this->conn,'utf8');
	// 		}else{
	// 			echo ("Can't connect database");
	// 			exit();
	// 		}
	// 	}
	// }



	//Viết Kiểu PDO
	class Connect{
		private $strCon = 'mysql:host=localhost;dbname=php0320e2_itplus';
		private $user = 'root';
		private $pass = '';
		protected $pdo = null;

		function __construct(){
			try {
				$this->pdo = new PDO($this->strCon, $this->user, $this->pass);
				$this->pdo->query("SET NAMES utf8");
			} catch (PDOException $e) {
				echo $e->getMessage();
				exit();
			}
		}
	}


 ?>