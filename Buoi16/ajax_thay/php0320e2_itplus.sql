-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2020 at 04:34 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php0320e2_itplus`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hocvien`
--

CREATE TABLE `tbl_hocvien` (
  `id_hocvien` int(11) NOT NULL,
  `id_khoa` int(11) NOT NULL,
  `tenHV` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phoneHV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `stt` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_hocvien`
--

INSERT INTO `tbl_hocvien` (`id_hocvien`, `id_khoa`, `tenHV`, `phoneHV`, `email`, `address`, `stt`) VALUES
(1, 1, 'Trịnh Khắc Tùng1', '0373263971', 'khactung1@gmail.com', 'Hà Nội1', 1),
(2, 2, 'Trần Văn Nam1', '0373263781', 'vannam1@gmail.com', 'Hà Nam1', 1),
(3, 3, 'Tiểu Cúc', '0373261234', 'cuc@gmail.com', 'Nam Đinh', 1),
(4, 4, 'Tiểu Tam', '0373265698', 'tieutam@gmail.com', 'Hà Nội', 1),
(5, 1, 'Thái Sơn', '0373262549', 'son@gmail.com', 'Bắc Ninh', 1),
(40, 1, 'Trịnh Tùng', '0373263911', 'khactung711@gmail.com', 'Hà Nội 11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ketqua`
--

CREATE TABLE `tbl_ketqua` (
  `id_hocvien` int(11) NOT NULL,
  `id_monhoc` int(11) NOT NULL,
  `diem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_ketqua`
--

INSERT INTO `tbl_ketqua` (`id_hocvien`, `id_monhoc`, `diem`) VALUES
(1, 1, 9),
(2, 1, 8),
(3, 5, 9),
(4, 2, 9),
(4, 4, 8),
(5, 3, 8),
(5, 5, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_khoa`
--

CREATE TABLE `tbl_khoa` (
  `id_khoa` int(11) NOT NULL,
  `tenKhoa` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_khoa`
--

INSERT INTO `tbl_khoa` (`id_khoa`, `tenKhoa`) VALUES
(1, 'Công nghệ thông tin'),
(2, 'Thiết kế đồ họa'),
(3, 'Lập trình'),
(4, 'Kế toán'),
(5, 'Hành chí'),
(6, 'May');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_monhoc`
--

CREATE TABLE `tbl_monhoc` (
  `id_monhoc` int(11) NOT NULL,
  `tenMH` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_monhoc`
--

INSERT INTO `tbl_monhoc` (`id_monhoc`, `tenMH`) VALUES
(1, 'Lập trình PHP'),
(2, 'Lập trình IOS'),
(3, 'Học Acouting'),
(4, 'Học photoShop'),
(5, 'Học Illustrator');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `passw` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `stt_user` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `email`, `phone`, `passw`, `stt_user`) VALUES
(1, 'QL IT-Plus', 'itplus@gmail.com', '0373268999', '25f9e794323b453885f5181f1b624d0b', 1),
(2, 'Mai Trang', 'maitrang@gmail.com', '0989888666', '82c6c96f33ab26fa9f62a0f796772201', 0),
(3, 'Adminstrator', 'khactung7@gmail.com', '0989888999', 'e10adc3949ba59abbe56e057f20f883e', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_hocvien`
--
ALTER TABLE `tbl_hocvien`
  ADD PRIMARY KEY (`id_hocvien`),
  ADD KEY `id_khoa` (`id_khoa`);

--
-- Indexes for table `tbl_ketqua`
--
ALTER TABLE `tbl_ketqua`
  ADD PRIMARY KEY (`id_hocvien`,`id_monhoc`),
  ADD KEY `id_hocvien` (`id_hocvien`),
  ADD KEY `id_monhoc` (`id_monhoc`);

--
-- Indexes for table `tbl_khoa`
--
ALTER TABLE `tbl_khoa`
  ADD PRIMARY KEY (`id_khoa`);

--
-- Indexes for table `tbl_monhoc`
--
ALTER TABLE `tbl_monhoc`
  ADD PRIMARY KEY (`id_monhoc`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_hocvien`
--
ALTER TABLE `tbl_hocvien`
  MODIFY `id_hocvien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_khoa`
--
ALTER TABLE `tbl_khoa`
  MODIFY `id_khoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_monhoc`
--
ALTER TABLE `tbl_monhoc`
  MODIFY `id_monhoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_hocvien`
--
ALTER TABLE `tbl_hocvien`
  ADD CONSTRAINT `fk_id_khoa_sinhvien_id_khoa_khoa` FOREIGN KEY (`id_khoa`) REFERENCES `tbl_khoa` (`id_khoa`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tbl_ketqua`
--
ALTER TABLE `tbl_ketqua`
  ADD CONSTRAINT `fk_id_hocvien_ketqua_hocvien` FOREIGN KEY (`id_hocvien`) REFERENCES `tbl_hocvien` (`id_hocvien`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_monhoc_ketqua_monhoc` FOREIGN KEY (`id_monhoc`) REFERENCES `tbl_monhoc` (`id_monhoc`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
