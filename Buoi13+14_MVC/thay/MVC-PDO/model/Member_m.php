<?php  
	
	include_once 'config/myConfig.php';

	class Member_m extends Connect
	{
		
		function __construct()
		{
			parent::__construct(); // Thực hiện việc kết nối CSDL khi khởi tạo đối tượng. Biến $conn luôn tồn tại
		}

		// Các hàm truy vấn với CSDL
		public function getMember(){
			//Viet kieu PDO
			$sql = "SELECT *FROM tbl_hocvien";
			return $this->pdo->query($sql);


			//Viet kieu Mysqli
			// $sql = "SELECT *FROM tbl_hocvien";
			// $query = mysqli_query($this->conn, $sql);
			// $result = array();

			// while ($row = mysqli_fetch_array($query)) {
			// 	$result[] = $row;
			// }

			// return $result;
		}



		public function getFaculty(){
			// Viet kieu Mysqli
			// $sql= "SELECT id_khoa,tenKhoa FROM tbl_khoa";
			// $query=mysqli_query($this->conn,$sql);
			// $faculty=mysqli_fetch_all($query,MYSQLI_ASSOC);
			// return $faculty;


			// Viet kieu PDO
			$sql= "SELECT id_khoa,tenKhoa FROM tbl_khoa";
			return $result=$this->pdo->query($sql);
		}

		public function checkPhone($phoneHV){
			// Viet kieu mysqli
			// $sql = "SELECT * FROM tbl_hocvien WHERE phoneHV='$phoneHV'";
			// $query=mysqli_query($this->conn,$sql);
			// $result=mysqli_fetch_all($query,MYSQLI_ASSOC);
			// return $count=count($result);

			//Viet kieu PDO
			$sql = "SELECT phoneHV FROM tbl_hocvien WHERE phoneHV='$phoneHV'";
			$result=$this->pdo->query($sql);
			$count=0;
			foreach ($result as $key => $value) {
				foreach ($value as $key2 => $info) {
					$count++;
				}
			}
			return $count;
		}


		public function addMember($id_khoa,$tenHV,$phoneHV,$email,$address){
			//Viet kieu Mysqli
		// 	$sql="INSERT INTO tbl_hocvien (id_khoa,tenHV,phoneHV,email,address) VALUES ($id_khoa,'$tenHV','$phoneHV','$email','$address');";
		// 	$query=mysqli_query($this->conn,$sql);
		// 	if($query){
		// 		echo "Them thanh cong";
		// 		header("Location:index.php");
		// 	}else{
		// 		echo "Them that bai"."<br>";
		// 	echo("Nội dung lỗi: " . mysqli_error($this->conn));
		// }

			//Viet kieu PDO
			$sql="INSERT INTO tbl_hocvien (id_khoa,tenHV,phoneHV,email,address) VALUES (:id_khoa,:tenHV,:phoneHV,:email,:address);";
			$pre=$this->pdo->prepare($sql);//Chuan bi thuc thi cau lenh
			$pre->bindParam(':id_khoa',$id_khoa);
			$pre->bindParam(':tenHV',$tenHV);
			$pre->bindParam(':phoneHV',$phoneHV);
			$pre->bindParam(':email',$email);
			$pre->bindParam(':address',$address);
			$add=$pre->execute();
			if($add){
				echo "Them thanh cong";
				header("Location:index.php");
			}
			else{
				echo "Them that bai";
			}

	

		}
		public function delMember($id_hocvien){
			//Viet kieu Mysqli
			// $sql="DELETE FROM tbl_hocvien WHERE id_hocvien=$id_hocvien";
			// $query=mysqli_query($this->conn,$sql);
			// if(!$query){
			// 	echo "Xoa That Bai!";
			// }

			//Viet kieu PDO
			$sql="DELETE FROM tbl_hocvien WHERE id_hocvien=$id_hocvien";
			try{
				$this->pdo->query($sql);

			}catch(PDOException $e){
				echo $e->getMessage();
				exit();
			}

		}

		public function searchMember($search){
			//Viet kieu pdo
			$sql="SELECT * FROM tbl_hocvien WHERE tenHV LIKE '%$search%' OR phoneHV LIKE '%$search%'";
			return $this->pdo->query($sql);
		}


	}

?>