<?php 
include_once"../config/Myconfig.php";
class Product_m extends Connect{
	public function __construct(){
		parent::__construct();
	}

	public function getProduct(){
		$sql="SELECT ma_dienthoai,ten_dienthoai,ten_hang,mau_sac,gia_dienthoai,mo_ta,ngay_dang,trang_thai FROM dienthoai LEFT JOIN hang_dienthoai ON dienthoai.ma_hang = hang_dienthoai.ma_hang;";
		$pre=$this->pdo->prepare($sql);
		$pre->execute();
		return $rs=$pre->fetchAll(PDO::FETCH_ASSOC);
	}

	public function viewSearch($key){
		$sql="SELECT ma_dienthoai,ten_dienthoai,ten_hang,mau_sac,gia_dienthoai,mo_ta,ngay_dang,trang_thai FROM dienthoai LEFT JOIN hang_dienthoai ON dienthoai.ma_hang = hang_dienthoai.ma_hang WHERE ten_dienthoai LIKE :key";
		$pre=$this->pdo->prepare($sql);
		$pre->bindParam(':key',$key);
		$pre->execute();
		return $rs=$pre->fetchAll(PDO::FETCH_ASSOC);
	}

	public function delProduct($id){
		$sql="DELETE FROM dienthoai WHERE ma_dienthoai=:id";
		$pre=$this->pdo->prepare($sql);
		$pre->bindParam(':id',$id);
		return $pre->execute();
	}
}
?>