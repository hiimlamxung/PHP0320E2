-- Tao database
CREATE DATABASE IF NOT EXISTS php0320e2_itplus

--Xoa database
DROP DATABASE php0320e2_itplus;

--Them bang hoc vien
CREATE TABLE tbl_hocvien(
    idHV int(11) AUTO_INCREMENT PRIMARY KEY not null, --AUTO_INCREMENT: tự động tăng lên
    idKhoa int(11) not null,
    tenHV varchar(40) CHARACTER SET utf8 not null,
    email varchar(40) CHARACTER SET utf8 not null,
    phone char(11) not null,
    address varchar(100) CHARACTER SET utf8 not null,
    status tinyint DEFAULT 1,
    time_create datetime DEFAULT CURRENT_TIMESTAMP --DEFAULT CURRENT_TIMESTAMP: thời gian mặc định là ngày hiện tại
)ENGINE= INNODB CHARACTER set utf8
--Them bang Khoa
CREATE TABLE tbl_Khoa(
	idKhoa int(11) AUTO_INCREMENT PRIMARY KEY,
	tenKhoa varchar(50) CHARACTER SET utf8 not null,
	description text CHARACTER SET utf8 not null,
	status tinyint DEFAULT 1
)ENGINE= INNODB CHARACTER set utf8
--Them bang mon hoc
CREATE TABLE tbl_monhoc(
	idMH int(11) AUTO_INCREMENT PRIMARY KEY,
	tenMH varchar(50) CHARACTER SET utf8 not null,
	soGioDay int(10) not null,
	status tinyint DEFAULT 1
)ENGINE= INNODB CHARACTER set utf8
--Them bang diem thi
CREATE TABLE tbl_DiemThi(
    idHV int(11) not null,
    idMH int(11) not null,
    DiemThi int(10) not null
)ENGINE= INNODB CHARACTER set utf8
--Them cot description vao bang mon hoc
ALTER TABLE tbl_monhoc
ADD COLUMN description text CHARACTER set utf8 not null
--Xoa cot
ALTER TABLE tbl_monhoc
DROP COLUMN description
--Chinh sua cau truc, hoac doi ten cot trong bang
ALTER TABLE tbl_monhoc
CHANGE description MoTa text CHARACTER SET utf8 not null
--Them khóa phụ idKHoa cho bảng HocVien,tao quan he.
ALTER TABLE tbl_hocvien
ADD CONSTRAINT fk_idkhoa_tbl_hocvien_tbl_khoa FOREIGN KEY(idKhoa)
REFERENCES tbl_Khoa(idKhoa) on DELETE NO ACTION ON UPDATE CASCADE
--Them khóa phụ idHV cho bảng DiemThi
ALTER TABLE tbl_DiemThi
ADD CONSTRAINT fk_id_HV_diemthi_tbl_hocvien FOREIGN KEY(idHV)
REFERENCES tbl_hocvien(idHV)
--Them khoa phu cho idMH cho bảng DiemThi
ALTER TABLE tbl_DiemThi
ADD CONSTRAINT fk_idMH_tbl_DiemThi_tbl_MonHoc FOREIGN KEY(idMH)
REFERENCES tbl_monhoc(idMH)



