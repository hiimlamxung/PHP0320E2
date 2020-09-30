<?php  
	include_once "../../model/Member_m.php";

	/**
	 * 
	 */
	class Member_c extends Member_m
	{
		private $mem;

		function __construct()
		{
			$this->mem = new Member_m(); // Tự động chạy cái hàm __construct
		}

		public function getMember(){
			return $this->mem->getMember();
		}

		public function getSearch($key){
			return $this->mem->getSearch($key);
		}

		public function delete($id){
			return $this->mem->delete_member($id);
		}

		public function addMember($id_khoa, $name, $phone, $email, $address){
			return $this->mem->addMember($id_khoa, $name, $phone, $email, $address);
		}	

	}

?>