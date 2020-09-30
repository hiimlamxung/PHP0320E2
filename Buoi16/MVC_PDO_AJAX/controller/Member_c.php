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
			 return $rs=$this->mem->getMember();
		}

		public function delete($id){
			return $this->mem->delete_member($id);
		}
		public function getSearch($key){
			return $this->mem->getSearch($key);
		}

		public function addMember($id_khoa, $name, $phone, $email, $address){
			return $this->mem->addMember($id_khoa, $name, $phone, $email, $address);
		}

		public function getFaculty(){
			return $this->mem->getFaculty();
		}

		public function editMember($id_khoa,$tenHV,$phoneHV,$email,$address,$id_hocvien){
			return $this->mem->editMember($id_khoa,$tenHV,$phoneHV,$email,$address,$id_hocvien);
		}

		public function getMember_ID($id){
			return $this->mem->getMember_ID($id);
		}
	}

?>