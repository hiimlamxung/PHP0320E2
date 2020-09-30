<?php 
	class HinhHoc{
		protected $chieuDai;
		protected $chieuRong;

		protected function setValue($chieuDai,$chieuRong){ // set giá trị 
			$this->chieuDai=$chieuDai;
			$this->chieuRong=$chieuRong;
	}
}
	class TinhToan extends HinhHoc{
		public function __construct(){
			parent::setValue(4,5);
			$chuVi=($this->chieuDai+$this->chieuRong)*2;
			$dienTich=$this->chieuDai*$this->chieuRong;
			echo "Diện tích là: ".$dienTich." Chu vi là: ".$chuVi;
		}
	}

$hinh= new TinhToan();

 ?>