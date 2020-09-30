CREATE DATABASE QLBH
--Tao bang Khach hang
CREATE TABLE tbl_khachhang(
    MaKH int(10) PRIMARY KEY AUTO_INCREMENT not null,
    TenKH varchar(20) CHARACTER set utf8 not null,
    DiaChi varchar(300) CHARACTER set utf8 not null,
    SDT varchar(10) not null
)ENGINE = INNODB CHARACTER set utf8
--Tao bang San pham
CREATE TABLE tbl_sanpham(
   MaSP int(10) PRIMARY KEY not null,
   MaLoaiSP int(10) not null,
   TenSP varchar(50) CHARACTER set utf8 not null,
   Gia int(50) not null,
   GhiChu text
)ENGINE = INNODB CHARACTER set utf8
--Tao bang Nhan Vien
CREATE TABLE tbl_nhanvien(
   MaNV int(10) AUTO_INCREMENT PRIMARY KEY not null,
   HoTen varchar(50) CHARACTER set utf8 not null,
   SDT varchar(10) not null,
   Email varchar(50) CHARACTER set utf8 not null
)ENGINE = INNODB CHARACTER set utf8
--Tao bang NhaCungCap
CREATE TABLE tbl_ncc(
	MaNCC int(10) AUTO_INCREMENT PRIMARY KEY not null,
    TenNCC varchar(50) CHARACTER set utf8 not null,
    DiaChi text CHARACTER set utf8 not null,
    Email varchar(50) CHARACTER set utf8 not null,
    SDT varchar(10) not null
)ENGINE = INNODB CHARACTER set utf8
--Tao bang Kho
CREATE TABLE tbl_kho(
	MaSP int(10) PRIMARY KEY not null,
    SoLuong int(10) not null,
    TinhTrang varchar(50) CHARACTER set utf8 not null,
    GhiChu text
)ENGINE = INNODB CHARACTER set utf8
--Tao bang Phieu Xuat
CREATE TABLE tbl_phieuxuat(
	SoPX int(10) PRIMARY KEY not null,
    NgayBan datetime DEFAULT CURRENT_TIMESTAMP not null,
    LydoXuat text not null,
    MaNV int(10) not null,
    MaKH int(10) not null
    
)ENGINE = INNODB CHARACTER set utf8
--Tao bang CT Phieu Xuat
CREATE TABLE tbl_CTphieuxuat(
	SoPX int(10) not null,
    MaSP int(10) not null,
    PRIMARY KEY(SoPX,MaSP),
    SLXuat int(10) not null,
    GiaXuat int(20) not null
)ENGINE = INNODB CHARACTER set utf8
--Tao Bang LoaiSP
CREATE TABLE tbl_LoaiSP(
	MaLoaiSP int(10) AUTO_INCREMENT PRIMARY KEY,
    TenLoaiSP varchar(50) CHARACTER SET utf8 not null,
    GhiChu text CHARACTER set utf8
)ENGINE = INNODB CHARACTER set utf8
-- tao bang PhieuNhap
CREATE TABLE tbl_PhieuNhap(
	SoPN int(10) PRIMARY KEY not null,
    NhayNhap datetime DEFAULT CURRENT_TIMESTAMP,
    LyDoNhap text CHARACTER set utf8 not null,
    MaNV int(10) not null,
    MaNCC int(10) not null
)ENGINE = INNODB CHARACTER set utf8
--Tao bang CTPhieuNhap
CREATE TABLE tbl_CTPhieuNhap(
	SoPN int(10)  not null,
  	MaSP int(10) not null,
    PRIMARY KEY(SoPN,MaSP),
    SLNhap int(10) not null,
    GiaNhap int(20) not null
)ENGINE = INNODB CHARACTER set utf8
--Tao Cac khoa ngoai, rang buoc
ALTER TABLE tbl_phieuxuat
ADD CONSTRAINT fk_MaKH_tbl_phieuxuat_tbl_khachhang FOREIGN KEY(MaKH)
REFERENCES tbl_khachhang(MaKH) ON DELETE no ACTION ON UPDATE CASCADE
ADD CONSTRAINT fk_MaNV_tbl_phieuxuat_tbl_NhanVien FOREIGN KEY(MaNV)
REFERENCES tbl_nhanvien(MaNV) on DELETE no ACTION ON UPDATE CASCADE

ALTER TABLE tbl_ctphieuxuat
ADD CONSTRAINT fk_SoPX_tbl_CTPhieuXuat_tbl_PhieuXuat FOREIGN KEY(SoPX)
REFERENCES tbl_phieuxuat(SoPX) on DELETE no ACTION ON UPDATE CASCADE
ADD CONSTRAINT fk_MaSP_tbl_CTPhieuXuat_tbl_SanPham FOREIGN KEY(MaSP)
REFERENCES tbl_sanpham(MaSP) on DELETE no ACTION ON UPDATE CASCADE

ALTER TABLE tbl_sanpham
ADD CONSTRAINT fk_MaLoaiSP_tbl_sanpham_tbl_LoaiSP FOREIGN KEY(MaLoaiSP)
REFERENCES tbl_loaisp(MaLoaiSP) on DELETE no ACTION ON UPDATE CASCADE

ALTER TABLE tbl_phieunhap
ADD CONSTRAINT fk_MaNV_tbl_PhieuNhap_tbl_NhanVien FOREIGN KEY(MaNV)
REFERENCES tbl_nhanvien(MaNV) on DELETE no ACTION ON UPDATE CASCADE
ADD CONSTRAINT fk_MaNCC_tbl_PhieuNhap_tbl_NCC FOREIGN KEY(MaNCC)
REFERENCES tbl_NCC(MaNCC) on DELETE no ACTION ON UPDATE CASCADE

ALTER TABLE tbl_kho
ADD CONSTRAINT fk_MaSP_tbl_Kho_tbl_SanPham FOREIGN KEY(MaSP)
REFERENCES tbl_sanpham(MaSP) on DELETE no ACTION ON UPDATE CASCADE

ALTER TABLE tbl_ctphieunhap
ADD CONSTRAINT fk_SoPN_tbl_CTPhieuNhap_tbl_PhieuNhap FOREIGN KEY(SoPN)
REFERENCES tbl_phieunhap(SoPN) on DELETE no ACTION ON UPDATE CASCADE
ADD CONSTRAINT fk_MaSP_tbl_CTPhieuNhap_tbl_SanPham FOREIGN KEY(MaSP)
REFERENCES tbl_sanpham(MaSP) on DELETE no ACTION ON UPDATE CASCADE


