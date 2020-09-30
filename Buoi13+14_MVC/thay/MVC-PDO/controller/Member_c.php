<?php  
	include_once 'model/Member_m.php';

	class Member_c extends Member_m
	{

		private $mem;
		
		function __construct()
		{
			$this->mem = new Member_m();
		}

		public function member(){
			if (isset($_GET['method'])) {
				$method = $_GET['method'];
			}else{
				$method = 'index';
			}

			switch ($method) {
				case 'add':
					include_once 'views/add-member.php';
					break;

				case 'update':
					include_once 'views/update-member.php';
					break;
				case 'del':
					include_once 'views/del-member.php';
					break;
				
					default:
					$rs = $this->mem->getMember();
					include_once 'views/list-member.php';
					break;
				}

			
		}

	}

?>