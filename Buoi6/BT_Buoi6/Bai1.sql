--1--Tạo cơ sở dữ liệu có tên là QUANLY_SINHVIEN
CREATE DATABASE QUANLY_SINHVIEN;
--TAO BANG tbl_sinh vien
CREATE TABLE tbl_sinhvien(
	masv int(10) AUTO_INCREMENT PRIMARY KEY not null,
	hoten varchar(50) CHARACTER set utf8 not null,
	ngaysinh datetime not null,
	gioitinh bit DEFAULT 1
)ENGINE = INNODB CHARACTER set utf8
--tao bang tbl_khoa
CREATE TABLE tbl_khoa(
	makhoa int(10) PRIMARY KEY AUTO_INCREMENT not null,
	tenkhoa varchar(50) CHARACTER set utf8 not null,
	diachi varchar(300) CHARACTER set utf8
)ENGINE = INNODB CHARACTER set utf8
--taobang tbl_lop
CREATE TABLE tbl_lop(
	malop int(10) PRIMARY KEY AUTO_INCREMENT not null,
	tenlop varchar(50) CHARACTER set utf8  not null,
	phonghoc varchar(10) not null,
	makhoa int(10) not null
)ENGINE = INNODB CHARACTER set utf8
--tao bang tbl_diem
CREATE TABLE tbl_diem(
	masv int(10) not null,
	malop int(10) not null,
	ngaythi datetime DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(masv,malop)

)ENGINE = INNODB CHARACTER set utf8
--Khoa ngoai tbl_lop(makhoa) tham chieu den tbl_khoa(makhoa)
ALTER TABLE tbl_lop
ADD CONSTRAINT fk_makhoa_tbl_lop_tbl_khoa FOREIGN KEY(makhoa)
REFERENCES tbl_khoa(makhoa) ON DELETE no action on update cascade
--KHoa ngoai tbl_diem(masv) tham chieu den tbl_sinhvien(masv)
ALTER TABLE tbl_diem
ADD CONSTRAINT fk_masv_tbl_diem_tbl_sinhvien FOREIGN KEY(masv)
REFERENCES tbl_sinhvien(masv) on DELETE no action on update cascade
--Khoa ngoai tbl_diem(malop) tham chieu den tbl_lop(malop)
ALTER TABLE tbl_diem
ADD CONSTRAINT fk_malop_tbl_diem_tbl_malop FOREIGN KEY(malop)
REFERENCES tbl_lop(malop) ON DELETE no action on update cascade



--Xóa trường diachi trong bảng tbl_khoa.
ALTER TABLE tbl_khoa
DROP COLUMN diachi
--Xóa ràng buộc khóa ngoại makhoa của bảng tbl_lop
ALTER TABLE tbl_lop
DROP FOREIGN KEY fk_makhoa_tbl_lop_tbl_khoa
--Xóa bảng tbl_khoa
DROP TABLE tbl_khoa
--Thêm trường siso int vào bảng tbl_lop.
ALTER TABLE tbl_lop
ADD COLUMN siso int(10) not null
--Tạo ràng buộc có tên CHECK_siso cho trường siso trong bảng tbl_lop phải nằm trong khoảng 15 đến 50.
ALTER TABLE tbl_lop
ADD CONSTRAINT CHECK_siso check(15<=siso<=50)
--Xóa trường ngaysinh trong bảng tbl_sinhvien.
ALTER TABLE tbl_sinhvien
DROP COLUMN ngaysinh
--Thêm trường tuoi int vào bảng tbl_sinhvien.
ALTER TABLE tbl_sinhvien
ADD COLUMN tuoi int not null
--Tạo ràng buộc có tên CHECK_tuoi phải lớp hơn 18 và nhỏ hơn 25.
ALTER TABLE tbl_sinhvien
ADD CONSTRAINT CHECK_tuoi check(18<tuoi<25)
--Sửa tên bảng tbl_diem thanh tbl_diemtheolop.
ALTER TABLE tbl_diem
RENAME TO tbl_diemtheolop
--Xóa database QUANLY_SINHVIEN.
DROP DATABASE QUANLY_SINHVIEN