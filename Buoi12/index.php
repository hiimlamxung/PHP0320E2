<?php 
	// class Person{
	// 	//Thuộc tính động
	// 	var $name="Trinh Khac Tung";
	// 	var $age=25;
	// 	var $address="";

	// 	//Thuộc tính hằng
	// 	const phone="0376301953";

	// 	function work(){
	// 		echo $this->name." Nghề nghiệp là lập trình viên"; //truy xuất thuộc tính, biến name trong class.
	// 		echo " Số điện thoại là: ".self::phone;//Truy xuất hằng số trong class - hoặc có thể dùng Person::phone
	// 	}

	// 	function go($car){
	// 		return "Xe di lam la: ".$car;
	// 	}

	// }

	// //Khởi tạo đối tượng
	// $info = new Person();
	// echo $info->name."</br>";//truy xuất ngoài class
	// echo $info::phone."</br>";//truy xuất hằng số ngoài class
	// $info->work();// truy xuất phương thức
	// echo "</br>"; 
	// echo $info->go('Ô tô');







	// class Tinhtoan{
	// 	var $a;
	// 	var $b;

	// 	function cong($a,$b){
	// 		echo "Tổng của".$a." và ".$b." là: ".$c=$a+$b;
	// 	}
	// }
	// $tinh= new Tinhtoan();
	// $tinh->cong(9,7);





	// class DongVat{
	// 	var $chieuCao;
	// 	var $canNang;
	// 	var $mauLong;

	// 	function setValue($chieuCao,$canNang,$mauLong){
	// 		$this->chieuCao=$chieuCao;
	// 		$this->canNang=$canNang;
	// 		$this->mauLong=$mauLong;
	// 	}
	// 	function getValue(){
	// 		return " Chiều cao: ".$this->chieuCao.", cân nặng: ".$this->canNang.", màu lông: ".$this->mauLong;
	// 	}
	// 	function noiSong($noiSong){
	// 		echo 'Nơi sống: '.$noiSong;

	// 	}
	// 	function hienThi($name){
	// 		echo "Con ".$name.$this->getValue()." ";
	// 	}
		
	// }
	// $pet=new DongVat();
	// $pet->setValue("40cm","51kg","vàng");
	// $pet->hienThi("chó")." ".$pet->noiSong("trên cạn");




// Phạm vi public
// 	class Person1{
// 		public $name="Tung";
// 		public $age=25;

// 		public function getInfo(){
// 			echo "Thông tin: ".$this->name." ".$this->age;
// 		}
// 	}
// 	$per1=new Person1();
// 	echo $per1->name;
// 	$per1->getInfo();






// // Phạm vi private
// 	class Person2{
// 		public $name="Tung";
// 		private $phone="0398782221";
// 		private $age;

// 		public function setValue($age){
// 			$this->age=$age;
// 		}
// 		public function getValue(){
// 			echo "Tuoi =".$this->age;
// 		}

// 	}

// 	$per2=new Person2();
// 	// echo $per2->name;// duoc
// 	// echo $per2->phone;// k duoc
// 	$per2->setValue(40);
// 	$per2->getValue();








	// class Member{
	// 	public $name;
	// 	private $phone;
	// 	public $age;

	// 	public function setInfo($name,$phone,$age){
	// 		$this->name=$name;
	// 		$this->phone=$phone;
	// 		$this->age=$age;

	// 	}
	// 	public function getInfo(){
	// 		if($this->age < 18){
	// 			echo "Khong du tuoi hoc!";
	// 		}else{
	// 			echo  "name: ".$this->name." phone: ".$this->phone." age: ".$this->age;
	// 		}
	// 	}
	// }
	// $info=new Member();
	// $info->setInfo("Tung","0398762221",25);
	// $info->getInfo();


	



	// Phạm vi truy cập protected
	// class Person3 {
	// 	public $name="Tung";
	// 	private $phone;
	// 	protected $email;

	// 	protected function getInfo(){
	// 		echo "Email: ".$this->email;
	// 	}
	// }
	// class TungTK extends Person3{ //Kế thừa Person3
	// 	public function setValue($phone,$email){
	// 		$this->phone=$phone;
	// 		$this->email=$email;
	// 	}
	// 	public function getValue(){
	// 		echo $this->phone." ".$this->email;
	// 	}
	// }

	// $per3= new Person3();
	// echo $per3->email; //k lay dc
	// echo $per3->getInfo(); // k lay dc

	// $TungTK=new TungTK();
	// echo $TungTK->name;
	// echo $TungTK->phone; // k dc
	// echo $TungTK->email; // k dc

	// $tungtk=new TungTK();
	// $tungtk->setValue("0398762441","khactung7@gmail.com");
	// $tungtk->getValue();







// Construct
	class KichThuoc{
		public $chieuDai;
		public $chieuRong;

		public function KichThuoc($chieuDai,$chieuRong){ // hoặc public function __construct($chieuDai,$chieuRong)
			$this->chieuDai=$chieuDai;
			$this->chieuRong=$chieuRong;
			$DienTich=$this->chieuDai*$this->chieuRong;
			echo "Diện tích= ".$DienTich;
		}

		public function hello(){
			echo "xin chào!";
		}
	}
	class TinhToan extends KichThuoc{
		public function __construct(){
			parent::hello();//Hoặc KichThuoc::hello(); - Chỉ dc dùng trong kế thừa 
		}
	}
	$tinh=new KichThuoc(5,2);






 ?>