-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2020 at 03:14 PM
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
-- Database: `db_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cate`
--

CREATE TABLE `tbl_cate` (
  `id_cate` int(11) NOT NULL,
  `name_cate` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_cate` datetime NOT NULL DEFAULT current_timestamp(),
  `status_cate` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_cate`
--

INSERT INTO `tbl_cate` (`id_cate`, `name_cate`, `date_cate`, `status_cate`) VALUES
(11, 'Đồn Hồ Thời Trang', '2020-07-28 19:42:36', 1),
(12, 'Đồng Hồ Phụ Nữ', '2020-07-28 19:43:07', 1),
(13, 'Đồng Hồ Điện Tử', '2020-07-28 19:43:07', 1),
(14, 'Đồng Hồ Thông Minh', '2020-07-28 19:43:07', 1),
(15, 'Đồng Hồ Longines', '2020-07-28 19:43:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `id_cate` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `date_create` datetime NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `id_cate`, `name`, `price`, `description`, `date_create`, `status`) VALUES
(3, 14, 'Miband 4', 10000000, 'Đây là đồng hồ Miband', '2020-07-28 19:45:30', 1),
(4, 13, 'Pro2020', 3000000, 'Đây là đồng hồ Pro2020', '2020-07-28 19:45:30', 1),
(5, 11, 'FaS2020', 20000000, 'Đây là đồng hồ FaS2020', '2020-07-28 19:45:30', 1),
(8, 15, 'Longines 2020', 30000000, 'Đây là đồng hồ Longines 2020', '2020-07-28 20:13:07', 1),
(9, 12, 'SGirl 2020', 30000000, 'Đây là đồng hồ SGirl 2020', '2020-07-28 20:13:07', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cate`
--
ALTER TABLE `tbl_cate`
  ADD PRIMARY KEY (`id_cate`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cate` (`id_cate`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_cate`
--
ALTER TABLE `tbl_cate`
  MODIFY `id_cate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `fk_id_cate_tbl_product_tbl_cate` FOREIGN KEY (`id_cate`) REFERENCES `tbl_cate` (`id_cate`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
