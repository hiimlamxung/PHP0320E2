-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 28, 2020 at 05:45 AM
-- Server version: 5.7.31-0ubuntu0.18.04.1
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `PHP0320E2_nhom3`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `name_admin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `stt_admin` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `name_admin`, `phone`, `email`, `password`, `stt_admin`, `created`, `last_update`) VALUES
(3, 'Hoàng Văn Lâm', '0398762441', 'hiimlamxung@gmail.com', '123', 1, '2020-08-31 22:05:47', '2020-08-31 22:05:47'),
(4, 'Hoàng Lâm', '0398762443', 'lamtiensink98@gmail.com', '123', 2, '2020-08-31 22:05:47', '2020-08-31 22:33:00'),
(23, 'Hoàng', '0398222221', 'hoang@gmail.com', '123', 1, '2020-09-21 21:39:36', '2020-09-21 21:39:36'),
(24, 'Phạm Ngọc Đức', '0357545556', 'ngocduc022497@gmail.com', '123', 1, '2020-09-25 14:11:36', '2020-09-25 14:11:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banner`
--

CREATE TABLE `tbl_banner` (
  `id_banner` int(11) NOT NULL,
  `name_banner` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `path` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_banner`
--

INSERT INTO `tbl_banner` (`id_banner`, `name_banner`, `path`) VALUES
(8, 'marvel', 'images/banner/1599252223thor-edit.jpg'),
(9, 'tran', 'images/banner/1599252291tran-edit.jpg'),
(10, 'dc', 'images/banner/1599252314batman.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `id_brand` int(11) NOT NULL,
  `name_brand` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stt` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`id_brand`, `name_brand`, `description`, `created`, `stt`) VALUES
(1, 'Marvel', 'Đồ chơi mang thương hiệu Marvel', '2020-07-18 16:43:31', 1),
(2, 'DC', 'Đồ chơi mang thương hiệu DC', '2020-08-16 21:44:10', 1),
(3, 'Transformer', 'Đồ chơi mang thương hiệu Transformer', '2020-08-16 21:44:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id_contact` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id_contact`, `name`, `email`, `phone`, `contact`, `created`) VALUES
(13, 'Hoàng Lâm', 'hiimlamxung@gmail.com', '0398762441', 'Shop bán hàng rất chuyên nghiệp,sẽ ủng hộ shop lâu dài', '2020-09-25 21:45:18'),
(14, 'Nguyễn Văn Cường', 'cuongvan@gmail.com', '0320003990', 'Tôi đã đặt hàng của shop đã 2 hôm chưa nhận được hàng là sao vậy ?', '2020-09-25 21:46:11'),
(15, 'Hoàng', 'hoang@gmail.com', '0398222221', 'Chừng nào shop ra mẫu mới thế ?', '2020-09-25 21:46:32'),
(16, 'Hoàng Kiều Linh', 'kieulinh@gmail.com', '0372663222', 'Shop còn voucher giảm giá không, đến khi nào lại có nhỉ ? ', '2020-09-25 21:47:46'),
(17, 'Trần Bảo Ngọc', 'baongoc@gmail.com', '0398222221', 'Cửa hàng có chi nhánh ở HCM mở cửa khá muộn !', '2020-09-25 22:41:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_user`
--

CREATE TABLE `tbl_data_user` (
  `id_user` int(11) NOT NULL,
  `data_cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_data_user`
--

INSERT INTO `tbl_data_user` (`id_user`, `data_cart`, `updated`) VALUES
(42, '{\"260\":{\"id_product\":\"260\",\"name_product\":\"3AThreeZero Optimus Prime DLX Scale\",\"id_brand\":\"3\",\"id_type\":\"1\",\"price\":\"2600000\",\"img\":\"images\\/product\\/260\\/1598519307_avatar_1.jpg\",\"discount\":\"15\",\"quantity\":\"136\",\"description\":\"<p><span style=\\\"font-size:12pt\\\"><span style=\\\"background-color:white\\\"><span style=\\\"font-size:10.5pt\\\"><span style=\\\"color:#1d2129\\\">3A \\u0111&atilde; \\u0111\\u1ed5i t&ecirc;n th&agrave;nh ThreeZero v&agrave; v\\u1eabn gi\\u1eef linh h\\u1ed3n v&agrave; ch\\u1ea5t l\\u01b0\\u1ee3ng kh&aacute;c bi\\u1ec7t v\\u1edbi ph\\u1ea7n c&ograve;n l\\u1ea1i c\\u1ee7a th\\u1ecb tr\\u01b0\\u1eddng.<\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p><span style=\\\"font-size:12pt\\\"><span style=\\\"background-color:white\\\"><span style=\\\"font-size:10.5pt\\\"><span style=\\\"color:#1d2129\\\">- Ch\\u1ea5t li\\u1ec7u: ABS &amp; 50% chi ti\\u1ebft kim lo\\u1ea1i die-cast<br \\/>\\r\\n- Chi\\u1ec1u cao: 28.5 CM<br \\/>\\r\\n- LED m\\u1eaft, ph\\u1ee5 ki\\u1ec7n g\\u1ed3m tay thay th\\u1ebf, r&igrave;u, s&uacute;ng.<\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p><span style=\\\"font-size:12pt\\\"><span style=\\\"background-color:white\\\"><span style=\\\"font-size:10.5pt\\\"><span style=\\\"color:#1c1e21\\\">C&aacute;c s\\u1ea3n ph\\u1ea9m cao c\\u1ea5p c\\u1ee7a 3A &amp; ThreeZero l&agrave;m s&aacute;t phim v\\u1edbi k\\u1ebft c\\u1ea5u kh\\u1edbp v&agrave; t\\u1ea1o h&igrave;nh ph\\u1ee9c t\\u1ea1p n&ecirc;n kh&ocirc;ng transform \\u0111\\u01b0\\u1ee3c.<\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\",\"created\":\"2020-08-27 16:08:26\",\"date_update\":\"2020-08-27 16:08:26\",\"stt\":\"1\",\"name_brand\":\"Transformer\",\"name_type\":\"M\\u00f4 h\\u00ecnh\",\"discount_price\":2210000,\"qty\":74}}', '2020-09-21 22:47:28'),
(108, '{\"260\":{\"id_product\":\"260\",\"name_product\":\"3AThreeZero Optimus Prime DLX Scale\",\"id_brand\":\"3\",\"id_type\":\"1\",\"price\":\"2600000\",\"img\":\"images\\/product\\/260\\/1598519307_avatar_1.jpg\",\"discount\":\"15\",\"quantity\":\"136\",\"description\":\"<p><span style=\\\"font-size:12pt\\\"><span style=\\\"background-color:white\\\"><span style=\\\"font-size:10.5pt\\\"><span style=\\\"color:#1d2129\\\">3A \\u0111&atilde; \\u0111\\u1ed5i t&ecirc;n th&agrave;nh ThreeZero v&agrave; v\\u1eabn gi\\u1eef linh h\\u1ed3n v&agrave; ch\\u1ea5t l\\u01b0\\u1ee3ng kh&aacute;c bi\\u1ec7t v\\u1edbi ph\\u1ea7n c&ograve;n l\\u1ea1i c\\u1ee7a th\\u1ecb tr\\u01b0\\u1eddng.<\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p><span style=\\\"font-size:12pt\\\"><span style=\\\"background-color:white\\\"><span style=\\\"font-size:10.5pt\\\"><span style=\\\"color:#1d2129\\\">- Ch\\u1ea5t li\\u1ec7u: ABS &amp; 50% chi ti\\u1ebft kim lo\\u1ea1i die-cast<br \\/>\\r\\n- Chi\\u1ec1u cao: 28.5 CM<br \\/>\\r\\n- LED m\\u1eaft, ph\\u1ee5 ki\\u1ec7n g\\u1ed3m tay thay th\\u1ebf, r&igrave;u, s&uacute;ng.<\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p><span style=\\\"font-size:12pt\\\"><span style=\\\"background-color:white\\\"><span style=\\\"font-size:10.5pt\\\"><span style=\\\"color:#1c1e21\\\">C&aacute;c s\\u1ea3n ph\\u1ea9m cao c\\u1ea5p c\\u1ee7a 3A &amp; ThreeZero l&agrave;m s&aacute;t phim v\\u1edbi k\\u1ebft c\\u1ea5u kh\\u1edbp v&agrave; t\\u1ea1o h&igrave;nh ph\\u1ee9c t\\u1ea1p n&ecirc;n kh&ocirc;ng transform \\u0111\\u01b0\\u1ee3c.<\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\",\"created\":\"2020-08-27 16:08:26\",\"date_update\":\"2020-08-27 16:08:26\",\"stt\":\"1\",\"name_brand\":\"Transformer\",\"name_type\":\"M\\u00f4 h\\u00ecnh\",\"discount_price\":2210000,\"qty\":1}}', '2020-09-24 14:33:09'),
(114, '{\"191\":{\"id_product\":\"191\",\"name_product\":\"Iron Man Mark VI diecast - MK 6\",\"id_brand\":\"1\",\"id_type\":\"1\",\"price\":\"550000\",\"img\":\"images\\/product\\/191\\/1598513441_avatar_1.jpg\",\"discount\":\"10\",\"quantity\":\"103\",\"description\":\"<p><iframe class=\\\"col-md-12 col-xs-12\\\" frameborder=\\\"0\\\" height=\\\"315\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/1KUWpwC6SM8?start=4\\\" width=\\\"560\\\"><\\/iframe><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><span style=\\\"font-size:12pt\\\"><span style=\\\"background-color:white\\\"><span style=\\\"font-size:10.5pt\\\"><span style=\\\"color:#7b858a\\\">Play Toys MK6 diecast ch\\u1ea5t li\\u1ec7u h\\u1ee3p kim l&agrave;m l\\u1ea1i gi\\u1ed1ng h\\u1ec7t 99% so v\\u1edbi b\\u1ea3n g\\u1ed1c Hot Toys MK6 diecast.<\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p><span style=\\\"font-size:12pt\\\"><span style=\\\"background-color:white\\\"><span style=\\\"font-size:10.5pt\\\"><span style=\\\"color:#7b858a\\\">- Chi\\u1ec1u cao: 33 CM.<br \\/>\\r\\n- B\\u1ec7 \\u0111\\u1ee1 k&egrave;m d&acirc;y \\u0111\\u1ee1 c&oacute; LED.<br \\/>\\r\\n- Ph\\u1ee5 ki\\u1ec7n g\\u1ed3m 3 m\\u1eb7t n\\u1ea1 + 3 gi&aacute;p ng\\u1ef1c thay th\\u1ebf ( 3 tr\\u1ea1ng th&aacute;i gi&aacute;p: nguy&ecirc;n v\\u1eb9n, h\\u01b0 h\\u1ea1i &amp; h\\u01b0 h\\u1ea1i n\\u1eb7ng, \\u0111a d\\u1ea1ng trong vi\\u1ec7c b&agrave;i tr&iacute; c\\u1ea3nh )<br \\/>\\r\\n-4 c\\u1eb7p b&agrave;n tay + 2 c\\u1eb7p gi&aacute;p vai thay th\\u1ebf ( tr\\u1ea1ng th&aacute;i nguy&ecirc;n v\\u1eb9n v&agrave; h\\u01b0 h\\u1ea1i )<br \\/>\\r\\n- Ch\\u1ea5t li\\u1ec7u h\\u1ee3p kim - Diecast c\\u1ef1c n\\u1eb7ng tay.<\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n\",\"created\":\"2020-08-27 14:30:41\",\"date_update\":\"2020-08-27 14:30:41\",\"stt\":\"1\",\"name_brand\":\"Marvel\",\"name_type\":\"M\\u00f4 h\\u00ecnh\",\"discount_price\":495000,\"qty\":1}}', '2020-09-22 10:57:33'),
(115, '{\"236\":{\"id_product\":\"236\",\"name_product\":\"COSBABY WONDER WOMAN\",\"id_brand\":\"2\",\"id_type\":\"1\",\"price\":\"190000\",\"img\":\"images\\/product\\/236\\/1598516633_avatar_1.jpg\",\"discount\":\"17\",\"quantity\":\"120\",\"description\":\"<p><span style=\\\"font-size:12pt\\\"><span style=\\\"background-color:white\\\"><span style=\\\"font-family:&quot;Times New Roman&quot;,serif\\\"><span style=\\\"font-size:11.5pt\\\"><span style=\\\"font-family:&quot;Arial&quot;,sans-serif\\\"><span style=\\\"color:#333333\\\">S\\u1ea3n ph\\u1ea9m Cosbaby Wonder Woman:<\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p><span style=\\\"font-size:12pt\\\"><span style=\\\"background-color:white\\\"><span style=\\\"font-family:&quot;Times New Roman&quot;,serif\\\"><span style=\\\"font-size:11.5pt\\\"><span style=\\\"font-family:&quot;Arial&quot;,sans-serif\\\"><span style=\\\"color:#333333\\\">- Ch\\u1ea5t li\\u1ec7u : Nh\\u1ef1a cao c\\u1ea5p<\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p><span style=\\\"font-size:12pt\\\"><span style=\\\"background-color:white\\\"><span style=\\\"font-family:&quot;Times New Roman&quot;,serif\\\"><span style=\\\"font-size:11.5pt\\\"><span style=\\\"font-family:&quot;Arial&quot;,sans-serif\\\"><span style=\\\"color:#333333\\\">- Thi\\u1ebft k\\u1ebf t\\u1ec9 m\\u1ec9 tr&ecirc;n t\\u1eebng chi ti&ecirc;t , m&agrave;u s\\u1eafc t\\u01b0\\u01a1i s&aacute;ng<\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p><span style=\\\"font-size:12pt\\\"><span style=\\\"background-color:white\\\"><span style=\\\"font-family:&quot;Times New Roman&quot;,serif\\\"><span style=\\\"font-size:11.5pt\\\"><span style=\\\"font-family:&quot;Arial&quot;,sans-serif\\\"><span style=\\\"color:#333333\\\">- \\u0110i k&egrave;m \\u0111\\u1ea7y \\u0111\\u1ee7 \\u0111\\u1ebf v&agrave; ph\\u1ee5 ki\\u1ec7n<\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\",\"created\":\"2020-08-27 15:23:53\",\"date_update\":\"2020-08-27 15:23:53\",\"stt\":\"1\",\"name_brand\":\"DC\",\"name_type\":\"M\\u00f4 h\\u00ecnh\",\"discount_price\":157700,\"qty\":117}}', '2020-09-23 13:12:18'),
(125, '{\"266\":{\"id_product\":\"266\",\"name_product\":\"BMB LS-01 Nitro Zeus\",\"id_brand\":\"3\",\"id_type\":\"1\",\"price\":\"5100000\",\"img\":\"images\\/product\\/266\\/1598519587_avatar_1.jpg\",\"discount\":\"5\",\"quantity\":\"128\",\"description\":\"<p><iframe class=\\\"col-md-12 col-xs-12\\\" frameborder=\\\"0\\\" height=\\\"315\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/9GqTO2ac7sU?start=9\\\" width=\\\"560\\\"><\\/iframe><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><span style=\\\"font-size:12pt\\\"><span style=\\\"background-color:white\\\"><span style=\\\"font-size:10.5pt\\\"><span style=\\\"color:#7b858a\\\">D&ugrave; m\\u1edbi xu\\u1ea5t hi\\u1ec7n trong ph\\u1ea7n 5 nh\\u01b0ng v\\u1edbi t\\u1ea1o h&igrave;nh \\u0111\\u1ed9c \\u0111&aacute;o kh&ocirc;ng gi\\u1ed1ng ai c\\u1ed9ng t&iacute;nh c&aacute;ch h\\u1ea7m h\\u1ed1, Nitro Zeus l&agrave; Deception \\u0111\\u1ed9c \\u0111&aacute;o nh\\u1ea5t v\\u1ec1 ph\\u1ea7n nh&igrave;n.<\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p><span style=\\\"font-size:12pt\\\"><span style=\\\"background-color:white\\\"><span style=\\\"font-size:10.5pt\\\"><span style=\\\"color:#7b858a\\\">H&atilde;ng BMB t&aacute;i hi\\u1ec7n l\\u1ea1i \\u0111\\u01b0\\u1ee3c ph\\u1ea7n l\\u1edbn nh\\u1eefng chi ti\\u1ebft m&aacute;y m&oacute;c c&ugrave;ng m&agrave;u s\\u01a1n b&oacute;ng b\\u1ea9y r\\u1ea5t \\u0111&atilde; m\\u1eaft. Nitro Zeus t\\u1eebng l&agrave;m m\\u01b0a l&agrave;m gi&oacute; ng&agrave;y m\\u1edbi ra m\\u1eaft v&agrave; \\u0111\\u01b0a t&ecirc;n tu\\u1ed5i BMB l&ecirc;n t\\u1ea7m m\\u1edbi.<\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p><span style=\\\"font-size:12pt\\\"><span style=\\\"background-color:white\\\"><span style=\\\"font-size:10.5pt\\\"><span style=\\\"color:#7b858a\\\">Chi\\u1ec1u cao: 27cm.<\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p><span style=\\\"font-size:12pt\\\"><span style=\\\"background-color:white\\\"><span style=\\\"font-size:10.5pt\\\"><span style=\\\"color:#7b858a\\\">Ch\\u1ea5t li\\u1ec7u: Nh\\u1ef1a ABS cao c\\u1ea5p + chi ti\\u1ebft kim lo\\u1ea1i diecast<\\/span><\\/span><\\/span><\\/span><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\",\"created\":\"2020-08-27 16:13:07\",\"date_update\":\"2020-08-27 16:13:07\",\"stt\":\"1\",\"name_brand\":\"Transformer\",\"name_type\":\"M\\u00f4 h\\u00ecnh\",\"discount_price\":4845000,\"qty\":1}}', '2020-09-25 19:33:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_image`
--

CREATE TABLE `tbl_detail_image` (
  `id_upload` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_detail_image`
--

INSERT INTO `tbl_detail_image` (`id_upload`, `id_product`, `path`, `created`, `date_update`) VALUES
(275, 189, 'images/product/189/1598513055_2.png', '2020-08-27 14:24:15', '2020-08-27 14:24:15'),
(276, 189, 'images/product/189/1598513055_3.png', '2020-08-27 14:24:15', '2020-08-27 14:24:15'),
(277, 189, 'images/product/189/1598513055_4.png', '2020-08-27 14:24:15', '2020-08-27 14:24:15'),
(278, 190, 'images/product/190/1598513251_2.jpg', '2020-08-27 14:27:31', '2020-08-27 14:27:31'),
(279, 190, 'images/product/190/1598513251_3.jpg', '2020-08-27 14:27:31', '2020-08-27 14:27:31'),
(280, 191, 'images/product/191/1598513441_2.jpg', '2020-08-27 14:30:41', '2020-08-27 14:30:41'),
(281, 191, 'images/product/191/1598513441_3.jpg', '2020-08-27 14:30:41', '2020-08-27 14:30:41'),
(282, 191, 'images/product/191/1598513441_4.jpg', '2020-08-27 14:30:41', '2020-08-27 14:30:41'),
(283, 192, 'images/product/192/1598513529_2.jpg', '2020-08-27 14:32:09', '2020-08-27 14:32:09'),
(284, 192, 'images/product/192/1598513529_3.jpg', '2020-08-27 14:32:09', '2020-08-27 14:32:09'),
(285, 192, 'images/product/192/1598513529_4.jpg', '2020-08-27 14:32:09', '2020-08-27 14:32:09'),
(286, 192, 'images/product/192/1598513529_5.jpg', '2020-08-27 14:32:09', '2020-08-27 14:32:09'),
(287, 192, 'images/product/192/1598513529_6.jpg', '2020-08-27 14:32:09', '2020-08-27 14:32:09'),
(288, 192, 'images/product/192/1598513529_7.jpg', '2020-08-27 14:32:09', '2020-08-27 14:32:09'),
(289, 192, 'images/product/192/1598513529_8.jpg', '2020-08-27 14:32:09', '2020-08-27 14:32:09'),
(290, 192, 'images/product/192/1598513529_9.jpg', '2020-08-27 14:32:09', '2020-08-27 14:32:09'),
(291, 192, 'images/product/192/1598513529_10.jpg', '2020-08-27 14:32:09', '2020-08-27 14:32:09'),
(292, 192, 'images/product/192/1598513529_11.jpg', '2020-08-27 14:32:09', '2020-08-27 14:32:09'),
(293, 192, 'images/product/192/1598513529_12.jpg', '2020-08-27 14:32:09', '2020-08-27 14:32:09'),
(294, 192, 'images/product/192/1598513530_13.jpg', '2020-08-27 14:32:10', '2020-08-27 14:32:10'),
(295, 193, 'images/product/193/1598513578_2.jpg', '2020-08-27 14:32:58', '2020-08-27 14:32:58'),
(296, 193, 'images/product/193/1598513578_3.jpg', '2020-08-27 14:32:58', '2020-08-27 14:32:58'),
(297, 194, 'images/product/194/1598513631_2.jpg', '2020-08-27 14:33:51', '2020-08-27 14:33:51'),
(298, 194, 'images/product/194/1598513631_3.jpg', '2020-08-27 14:33:51', '2020-08-27 14:33:51'),
(299, 195, 'images/product/195/1598513667_2.jpg', '2020-08-27 14:34:27', '2020-08-27 14:34:27'),
(300, 196, 'images/product/196/1598513738_2.jpg', '2020-08-27 14:35:38', '2020-08-27 14:35:38'),
(301, 196, 'images/product/196/1598513738_3.jpg', '2020-08-27 14:35:38', '2020-08-27 14:35:38'),
(302, 196, 'images/product/196/1598513738_4.jpg', '2020-08-27 14:35:38', '2020-08-27 14:35:38'),
(303, 196, 'images/product/196/1598513738_5.jpg', '2020-08-27 14:35:38', '2020-08-27 14:35:38'),
(304, 196, 'images/product/196/1598513738_6.jpg', '2020-08-27 14:35:38', '2020-08-27 14:35:38'),
(305, 196, 'images/product/196/1598513738_7.jpg', '2020-08-27 14:35:38', '2020-08-27 14:35:38'),
(306, 197, 'images/product/197/1598513814_2.jpg', '2020-08-27 14:36:54', '2020-08-27 14:36:54'),
(307, 198, 'images/product/198/1598514144_2.jpg', '2020-08-27 14:42:24', '2020-08-27 14:42:24'),
(308, 198, 'images/product/198/1598514144_3.jpg', '2020-08-27 14:42:24', '2020-08-27 14:42:24'),
(309, 199, 'images/product/199/1598514188_2.jpg', '2020-08-27 14:43:08', '2020-08-27 14:43:08'),
(310, 199, 'images/product/199/1598514188_3.jpg', '2020-08-27 14:43:08', '2020-08-27 14:43:08'),
(311, 199, 'images/product/199/1598514188_4.jpg', '2020-08-27 14:43:08', '2020-08-27 14:43:08'),
(312, 199, 'images/product/199/1598514188_5.jpg', '2020-08-27 14:43:08', '2020-08-27 14:43:08'),
(313, 199, 'images/product/199/1598514188_6.jpg', '2020-08-27 14:43:08', '2020-08-27 14:43:08'),
(314, 200, 'images/product/200/1598514227_2.jpg', '2020-08-27 14:43:47', '2020-08-27 14:43:47'),
(315, 200, 'images/product/200/1598514227_3.jpg', '2020-08-27 14:43:47', '2020-08-27 14:43:47'),
(316, 201, 'images/product/201/1598514282_2.jpg', '2020-08-27 14:44:42', '2020-08-27 14:44:42'),
(317, 201, 'images/product/201/1598514282_3.jpg', '2020-08-27 14:44:42', '2020-08-27 14:44:42'),
(318, 201, 'images/product/201/1598514282_4.jpg', '2020-08-27 14:44:42', '2020-08-27 14:44:42'),
(319, 201, 'images/product/201/1598514282_5.jpg', '2020-08-27 14:44:42', '2020-08-27 14:44:42'),
(320, 201, 'images/product/201/1598514282_6.jpg', '2020-08-27 14:44:42', '2020-08-27 14:44:42'),
(321, 201, 'images/product/201/1598514282_7.jpg', '2020-08-27 14:44:42', '2020-08-27 14:44:42'),
(322, 201, 'images/product/201/1598514282_8.jpg', '2020-08-27 14:44:42', '2020-08-27 14:44:42'),
(323, 201, 'images/product/201/1598514282_9.jpg', '2020-08-27 14:44:42', '2020-08-27 14:44:42'),
(324, 202, 'images/product/202/1598514325_2.jpg', '2020-08-27 14:45:25', '2020-08-27 14:45:25'),
(325, 202, 'images/product/202/1598514325_3.jpg', '2020-08-27 14:45:25', '2020-08-27 14:45:25'),
(326, 202, 'images/product/202/1598514325_4.jpg', '2020-08-27 14:45:25', '2020-08-27 14:45:25'),
(327, 202, 'images/product/202/1598514325_5.jpg', '2020-08-27 14:45:25', '2020-08-27 14:45:25'),
(328, 202, 'images/product/202/1598514325_6.jpg', '2020-08-27 14:45:25', '2020-08-27 14:45:25'),
(329, 203, 'images/product/203/1598514392_2.jpg', '2020-08-27 14:46:32', '2020-08-27 14:46:32'),
(330, 203, 'images/product/203/1598514392_3.jpg', '2020-08-27 14:46:32', '2020-08-27 14:46:32'),
(331, 203, 'images/product/203/1598514392_4.png', '2020-08-27 14:46:32', '2020-08-27 14:46:32'),
(332, 204, 'images/product/204/1598514523_2.jpg', '2020-08-27 14:48:43', '2020-08-27 14:48:43'),
(333, 204, 'images/product/204/1598514523_3.jpg', '2020-08-27 14:48:43', '2020-08-27 14:48:43'),
(334, 204, 'images/product/204/1598514523_4.jpg', '2020-08-27 14:48:43', '2020-08-27 14:48:43'),
(335, 204, 'images/product/204/1598514523_5.jpg', '2020-08-27 14:48:43', '2020-08-27 14:48:43'),
(336, 205, 'images/product/205/1598514594_2.jpg', '2020-08-27 14:49:54', '2020-08-27 14:49:54'),
(337, 205, 'images/product/205/1598514594_3.jpg', '2020-08-27 14:49:54', '2020-08-27 14:49:54'),
(338, 206, 'images/product/206/1598514645_1.jpg', '2020-08-27 14:50:45', '2020-08-27 14:50:45'),
(339, 207, 'images/product/207/1598514684_1.jpg', '2020-08-27 14:51:24', '2020-08-27 14:51:24'),
(340, 208, 'images/product/208/1598514726_1.webp', '2020-08-27 14:52:06', '2020-08-27 14:52:06'),
(341, 209, 'images/product/209/1598514767_2.jpg', '2020-08-27 14:52:47', '2020-08-27 14:52:47'),
(342, 209, 'images/product/209/1598514767_3.jpg', '2020-08-27 14:52:47', '2020-08-27 14:52:47'),
(343, 209, 'images/product/209/1598514767_4.jpg', '2020-08-27 14:52:47', '2020-08-27 14:52:47'),
(344, 210, 'images/product/210/1598514802_2.jpg', '2020-08-27 14:53:22', '2020-08-27 14:53:22'),
(345, 210, 'images/product/210/1598514802_3.jpg', '2020-08-27 14:53:22', '2020-08-27 14:53:22'),
(346, 210, 'images/product/210/1598514802_4.jpg', '2020-08-27 14:53:22', '2020-08-27 14:53:22'),
(347, 211, 'images/product/211/1598514844_2.jpg', '2020-08-27 14:54:04', '2020-08-27 14:54:04'),
(348, 211, 'images/product/211/1598514844_3.jpg', '2020-08-27 14:54:04', '2020-08-27 14:54:04'),
(349, 212, 'images/product/212/1598514916_2.jpg', '2020-08-27 14:55:16', '2020-08-27 14:55:16'),
(350, 212, 'images/product/212/1598514916_3.jpg', '2020-08-27 14:55:16', '2020-08-27 14:55:16'),
(351, 212, 'images/product/212/1598514916_4.jpg', '2020-08-27 14:55:16', '2020-08-27 14:55:16'),
(352, 213, 'images/product/213/1598514951_2.jpg', '2020-08-27 14:55:51', '2020-08-27 14:55:51'),
(353, 213, 'images/product/213/1598514951_3.jpg', '2020-08-27 14:55:51', '2020-08-27 14:55:51'),
(354, 213, 'images/product/213/1598514951_4.jpg', '2020-08-27 14:55:51', '2020-08-27 14:55:51'),
(355, 214, 'images/product/214/1598514986_2.jpg', '2020-08-27 14:56:26', '2020-08-27 14:56:26'),
(356, 215, 'images/product/215/1598515031_2.jpg', '2020-08-27 14:57:11', '2020-08-27 14:57:11'),
(357, 215, 'images/product/215/1598515031_3.jpg', '2020-08-27 14:57:11', '2020-08-27 14:57:11'),
(358, 216, 'images/product/216/1598515101_2.jpg', '2020-08-27 14:58:21', '2020-08-27 14:58:21'),
(359, 216, 'images/product/216/1598515101_3.jpg', '2020-08-27 14:58:21', '2020-08-27 14:58:21'),
(360, 217, 'images/product/217/1598515155_2.jpg', '2020-08-27 14:59:15', '2020-08-27 14:59:15'),
(361, 217, 'images/product/217/1598515155_3.jpg', '2020-08-27 14:59:15', '2020-08-27 14:59:15'),
(362, 218, 'images/product/218/1598515191_2.jpg', '2020-08-27 14:59:51', '2020-08-27 14:59:51'),
(363, 218, 'images/product/218/1598515191_3.png', '2020-08-27 14:59:51', '2020-08-27 14:59:51'),
(364, 218, 'images/product/218/1598515191_4.png', '2020-08-27 14:59:51', '2020-08-27 14:59:51'),
(365, 219, 'images/product/219/1598515258_1.jpg', '2020-08-27 15:00:58', '2020-08-27 15:00:58'),
(366, 220, 'images/product/220/1598515306_1.jpg', '2020-08-27 15:01:46', '2020-08-27 15:01:46'),
(367, 221, 'images/product/221/1598515686_2.jpg', '2020-08-27 15:08:06', '2020-08-27 15:08:06'),
(368, 221, 'images/product/221/1598515686_3.png', '2020-08-27 15:08:06', '2020-08-27 15:08:06'),
(369, 222, 'images/product/222/1598515724_2.png', '2020-08-27 15:08:44', '2020-08-27 15:08:44'),
(370, 222, 'images/product/222/1598515724_3.jpg', '2020-08-27 15:08:44', '2020-08-27 15:08:44'),
(371, 222, 'images/product/222/1598515724_4.png', '2020-08-27 15:08:44', '2020-08-27 15:08:44'),
(372, 222, 'images/product/222/1598515724_5.jpg', '2020-08-27 15:08:44', '2020-08-27 15:08:44'),
(373, 223, 'images/product/223/1598515765_2.png', '2020-08-27 15:09:25', '2020-08-27 15:09:25'),
(374, 223, 'images/product/223/1598515765_3.jpg', '2020-08-27 15:09:25', '2020-08-27 15:09:25'),
(375, 224, 'images/product/224/1598515836_2.jpg', '2020-08-27 15:10:36', '2020-08-27 15:10:36'),
(376, 224, 'images/product/224/1598515836_3.jpg', '2020-08-27 15:10:36', '2020-08-27 15:10:36'),
(377, 224, 'images/product/224/1598515836_4.jpg', '2020-08-27 15:10:36', '2020-08-27 15:10:36'),
(378, 225, 'images/product/225/1598515884_2.jpg', '2020-08-27 15:11:24', '2020-08-27 15:11:24'),
(379, 225, 'images/product/225/1598515884_3.jpg', '2020-08-27 15:11:24', '2020-08-27 15:11:24'),
(380, 225, 'images/product/225/1598515884_4.jpg', '2020-08-27 15:11:24', '2020-08-27 15:11:24'),
(381, 225, 'images/product/225/1598515884_5.jpg', '2020-08-27 15:11:24', '2020-08-27 15:11:24'),
(382, 226, 'images/product/226/1598515946_2.jpg', '2020-08-27 15:12:26', '2020-08-27 15:12:26'),
(383, 226, 'images/product/226/1598515946_3.jpg', '2020-08-27 15:12:26', '2020-08-27 15:12:26'),
(384, 226, 'images/product/226/1598515946_4.jpg', '2020-08-27 15:12:26', '2020-08-27 15:12:26'),
(385, 226, 'images/product/226/1598515946_5.jpg', '2020-08-27 15:12:26', '2020-08-27 15:12:26'),
(386, 227, 'images/product/227/1598515981_2.jpg', '2020-08-27 15:13:01', '2020-08-27 15:13:01'),
(387, 228, 'images/product/228/1598516025_2.png', '2020-08-27 15:13:45', '2020-08-27 15:13:45'),
(388, 228, 'images/product/228/1598516026_3.png', '2020-08-27 15:13:46', '2020-08-27 15:13:46'),
(389, 228, 'images/product/228/1598516026_4.png', '2020-08-27 15:13:46', '2020-08-27 15:13:46'),
(390, 229, 'images/product/229/1598516273_2.jpg', '2020-08-27 15:17:53', '2020-08-27 15:17:53'),
(391, 229, 'images/product/229/1598516273_3.jpg', '2020-08-27 15:17:53', '2020-08-27 15:17:53'),
(392, 229, 'images/product/229/1598516273_4.jpg', '2020-08-27 15:17:53', '2020-08-27 15:17:53'),
(393, 229, 'images/product/229/1598516273_5.jpg', '2020-08-27 15:17:53', '2020-08-27 15:17:53'),
(394, 229, 'images/product/229/1598516273_6.jpg', '2020-08-27 15:17:53', '2020-08-27 15:17:53'),
(395, 229, 'images/product/229/1598516273_7.jpg', '2020-08-27 15:17:53', '2020-08-27 15:17:53'),
(396, 229, 'images/product/229/1598516273_8.jpg', '2020-08-27 15:17:53', '2020-08-27 15:17:53'),
(397, 229, 'images/product/229/1598516273_9.jpg', '2020-08-27 15:17:53', '2020-08-27 15:17:53'),
(398, 230, 'images/product/230/1598516323_2.webp', '2020-08-27 15:18:43', '2020-08-27 15:18:43'),
(399, 230, 'images/product/230/1598516323_3.webp', '2020-08-27 15:18:43', '2020-08-27 15:18:43'),
(400, 230, 'images/product/230/1598516323_4.webp', '2020-08-27 15:18:43', '2020-08-27 15:18:43'),
(401, 231, 'images/product/231/1598516370_2.webp', '2020-08-27 15:19:30', '2020-08-27 15:19:30'),
(402, 231, 'images/product/231/1598516370_3.jpg', '2020-08-27 15:19:30', '2020-08-27 15:19:30'),
(403, 231, 'images/product/231/1598516370_4.jpg', '2020-08-27 15:19:30', '2020-08-27 15:19:30'),
(404, 231, 'images/product/231/1598516370_5.webp', '2020-08-27 15:19:30', '2020-08-27 15:19:30'),
(405, 232, 'images/product/232/1598516413_2.jpg', '2020-08-27 15:20:13', '2020-08-27 15:20:13'),
(406, 232, 'images/product/232/1598516413_3.jpg', '2020-08-27 15:20:13', '2020-08-27 15:20:13'),
(407, 232, 'images/product/232/1598516413_4.jpg', '2020-08-27 15:20:13', '2020-08-27 15:20:13'),
(408, 232, 'images/product/232/1598516413_5.jpg', '2020-08-27 15:20:13', '2020-08-27 15:20:13'),
(409, 233, 'images/product/233/1598516471_2.jpg', '2020-08-27 15:21:11', '2020-08-27 15:21:11'),
(410, 233, 'images/product/233/1598516471_3.jpg', '2020-08-27 15:21:11', '2020-08-27 15:21:11'),
(411, 233, 'images/product/233/1598516471_4.jpg', '2020-08-27 15:21:11', '2020-08-27 15:21:11'),
(412, 233, 'images/product/233/1598516471_5.jpg', '2020-08-27 15:21:11', '2020-08-27 15:21:11'),
(413, 233, 'images/product/233/1598516471_6.jpg', '2020-08-27 15:21:11', '2020-08-27 15:21:11'),
(414, 234, 'images/product/234/1598516519_2.jpg', '2020-08-27 15:21:59', '2020-08-27 15:21:59'),
(415, 234, 'images/product/234/1598516519_3.jpg', '2020-08-27 15:21:59', '2020-08-27 15:21:59'),
(416, 234, 'images/product/234/1598516519_4.webp', '2020-08-27 15:21:59', '2020-08-27 15:21:59'),
(417, 234, 'images/product/234/1598516519_5.jpg', '2020-08-27 15:21:59', '2020-08-27 15:21:59'),
(418, 234, 'images/product/234/1598516519_6.webp', '2020-08-27 15:21:59', '2020-08-27 15:21:59'),
(419, 235, 'images/product/235/1598516557_2.jpg', '2020-08-27 15:22:37', '2020-08-27 15:22:37'),
(420, 235, 'images/product/235/1598516557_3.jpg', '2020-08-27 15:22:37', '2020-08-27 15:22:37'),
(421, 235, 'images/product/235/1598516557_4.jpg', '2020-08-27 15:22:37', '2020-08-27 15:22:37'),
(422, 236, 'images/product/236/1598516633_2.jpg', '2020-08-27 15:23:53', '2020-08-27 15:23:53'),
(423, 236, 'images/product/236/1598516633_3.jpg', '2020-08-27 15:23:53', '2020-08-27 15:23:53'),
(424, 236, 'images/product/236/1598516633_4.jpg', '2020-08-27 15:23:53', '2020-08-27 15:23:53'),
(425, 236, 'images/product/236/1598516633_5.jpg', '2020-08-27 15:23:53', '2020-08-27 15:23:53'),
(426, 236, 'images/product/236/1598516633_6.jpg', '2020-08-27 15:23:53', '2020-08-27 15:23:53'),
(427, 237, 'images/product/237/1598516690_4.webp', '2020-08-27 15:24:50', '2020-08-27 15:24:50'),
(428, 237, 'images/product/237/1598516690_3.webp', '2020-08-27 15:24:50', '2020-08-27 15:24:50'),
(429, 237, 'images/product/237/1598516690_2.webp', '2020-08-27 15:24:50', '2020-08-27 15:24:50'),
(430, 238, 'images/product/238/1598516729_2.jpg', '2020-08-27 15:25:29', '2020-08-27 15:25:29'),
(431, 238, 'images/product/238/1598516729_3.jpg', '2020-08-27 15:25:29', '2020-08-27 15:25:29'),
(432, 238, 'images/product/238/1598516729_4.jpg', '2020-08-27 15:25:29', '2020-08-27 15:25:29'),
(433, 238, 'images/product/238/1598516730_5.jpg', '2020-08-27 15:25:30', '2020-08-27 15:25:30'),
(434, 238, 'images/product/238/1598516730_6.jpg', '2020-08-27 15:25:30', '2020-08-27 15:25:30'),
(435, 239, 'images/product/239/1598518255_2.jpg', '2020-08-27 15:50:55', '2020-08-27 15:50:55'),
(436, 239, 'images/product/239/1598518255_3.jpg', '2020-08-27 15:50:55', '2020-08-27 15:50:55'),
(437, 240, 'images/product/240/1598518315_2.jpg', '2020-08-27 15:51:55', '2020-08-27 15:51:55'),
(438, 240, 'images/product/240/1598518315_3.jpg', '2020-08-27 15:51:55', '2020-08-27 15:51:55'),
(439, 240, 'images/product/240/1598518315_4.jpg', '2020-08-27 15:51:55', '2020-08-27 15:51:55'),
(440, 240, 'images/product/240/1598518315_5.jpg', '2020-08-27 15:51:55', '2020-08-27 15:51:55'),
(441, 240, 'images/product/240/1598518316_6.jpg', '2020-08-27 15:51:56', '2020-08-27 15:51:56'),
(442, 240, 'images/product/240/1598518316_7.jpg', '2020-08-27 15:51:56', '2020-08-27 15:51:56'),
(443, 240, 'images/product/240/1598518316_8.jpg', '2020-08-27 15:51:56', '2020-08-27 15:51:56'),
(444, 240, 'images/product/240/1598518316_9.jpg', '2020-08-27 15:51:56', '2020-08-27 15:51:56'),
(445, 240, 'images/product/240/1598518316_10.jpg', '2020-08-27 15:51:56', '2020-08-27 15:51:56'),
(446, 240, 'images/product/240/1598518316_11.jpg', '2020-08-27 15:51:56', '2020-08-27 15:51:56'),
(447, 240, 'images/product/240/1598518316_12.jpg', '2020-08-27 15:51:56', '2020-08-27 15:51:56'),
(448, 241, 'images/product/241/1598518372_2.jpg', '2020-08-27 15:52:52', '2020-08-27 15:52:52'),
(449, 241, 'images/product/241/1598518372_3.jpg', '2020-08-27 15:52:52', '2020-08-27 15:52:52'),
(450, 241, 'images/product/241/1598518372_4.jpg', '2020-08-27 15:52:52', '2020-08-27 15:52:52'),
(454, 242, 'images/product/242/1598518542_2.jpg', '2020-08-27 15:55:42', '2020-08-27 15:55:42'),
(455, 242, 'images/product/242/1598518542_3.jpg', '2020-08-27 15:55:42', '2020-08-27 15:55:42'),
(456, 242, 'images/product/242/1598518542_4.jpg', '2020-08-27 15:55:42', '2020-08-27 15:55:42'),
(457, 242, 'images/product/242/1598518542_5.jpg', '2020-08-27 15:55:42', '2020-08-27 15:55:42'),
(458, 243, 'images/product/243/1598518618_1.jpg', '2020-08-27 15:56:58', '2020-08-27 15:56:58'),
(459, 243, 'images/product/243/1598518618_3.jpg', '2020-08-27 15:56:58', '2020-08-27 15:56:58'),
(460, 243, 'images/product/243/1598518618_6.jpg', '2020-08-27 15:56:58', '2020-08-27 15:56:58'),
(461, 243, 'images/product/243/1598518618_7.jpg', '2020-08-27 15:56:58', '2020-08-27 15:56:58'),
(462, 243, 'images/product/243/1598518618_8.jpg', '2020-08-27 15:56:58', '2020-08-27 15:56:58'),
(463, 244, 'images/product/244/1598518668_2.jpg', '2020-08-27 15:57:48', '2020-08-27 15:57:48'),
(464, 244, 'images/product/244/1598518668_3.jpg', '2020-08-27 15:57:48', '2020-08-27 15:57:48'),
(465, 244, 'images/product/244/1598518668_4.jpg', '2020-08-27 15:57:48', '2020-08-27 15:57:48'),
(466, 244, 'images/product/244/1598518668_5.jpg', '2020-08-27 15:57:48', '2020-08-27 15:57:48'),
(467, 245, 'images/product/245/1598518703_2.jpg', '2020-08-27 15:58:23', '2020-08-27 15:58:23'),
(468, 245, 'images/product/245/1598518703_3.jpg', '2020-08-27 15:58:23', '2020-08-27 15:58:23'),
(469, 245, 'images/product/245/1598518703_4.jpg', '2020-08-27 15:58:23', '2020-08-27 15:58:23'),
(470, 245, 'images/product/245/1598518703_5.jpg', '2020-08-27 15:58:23', '2020-08-27 15:58:23'),
(471, 246, 'images/product/246/1598518747_2.jpg', '2020-08-27 15:59:07', '2020-08-27 15:59:07'),
(472, 246, 'images/product/246/1598518747_3.jpg', '2020-08-27 15:59:07', '2020-08-27 15:59:07'),
(473, 246, 'images/product/246/1598518747_4.jpg', '2020-08-27 15:59:07', '2020-08-27 15:59:07'),
(474, 246, 'images/product/246/1598518747_5.jpg', '2020-08-27 15:59:07', '2020-08-27 15:59:07'),
(475, 247, 'images/product/247/1598518782_2.jpg', '2020-08-27 15:59:42', '2020-08-27 15:59:42'),
(476, 247, 'images/product/247/1598518782_3.jpg', '2020-08-27 15:59:42', '2020-08-27 15:59:42'),
(477, 247, 'images/product/247/1598518782_4.jpg', '2020-08-27 15:59:42', '2020-08-27 15:59:42'),
(478, 247, 'images/product/247/1598518782_5.jpg', '2020-08-27 15:59:42', '2020-08-27 15:59:42'),
(479, 248, 'images/product/248/1598518824_2.jpg', '2020-08-27 16:00:24', '2020-08-27 16:00:24'),
(480, 248, 'images/product/248/1598518824_3.jpg', '2020-08-27 16:00:24', '2020-08-27 16:00:24'),
(481, 248, 'images/product/248/1598518824_4.jpg', '2020-08-27 16:00:24', '2020-08-27 16:00:24'),
(482, 249, 'images/product/249/1598518863_2.webp', '2020-08-27 16:01:03', '2020-08-27 16:01:03'),
(483, 249, 'images/product/249/1598518863_3.jpg', '2020-08-27 16:01:03', '2020-08-27 16:01:03'),
(484, 249, 'images/product/249/1598518863_4.webp', '2020-08-27 16:01:03', '2020-08-27 16:01:03'),
(485, 249, 'images/product/249/1598518863_5.webp', '2020-08-27 16:01:03', '2020-08-27 16:01:03'),
(486, 250, 'images/product/250/1598518911_2.jpg', '2020-08-27 16:01:51', '2020-08-27 16:01:51'),
(487, 250, 'images/product/250/1598518911_3.jpg', '2020-08-27 16:01:51', '2020-08-27 16:01:51'),
(488, 250, 'images/product/250/1598518911_4.jpg', '2020-08-27 16:01:51', '2020-08-27 16:01:51'),
(489, 251, 'images/product/251/1598518977_2.webp', '2020-08-27 16:02:57', '2020-08-27 16:02:57'),
(490, 251, 'images/product/251/1598518977_3.webp', '2020-08-27 16:02:57', '2020-08-27 16:02:57'),
(491, 251, 'images/product/251/1598518977_4.webp', '2020-08-27 16:02:57', '2020-08-27 16:02:57'),
(492, 252, 'images/product/252/1598519021_2.webp', '2020-08-27 16:03:41', '2020-08-27 16:03:41'),
(493, 252, 'images/product/252/1598519021_3.webp', '2020-08-27 16:03:41', '2020-08-27 16:03:41'),
(494, 253, 'images/product/253/1598519051_2.jpg', '2020-08-27 16:04:11', '2020-08-27 16:04:11'),
(495, 253, 'images/product/253/1598519051_3.jpg', '2020-08-27 16:04:11', '2020-08-27 16:04:11'),
(496, 253, 'images/product/253/1598519051_4.jpg', '2020-08-27 16:04:11', '2020-08-27 16:04:11'),
(497, 254, 'images/product/254/1598519080_2.jpg', '2020-08-27 16:04:40', '2020-08-27 16:04:40'),
(498, 254, 'images/product/254/1598519080_3.jpg', '2020-08-27 16:04:40', '2020-08-27 16:04:40'),
(499, 254, 'images/product/254/1598519080_4.jpg', '2020-08-27 16:04:40', '2020-08-27 16:04:40'),
(500, 255, 'images/product/255/1598519105_2.jpg', '2020-08-27 16:05:05', '2020-08-27 16:05:05'),
(501, 256, 'images/product/256/1598519138_2.jpg', '2020-08-27 16:05:38', '2020-08-27 16:05:38'),
(502, 256, 'images/product/256/1598519138_3.jpg', '2020-08-27 16:05:38', '2020-08-27 16:05:38'),
(503, 256, 'images/product/256/1598519138_4.jpg', '2020-08-27 16:05:38', '2020-08-27 16:05:38'),
(504, 257, 'images/product/257/1598519192_2.jpg', '2020-08-27 16:06:32', '2020-08-27 16:06:32'),
(505, 257, 'images/product/257/1598519192_3.jpg', '2020-08-27 16:06:32', '2020-08-27 16:06:32'),
(506, 257, 'images/product/257/1598519192_4.jpg', '2020-08-27 16:06:32', '2020-08-27 16:06:32'),
(507, 258, 'images/product/258/1598519223_2.jpg', '2020-08-27 16:07:03', '2020-08-27 16:07:03'),
(508, 258, 'images/product/258/1598519223_3.jpg', '2020-08-27 16:07:03', '2020-08-27 16:07:03'),
(509, 259, 'images/product/259/1598519249_2.jpg', '2020-08-27 16:07:29', '2020-08-27 16:07:29'),
(510, 259, 'images/product/259/1598519249_3.jpg', '2020-08-27 16:07:29', '2020-08-27 16:07:29'),
(511, 259, 'images/product/259/1598519249_4.jpg', '2020-08-27 16:07:29', '2020-08-27 16:07:29'),
(512, 260, 'images/product/260/1598519307_2.jpg', '2020-08-27 16:08:27', '2020-08-27 16:08:27'),
(513, 260, 'images/product/260/1598519307_3.jpg', '2020-08-27 16:08:27', '2020-08-27 16:08:27'),
(514, 260, 'images/product/260/1598519307_4.jpg', '2020-08-27 16:08:27', '2020-08-27 16:08:27'),
(515, 260, 'images/product/260/1598519307_5.jpg', '2020-08-27 16:08:27', '2020-08-27 16:08:27'),
(516, 260, 'images/product/260/1598519307_6.jpg', '2020-08-27 16:08:27', '2020-08-27 16:08:27'),
(517, 260, 'images/product/260/1598519307_7.jpg', '2020-08-27 16:08:27', '2020-08-27 16:08:27'),
(518, 260, 'images/product/260/1598519307_8.jpg', '2020-08-27 16:08:27', '2020-08-27 16:08:27'),
(519, 260, 'images/product/260/1598519307_9.jpg', '2020-08-27 16:08:27', '2020-08-27 16:08:27'),
(520, 260, 'images/product/260/1598519307_10.jpg', '2020-08-27 16:08:27', '2020-08-27 16:08:27'),
(521, 260, 'images/product/260/1598519307_11.jpg', '2020-08-27 16:08:27', '2020-08-27 16:08:27'),
(522, 261, 'images/product/261/1598519333_2.jpg', '2020-08-27 16:08:53', '2020-08-27 16:08:53'),
(523, 261, 'images/product/261/1598519333_3.jpg', '2020-08-27 16:08:53', '2020-08-27 16:08:53'),
(524, 261, 'images/product/261/1598519333_4.jpg', '2020-08-27 16:08:53', '2020-08-27 16:08:53'),
(525, 261, 'images/product/261/1598519333_5.jpg', '2020-08-27 16:08:53', '2020-08-27 16:08:53'),
(526, 261, 'images/product/261/1598519333_6.jpg', '2020-08-27 16:08:53', '2020-08-27 16:08:53'),
(527, 261, 'images/product/261/1598519333_7.jpg', '2020-08-27 16:08:53', '2020-08-27 16:08:53'),
(528, 262, 'images/product/262/1598519363_2.jpg', '2020-08-27 16:09:23', '2020-08-27 16:09:23'),
(529, 262, 'images/product/262/1598519363_3.jpg', '2020-08-27 16:09:23', '2020-08-27 16:09:23'),
(530, 262, 'images/product/262/1598519363_4.jpg', '2020-08-27 16:09:23', '2020-08-27 16:09:23'),
(531, 262, 'images/product/262/1598519363_5.jpg', '2020-08-27 16:09:23', '2020-08-27 16:09:23'),
(532, 262, 'images/product/262/1598519363_6.jpg', '2020-08-27 16:09:23', '2020-08-27 16:09:23'),
(533, 262, 'images/product/262/1598519363_7.jpg', '2020-08-27 16:09:23', '2020-08-27 16:09:23'),
(534, 262, 'images/product/262/1598519363_8.jpg', '2020-08-27 16:09:23', '2020-08-27 16:09:23'),
(535, 263, 'images/product/263/1598519396_2.jpg', '2020-08-27 16:09:56', '2020-08-27 16:09:56'),
(536, 263, 'images/product/263/1598519396_3.jpg', '2020-08-27 16:09:56', '2020-08-27 16:09:56'),
(537, 263, 'images/product/263/1598519396_4.jpg', '2020-08-27 16:09:56', '2020-08-27 16:09:56'),
(538, 263, 'images/product/263/1598519396_5.jpg', '2020-08-27 16:09:56', '2020-08-27 16:09:56'),
(539, 263, 'images/product/263/1598519396_6.jpg', '2020-08-27 16:09:56', '2020-08-27 16:09:56'),
(540, 263, 'images/product/263/1598519396_7.jpg', '2020-08-27 16:09:56', '2020-08-27 16:09:56'),
(541, 263, 'images/product/263/1598519396_8.jpg', '2020-08-27 16:09:56', '2020-08-27 16:09:56'),
(542, 264, 'images/product/264/1598519430_2.jpg', '2020-08-27 16:10:30', '2020-08-27 16:10:30'),
(543, 264, 'images/product/264/1598519430_3.jpg', '2020-08-27 16:10:30', '2020-08-27 16:10:30'),
(544, 264, 'images/product/264/1598519430_4.jpg', '2020-08-27 16:10:30', '2020-08-27 16:10:30'),
(545, 264, 'images/product/264/1598519430_5.jpg', '2020-08-27 16:10:30', '2020-08-27 16:10:30'),
(546, 264, 'images/product/264/1598519430_6.jpg', '2020-08-27 16:10:30', '2020-08-27 16:10:30'),
(547, 264, 'images/product/264/1598519430_7.jpg', '2020-08-27 16:10:30', '2020-08-27 16:10:30'),
(548, 264, 'images/product/264/1598519430_8.jpg', '2020-08-27 16:10:30', '2020-08-27 16:10:30'),
(556, 265, 'images/product/265/1598519528_2.jpg', '2020-08-27 16:12:08', '2020-08-27 16:12:08'),
(557, 265, 'images/product/265/1598519528_3.jpg', '2020-08-27 16:12:08', '2020-08-27 16:12:08'),
(558, 265, 'images/product/265/1598519528_4.jpg', '2020-08-27 16:12:08', '2020-08-27 16:12:08'),
(559, 265, 'images/product/265/1598519528_5.jpg', '2020-08-27 16:12:08', '2020-08-27 16:12:08'),
(560, 266, 'images/product/266/1598519587_2.jpg', '2020-08-27 16:13:07', '2020-08-27 16:13:07'),
(561, 266, 'images/product/266/1598519587_3.jpg', '2020-08-27 16:13:07', '2020-08-27 16:13:07'),
(562, 266, 'images/product/266/1598519587_4.jpg', '2020-08-27 16:13:07', '2020-08-27 16:13:07'),
(563, 266, 'images/product/266/1598519587_5.jpg', '2020-08-27 16:13:07', '2020-08-27 16:13:07'),
(564, 266, 'images/product/266/1598519587_6.jpg', '2020-08-27 16:13:07', '2020-08-27 16:13:07'),
(565, 267, 'images/product/267/1598519623_2.jpg', '2020-08-27 16:13:43', '2020-08-27 16:13:43'),
(566, 267, 'images/product/267/1598519623_3.jpg', '2020-08-27 16:13:43', '2020-08-27 16:13:43'),
(567, 267, 'images/product/267/1598519623_4.jpg', '2020-08-27 16:13:43', '2020-08-27 16:13:43'),
(568, 267, 'images/product/267/1598519623_5.jpg', '2020-08-27 16:13:43', '2020-08-27 16:13:43'),
(569, 268, 'images/product/268/1598519668_2.jpg', '2020-08-27 16:14:28', '2020-08-27 16:14:28'),
(570, 268, 'images/product/268/1598519668_3.jpg', '2020-08-27 16:14:28', '2020-08-27 16:14:28'),
(571, 268, 'images/product/268/1598519668_4.jpg', '2020-08-27 16:14:28', '2020-08-27 16:14:28'),
(572, 268, 'images/product/268/1598519668_5.jpg', '2020-08-27 16:14:28', '2020-08-27 16:14:28'),
(573, 268, 'images/product/268/1598519668_6.jpg', '2020-08-27 16:14:28', '2020-08-27 16:14:28'),
(574, 269, 'images/product/269/1598519702_2.jpg', '2020-08-27 16:15:02', '2020-08-27 16:15:02'),
(575, 269, 'images/product/269/1598519702_3.jpg', '2020-08-27 16:15:02', '2020-08-27 16:15:02'),
(576, 269, 'images/product/269/1598519702_4.jpg', '2020-08-27 16:15:02', '2020-08-27 16:15:02'),
(577, 269, 'images/product/269/1598519702_5.jpg', '2020-08-27 16:15:02', '2020-08-27 16:15:02'),
(578, 269, 'images/product/269/1598519702_6.jpg', '2020-08-27 16:15:02', '2020-08-27 16:15:02'),
(579, 269, 'images/product/269/1598519702_7.jpg', '2020-08-27 16:15:02', '2020-08-27 16:15:02'),
(580, 270, 'images/product/270/1598519729_2.jpg', '2020-08-27 16:15:29', '2020-08-27 16:15:29'),
(581, 270, 'images/product/270/1598519729_3.jpg', '2020-08-27 16:15:29', '2020-08-27 16:15:29'),
(582, 270, 'images/product/270/1598519729_4.jpg', '2020-08-27 16:15:29', '2020-08-27 16:15:29'),
(583, 270, 'images/product/270/1598519729_5.jpg', '2020-08-27 16:15:29', '2020-08-27 16:15:29'),
(584, 270, 'images/product/270/1598519729_6.jpg', '2020-08-27 16:15:29', '2020-08-27 16:15:29'),
(585, 270, 'images/product/270/1598519729_7.jpg', '2020-08-27 16:15:29', '2020-08-27 16:15:29'),
(586, 270, 'images/product/270/1598519729_8.jpg', '2020-08-27 16:15:29', '2020-08-27 16:15:29'),
(587, 270, 'images/product/270/1598519729_9.jpg', '2020-08-27 16:15:29', '2020-08-27 16:15:29'),
(588, 271, 'images/product/271/1598519759_2.jpg', '2020-08-27 16:15:59', '2020-08-27 16:15:59'),
(589, 271, 'images/product/271/1598519759_3.jpg', '2020-08-27 16:15:59', '2020-08-27 16:15:59'),
(590, 271, 'images/product/271/1598519759_4.jpg', '2020-08-27 16:15:59', '2020-08-27 16:15:59'),
(591, 271, 'images/product/271/1598519759_5.jpg', '2020-08-27 16:15:59', '2020-08-27 16:15:59'),
(592, 271, 'images/product/271/1598519759_6.jpg', '2020-08-27 16:15:59', '2020-08-27 16:15:59'),
(593, 271, 'images/product/271/1598519759_7.jpg', '2020-08-27 16:15:59', '2020-08-27 16:15:59'),
(594, 271, 'images/product/271/1598519759_8.jpg', '2020-08-27 16:15:59', '2020-08-27 16:15:59'),
(602, 272, 'images/product/272/1598519842_2.jpg', '2020-08-27 16:17:22', '2020-08-27 16:17:22'),
(603, 272, 'images/product/272/1598519842_3.jpg', '2020-08-27 16:17:22', '2020-08-27 16:17:22'),
(604, 272, 'images/product/272/1598519842_4.jpg', '2020-08-27 16:17:22', '2020-08-27 16:17:22'),
(605, 272, 'images/product/272/1598519842_5.jpg', '2020-08-27 16:17:22', '2020-08-27 16:17:22'),
(606, 272, 'images/product/272/1598519842_6.jpg', '2020-08-27 16:17:22', '2020-08-27 16:17:22'),
(607, 273, 'images/product/273/1598519885_2.jpg', '2020-08-27 16:18:05', '2020-08-27 16:18:05'),
(608, 273, 'images/product/273/1598519885_3.jpg', '2020-08-27 16:18:05', '2020-08-27 16:18:05'),
(609, 273, 'images/product/273/1598519885_4.jpg', '2020-08-27 16:18:05', '2020-08-27 16:18:05'),
(610, 273, 'images/product/273/1598519885_5.jpg', '2020-08-27 16:18:05', '2020-08-27 16:18:05'),
(611, 273, 'images/product/273/1598519885_6.jpg', '2020-08-27 16:18:05', '2020-08-27 16:18:05'),
(612, 273, 'images/product/273/1598519885_7.jpg', '2020-08-27 16:18:05', '2020-08-27 16:18:05'),
(613, 274, 'images/product/274/1598519911_2.jpg', '2020-08-27 16:18:31', '2020-08-27 16:18:31'),
(614, 274, 'images/product/274/1598519911_3.jpg', '2020-08-27 16:18:31', '2020-08-27 16:18:31'),
(615, 274, 'images/product/274/1598519911_4.jpg', '2020-08-27 16:18:31', '2020-08-27 16:18:31'),
(616, 274, 'images/product/274/1598519911_5.jpg', '2020-08-27 16:18:31', '2020-08-27 16:18:31'),
(617, 274, 'images/product/274/1598519911_6.jpeg', '2020-08-27 16:18:31', '2020-08-27 16:18:31'),
(618, 274, 'images/product/274/1598519911_7.jpg', '2020-08-27 16:18:31', '2020-08-27 16:18:31'),
(619, 275, 'images/product/275/1598519944_2.jpg', '2020-08-27 16:19:04', '2020-08-27 16:19:04'),
(620, 275, 'images/product/275/1598519944_3.jpg', '2020-08-27 16:19:04', '2020-08-27 16:19:04'),
(621, 275, 'images/product/275/1598519944_4.jpg', '2020-08-27 16:19:04', '2020-08-27 16:19:04'),
(622, 275, 'images/product/275/1598519944_5.jpg', '2020-08-27 16:19:04', '2020-08-27 16:19:04'),
(623, 275, 'images/product/275/1598519944_6.jpg', '2020-08-27 16:19:04', '2020-08-27 16:19:04'),
(624, 276, 'images/product/276/1598520042_2.jpg', '2020-08-27 16:20:42', '2020-08-27 16:20:42'),
(625, 276, 'images/product/276/1598520042_3.jpg', '2020-08-27 16:20:42', '2020-08-27 16:20:42'),
(626, 276, 'images/product/276/1598520042_4.jpg', '2020-08-27 16:20:42', '2020-08-27 16:20:42'),
(627, 276, 'images/product/276/1598520042_5.jpg', '2020-08-27 16:20:42', '2020-08-27 16:20:42'),
(628, 276, 'images/product/276/1598520042_6.jpg', '2020-08-27 16:20:42', '2020-08-27 16:20:42'),
(629, 277, 'images/product/277/1598520079_2.png', '2020-08-27 16:21:19', '2020-08-27 16:21:19'),
(630, 277, 'images/product/277/1598520079_3.png', '2020-08-27 16:21:19', '2020-08-27 16:21:19'),
(631, 277, 'images/product/277/1598520079_4.jpg', '2020-08-27 16:21:19', '2020-08-27 16:21:19'),
(632, 277, 'images/product/277/1598520079_5.jpg', '2020-08-27 16:21:19', '2020-08-27 16:21:19'),
(633, 277, 'images/product/277/1598520079_6.jpg', '2020-08-27 16:21:19', '2020-08-27 16:21:19'),
(634, 277, 'images/product/277/1598520079_7.jpg', '2020-08-27 16:21:19', '2020-08-27 16:21:19'),
(635, 277, 'images/product/277/1598520080_8.jpg', '2020-08-27 16:21:20', '2020-08-27 16:21:20'),
(636, 277, 'images/product/277/1598520080_9.png', '2020-08-27 16:21:20', '2020-08-27 16:21:20'),
(637, 277, 'images/product/277/1598520080_10.png', '2020-08-27 16:21:20', '2020-08-27 16:21:20'),
(638, 278, 'images/product/278/1598520112_2.jpg', '2020-08-27 16:21:52', '2020-08-27 16:21:52'),
(639, 278, 'images/product/278/1598520112_3.jpg', '2020-08-27 16:21:52', '2020-08-27 16:21:52'),
(640, 278, 'images/product/278/1598520112_4.jpg', '2020-08-27 16:21:52', '2020-08-27 16:21:52'),
(641, 278, 'images/product/278/1598520112_5.jpg', '2020-08-27 16:21:52', '2020-08-27 16:21:52'),
(642, 278, 'images/product/278/1598520112_6.jpg', '2020-08-27 16:21:52', '2020-08-27 16:21:52'),
(643, 278, 'images/product/278/1598520112_7.jpg', '2020-08-27 16:21:52', '2020-08-27 16:21:52'),
(644, 279, 'images/product/279/1598520143_2.jpg', '2020-08-27 16:22:23', '2020-08-27 16:22:23'),
(645, 279, 'images/product/279/1598520143_3.jpg', '2020-08-27 16:22:23', '2020-08-27 16:22:23'),
(646, 279, 'images/product/279/1598520144_4.jpg', '2020-08-27 16:22:24', '2020-08-27 16:22:24'),
(647, 279, 'images/product/279/1598520144_5.jpg', '2020-08-27 16:22:24', '2020-08-27 16:22:24'),
(648, 279, 'images/product/279/1598520144_6.jpg', '2020-08-27 16:22:24', '2020-08-27 16:22:24'),
(649, 279, 'images/product/279/1598520144_7.jpg', '2020-08-27 16:22:24', '2020-08-27 16:22:24'),
(650, 279, 'images/product/279/1598520144_8.jpg', '2020-08-27 16:22:24', '2020-08-27 16:22:24'),
(651, 279, 'images/product/279/1598520144_9.jpg', '2020-08-27 16:22:24', '2020-08-27 16:22:24'),
(652, 280, 'images/product/280/1598520173_2.jpg', '2020-08-27 16:22:53', '2020-08-27 16:22:53'),
(653, 280, 'images/product/280/1598520173_3.jpg', '2020-08-27 16:22:53', '2020-08-27 16:22:53'),
(654, 280, 'images/product/280/1598520173_4.jpg', '2020-08-27 16:22:53', '2020-08-27 16:22:53'),
(655, 280, 'images/product/280/1598520173_5.jpg', '2020-08-27 16:22:53', '2020-08-27 16:22:53'),
(656, 280, 'images/product/280/1598520173_6.jpg', '2020-08-27 16:22:53', '2020-08-27 16:22:53'),
(657, 280, 'images/product/280/1598520173_7.jpg', '2020-08-27 16:22:53', '2020-08-27 16:22:53'),
(658, 280, 'images/product/280/1598520173_8.jpg', '2020-08-27 16:22:53', '2020-08-27 16:22:53'),
(659, 280, 'images/product/280/1598520173_9.jpg', '2020-08-27 16:22:53', '2020-08-27 16:22:53'),
(660, 280, 'images/product/280/1598520173_10.jpg', '2020-08-27 16:22:53', '2020-08-27 16:22:53'),
(661, 281, 'images/product/281/1598520202_2.jpg', '2020-08-27 16:23:22', '2020-08-27 16:23:22'),
(662, 281, 'images/product/281/1598520202_3.jpg', '2020-08-27 16:23:22', '2020-08-27 16:23:22'),
(663, 281, 'images/product/281/1598520202_4.jpg', '2020-08-27 16:23:22', '2020-08-27 16:23:22'),
(664, 281, 'images/product/281/1598520202_5.jpg', '2020-08-27 16:23:22', '2020-08-27 16:23:22'),
(665, 281, 'images/product/281/1598520202_6.jpg', '2020-08-27 16:23:22', '2020-08-27 16:23:22'),
(666, 281, 'images/product/281/1598520202_7.jpg', '2020-08-27 16:23:22', '2020-08-27 16:23:22'),
(667, 281, 'images/product/281/1598520202_8.jpg', '2020-08-27 16:23:22', '2020-08-27 16:23:22'),
(668, 281, 'images/product/281/1598520202_9.jpg', '2020-08-27 16:23:22', '2020-08-27 16:23:22'),
(669, 281, 'images/product/281/1598520203_10.jpg', '2020-08-27 16:23:23', '2020-08-27 16:23:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_order`
--

CREATE TABLE `tbl_detail_order` (
  `id` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` tinyint(4) NOT NULL,
  `price` float NOT NULL,
  `total` float NOT NULL,
  `stt` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_detail_order`
--

INSERT INTO `tbl_detail_order` (`id`, `id_order`, `id_product`, `quantity`, `price`, `total`, `stt`) VALUES
(60, 89, 244, 1, 3800000, 3800000, 1),
(61, 90, 276, 1, 4500000, 4500000, 1),
(62, 91, 191, 1, 495000, 495000, 4),
(63, 91, 192, 1, 3120000, 3120000, 1),
(64, 92, 260, 1, 2210000, 2210000, 1),
(68, 96, 237, 1, 1496000, 1496000, 1),
(69, 97, 194, 1, 850000, 850000, 1),
(70, 98, 191, 1, 495000, 495000, 1),
(71, 98, 192, 1, 3120000, 3120000, 1),
(72, 99, 269, 1, 5400000, 5400000, 1),
(73, 100, 237, 1, 1496000, 1496000, 1),
(74, 101, 192, 1, 3120000, 3120000, 1),
(75, 102, 235, 1, 520000, 520000, 1),
(76, 102, 193, 1, 2300000, 2300000, 1),
(87, 108, 190, 1, 585000, 585000, 1),
(88, 108, 193, 1, 2300000, 2300000, 1),
(89, 108, 230, 1, 1300000, 1300000, 1),
(90, 109, 190, 1, 585000, 585000, 1),
(91, 109, 194, 1, 850000, 850000, 1),
(92, 109, 230, 1, 1300000, 1300000, 1),
(93, 110, 190, 1, 585000, 585000, 1),
(94, 110, 191, 1, 495000, 495000, 1),
(95, 110, 192, 1, 3120000, 3120000, 1),
(96, 111, 191, 1, 495000, 495000, 1),
(97, 111, 192, 1, 3120000, 3120000, 1),
(98, 111, 266, 1, 4845000, 4845000, 1),
(99, 111, 269, 1, 5400000, 5400000, 1),
(100, 111, 276, 1, 4500000, 4500000, 1),
(101, 112, 191, 1, 495000, 495000, 1),
(102, 112, 266, 1, 4845000, 4845000, 1),
(103, 112, 190, 1, 585000, 585000, 1),
(104, 112, 230, 1, 1300000, 1300000, 1),
(105, 113, 266, 1, 4845000, 4845000, 1),
(106, 113, 192, 1, 3120000, 3120000, 1),
(107, 113, 191, 1, 495000, 495000, 1),
(108, 113, 281, 1, 3080000, 3080000, 1),
(109, 113, 193, 1, 2300000, 2300000, 1),
(110, 113, 235, 1, 520000, 520000, 1),
(111, 114, 191, 1, 495000, 495000, 1),
(112, 115, 266, 1, 4845000, 4845000, 1),
(113, 116, 191, 1, 495000, 495000, 1),
(114, 117, 190, 1, 585000, 585000, 1),
(115, 118, 190, 2, 585000, 1170000, 1),
(116, 119, 192, 1, 3120000, 3120000, 1),
(117, 119, 276, 1, 4500000, 4500000, 1),
(118, 119, 237, 1, 1496000, 1496000, 1),
(119, 120, 237, 1, 1496000, 1496000, 1),
(120, 120, 260, 1, 2210000, 2210000, 1),
(121, 121, 196, 1, 427500, 427500, 1),
(122, 122, 258, 1, 117600, 117600, 1),
(123, 123, 266, 2, 4845000, 9690000, 1),
(124, 124, 191, 1, 495000, 495000, 1),
(125, 124, 193, 1, 2300000, 2300000, 1),
(126, 124, 230, 1, 1300000, 1300000, 1),
(127, 124, 235, 1, 520000, 520000, 1),
(128, 125, 234, 5, 496800, 2484000, 1),
(129, 126, 260, 9, 2210000, 19890000, 1),
(130, 127, 191, 1, 495000, 495000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_stt_admin`
--

CREATE TABLE `tbl_detail_stt_admin` (
  `id_stt` int(11) NOT NULL,
  `name_stt` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_detail_stt_admin`
--

INSERT INTO `tbl_detail_stt_admin` (`id_stt`, `name_stt`, `description`) VALUES
(1, 'Quản trị viên toàn quyền', 'Có mọi quyền hành quản lý trang web,data'),
(2, 'Cộng tác viên', 'Chỉ sử dụng được 1 số chức năng');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_stt_order`
--

CREATE TABLE `tbl_detail_stt_order` (
  `id_stt` tinyint(4) NOT NULL,
  `name_stt` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_detail_stt_order`
--

INSERT INTO `tbl_detail_stt_order` (`id_stt`, `name_stt`, `description`) VALUES
(1, 'Đang xử lý', 'Đang trong thời gian chờ, quản trị viên chưa xử lý'),
(2, 'Đã xác nhận', 'Khách hàng đã đồng ý mua hàng'),
(3, 'Đang giao hàng', 'Đơn hàng đang được giao'),
(4, 'Đã hoàn tất', 'Đơn hàng đã thanh toán, hoàn tất'),
(5, 'Thất bại', 'Khách bùng hàng. Đơn hàng quá thời gian xử lý. Không thành công,..');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `id_news` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`id_news`, `title`, `content`, `created`, `date_update`, `img`) VALUES
(3, 'Hướng dẫn mua hàng và đặt hàng tại Marvelstore', '<h1><span style=\"color:#3498db\">Hướng dẫn mua h&agrave;ng v&agrave; đặt h&agrave;ng tại Marvelstore Tr&ecirc;n m&aacute;y t&iacute;nh v&agrave; laptop</span></h1>\r\n\r\n<p>C&aacute;ch mua h&agrave;ng tr&ecirc;n M&aacute;y t&iacute;nh / lap top</p>\r\n\r\n<p><strong>Bước 1</strong>: Chọn sản phẩm bạn th&iacute;ch</p>\r\n\r\n<p><strong>Bước 2</strong>&nbsp;: Th&ecirc;m v&agrave;o giỏ h&agrave;ng</p>\r\n\r\n<p><img alt=\"\" src=\"/media/images/intro1-edit.jpg\" style=\"height:339px; width:600px\" /></p>\r\n\r\n<p><strong>Bước 3 :</strong>&nbsp;Chốt số lượng v&agrave; danh s&aacute;ch h&agrave;ng đ&atilde; đặt</p>\r\n\r\n<p><strong>Bước 4 :</strong>&nbsp;Nhấn thanh to&aacute;n</p>\r\n\r\n<p><img alt=\"\" src=\"/media/images/intro2-edit.jpg\" style=\"height:336px; width:600px\" /></p>\r\n\r\n<p><strong>Bước 5 :</strong>&nbsp;Điền đầy đủ th&ocirc;ng tin. &quot; T&ecirc;n + SĐT + Địa chỉ cụ thể &quot; ==&gt; Chọn phương thức giao h&agrave;ng v&agrave; thanh to&aacute;n. ==&gt; Th&ecirc;m m&atilde; giảm gi&aacute;&nbsp; (NẾU C&Oacute; ) M&atilde; giảm gi&aacute; c&oacute; thể săn tr&ecirc;n fanpage của Marvelstore</p>\r\n\r\n<p><img alt=\"\" src=\"/media/images/intro3-edit.jpg\" style=\"height:336px; width:600px\" /></p>\r\n\r\n<p><strong>Bước 6 :</strong>&nbsp;Ấn ho&agrave;n tất đơn h&agrave;ng v&agrave; Đợi điện thoại x&aacute;c nhận từ trụ sở của Marvelstore tại H&agrave; Nội</p>\r\n\r\n<p><img alt=\"\" src=\"/media/images/intro4-edit.jpg\" style=\"height:336px; width:600px\" /></p>\r\n', '2020-09-18 16:45:25', '2020-09-18 19:06:35', 'images/news_img/1600422325intro1-edit.jpg'),
(9, 'Cách mua hàng của Marvelstore trên điện thoại', '<h1><span style=\"color:#3498db\">C&aacute;ch mua h&agrave;ng của Marvelstore tr&ecirc;n điện thoại</span></h1>\r\n\r\n<p><strong>Bước 1 :</strong>&nbsp;Chọn c&aacute;c sản phẩm bạn cần mua v&agrave; kiểm tra số lượng</p>\r\n\r\n<p><strong>Bước 2 :</strong>&nbsp;Th&ecirc;m v&agrave;o giỏ h&agrave;ng&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/media/images/checkout1.jpg\" style=\"width:40%\" /></p>\r\n\r\n<p><strong>Bước 3 :</strong>Thanh to&aacute;n</p>\r\n\r\n<p><img alt=\"\" src=\"/media/images/checkout2.jpg\" style=\"width:40%\" /></p>\r\n\r\n<p><strong>Bước 4 :</strong>&nbsp;Điền đầy đủ th&ocirc;ng tin :&quot; T&ecirc;n + SĐT + Địa chỉ&quot; Chọn phương thức vận chuyển == &gt; Điền m&atilde; giảm gi&aacute; (NẾU C&Oacute; ) m&atilde; giảm gi&aacute; c&oacute; thể săn tr&ecirc;n Group của Marvelstore</p>\r\n\r\n<p><img alt=\"\" src=\"/media/images/checkout3.jpg\" style=\"width:40%\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/media/images/checkout4.jpg\" style=\"width:40%\" /></p>\r\n\r\n<p><strong>Bước 5 :</strong>&nbsp;Ho&agrave;n tất đơn h&agrave;ng. Đợi điện thoại x&aacute;c nhận từ trụ sở của Marvelstore H&agrave; Nội. Xem th&ecirc;m c&aacute;c sản phẩm HOT được cập nhật thường xuy&ecirc;n.</p>\r\n\r\n<p><img alt=\"\" src=\"/media/images/checkout5.jpg\" style=\"width:40%\" /></p>\r\n', '2020-09-26 00:01:54', '2020-09-26 00:19:04', 'images/news_img/1601053314checkout1-1.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_noti_order`
--

CREATE TABLE `tbl_noti_order` (
  `id_noti` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `content_noti` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action` tinyint(4) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_noti_order`
--

INSERT INTO `tbl_noti_order` (`id_noti`, `id_order`, `content_noti`, `action`, `created`) VALUES
(111, 89, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com): đã cập nhật lại trạng thái đơn hàng có ID là: 89 thành \'Đã xác nhận\' vào lúc 2020/09/14-17:38:58', 2, '2020-09-14 17:38:58'),
(112, 89, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com): đã cập nhật lại trạng thái đơn hàng có ID là: 89 thành \'Đang giao hàng\' vào lúc 2020/09/14-17:39:04', 2, '2020-09-14 17:39:04'),
(113, 89, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com): đã cập nhật lại trạng thái đơn hàng có ID là: 89 thành \'Đã hoàn tất\' vào lúc 2020/09/14-17:39:07', 2, '2020-09-14 17:39:07'),
(114, 89, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com): đã cập nhật lại trạng thái đơn hàng có ID là: 89 thành \'Đang xử lý\' vào lúc 2020/09/14-20:44:36', 2, '2020-09-14 20:44:36'),
(115, 91, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com): đã cập nhật lại trạng thái đơn hàng có ID là: 91 thành \'Đã hoàn tất\' vào lúc 2020/09/14-23:22:46', 2, '2020-09-14 23:22:46'),
(116, 92, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com): đã cập nhật lại trạng thái đơn hàng có ID là: 92 thành \'Đã hoàn tất\' vào lúc 2020/09/14-23:22:49', 2, '2020-09-14 23:22:49'),
(123, 91, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com): đã cập nhật lại trạng thái đơn hàng có ID là: 91 thành \'Đã xác nhận\' vào lúc 2020/09/15-15:10:01', 2, '2020-09-15 15:10:01'),
(124, 91, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com): đã cập nhật lại trạng thái đơn hàng có ID là: 91 thành \'Đã hoàn tất\' vào lúc 2020/09/15-15:10:05', 2, '2020-09-15 15:10:05'),
(125, 92, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com): đã cập nhật lại trạng thái đơn hàng có ID là: 92 thành \'Đã xác nhận\' vào lúc 2020/09/15-15:10:09', 2, '2020-09-15 15:10:09'),
(126, 92, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com): đã cập nhật lại trạng thái đơn hàng có ID là: 92 thành \'Đã hoàn tất\' vào lúc 2020/09/15-15:10:13', 2, '2020-09-15 15:10:13'),
(128, 90, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com): đã cập nhật lại trạng thái đơn hàng có ID là: 90 thành \'Đã hoàn tất\' vào lúc 2020/09/18-19:41:54', 2, '2020-09-18 19:41:54'),
(129, 89, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com): đã cập nhật lại trạng thái đơn hàng có ID là: 89 thành \'Đã hoàn tất\' vào lúc 2020/09/18-19:41:57', 2, '2020-09-18 19:41:57'),
(130, 111, 'Quản trị viên Hoàng Lâm(lamtiensink98@gmail.com): đã cập nhật lại trạng thái đơn hàng có ID là: 111 thành \'Đơn bị hủy\' vào lúc 2020/09/20-18:58:56\n LÝ DO: Khach k mua', 2, '2020-09-21 01:58:56'),
(131, 115, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin đơn hàng có ID là: 115 vào lúc 2020/09/21-21:36:41', 2, '2020-09-21 21:36:41'),
(132, 115, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com): đã cập nhật lại trạng thái đơn hàng có ID là: 115 thành \'Đã xác nhận\' vào lúc 2020/09/21-14:37:11', 2, '2020-09-21 21:37:11'),
(133, 115, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com): đã cập nhật lại trạng thái đơn hàng có ID là: 115 thành \'Đã hoàn tất\' vào lúc 2020/09/21-14:37:32', 2, '2020-09-21 21:37:32'),
(134, 115, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com): đã cập nhật lại trạng thái đơn hàng có ID là: 115 thành \'Đơn bị hủy\' vào lúc 2020/09/21-14:38:06\n LÝ DO: khách không mua', 2, '2020-09-21 21:38:06'),
(135, 96, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com): đã cập nhật lại trạng thái đơn hàng có ID là: 96 thành \'Đã hoàn tất\' vào lúc 2020/09/22-04:06:16', 2, '2020-09-22 11:06:16'),
(136, 97, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com): đã cập nhật lại trạng thái đơn hàng có ID là: 97 thành \'Đã hoàn tất\' vào lúc 2020/09/22-04:06:19', 2, '2020-09-22 11:06:19'),
(137, 98, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com): đã cập nhật lại trạng thái đơn hàng có ID là: 98 thành \'Đã hoàn tất\' vào lúc 2020/09/22-04:09:35', 2, '2020-09-22 11:09:35'),
(138, 99, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com): đã cập nhật lại trạng thái đơn hàng có ID là: 99 thành \'Đã hoàn tất\' vào lúc 2020/09/22-04:09:38', 2, '2020-09-22 11:09:38'),
(139, 100, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com): đã cập nhật lại trạng thái đơn hàng có ID là: 100 thành \'Đơn bị hủy\' vào lúc 2020/09/22-04:09:47\n LÝ DO: khách không mua', 2, '2020-09-22 11:09:47'),
(140, 101, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com): đã cập nhật lại trạng thái đơn hàng có ID là: 101 thành \'Đã hoàn tất\' vào lúc 2020/09/22-04:09:52', 2, '2020-09-22 11:09:52'),
(141, 102, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com): đã cập nhật lại trạng thái đơn hàng có ID là: 102 thành \'Đã hoàn tất\' vào lúc 2020/09/22-04:09:55', 2, '2020-09-22 11:09:55'),
(142, 117, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin đơn hàng có ID là: 117 vào lúc 2020/09/22-21:00:37', 2, '2020-09-22 21:00:37'),
(143, 117, 'Quản trị viên Hoàng Lâm(lamtiensink98@gmail.com) đã cập nhật lại thông tin đơn hàng có ID là: 117 vào lúc 2020/09/22-21:00:59', 2, '2020-09-22 21:00:59'),
(144, 117, 'Quản trị viên Hoàng Lâm(lamtiensink98@gmail.com): đã cập nhật lại trạng thái đơn hàng có ID là: 117 thành \'Đã xác nhận\' vào lúc 2020/09/22-14:01:17', 2, '2020-09-22 21:01:17'),
(145, 116, 'Quản trị viên Hoàng Lâm(lamtiensink98@gmail.com): đã cập nhật lại trạng thái đơn hàng có ID là: 116 thành \'Đã xác nhận\' vào lúc 2020/09/22-14:02:09', 2, '2020-09-22 21:02:09'),
(146, 116, 'Quản trị viên Hoàng Lâm(lamtiensink98@gmail.com): đã cập nhật lại trạng thái đơn hàng có ID là: 116 thành \'Đang giao hàng\' vào lúc 2020/09/22-14:02:24', 2, '2020-09-22 21:02:24'),
(147, 116, 'Quản trị viên Hoàng Lâm(lamtiensink98@gmail.com): đã cập nhật lại trạng thái đơn hàng có ID là: 116 thành \'Đã hoàn tất\' vào lúc 2020/09/22-14:02:28', 2, '2020-09-22 21:02:28'),
(148, 114, 'Quản trị viên Hoàng Lâm(lamtiensink98@gmail.com): đã cập nhật lại trạng thái đơn hàng có ID là: 114 thành \'Đơn bị hủy\' vào lúc 2020/09/22-14:02:44\n LÝ DO: Khach không hài lòng', 2, '2020-09-22 21:02:44'),
(149, 113, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com): đã cập nhật lại trạng thái đơn hàng có ID là: 113 thành \'Đơn bị hủy\' vào lúc 2020/09/23-12:43:40\n LÝ DO: ', 2, '2020-09-23 19:43:40'),
(150, 114, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com): đã cập nhật lại trạng thái đơn hàng có ID là: 114 thành \'Đã xác nhận\' vào lúc 2020/09/23-12:43:52', 2, '2020-09-23 19:43:52'),
(151, 114, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com): đã cập nhật lại trạng thái đơn hàng có ID là: 114 thành \'Đơn bị hủy\' vào lúc 2020/09/23-12:43:58\n LÝ DO: ', 2, '2020-09-23 19:43:58'),
(152, 126, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com): đã cập nhật lại trạng thái đơn hàng có ID là: 126 thành \'Đang giao hàng\' vào lúc 2020/09/25-08:08:49', 2, '2020-09-25 15:08:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_noti_product`
--

CREATE TABLE `tbl_noti_product` (
  `id_noti` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `content_noti` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action` tinyint(4) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_noti_product`
--

INSERT INTO `tbl_noti_product` (`id_noti`, `id_product`, `content_noti`, `action`, `created`) VALUES
(16, 192, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 192 vào lúc 2020/09/14-15:31:45', 2, '2020-09-14 15:31:45'),
(17, 192, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 192 vào lúc 2020/09/14-15:33:45', 2, '2020-09-14 15:33:45'),
(18, 281, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 281 vào lúc 2020/09/18-16:49:21', 2, '2020-09-18 16:49:21'),
(19, 281, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 281 vào lúc 2020/09/18-16:50:28', 2, '2020-09-18 16:50:28'),
(20, 281, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 281 vào lúc 2020/09/18-16:52:16', 2, '2020-09-18 16:52:16'),
(21, 281, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 281 vào lúc 2020/09/18-16:52:25', 2, '2020-09-18 16:52:25'),
(22, 281, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 281 vào lúc 2020/09/18-16:52:44', 2, '2020-09-18 16:52:44'),
(23, 281, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 281 vào lúc 2020/09/18-16:53:17', 2, '2020-09-18 16:53:17'),
(24, 281, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 281 vào lúc 2020/09/18-16:54:51', 2, '2020-09-18 16:54:51'),
(25, 191, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 191 vào lúc 2020/09/18-16:56:08', 2, '2020-09-18 16:56:08'),
(26, 191, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 191 vào lúc 2020/09/18-16:56:32', 2, '2020-09-18 16:56:32'),
(27, 191, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 191 vào lúc 2020/09/18-16:56:57', 2, '2020-09-18 16:56:57'),
(28, 192, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 192 vào lúc 2020/09/18-16:58:11', 2, '2020-09-18 16:58:11'),
(29, 192, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 192 vào lúc 2020/09/18-16:58:39', 2, '2020-09-18 16:58:39'),
(30, 276, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 276 vào lúc 2020/09/18-16:59:54', 2, '2020-09-18 16:59:54'),
(31, 276, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 276 vào lúc 2020/09/18-16:59:59', 2, '2020-09-18 16:59:59'),
(32, 266, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 266 vào lúc 2020/09/18-17:01:31', 2, '2020-09-18 17:01:31'),
(33, 266, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 266 vào lúc 2020/09/18-17:01:36', 2, '2020-09-18 17:01:36'),
(34, 269, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 269 vào lúc 2020/09/18-17:02:48', 2, '2020-09-18 17:02:48'),
(35, 269, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 269 vào lúc 2020/09/18-17:02:54', 2, '2020-09-18 17:02:54'),
(36, 192, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 192 vào lúc 2020/09/19-01:16:42', 2, '2020-09-19 01:16:42'),
(37, 192, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 192 vào lúc 2020/09/19-01:17:10', 2, '2020-09-19 01:17:10'),
(38, 192, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 192 vào lúc 2020/09/19-01:18:23', 2, '2020-09-19 01:18:23'),
(39, 192, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 192 vào lúc 2020/09/19-01:18:54', 2, '2020-09-19 01:18:54'),
(40, 192, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 192 vào lúc 2020/09/19-01:21:37', 2, '2020-09-19 01:21:37'),
(41, 192, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 192 vào lúc 2020/09/19-01:29:48', 2, '2020-09-19 01:29:48'),
(42, 191, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 191 vào lúc 2020/09/19-01:33:15', 2, '2020-09-19 01:33:15'),
(43, 281, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 281 vào lúc 2020/09/19-01:33:48', 2, '2020-09-19 01:33:48'),
(44, 266, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 266 vào lúc 2020/09/19-01:34:51', 2, '2020-09-19 01:34:51'),
(45, 269, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 269 vào lúc 2020/09/19-01:35:19', 2, '2020-09-19 01:35:19'),
(46, 276, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 276 vào lúc 2020/09/19-01:36:03', 2, '2020-09-19 01:36:03'),
(47, 281, 'Quản trị viên Hoàng Lâm(lamtiensink98@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 281 vào lúc 2020/09/21-01:58:30', 2, '2020-09-21 01:58:30'),
(50, 281, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 281 vào lúc 2020/09/21-21:08:02', 2, '2020-09-21 21:08:02'),
(51, 281, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 281 vào lúc 2020/09/21-21:08:29', 2, '2020-09-21 21:08:29'),
(74, 276, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 276 vào lúc 2020/09/23-17:47:15', 2, '2020-09-23 17:47:15'),
(75, 276, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 276 vào lúc 2020/09/23-17:48:04', 2, '2020-09-23 17:48:04'),
(76, 276, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin sản phẩm có ID là: 276 vào lúc 2020/09/23-17:48:40', 2, '2020-09-23 17:48:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_noti_user`
--

CREATE TABLE `tbl_noti_user` (
  `id_noti` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `content_noti` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action` tinyint(4) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_noti_user`
--

INSERT INTO `tbl_noti_user` (`id_noti`, `id_user`, `content_noti`, `action`, `created`) VALUES
(8, 94, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin khách hàng có ID là: 94 vào lúc 2020/09/10-11:31:51', 2, '2020-09-10 11:31:51'),
(9, 94, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin khách hàng có ID là: 94 vào lúc 2020/09/10-11:37:42', 2, '2020-09-10 11:37:42'),
(11, 111, 'Quản trị viên Hoàng Lâm(lamtiensink98@gmail.com) đã thêm thành viên có id user là 111 và email là baongoc@gmail.com vào lúc 2020/09/11-15:32:52', 1, '2020-09-11 15:32:52'),
(12, 111, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin khách hàng có ID là: 111 vào lúc 2020/09/11-15:44:07', 2, '2020-09-11 15:44:07'),
(13, 111, 'Quản trị viên Hoàng Lâm(lamtiensink98@gmail.com) đã cập nhật lại thông tin khách hàng có ID là: 111 vào lúc 2020/09/11-15:49:10', 2, '2020-09-11 15:49:10'),
(14, 111, 'Quản trị viên Hoàng Lâm(lamtiensink98@gmail.com) đã cập nhật lại thông tin khách hàng có ID là: 111 vào lúc 2020/09/11-15:49:48', 2, '2020-09-11 15:49:48'),
(15, 111, 'Quản trị viên Hoàng Lâm(lamtiensink98@gmail.com) đã cập nhật lại thông tin khách hàng có ID là: 111 vào lúc 2020/09/11-15:56:02', 2, '2020-09-11 15:56:02'),
(16, 111, 'Quản trị viên Hoàng Lâm(lamtiensink98@gmail.com) đã cập nhật lại thông tin khách hàng có ID là: 111 vào lúc 2020/09/11-15:56:08', 2, '2020-09-11 15:56:08'),
(17, 111, 'Quản trị viên Hoàng Lâm(lamtiensink98@gmail.com) đã cập nhật lại thông tin khách hàng có ID là: 111 vào lúc 2020/09/11-15:56:15', 2, '2020-09-11 15:56:15'),
(18, 111, 'Quản trị viên Hoàng Lâm(lamtiensink98@gmail.com) đã cập nhật lại thông tin khách hàng có ID là: 111 vào lúc 2020/09/11-16:30:07', 2, '2020-09-11 16:30:07'),
(19, 111, 'Quản trị viên Hoàng Lâm(lamtiensink98@gmail.com) đã cập nhật lại thông tin khách hàng có ID là: 111 vào lúc 2020/09/11-16:31:13', 2, '2020-09-11 16:31:13'),
(24, 114, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã thêm thành viên có id user là 114 và email là hoang@gmail.com vào lúc 2020/09/11-20:33:51', 1, '2020-09-11 20:33:51'),
(25, 122, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin khách hàng có ID là: 122 vào lúc 2020/09/20-20:37:19', 2, '2020-09-20 20:37:19'),
(26, 123, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã thêm thành viên có id user là 123 và email là tuan@gmail.com vào lúc 2020/09/21-21:48:05', 1, '2020-09-21 21:48:05'),
(30, 125, 'Quản trị viên Hoàng Văn Lâm(hiimlamxung@gmail.com) đã cập nhật lại thông tin khách hàng có ID là: 125 vào lúc 2020/09/26-16:21:39', 2, '2020-09-26 16:21:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id_order` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_payment` tinyint(4) NOT NULL,
  `total` float NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `stt` tinyint(4) NOT NULL DEFAULT '1',
  `date_order` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `order_done` datetime DEFAULT NULL,
  `last_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id_order`, `id_user`, `name`, `id_payment`, `total`, `phone`, `email`, `address`, `note`, `stt`, `date_order`, `order_done`, `last_update`) VALUES
(89, NULL, 'Trần Thanh Tùng', 2, 3800000, '0398762441', 'hiimlamxung@gmail.com', 'HN', 'avxc', 4, '2020-09-11 17:38:48', '2020-09-18 19:41:57', '2020-09-18 19:41:57'),
(90, 42, 'Hoàng Lâm', 2, 4500000, '0398762441', 'hiimlamxung@gmail.com', 'Hà Nội', 'abc', 4, '2020-09-12 20:55:11', '2020-09-18 19:41:54', '2020-09-18 19:41:54'),
(91, 42, 'Hoàng Lâm', 2, 3615000, '0398762441', 'hiimlamxung@gmail.com', 'Hà Nội', 'avc', 4, '2020-09-12 20:56:09', '2020-09-13 15:10:05', '2020-09-15 15:26:49'),
(92, 42, 'Hoàng Lâm', 1, 2245000, '0398762441', 'hiimlamxung@gmail.com', 'Hà Nội', 'acx', 4, '2020-09-13 20:57:12', '2020-09-12 15:10:13', '2020-09-15 15:26:49'),
(96, 42, 'Hoàng Lâm', 1, 1231800, '0398762441', 'hiimlamxung@gmail.com', 'Hà Nội', 'nhanh', 4, '2020-09-19 00:00:50', '2020-09-22 04:06:16', '2020-09-22 11:06:16'),
(97, NULL, 'Hoàng Lâm', 2, 850000, '0398762441', 'hiimlamxung@gmail.com', 'HN', 'aâ', 4, '2020-09-19 00:04:20', '2020-09-22 04:06:19', '2020-09-22 11:06:19'),
(98, NULL, 'Lê Văn Hiếu', 1, 3650000, '0967365006', 'lhieu5610@gamil.com', 'số 2 ngách 124/22/37 âu cơ', 'ád', 4, '2020-09-19 09:41:43', '2020-09-22 04:09:35', '2020-09-22 11:09:35'),
(99, NULL, 'Nguyễn Duy Hoàng', 2, 5400000, '0972853498', 'duyhoangpt98@gmail.com', 'Lĩnh nam - Hà Nội', 'Nhớ mang theo tiền lẻ', 4, '2020-09-19 15:31:36', '2020-09-22 04:09:38', '2020-09-22 11:09:38'),
(100, 42, 'Hoàng Lâm', 1, 1531000, '0398762441', 'hiimlamxung@gmail.com', 'Hà Nội', 'aa', 5, '2020-09-19 15:36:34', NULL, '2020-09-22 11:09:47'),
(101, 42, 'Hoàng Lâm', 1, 3155000, '0398762441', 'hiimlamxung@gmail.com', 'Hà Nội', 'giao hàng trước tối', 4, '2020-09-19 16:14:03', '2020-09-22 04:09:52', '2020-09-22 11:09:52'),
(102, 42, 'Hoàng Lâm', 2, 2820000, '0398762441', 'hiimlamxung@gmail.com', 'Hà Nội', 'giao hag nhanh', 4, '2020-09-19 16:17:27', '2020-09-22 04:09:55', '2020-09-22 11:09:55'),
(108, 42, 'Hoàng Lâm', 1, 4220000, '0398762441', 'hiimlamxung@gmail.com', 'Hà Nội', 'abc', 1, '2020-09-19 16:38:15', NULL, '2020-09-19 16:38:15'),
(109, 42, 'Hoàng Lâm', 2, 2735000, '0398762441', 'hiimlamxung@gmail.com', 'Hà Nội', 'aaa', 1, '2020-09-19 16:40:06', NULL, '2020-09-19 16:40:06'),
(110, 42, 'Hoàng Lâm', 1, 4235000, '0398762441', 'hiimlamxung@gmail.com', 'Hà Nội', 'aaa', 1, '2020-09-19 16:44:30', NULL, '2020-09-19 16:44:30'),
(111, NULL, 'ngocduc', 1, 18395000, '0398992003', 'ngocduc022497@gmail.com', 'HN', 'mua nhanh', 5, '2020-09-19 16:46:28', NULL, '2020-09-21 01:58:56'),
(112, NULL, 'Hoàng Lâm', 1, 7260000, '0398762441', 'hiimlamxung@gmail.com', 'HN', 'abvc', 1, '2020-09-19 16:51:16', NULL, '2020-09-19 16:51:16'),
(113, NULL, 'Hoàng Lâm', 1, 11523000, '0398762441', 'hiimlamxung@gmail.com', 'HN', 'avc', 5, '2020-09-19 16:53:02', NULL, '2020-09-23 19:43:40'),
(114, NULL, 'Hoàng Lâm', 1, 530000, '0398762441', 'hiimlamxung@gmail.com', 'HN', 'â', 5, '2020-09-19 16:55:06', NULL, '2020-09-23 19:43:58'),
(115, NULL, 'Hoàng Lâmm', 1, 4880000, '0398762441', 'hiimlamxung@gmail.com', 'HN', 'ád', 5, '2020-09-19 16:56:47', '2020-09-21 14:37:32', '2020-09-21 21:38:06'),
(116, 42, 'Hoàng Lâm', 2, 495000, '0398762441', 'hiimlamxung@gmail.com', 'Hà Nội', '123', 4, '2020-09-21 22:57:08', '2020-09-22 14:02:28', '2020-09-22 21:02:28'),
(117, 42, 'Hoàng Lâm', 2, 620000, '0398762441', 'hiimlamxung@gmail.com', 'Hà Nội', 'avc', 2, '2020-09-21 23:01:05', NULL, '2020-09-22 21:01:17'),
(118, NULL, 'Hoàng Lâm', 2, 994500, '0398762441', 'hiimlamxung@gmail.com', 'HN', 'abc123', 1, '2020-09-23 21:07:01', NULL, '2020-09-23 21:07:01'),
(119, 114, 'Hoàng', 1, 9151000, '0398222221', 'hoang@gmail.com', 'hn', 'nhanh nhe', 1, '2020-09-23 21:07:41', NULL, '2020-09-23 21:07:41'),
(120, 114, 'Hoàng', 2, 3150100, '0398222221', 'hoang@gmail.com', 'hn', 'giao truoc toi', 1, '2020-09-23 21:08:37', NULL, '2020-09-23 21:08:37'),
(121, 114, 'Hoàng', 1, 462500, '0398222221', 'hoang@gmail.com', 'hn', 'abc123', 1, '2020-09-23 21:10:13', NULL, '2020-09-23 21:10:13'),
(122, NULL, 'Hoàng Lâm', 1, 152600, '0398762441', 'hiimlamxung@gmail.com', 'HN', 'giao nhanh', 1, '2020-09-23 21:17:13', NULL, '2020-09-23 21:17:13'),
(123, NULL, 'Hoàng Lâm', 1, 9725000, '0398762441', 'hiimlamxung@gmail.com', 'HN', 'mua nhanh', 1, '2020-09-23 22:02:32', NULL, '2020-09-23 22:02:32'),
(124, 42, 'Hoàng Lâm', 1, 4650000, '0398762441', 'hiimlamxung@gmail.com', 'Thượng Thanh, Long Biên, Hà Nội', 'giao hang truoc toi', 1, '2020-09-23 22:03:09', NULL, '2020-09-23 22:03:09'),
(125, NULL, 'Đức Phạm', 1, 2519000, '0357545556', 'ngocduc24021997@gmail.com', 'Ngọc Thụy', '123', 1, '2020-09-24 10:07:12', NULL, '2020-09-24 10:07:12'),
(126, 115, 'Đức Phạm', 1, 19925000, '0357545556', 'ngocduc24021997@gmail.com', 'Ngọc Thụy', 'Abc', 3, '2020-09-24 14:09:10', NULL, '2020-09-25 15:08:49'),
(127, NULL, 'Hoàng Lâm', 1, 530000, '0398762441', 'hiimlamxung@gmail.com', 'HN', 'giao nhanh giúp mình nhé', 1, '2020-09-26 09:49:11', NULL, '2020-09-26 09:49:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id_payment` tinyint(4) NOT NULL,
  `name_payment` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`id_payment`, `name_payment`, `description`) VALUES
(1, 'Ship Cod', 'Thanh toán khi nhận hàng'),
(2, 'Chuyển khoản qua ngân hàng', 'Chuyển khoản qua ngân hàng');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id_product` int(11) NOT NULL,
  `name_product` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_brand` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `price` float NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount` tinyint(4) NOT NULL DEFAULT '0',
  `quantity` int(5) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stt` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id_product`, `name_product`, `id_brand`, `id_type`, `price`, `img`, `discount`, `quantity`, `description`, `created`, `date_update`, `stt`) VALUES
(189, 'ANTMAN YELLOW JACKET BẢN TĨNH', 1, 1, 200000, 'images/product/189/1598513055_avatar_1.png', 0, 120, '', '2020-08-27 14:24:14', '2020-08-27 14:24:14', 1),
(190, 'HULK 64 CM OVERSIZE', 1, 1, 650000, 'images/product/190/1598513251_avatar_1.jpg', 10, 108, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">Hulk khổng lồ nghĩa đen, bản giới hạn cao 64CM, chất liệu nhựa PVC &amp; ABS.</span></span></span></span></span></span></p>\r\n', '2020-08-27 14:27:31', '2020-08-27 14:27:31', 1),
(191, 'Iron Man Mark VI diecast - MK 6', 1, 1, 550000, 'images/product/191/1598513441_avatar_1.jpg', 10, 102, '<p><iframe class=\"col-md-12 col-xs-12\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/1KUWpwC6SM8?start=4\" width=\"560\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-size:10.5pt\"><span style=\"color:#7b858a\">Play Toys MK6 diecast chất liệu hợp kim l&agrave;m lại giống hệt 99% so với bản gốc Hot Toys MK6 diecast.</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-size:10.5pt\"><span style=\"color:#7b858a\">- Chiều cao: 33 CM.<br />\r\n- Bệ đỡ k&egrave;m d&acirc;y đỡ c&oacute; LED.<br />\r\n- Phụ kiện gồm 3 mặt nạ + 3 gi&aacute;p ngực thay thế ( 3 trạng th&aacute;i gi&aacute;p: nguy&ecirc;n vẹn, hư hại &amp; hư hại nặng, đa dạng trong việc b&agrave;i tr&iacute; cảnh )<br />\r\n-4 cặp b&agrave;n tay + 2 cặp gi&aacute;p vai thay thế ( trạng th&aacute;i nguy&ecirc;n vẹn v&agrave; hư hại )<br />\r\n- Chất liệu hợp kim - Diecast cực nặng tay.</span></span></span></span></p>\r\n', '2020-08-27 14:30:41', '2020-08-27 14:30:41', 1),
(192, 'Mark 50 Iron Man LIFE SIZE BUST', 1, 1, 4000000, 'images/product/192/1598513529_avatar_1.jpg', 22, 108, '<p>&nbsp;</p>\r\n\r\n<iframe class=\"col-md-12 col-xs-12\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/mIyfZw3-6RM\" width=\"560\"></iframe>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#1c1e21\">⚜</span><span style=\"color:#1c1e21\">️</span><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"color:#1c1e21\">&nbsp;[Pre-Order] Queen Studios - Avengers: Infinity War - Mark 50 Iron Man LIFE SIZE BUST</span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"color:#1c1e21\"><span style=\"background-color:white\">- K&iacute;ch thước: Tỉ lệ người thật 1/1: 66.5cm, 66cm, 80cm</span><br />\r\n<span style=\"background-color:white\">- Chất liệu: Polystone</span><br />\r\n<span style=\"background-color:white\">- Ng&agrave;y ph&aacute;t h&agrave;nh: Q4 2019</span><br />\r\n<span style=\"background-color:white\">- C&aacute;nh Nano-booster wings th&aacute;o được.</span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"color:#1c1e21\">- Đ&egrave;n Led Arc Reactor</span></span></span></span></p>\r\n', '2020-08-27 14:32:09', '2020-08-27 14:32:09', 1),
(193, 'Mô hình Marvel - Groot trưởng thành', 1, 1, 2300000, 'images/product/193/1598513578_avatar_1.jpg', 0, 125, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">Chi tiết :&nbsp;</span></span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\"><span style=\"background-color:white\">- c&oacute; khớp cử động&nbsp;</span><br />\r\n<span style=\"background-color:white\">- 2 kiểu đầu + 2 b&agrave;n tay thay thế như h&igrave;nh tr&ecirc;n</span><br />\r\n<span style=\"background-color:white\">Chất liệu : Nhựa ABS &amp; PVC</span><br />\r\n<span style=\"background-color:white\">Chiều cao : 42cm</span></span></span></span></span></span></p>\r\n', '2020-08-27 14:32:57', '2020-08-27 14:32:57', 1),
(194, 'Mô hình Marvel - Hulk PVC', 1, 1, 850000, 'images/product/194/1598513631_avatar_1.jpg', 0, 118, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">Chi tiết :</span></span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\"><span style=\"background-color:white\">- C&oacute; khớp cử động&nbsp;</span><br />\r\n<span style=\"background-color:white\">- Quần bằng vải</span><br />\r\n<span style=\"background-color:white\">Chất liệu : Nhựa ABS &amp; PVC</span><br />\r\n<span style=\"background-color:white\">Chiều cao : 22cm</span></span></span></span></span></span></p>\r\n', '2020-08-27 14:33:51', '2020-08-27 14:33:51', 1),
(195, 'Mô hình Marvel - Ironman dáng bay', 1, 1, 235000, 'images/product/195/1598513667_avatar_1.jpg', 0, 117, '<p>Chất liệu : Nhựa ABS &amp; PVC&nbsp;<br />\r\nChiều cao : 38cm<br />\r\n&nbsp;</p>\r\n', '2020-08-27 14:34:27', '2020-08-27 14:34:27', 1),
(196, 'Mô hình Marvel - Ironman MK50', 1, 1, 450000, 'images/product/196/1598513738_avatar_1.jpg', 5, 141, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">Chi tiết :&nbsp;</span></span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\"><span style=\"background-color:white\">- C&oacute; khớp cử động chắc chắn - tạo nhiều d&aacute;ng&nbsp;</span><br />\r\n<span style=\"background-color:white\">- Nhiều phụ kiện đi k&egrave;m đầy đủ như tr&ecirc;n ảnh&nbsp;</span><br />\r\n<span style=\"background-color:white\">Chất liệu : Nhựa ABS &amp; PVC</span><br />\r\n<span style=\"background-color:white\">Chiều cao : 16cm</span></span></span></span></span></span></p>\r\n', '2020-08-27 14:35:38', '2020-08-27 14:35:38', 1),
(197, 'Mô hình Marvel - Ironman MK50 bản tĩnh', 1, 1, 340000, 'images/product/197/1598513814_avatar_1.jpg', 0, 122, '<p>Chất liệu : Nhựa ABS &amp; PVC<br />\r\nChiều cao : 30cm<br />\r\n&nbsp;</p>\r\n', '2020-08-27 14:36:54', '2020-08-27 14:36:54', 1),
(198, 'Mô hình Marvel - Spiderman new amor', 1, 1, 300000, 'images/product/198/1598514144_avatar_1.jpg', 0, 122, '<p>Chất liệu : Nhựa ABS &amp; PVC<br />\r\nChiều cao : 16cm<br />\r\n&nbsp;</p>\r\n', '2020-08-27 14:42:24', '2020-08-27 14:42:24', 1),
(199, 'Mô hình Thanos Avenger - Marvel', 1, 1, 820000, 'images/product/199/1598514188_avatar_1.jpg', 12, 131, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Thanos cao 38CM cả đế,chi tiết v&agrave; nước sơn cực đẹp , 2 tay xoay được khớp vai</span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"background-color:white\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#777777\">Chất liệu: Nhựa PVC &amp; ABS</span></span></span></strong></span></span></p>\r\n', '2020-08-27 14:43:08', '2020-08-27 14:43:08', 1),
(200, 'Mô hình Thanos End-Game edition', 1, 1, 670000, 'images/product/200/1598514227_avatar_1.jpg', 36, 120, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">Chi tiết :&nbsp;</span></span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\"><span style=\"background-color:white\">- C&oacute; khớp chắc chắn tạo d&aacute;ng theo &yacute; muốn</span><br />\r\n<span style=\"background-color:white\">- Nhiều phụ kiện thay thế&nbsp;</span><br />\r\n<span style=\"background-color:white\">Chất liệu : Nhựa ABS &amp; PVC</span><br />\r\n<span style=\"background-color:white\">Chiều cao : 20cm</span></span></span></span></span></span></p>\r\n', '2020-08-27 14:43:47', '2020-08-27 14:43:47', 1),
(201, 'SPIDER-MAN (NEGATIVE SUIT)', 1, 1, 310000, 'images/product/201/1598514282_avatar_1.jpg', 12, 152, '<p>M&ocirc; h&igrave;nh Hot toys Spider-man bản đặc biệt - Negative&nbsp;<br />\r\nChiều cao: 30 CM</p>\r\n', '2020-08-27 14:44:42', '2020-08-27 14:44:42', 1),
(202, 'Tượng Avenger MK65 Life size Bust 1-1', 1, 1, 2500000, 'images/product/202/1598514325_avatar_1.jpg', 20, 120, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,sans-serif\"><span style=\"color:#1c1e21\">Tượng Avenger MK65 Life size Bust 1:1 ki&ecirc;m loa Bluetooth cực chất.</span></span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Helvetica&quot;,sans-serif\"><span style=\"color:#1c1e21\"><span style=\"background-color:white\">- Bản quyền: Marvel</span><br />\r\n<span style=\"background-color:white\">- K&iacute;ch thước (CM): H78*W65*39.5 | Nặng: 20KG</span><br />\r\n<span style=\"background-color:white\">- Vật liệu: Polaroid. Reactor + bảng t&ecirc;n kim loại</span><br />\r\n<span style=\"background-color:white\">- Thời gian PO: 03/07 - 05/07</span></span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;inherit&quot;,serif\"><span style=\"color:#1c1e21\">- Dự kiến ph&aacute;t h&agrave;nh: Q4/2020</span></span></span></span></span></p>\r\n', '2020-08-27 14:45:25', '2020-08-27 14:45:25', 1),
(203, 'IRON MAN MK50 NANO WEAPON', 1, 1, 5200000, 'images/product/203/1598514392_avatar_1.jpg', 10, 132, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Helvetica&quot;,sans-serif\"><span style=\"color:#1c1e21\">Tiếp tục chuy&ecirc;n mục h&agrave;ng đẹp gi&aacute; cũng rẻ, lần n&agrave;y l&agrave; mẫu MK50 cực nhiều LED, tay phải lắp th&ecirc;m s&uacute;ng Repulsor Cannons, lưng gắn th&ecirc;m c&aacute;nh được.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Helvetica&quot;,sans-serif\"><span style=\"color:#1c1e21\">- Chiều cao: 110 CM.<br />\r\n- Đế LED cực chất, đường k&iacute;nh 57CM</span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;inherit&quot;,serif\"><span style=\"color:#1c1e21\">- Chất liệu: resin.<br />\r\n- Ph&aacute;t h&agrave;nh: T7/2020.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 14:46:32', '2020-08-27 14:46:32', 1),
(204, 'TƯỢNG MK50 - TỈ LỆ 1-1 CAO 2M2', 1, 1, 29300000, 'images/product/204/1598514523_avatar_1.jpg', 22, 111, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#1c1e21\">T&igrave;nh h&igrave;nh l&agrave; MK50 life size cao 2m2 trong huyền thoại chỉ sx duy nhất 99 bản world wide nay đ&atilde; đ&atilde; c&oacute; đối t&aacute;c của TOYz l&agrave;m lại rất chuẩn, đ&aacute;nh gi&aacute; 95% giống bản gốc, đến cả c&aacute;i đế cũng ngon l&agrave;nh. H&agrave;ng gốc gi&aacute; hiện tại b&ecirc;n T&acirc;y b&aacute;n tr&ecirc;n 300 triệu, TOYz b&aacute;n rẻ hơn nhiều&nbsp;</span></span></span></span></span></span></p>\r\n', '2020-08-27 14:48:43', '2020-08-27 14:48:43', 1),
(205, 'Baby Groot hộc bút hoặc trồng cây', 1, 3, 120000, 'images/product/205/1598514594_avatar_1.jpg', 0, 122, '<p><span style=\"background-color:white\"><span style=\"color:#7b858a; font-family:Arial,sans-serif; font-size:10.5pt\">&nbsp;Hộc b&uacute;t chất liệu nhựa ABS nguy&ecirc;n sinh kh&ocirc;ng m&ugrave;i rất chắc chắn, l&agrave;m qu&agrave; tặng, hộc đựng b&uacute;t hoặc trồng những loại c&acirc;y, hoa nhỏ xinh được. C&oacute; lỗ tho&aacute;t nước ở đ&aacute;y.</span></span></p>\r\n', '2020-08-27 14:49:54', '2020-08-27 14:49:54', 1),
(206, 'BÌNH GIỮ NHIỆT AVENGERS LÕI INOX', 1, 3, 120000, 'images/product/206/1598514645_avatar_1.jpg', 11, 109, '', '2020-08-27 14:50:45', '2020-08-27 14:50:45', 1),
(207, 'BÌNH GIỮ NHIỆT BLACK PANTHER LÕI INOX', 1, 3, 210000, 'images/product/207/1598514684_avatar_1.jpg', 0, 122, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">Sản phẩm&nbsp;B&igrave;nh giữ nhiệt Black Panther l&otilde;i Inox :</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Chất liệu : Vỏ nhựa cao cấp l&otilde;i inox giữ nhiệt</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Thiết kế tiện dụng , ph&ugrave; hợp cho nhiều hoạt động kh&aacute;c nhau</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Nắp đ&oacute;ng mở d&ecirc;c d&agrave;ng.&nbsp;</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 14:51:24', '2020-08-27 14:51:24', 1),
(208, 'BÌNH NƯỚC BÚA THOR MÀU ĐEN', 1, 3, 150000, 'images/product/208/1598514726_avatar_1.webp', 0, 122, '', '2020-08-27 14:52:06', '2020-08-27 14:52:06', 1),
(209, 'CỐC BLACK PANTHER', 1, 3, 230000, 'images/product/209/1598514767_avatar_1.jpg', 5, 153, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">Sản phẩm cốc Black Panther :</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Chất&nbsp; liệu : nhựa l&otilde;i th&eacute;p giữ nhiệt</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Tạo h&igrave;nh đẹp mắt, m&agrave;u sắc tươi s&aacute;ng .</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- C&oacute; chỗ cắm ống h&uacute;t</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Tỉ mỉ tr&ecirc;n từng đường n&eacute;t</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 14:52:47', '2020-08-27 14:52:47', 1),
(210, 'CỐC BÚA THOR', 1, 3, 300000, 'images/product/210/1598514802_avatar_1.jpg', 5, 133, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">Sản phẩm cốc B&uacute;a Mjolnir</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Chất&nbsp; liệu : sứ chịu nhiệt</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Tạo h&igrave;nh đẹp mắt, m&agrave;u sắc tươi s&aacute;ng .</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Tỉ mỉ tr&ecirc;n từng đường n&eacute;t</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 14:53:22', '2020-08-27 14:53:22', 1),
(211, 'CỐC CAPTAIN', 1, 3, 290000, 'images/product/211/1598514844_avatar_1.jpg', 10, 121, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">Sản phẩm cốc Captain :</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Chất&nbsp; liệu : sứ chịu nhiệt</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Tạo h&igrave;nh đẹp mắt, m&agrave;u sắc tươi s&aacute;ng .</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Tỉ mỉ tr&ecirc;n từng đường n&eacute;t</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 14:54:04', '2020-08-27 14:54:04', 1),
(212, 'CỐC IRONMAN', 1, 3, 150000, 'images/product/212/1598514916_avatar_1.webp', 0, 143, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">Sản phẩm cốc Ironman :</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Chất&nbsp; liệu : nhựa l&otilde;i th&eacute;p giữ nhiệt</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Tạo h&igrave;nh đẹp mắt, m&agrave;u sắc tươi s&aacute;ng .</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Tỉ mỉ tr&ecirc;n từng đường n&eacute;t</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 14:55:16', '2020-08-27 14:55:16', 1),
(213, 'ĐẠI ĐAO THANOS MÓC KHÓA KIM LOẠI', 1, 3, 110000, 'images/product/213/1598514951_avatar_1.jpg', 0, 161, '', '2020-08-27 14:55:51', '2020-08-27 14:55:51', 1),
(214, 'MÓC KHÓA AVENGERS', 1, 3, 90000, 'images/product/214/1598514986_avatar_1.jpg', 0, 114, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">Sản phẩm M&oacute;c kho&aacute; Avenger&nbsp; :</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Chất liệu kim loại si&ecirc;u bền, si&ecirc;u chịu lực</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Thiết kế Logo Avenger nổi bật v&agrave; độc đ&aacute;o</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Chắc chắn v&agrave; bền bỉ</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 14:56:25', '2020-08-27 14:56:25', 1),
(215, 'MÓC KHÓA AVENGERS V2', 1, 3, 210000, 'images/product/215/1598515031_avatar_1.jpg', 0, 120, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">Sản phẩm M&oacute;c kho&aacute; Avenger V2 :</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Chất liệu kim loại si&ecirc;u bền, si&ecirc;u chịu lực</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Thiết kế Logo Avenger nổi bật v&agrave; độc đ&aacute;o</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Chắc chắn v&agrave; bền bỉ</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 14:57:10', '2020-08-27 14:57:10', 1),
(216, 'MÓC KHÓA BLACK PANTHER', 1, 3, 145000, 'images/product/216/1598515101_avatar_1.jpg', 11, 123, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">Sản phẩm m&oacute;c kh&oacute;a&nbsp;Black Panther :</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Chất liệu : Kim loại&nbsp;</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">-&nbsp;M&oacute;c treo ch&igrave;a kh&oacute;a đẹp v&agrave; độc l&agrave;m bằng chất liệu th&eacute;p cao cấp kh&ocirc;ng rỉ v&agrave; chịu lực cao.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- M&oacute;c treo ch&igrave;a kh&oacute;a thiết kế đẹp mắt, tinh tế v&agrave; sang trọng ph&ugrave; hợp với tất cả mọi người.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- M&oacute;c treo rất chắc chắn, kh&ocirc;ng lỏng lẻo, treo ch&igrave;a kh&oacute;a cực bền.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 14:58:20', '2020-08-27 14:58:20', 1),
(217, 'MÓC KHÓA BÚA THOR MJOLNIR VÀNG', 1, 3, 160000, 'images/product/217/1598515155_avatar_1.jpg', 0, 112, '<p>+ K&iacute;ch thước: 7.5x3.5x2cm<br />\r\n+ Chất liệu: Kim loại</p>\r\n', '2020-08-27 14:59:15', '2020-08-27 14:59:15', 1),
(218, 'MÓC KHÓA CAPTAIN MARVEL', 1, 3, 134000, 'images/product/218/1598515191_avatar_1.png', 0, 121, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">Sản phẩm m&oacute;c kh&oacute;a Captain Marvel :</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Chất liệu : Kim loại&nbsp;</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">-&nbsp;M&oacute;c treo ch&igrave;a kh&oacute;a đẹp v&agrave; độc l&agrave;m bằng chất liệu th&eacute;p cao cấp kh&ocirc;ng rỉ v&agrave; chịu lực cao.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- M&oacute;c treo ch&igrave;a kh&oacute;a thiết kế đẹp mắt, tinh tế v&agrave; sang trọng ph&ugrave; hợp với tất cả mọi người.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- M&oacute;c treo rất chắc chắn, kh&ocirc;ng lỏng lẻo, treo ch&igrave;a kh&oacute;a cực bền.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Biểu tượng Captain Marvel in nổi</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 14:59:51', '2020-08-27 14:59:51', 1),
(219, 'Tranh treo tường #3', 1, 3, 200000, 'images/product/219/1598515258_avatar_1.jpg', 21, 120, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">Chất liệu : Fomex</span></span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\"><span style=\"background-color:white\">K&iacute;ch thước :&nbsp;</span></span></span></span><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,sans-serif\"><span style=\"color:#1c1e21\">&nbsp;100 x 52 CM&nbsp;<br />\r\n- Ngo&agrave;i ra shop c&oacute; nhận k&iacute;ch thước theo mong muốn&nbsp;</span></span></span></span></span></span></p>\r\n', '2020-08-27 15:00:58', '2020-08-27 15:00:58', 1),
(220, 'Tranh treo tường #4', 1, 3, 100000, 'images/product/220/1598515306_avatar_1.jpg', 0, 124, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">Chất liệu : Fomex</span></span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\"><span style=\"background-color:white\">K&iacute;ch thước :&nbsp;</span></span></span></span><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,sans-serif\"><span style=\"color:#1c1e21\">&nbsp;100 x 56 CM<br />\r\n- Ngo&agrave;i ra shop c&oacute; nhận k&iacute;ch thước theo mong muốn</span></span></span></span></span></span></p>\r\n', '2020-08-27 15:01:45', '2020-08-27 15:01:45', 1),
(221, 'CHUỘT KHÔNG DÂY IRONMAN', 1, 2, 540000, 'images/product/221/1598515686_avatar_1.jpg', 22, 114, '<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ K&iacute;ch thước:</span></span></span></strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">&nbsp;11cmx7cm</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ Chất liệu: nhựa&nbsp;cao cấp PVC</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ chuột nhay, cso đầu thu ph&aacute;t bluetooth&nbsp;</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ s&aacute;ng đ&egrave;n 2 mắt khu sử dụng.</span></span></span></strong></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 15:08:06', '2020-08-27 15:08:06', 1),
(222, 'ĐẾ SẠC KHÔNG DÂY DRSTRANGE', 1, 2, 760000, 'images/product/222/1598515724_avatar_1.jpg', 30, 118, '<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">Sạc kh&ocirc;ng d&acirc;y Dr Strange&nbsp;</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">c&oacute; 2 m&agrave;u: n&acirc;u, hồng</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ K&iacute;ch thước:&nbsp;</span></span></span></strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">&nbsp;25cm</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ Chất liệu:</span></span></span></strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">&nbsp;Nhựa cứng cao cấp</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ C&oacute; 2 cổng sạc</span></span></span></strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">&nbsp;: micro v&agrave; type-C</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 15:08:44', '2020-08-27 15:08:44', 1),
(223, 'ĐÈN IRONMAN', 1, 2, 1100000, 'images/product/223/1598515765_avatar_1.jpg', 13, 141, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">Sản phẩm Đ&egrave;n ngủ Ironman:</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">_ chất liệu : Nhựa cao cấp.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Thiết kế tinh tế tr&ecirc;n từng đường n&eacute;t.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 15:09:25', '2020-08-27 15:09:25', 1),
(224, 'ĐÈN NGỦ BÚA THOR', 1, 2, 2100000, 'images/product/224/1598515836_avatar_1.jpg', 22, 121, '<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">Đ&egrave;n n&uacute;t cảm ứng cực xịn</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ Chất liệu:</span></span></span></strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">&nbsp;Nhựa cao cấp PVC</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ Họa tiết siu ngầu&nbsp;</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 15:10:36', '2020-08-27 15:10:36', 1),
(225, 'ĐÈN NGỦ DRSTRANGE', 1, 2, 1500000, 'images/product/225/1598515884_avatar_1.jpg', 0, 123, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">Sản phẩm Đ&egrave;n ngủ DrStrange :</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Chất liệu : Nhựa.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- C&oacute; thể s&aacute;ng đ&egrave;n.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- thiết kế siu đẹp , siu ngầu .</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- C&oacute; thể d&ugrave;ng để trang tr&iacute; b&agrave;n m&aacute;y t&iacute;nh hoặc l&agrave;m đ&egrave;n ngủ</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 15:11:23', '2020-08-27 15:11:23', 1),
(226, 'Pad chuột Ironman #1', 1, 2, 290000, 'images/product/226/1598515946_avatar_1.jpg', 0, 120, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">Pad chuột chất liệu cao su non in h&igrave;nh chi tiết v&agrave; sắc n&eacute;t v&agrave; rất bền m&agrave;u, kh&aacute;c biệt với c&aacute;c mẫu tương tự tr&ecirc;n thị trường với chất lượng in v&agrave; độ bền cực tốt.</span></span></span></span></span></span></p>\r\n', '2020-08-27 15:12:26', '2020-08-27 15:12:26', 1),
(227, 'SẠC DỰ PHÒNG CAPTAIN 6800MAH', 1, 2, 400000, 'images/product/227/1598515980_avatar_1.jpg', 10, 142, '<p style=\"text-align:center\"><br />\r\n<span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\"><strong><span style=\"font-family:&quot;Arial&quot;,sans-serif\">+ K&iacute;ch thước: đường k&iacute;nh 10cm</span></strong></span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ Chất liệu:</span></span></span></strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">&nbsp;Kim loại si&ecirc;u bền</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">Dung lượng 6800mAH</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 15:13:00', '2020-08-27 15:13:00', 1),
(228, 'SẠC DỰ PHÒNG IRONMAN 12000MAH', 1, 2, 600000, 'images/product/228/1598516025_avatar_1.jpg', 18, 119, '<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">Sạc c&oacute; thể s&aacute;ng đ&egrave;n 3 kiểu cực xịn nha&nbsp;</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ K&iacute;ch thước: đường k&iacute;nh 9cm</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ Chất liệu:</span></span></span></strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">&nbsp;Nhựa cao cấp PVC</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+&nbsp;<strong><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Dung lượn :&nbsp;</span></strong>10.000 mAH</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 15:13:45', '2020-08-27 15:13:45', 1),
(229, 'AQUAMAN 12 STATUE', 2, 1, 3900000, 'images/product/229/1598516273_avatar_1.jpg', 19, 132, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Helvetica&quot;,sans-serif\"><span style=\"color:#1c1e21\">[</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\"><span style=\"color:#1c1e21\">???</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Helvetica&quot;,sans-serif\"><span style=\"color:#1c1e21\">-</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\"><span style=\"color:#1c1e21\">?????</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Helvetica&quot;,sans-serif\"><span style=\"color:#1c1e21\">] </span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\"><span style=\"color:#1c1e21\">?????</span></span></span> <span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\"><span style=\"color:#1c1e21\">???????</span></span></span> <span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\"><span style=\"color:#1c1e21\">???????</span></span></span> <span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\"><span style=\"color:#1c1e21\">?</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Helvetica&quot;,sans-serif\"><span style=\"color:#1c1e21\">:</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\"><span style=\"color:#1c1e21\">?</span></span></span> <span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\"><span style=\"color:#1c1e21\">??????</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Helvetica&quot;,sans-serif\"><span style=\"color:#1c1e21\">Đẹp như bước từ phim ra, ảnh n&oacute;i thay cho nội dung. Nh&igrave;n đẹp hơn nhiều mấy c&aacute;i tượng s&aacute;p trong bảo t&agrave;ng, cắm từng c&aacute;i sợi l&ocirc;ng t&oacute;c l&ecirc;n da silicon mới thấy kỳ c&ocirc;ng khủng khiếp.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Helvetica&quot;,sans-serif\"><span style=\"color:#1c1e21\">- Chất liệu: Silicon, polystone, l&ocirc;ng t&oacute;c nh&acirc;n tạo.<br />\r\n- H&atilde;ng sản xuất: QUEEN STUDIOS.</span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;inherit&quot;,serif\"><span style=\"color:#1c1e21\">- Gi&aacute;: 59.8 triệu ( gi&aacute; si&ecirc;u tốt nhưng chỉ c&oacute; 2 slots )<br />\r\n- Số lượng: Giới hạn 666 bản to&agrave;n thế giới.<br />\r\n- K&iacute;ch thước: 57 CM x 49.1 CM x 98.8 CM / 116.8 CM (cả đinh ba).<br />\r\n- Thời gian ra mắt: Q4/2020.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 15:17:53', '2020-08-27 15:17:53', 1),
(230, 'AQUAMAN THẤT HẢI CHI VƯƠNG', 2, 1, 1300000, 'images/product/230/1598516322_avatar_1.webp', 0, 114, '<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">M&ocirc; h&igrave;nh cử động đa khớp</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ C&oacute; đi k&egrave;m đế, gi&aacute; đỡ v&agrave; phụ kiện thay thế</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ Chất liệu: nhựa&nbsp;cao cấp PVC</span></span></span></strong></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 15:18:42', '2020-08-27 15:18:42', 1);
INSERT INTO `tbl_product` (`id_product`, `name_product`, `id_brand`, `id_type`, `price`, `img`, `discount`, `quantity`, `description`, `created`, `date_update`, `stt`) VALUES
(231, 'BATMAN ARKHAM ORIGINS STATUE', 2, 1, 2700000, 'images/product/231/1598516370_avatar_1.jpg', 3, 130, '<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">M&ocirc; h&igrave;nh&nbsp;</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ K&iacute;ch thước: cao 53cm</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ Chất liệu:&nbsp;</span></span></span></strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">nhựa cao cấp</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Cử động đa khớp, khớp nối linh hoạt</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Đầy đủ phụ kiện đi k&egrave;m&nbsp;</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- M&agrave;u sắc sinh động .</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 15:19:30', '2020-08-27 15:19:30', 1),
(232, 'BATMAN MAFEX', 2, 1, 800000, 'images/product/232/1598516413_avatar_1.jpg', 0, 121, '<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">M&ocirc; h&igrave;nh cử động đa khớp</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ K&iacute;ch thước:</span></span></span></strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">&nbsp;15cm-17cm</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ Chất liệu: nhựa cao cấp PVC</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ &Aacute;o cho&agrave;ng si&ecirc;u ngầu</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ Cso đi k&egrave;m phụ kiện thay thế</span></span></span></strong></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 15:20:13', '2020-08-27 15:20:13', 1),
(233, 'BATMAN SHF THE DARK KNIGHT RISES', 2, 1, 40050000, 'images/product/233/1598516471_avatar_1.jpg', 29, 131, '<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">M&ocirc; h&igrave;nh cử động đa khớp</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ K&iacute;ch thước:</span></span></span></strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">&nbsp;~17cm</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ Chất liệu: nhựa cao cấp PVC</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ C&oacute; đi k&egrave;m phụ kiện thay thế</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ &Aacute;o cho&agrave;ng vải c&oacute; thể tạo h&igrave;nh</span></span></span></strong></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 15:21:11', '2020-08-27 15:21:11', 1),
(234, 'BATMAN WHO LAUGHS', 2, 1, 690000, 'images/product/234/1598516519_avatar_1.jpg', 28, 116, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">Sản phẩm Batman who laughs:</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- C&oacute; đi k&egrave;m đế v&agrave; phụ kiện .</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Tạo h&igrave;nh đẹp mắt,tỉ mỉ đến từng chi tiết.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Tượng tĩnh .</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 15:21:58', '2020-08-27 15:21:58', 1),
(235, 'COSBABY JOKER + HARLEY QUINN', 2, 1, 520000, 'images/product/235/1598516557_avatar_1.jpg', 0, 118, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">Sản phẩm cosbaby Joker + Harley Quinn :</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">_ chất liệu : Nhựa cao cấp.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- C&oacute; đi k&egrave;m phụ kiện</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Thiết kế tinh tế tr&ecirc;n từng đường n&eacute;t, m&agrave;u sắc tươi s&aacute;ng.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 15:22:37', '2020-08-27 15:22:37', 1),
(236, 'COSBABY WONDER WOMAN', 2, 1, 190000, 'images/product/236/1598516633_avatar_1.jpg', 17, 120, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">Sản phẩm Cosbaby Wonder Woman:</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Chất liệu : Nhựa cao cấp</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Thiết kế tỉ mỉ tr&ecirc;n từng chi ti&ecirc;t , m&agrave;u sắc tươi s&aacute;ng</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Đi k&egrave;m đầy đủ đế v&agrave; phụ kiện</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 15:23:53', '2020-08-27 15:23:53', 1),
(237, 'GREEN ARROW 112 CỬ ĐỘNG FULL KHỚP', 2, 1, 1760000, 'images/product/237/1598516690_avatar_1.webp', 15, 119, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">M&ocirc; h&igrave;nh đa khớp</span></span></span></strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ K&iacute;ch thước:</span></span></span></strong>&nbsp;</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ Chất liệu: nhựa&nbsp;cao cấp PVC</span></span></span></strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ c&oacute; đi k&egrave;m đầy đủ phụ kiện v&agrave; đế</span></span></span></strong></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 15:24:49', '2020-08-27 15:24:49', 1),
(238, 'HOTTOYS COSBABY AQUAMAN', 2, 1, 5390000, 'images/product/238/1598516729_avatar_1.jpg', 0, 121, '<p>+ K&iacute;ch thước: Cao 11cm<br />\r\n+ Chất liệu: Nhựa cao cấp</p>\r\n', '2020-08-27 15:25:29', '2020-08-27 15:25:29', 1),
(239, 'HOTTOYS COSBABY BATMAN SÁNG ĐÈN', 2, 1, 160000, 'images/product/239/1598518255_avatar_1.jpg', 0, 111, '<p>+ K&iacute;ch thước: Cao 11cm<br />\r\n+ s&aacute;ng đ&egrave;n ở 2 mắt</p>\r\n', '2020-08-27 15:50:55', '2020-08-27 15:50:55', 1),
(240, 'MMJK-01 JOKER', 2, 1, 3100000, 'images/product/240/1598518315_avatar_1.jpg', 0, 122, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">H&atilde;ng: Prime 1 Studio<br />\r\nK&iacute;ch thước / Tỉ lệ: 1/3 Scale Statue, 28 inches tall [H 70cm W 35cm D 38.2cm]<br />\r\nPO deadline: 13/07/2020<br />\r\nThời gian ph&aacute;t h&agrave;nh: Q3 2021<br />\r\n<strong><span style=\"font-family:&quot;Arial&quot;,sans-serif\">- Phi&ecirc;n bản đặc biệt k&egrave;m mặt nạ -</span></strong></span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">- Hỗ trợ trả g&oacute;p l&atilde;i suất 0% với kh&aacute;ch h&agrave;ng mua đơn h&agrave;ng tr&ecirc;n 3 triệu v&agrave; c&oacute; thẻ t&iacute;n dụng visa/master (credit) thời hạn 3/6/9/12 th&aacute;ng -</span></span></span></strong></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 15:51:55', '2020-08-27 15:51:55', 1),
(241, 'Mô hình Batman Robin', 2, 1, 320000, 'images/product/241/1598518372_avatar_1.jpg', 14, 132, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Chất liệu: Nhự<span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">a ABS &amp; PVC</span></span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\"><span style=\"background-color:white\">Chiều cao : 37cm</span></span></span></span></span></span></p>\r\n', '2020-08-27 15:52:52', '2020-08-27 15:52:52', 1),
(242, 'Mô hình Joker #1', 2, 1, 1400000, 'images/product/242/1598518542_avatar_1.jpg', 11, 122, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"color:#7b858a\">Chi tiết :</span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"color:#7b858a\"><span style=\"background-color:white\">- C&oacute; khớp chắc chắn tạo d&aacute;ng thoải m&aacute;i&nbsp;</span><br />\r\n<span style=\"background-color:white\">- Phụ kiện đi k&egrave;m như tr&ecirc;n h&igrave;nh</span><br />\r\n<span style=\"background-color:white\">Chất liệu : Nhựa ABS &amp; PVC</span><br />\r\n<span style=\"background-color:white\">Chiều cao : 30cm&nbsp;</span></span></span></span></span></p>\r\n', '2020-08-27 15:54:13', '2020-08-27 15:54:13', 1),
(243, 'MTOYS Joker (Suit Version) 16', 2, 1, 2300000, 'images/product/243/1598518618_avatar_2.jpg', 15, 131, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">M&ocirc; h&igrave;nh Joker tỉ lệ 1/6, full khớp tạo d&aacute;ng được linh hoạt.<br />\r\nPhi&ecirc;n bản suit đỏ trong film Joker 2019</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">- Phụ kiện như h&igrave;nh, gi&aacute; ch&iacute;nh thức: 3,950,000 VNĐ, cọc 1 triệu.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp;</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 15:56:58', '2020-08-27 15:56:58', 1),
(244, 'SUPERMAN HOCHOI CỬ ĐỘNG ĐA KHỚP', 2, 1, 3800000, 'images/product/244/1598518668_avatar_1.jpg', 0, 120, '<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">M&ocirc; h&igrave;nh tượng tĩnh</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ K&iacute;ch thước:</span></span></span></strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">&nbsp;30cm</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ Chất liệu:&nbsp;</span></span></span></strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">nhựa cao cấp</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Cử động đa khớp, khớp nối linh hoạt</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Đầy đủ phụ kiện đi k&egrave;m v&agrave; đế .</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- M&agrave;u sắc sinh động .</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 15:57:47', '2020-08-27 15:57:47', 1),
(245, 'TƯỢNG SUPERMAN TĨNH X22', 2, 1, 964000, 'images/product/245/1598518703_avatar_1.webp', 19, 120, '<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ Chất liệu:</span></span></span></strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">&nbsp;Nhựa cao cấp</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ thiết kế tỉ mỉ v&agrave; tinh tế tr&ecirc;n từng đường n&eacute;t</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 15:58:22', '2020-08-27 15:58:22', 1),
(246, 'TƯỢNG TĨNH ARKHAM KNIGHT', 2, 1, 420000, 'images/product/246/1598518747_avatar_1.jpg', 13, 112, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">Sản phẩm m&ocirc; h&igrave;nh&nbsp;Tượng tĩnh arkham knight :</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Chất&nbsp; liệu : nhựa cao cấp.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- C&oacute; đi k&egrave;m phụ kiện .</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Tạo h&igrave;nh đẹp mắt, m&agrave;u sắc tươi s&aacute;ng .</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Kh&ocirc;ng cử động được.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 15:59:07', '2020-08-27 15:59:07', 1),
(247, 'TƯỢNG TĨNH JOKER X11', 2, 1, 2100000, 'images/product/247/1598518782_avatar_1.jpg', 12, 132, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">Sản phẩm Tượng tĩnh Joker:</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Chất liệu : nhựa cao cấp</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- M&agrave;u sắc sinh động&nbsp;</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Thiết kế độc đ&aacute;o , chi tiết, bắt mắt</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 15:59:42', '2020-08-27 15:59:42', 1),
(248, 'DÂY CÁP SẠC BATMAN IPHONE', 2, 2, 620000, 'images/product/248/1598518824_avatar_1.jpg', 12, 123, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">Sản phẩm C&aacute;p sạc Batman s&aacute;ng đ&egrave;n :</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">-D&ugrave;ng được cho c&aacute;c thiết bị d&ugrave;ng cổng MicroUSB</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">-Thiết kế dạng v&ograve;ng xoắn chắc chắn, kh&ocirc;ng bị rối hay g&atilde;y đứt</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">-Độ d&agrave;i 1.2m, dễ d&agrave;ng sử dụng kể cả khi ở xa ổ điện</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">-Vỏ sợi bằng nhựa TPE v&agrave; l&otilde;i sợi c&aacute;p bằng đồng cao cấp</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">-Đ&egrave;n LED tiện lợi để th&ocirc;ng b&aacute;o trạng th&aacute;i hoạt động của c&aacute;p</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 16:00:24', '2020-08-27 16:00:24', 1),
(249, 'SẠC DỰ PHÒNG XE BATMAN', 2, 2, 390000, 'images/product/249/1598518863_avatar_1.webp', 0, 112, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">Sản phẩm sạc dự ph&ograve;ng xe Batman :</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Chất liệu : Nhựa Cao Cấp</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Dung lượng : 10.000 mAH</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Nguồn v&agrave;o : 1.5 A</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">_ Nguồn ra : 5v 2A</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Thiết kế tỉ mỉ từng chi tiết .</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Xe c&oacute; thể di chuyển v&agrave; tạo ra tiếng động cơ.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 16:01:03', '2020-08-27 16:01:03', 1),
(250, 'BALO BATMAN RCC2', 2, 3, 520000, 'images/product/250/1598518911_avatar_1.webp', 0, 112, '<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ K&iacute;ch thước:</span></span></span></strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">&nbsp;46x25x17cm</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ Chất liệu:</span></span></span></strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">&nbsp;Vải d&ugrave; chống thấm nước</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 16:01:51', '2020-08-27 16:01:51', 1),
(251, 'MẶT NẠ BATMAN JL', 2, 3, 200000, 'images/product/251/1598518977_avatar_1.jpg', 0, 210100, '<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ Chất liệu: cao su cao cấp</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ Co d&atilde;n tốt, kh&ocirc;ng thấm nước.</span></span></span></strong></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 16:02:57', '2020-08-27 16:02:57', 1),
(252, 'MẶT NẠ BATMAN X99', 2, 3, 290000, 'images/product/252/1598519021_avatar_1.webp', 11, 121, '<p style=\"text-align:center\"><br />\r\n<span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\"><strong><span style=\"font-family:&quot;Arial&quot;,sans-serif\">+ Chất liệu: cao su cao cấp&nbsp;</span></strong></span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ Co d&atilde;n tốt, Kh&ocirc;ng th&acirc;m nước.</span></span></span></strong></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 16:03:41', '2020-08-27 16:03:41', 1),
(253, 'MẶT NẠ FLASH RE2', 2, 3, 310000, 'images/product/253/1598519051_avatar_1.jpg', 12, 122, '<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ Chất liệu: cao su cao cấp</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ Co d&atilde;n tốt</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ Si&ecirc;u bền, kh&ocirc;ng thấm nước</span></span></span></strong></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 16:04:11', '2020-08-27 16:04:11', 1),
(254, 'MẶT NẠ JOKER X21', 2, 3, 360000, 'images/product/254/1598519080_avatar_1.webp', 0, 124, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">Sản phẩm Mặt nạ Joker :</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- Chất liệu : Nhựa cao cấp</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">- M&agrave;u sắc tươi s&aacute;ng</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 16:04:39', '2020-08-27 16:04:39', 1),
(255, 'MÓC KHÓA BATMAN VS SUPERMAN', 2, 3, 80000, 'images/product/255/1598519105_avatar_1.jpg', 0, 111, '<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ K&iacute;ch thước:</span></span></span></strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">&nbsp;5x3cm</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ Chất liệu:</span></span></span></strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">&nbsp;Kim loại</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ Si&ecirc;u chắc , si&ecirc;u bền</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ m&agrave;u sắc sinh động</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 16:05:05', '2020-08-27 16:05:05', 1),
(256, 'MÓC KHÓA ĐINH NĂM AQUAMAN', 2, 3, 90000, 'images/product/256/1598519138_avatar_1.jpg', 0, 113, '<p style=\"text-align:center\"><br />\r\n<span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\"><strong><span style=\"font-family:&quot;Arial&quot;,sans-serif\">+ K&iacute;ch thước:</span></strong></span></span></span></strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">&nbsp;11x2cm</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ Chất&nbsp;liệu:</span></span></span></strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">&nbsp;Kim loại</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 16:05:37', '2020-08-27 16:05:37', 1),
(257, 'MÓC KHÓA POP FLASH', 2, 3, 60000, 'images/product/257/1598519192_avatar_1.jpg', 0, 130, '<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ K&iacute;ch thước:</span></span></span></strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">&nbsp;4cm</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ Chất liệu:&nbsp;</span></span></span></strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">nhựa cao cấp</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 16:06:32', '2020-08-27 16:06:32', 1),
(258, 'MÓC KHÓA POP SUPERMAN', 2, 3, 120000, 'images/product/258/1598519223_avatar_1.jpg', 2, 122, '<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ K&iacute;ch thước:</span></span></span></strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">&nbsp;4cm</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ Chất liệu:&nbsp;</span></span></span></strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">nhựa cao cấp</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 16:07:03', '2020-08-27 16:07:03', 1),
(259, 'MÓC KHÓA XE BATTUMBLER', 2, 3, 160000, 'images/product/259/1598519249_avatar_1.jpg', 3, 112, '<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ K&iacute;ch thước:</span></span></span></strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">&nbsp;5x3cm</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">+ Chất liệu:</span></span></span></strong><span style=\"font-size:11.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">&nbsp;Kim loại</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 16:07:29', '2020-08-27 16:07:29', 1),
(260, '3AThreeZero Optimus Prime DLX Scale', 3, 1, 2600000, 'images/product/260/1598519307_avatar_1.jpg', 15, 136, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-size:10.5pt\"><span style=\"color:#1d2129\">3A đ&atilde; đổi t&ecirc;n th&agrave;nh ThreeZero v&agrave; vẫn giữ linh hồn v&agrave; chất lượng kh&aacute;c biệt với phần c&ograve;n lại của thị trường.</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-size:10.5pt\"><span style=\"color:#1d2129\">- Chất liệu: ABS &amp; 50% chi tiết kim loại die-cast<br />\r\n- Chiều cao: 28.5 CM<br />\r\n- LED mắt, phụ kiện gồm tay thay thế, r&igrave;u, s&uacute;ng.</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-size:10.5pt\"><span style=\"color:#1c1e21\">C&aacute;c sản phẩm cao cấp của 3A &amp; ThreeZero l&agrave;m s&aacute;t phim với kết cấu khớp v&agrave; tạo h&igrave;nh phức tạp n&ecirc;n kh&ocirc;ng transform được.</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 16:08:26', '2020-08-27 16:08:26', 1),
(261, 'AOYI MECH LS-11 Scorn', 3, 1, 4000000, 'images/product/261/1598519333_avatar_1.jpg', 12, 132, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">LS-11 Scorn l&agrave; dinobot thứ 2 sau LS-05 Grimlock, vẫn phong c&aacute;ch tạo h&igrave;nh khủng long biến h&igrave;nh c&ugrave;ng k&iacute;ch thước đồ sộ c&ograve;n hơn cả Grimlock v&agrave; so&aacute;n ng&ocirc;i khổng lồ của Grimlock.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">K&iacute;ch thước: Cao 38CM khi ở dạng robot, dạng khủng long d&agrave;i 70CM.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">Chất liệu: ABS &amp; kim loại die-cast.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 16:08:53', '2020-08-27 16:08:53', 1),
(262, 'AOYI MECH LS-12 Megatron', 3, 1, 3900000, 'images/product/262/1598519363_avatar_1.jpg', 12, 132, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">Mẫu mới nhất của Megatron theo tạo h&igrave;nh MPM08, với k&iacute;ch thước vượt trội v&agrave; nước sơm kim loại b&oacute;ng bảy, LS12 đ&aacute;nh bại ho&agrave;n to&agrave;n c&aacute;c đối thủ KO kh&aacute;c c&ugrave;ng thiết kế.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">- Chiều cao: 37CM</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">- Chất liệu: Nhựa ABS + Kim loại die-cast.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">Mua h&agrave;ng tại TOYz - đại l&yacute; ch&iacute;nh thức của AOYI MECH bạn sẽ nhận được những dịch vụ tốt nhất:</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">- C&oacute; h&agrave;ng sớm nhất.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">- Chế độ đổi trả bảo h&agrave;nh h&agrave;ng lỗi tốt nhất, 1 đổi 1 ngay nếu lỗi do nh&agrave; m&aacute;y.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 16:09:22', '2020-08-27 16:09:22', 1),
(263, 'AOYI MECH LS-14 Optimus Prime Jetfire', 3, 1, 5300000, 'images/product/263/1598519396_avatar_1.jpg', 11, 132, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">Optimus Prime c&oacute; thể gh&eacute;p combo với LS-15 Jetfire như h&igrave;nh, l&agrave; bộ combo với gi&aacute; cực kỳ hợp l&yacute;</span></span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\"><span style=\"background-color:white\">- K&iacute;ch thước: 25 CM</span><br />\r\n<span style=\"background-color:white\">- Chất liệu: ABS &amp; Kim loại die-cast</span><br />\r\n<span style=\"background-color:white\">- Phụ kiện: S&uacute;ng &amp; khi&ecirc;n</span></span></span></span></span></span></p>\r\n', '2020-08-27 16:09:56', '2020-08-27 16:09:56', 1);
INSERT INTO `tbl_product` (`id_product`, `name_product`, `id_brand`, `id_type`, `price`, `img`, `discount`, `quantity`, `description`, `created`, `date_update`, `stt`) VALUES
(264, 'AOYI MECH LS-18 Jazz', 3, 1, 2000000, 'images/product/264/1598519430_avatar_1.jpg', 9, 121, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Helvetica&quot;,sans-serif\"><span style=\"color:#1c1e21\">LS-18 Jazz&nbsp;cực đẹp trai m&agrave; chết cực bi tr&aacute;ng, bị LS-12 Megatron&nbsp;t&uacute;m l&ecirc;n n&oacute;c nh&agrave;, dẫm đạp rồi x&eacute; l&agrave;m đ&ocirc;i, chiến binh hi sinh quả cảm.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Helvetica&quot;,sans-serif\"><span style=\"color:#1c1e21\">AOYI MECH chơi quả combo qu&aacute; hiểu l&ograve;ng fan, ra th&ecirc;m em Jazz c&oacute; c&aacute;i bụng too&aacute;c để combo với LS-12 t&aacute;i hiện shot kinh điển trong phần 1&nbsp;</span></span></span><span style=\"font-family:&quot;Segoe UI Symbol&quot;,sans-serif\"><span style=\"color:#1c1e21\">?</span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Helvetica&quot;,sans-serif\"><span style=\"color:#1c1e21\">- Chiều cao: 18 CM - Chất liệu ABS &amp; kim loại die-cast</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 16:10:30', '2020-08-27 16:10:30', 1),
(265, 'AOYI MECH SS22 KO - Dropkick H6001-4', 3, 1, 4100000, 'images/product/265/1598519528_avatar_1.jpg', 19, 132, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"color:#7b858a\">Được l&agrave;m lại từ bản SS22 với 1 số cải tiến, rất dễ lắp r&aacute;p từ robot sang trực thăng.</span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"color:#7b858a\"><span style=\"background-color:white\">- Cao: 22 CM dạng robot &amp; d&agrave;i 25 CM dạng trực thăng</span><br />\r\n<span style=\"background-color:white\">- Chất liệu: ABS &amp; kim loại die-cast</span></span></span></span></span></p>\r\n', '2020-08-27 16:10:57', '2020-08-27 16:10:57', 1),
(266, 'BMB LS-01 Nitro Zeus', 3, 1, 5100000, 'images/product/266/1598519587_avatar_1.jpg', 5, 128, '<p><iframe class=\"col-md-12 col-xs-12\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/9GqTO2ac7sU?start=9\" width=\"560\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-size:10.5pt\"><span style=\"color:#7b858a\">D&ugrave; mới xuất hiện trong phần 5 nhưng với tạo h&igrave;nh độc đ&aacute;o kh&ocirc;ng giống ai cộng t&iacute;nh c&aacute;ch hầm hố, Nitro Zeus l&agrave; Deception độc đ&aacute;o nhất về phần nh&igrave;n.</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-size:10.5pt\"><span style=\"color:#7b858a\">H&atilde;ng BMB t&aacute;i hiện lại được phần lớn những chi tiết m&aacute;y m&oacute;c c&ugrave;ng m&agrave;u sơn b&oacute;ng bẩy rất đ&atilde; mắt. Nitro Zeus từng l&agrave;m mưa l&agrave;m gi&oacute; ng&agrave;y mới ra mắt v&agrave; đưa t&ecirc;n tuổi BMB l&ecirc;n tầm mới.</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-size:10.5pt\"><span style=\"color:#7b858a\">Chiều cao: 27cm.</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-size:10.5pt\"><span style=\"color:#7b858a\">Chất liệu: Nhựa ABS cao cấp + chi tiết kim loại diecast</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 16:13:07', '2020-08-27 16:13:07', 1),
(267, 'BMB LS-01S Nitro Zeus', 3, 1, 3200000, 'images/product/267/1598519623_avatar_1.jpg', 21, 123, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">D&ugrave; mới xuất hiện trong phần 5 nhưng với tạo h&igrave;nh độc đ&aacute;o kh&ocirc;ng giống ai cộng t&iacute;nh c&aacute;ch hầm hố, Nitro Zeus l&agrave; Deception độc đ&aacute;o nhất về phần nh&igrave;n.&nbsp;</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">Phi&ecirc;n bản LS01S l&agrave; bản n&acirc;ng cấp của LS01 với m&agrave;u sơn sẫm m&agrave;u hơn v&agrave; th&ecirc;m họa tiết Decepticon giống phim rất đẹp.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">Chiều cao: 27cm.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">Chất liệu: Nhựa ABS cao cấp + chi tiết kim loại diecast</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 16:13:43', '2020-08-27 16:13:43', 1),
(268, 'BMB LS-02 Barricade', 3, 1, 290000, 'images/product/268/1598519668_avatar_1.jpg', 0, 112, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">M&ocirc; h&igrave;nh Barricade cao 17CM transform th&agrave;nh dạng xe cảnh s&aacute;t.</span></span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\"><span style=\"background-color:white\">Chất liệu: Nhựa ABS cao cấp &amp; chi tiết kim loại</span><br />\r\n<span style=\"background-color:white\">Nước sơn rất b&oacute;ng đẹp,khớp thiết kế độc đ&aacute;o.</span></span></span></span></span></span></p>\r\n', '2020-08-27 16:14:27', '2020-08-27 16:14:27', 1),
(269, 'BMB LS-03 - Optimus Prime Oversize', 3, 1, 6000000, 'images/product/269/1598519702_avatar_1.jpg', 10, 119, '<p><iframe class=\"col-md-12 col-xs-12\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/Ug_lz7KQtmk?start=9\" width=\"560\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"color:#1c1e21\">Black Mamba LS-03 Optimus Prime cao 32 cm l&agrave; phi&ecirc;n bản r&uacute;t gọn của LS03F với nước sơn s&aacute;ng m&agrave;u hơn v&agrave; thiết kế bụng nguy&ecirc;n bản.</span></span></span><br />\r\n<br />\r\n<span style=\"font-size:10.5pt\"><span style=\"color:#1c1e21\"><span style=\"background-color:white\">Chất liệu nhựa ABS cao cấp c&ugrave;ng nhiều chi tiết die-cast kim loại, m&agrave;u sơn đẹp v&agrave; b&oacute;ng bẩy</span><br />\r\n<br />\r\n<span style=\"background-color:white\">Phụ kiện đi k&egrave;m gồm gươm, m&oacute;c c&acirc;u, r&igrave;u v&agrave; s&uacute;ng.</span></span></span></span></span></p>\r\n', '2020-08-27 16:15:02', '2020-08-27 16:15:02', 1),
(270, 'BMB LS-04 Starscream', 3, 1, 3000000, 'images/product/270/1598519729_avatar_1.jpg', 0, 123, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">Starscream, 1 trong số hiếm những Deception xuất hiện trong hầu hết d&ograve;ng phim Transformer, độ nổi tiếng th&igrave; khỏi phải b&agrave;n c&atilde;i. Transform th&agrave;nh dạng m&aacute;y bay phản lực F-22 Raptor.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">Với mức gi&aacute; v&ocirc; c&ugrave;ng tốt tại thời điểm hiện tại, so với mức độ ho&agrave;n thiện v&agrave; chi tiết cực kỳ chi tiết, Starscream xứng đ&aacute;ng c&oacute; trong bộ sưu tập của bất kỳ fan Transformer n&agrave;o.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">Chất liệu: nhựa ABS cao cấp + chi tiết kim loại diecast</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">Chiều cao: 27cm</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 16:15:29', '2020-08-27 16:15:29', 1),
(271, 'BMB LS-04S Starscream', 3, 1, 3200000, 'images/product/271/1598519759_avatar_1.jpg', 10, 123, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">Starscream, 1 trong số hiếm những Deception xuất hiện trong hầu hết d&ograve;ng phim Transformer, độ nổi tiếng th&igrave; khỏi phải b&agrave;n c&atilde;i. Transform th&agrave;nh dạng m&aacute;y bay phản lực F-22 Raptor.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">Với mức gi&aacute; v&ocirc; c&ugrave;ng tốt tại thời điểm hiện tại, so với mức độ ho&agrave;n thiện v&agrave; chi tiết cực kỳ chi tiết, Starscream xứng đ&aacute;ng c&oacute; trong bộ sưu tập của bất kỳ fan Transformer n&agrave;o.&nbsp;</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">LS-04S l&agrave; bản n&acirc;ng cấp của LS-04 với họa tiết Decepticon rất đẹp.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">Chất liệu: nhựa ABS cao cấp + chi tiết kim loại diecast</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">Chiều cao: 27cm</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 16:15:59', '2020-08-27 16:15:59', 1),
(272, 'BMB LS-05 Grimlock Oversize', 3, 1, 4100000, 'images/product/272/1598519841_avatar_1.jpg', 12, 143, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"color:#7b858a\">LS05 cao 38 cm dạng robot, dạng khủng long to hơn rất nhiều, lu&ocirc;n nằm trong top 3 mẫu transformer b&aacute;n chạy nhất, tặng k&egrave;m 1 optimus prime mini cưỡi lưng</span></span></span><br />\r\n<br />\r\n<span style=\"font-size:10.5pt\"><span style=\"color:#7b858a\"><span style=\"background-color:white\">Thuộc h&agrave;ng kinh điển về tạo h&igrave;nh, k&iacute;ch thước ở cả dạng robot v&agrave; khủng long đều to vượt trội.&nbsp;</span><br />\r\n<br />\r\n<span style=\"background-color:white\">C&oacute; LED ở mắt s&aacute;ng đỏ rực.</span></span></span></span></span></p>\r\n', '2020-08-27 16:16:25', '2020-08-27 16:16:25', 1),
(273, 'BMB LS-07 Bumble Bee', 3, 3, 3200000, 'images/product/273/1598519885_avatar_1.jpg', 9, 120, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">Nhỏ m&agrave; c&oacute; v&otilde;. Kim loại đầy m&igrave;nh, cầm nặng trịch. Khớp nẩy t&agrave;nh tạch. s&uacute;ng ống, mặt nạ chiến đấu đầy đủ, m&agrave;u sơn cực đẹp, mẫu phải c&oacute; của bất kỳ fan Bumble Bee n&agrave;o.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">Khả năng transform th&agrave;nh dạng xe cũng mượt m&agrave;. Ng&oacute;n tay cử động linh hoạt.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">Chiều cao: 17CM</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">Chất liệu: Nhựa ABS cao cấp &amp; nhiều kim loại Die-cast</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 16:18:04', '2020-08-27 16:18:04', 1),
(274, 'BMB LS09 - IRON HIDE', 3, 1, 2900000, 'images/product/274/1598519911_avatar_1.jpg', 0, 123, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">BMB LS09 - Iron Hide, mẫu Transformer được sự đ&oacute;n đợi v&agrave; mong chờ rất lớn, trong phim Iron Hide lu&ocirc;n s&aacute;t c&aacute;nh c&ugrave;ng Bumble Bee chiến đấu cạnh Optimus Prime xuy&ecirc;n suốt c&aacute;c phần phim. Cảnh Iron Hide bị Sentinel Prime bắn chết từ sau lưng l&agrave; khoảnh khắp l&agrave;m fan buồn cực độ.&nbsp;</span></span></span></span><br />\r\n<br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\"><span style=\"background-color:white\">1. Chiều cao dạng Robot: 25cm, sơn v&agrave; decal rất chi tiết.</span><br />\r\n<span style=\"background-color:white\">2. N&acirc;ng cấp: Vai cử động linh hoạt, b&agrave;n ch&acirc;n c&oacute; thể gập v&agrave; transform.</span><br />\r\n<span style=\"background-color:white\">3. Đầu v&agrave; vũ khĩ đều c&oacute; LED s&aacute;ng rực.</span><br />\r\n<span style=\"background-color:white\">4. Vật liệu nhựa ABS cao cấp rất chắc chắn c&ugrave;ng c&aacute;c chi tiết kim loại Die-cast.</span></span></span></span></span></span></p>\r\n', '2020-08-27 16:18:31', '2020-08-27 16:18:31', 1),
(275, 'BMB LS10 - Storm Pioneer', 3, 1, 4100000, 'images/product/275/1598519944_avatar_1.jpg', 10, 161, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-size:10.5pt\"><span style=\"color:#1c1e21\">Đ&acirc;y l&agrave; mẫu Transformer mới nhất của BMB tạo h&igrave;nh theo Transformer Brawl. Anh em đam m&ecirc; tank &amp; qu&acirc;n sự sẽ đặc biệt th&iacute;ch mẫu n&agrave;y.</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"color:#7b858a\">✔</span><span style=\"color:#7b858a\">️</span><span style=\"font-size:10.5pt\"><span style=\"color:#7b858a\">&nbsp;Th&ocirc;ng số:<br />\r\nChiều cao: 27.5cm.<br />\r\nChất liệu: Nhựa ABS cao cấp + chi tiết die-cast kim loại.<br />\r\nLS-10 đi k&egrave;m nhiều option vũ kh&iacute;, vẫn truyền thống led s&aacute;ng trưng ở mắt v&agrave; đặc biệt 2 khẩu ph&aacute;o khi ở dạng xe tanks c&oacute; thể xoay 360 độ.</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 16:19:04', '2020-08-27 16:19:04', 1),
(276, 'Bumblebee Comicave kim loại', 3, 1, 5000000, 'images/product/276/1598520042_avatar_1.jpg', 10, 118, '<p>&nbsp;</p>\r\n\r\n<p><iframe class=\"col-md-12 col-xs-12 col-sm-12\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/wLOgaVVqZMc?start=14\" width=\"560\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><strong><span style=\"font-size:10.5pt\"><span style=\"color:#1d2129\">Pre-Order Bumblebee Comicave 80% kim loại gi&aacute; hạt rẻ</span></span></strong></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-size:10.5pt\"><span style=\"color:#1d2129\">Tạo h&igrave;nh theo phần phim Age of Extinction tiếp nối Optimus Prime. H&atilde;ng Comicave nổi tiếng với việc sản xuất c&aacute;c mẫu nhiều kim loại c&oacute; bản quyền m&agrave; gi&aacute; hợp l&yacute;, em n&agrave;y nh&aacute; h&agrave;ng l&acirc;u rồi nhưng giờ c&oacute; lịch ph&aacute;t h&agrave;nh shop mới đăng PO.</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-size:10.5pt\"><span style=\"color:#1d2129\">- Chiều cao: 35 CM ( h&atilde;ng c&ocirc;ng bố )<br />\r\n- Hơn 60 khớp, 2 phi&ecirc;n bản đầu c&oacute; v&agrave; kh&ocirc;ng c&oacute; mặt nạ, LED ở mắt.<br />\r\n- Phụ kiện: S&uacute;ng laser th&aacute;o được.<br />\r\n- Thời gian ph&aacute;t h&agrave;nh dự kiến: Cuối T6/2020.</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 16:20:42', '2020-08-27 16:20:42', 1),
(277, 'Bumblebee VW Beetle', 3, 1, 2800000, 'images/product/277/1598520079_avatar_1.png', 7, 132, '<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">Mẫu Bumblebee đỉnh nhất trong tầm gi&aacute;, sơn đẹp như h&agrave;ng cao cấp 3A/Three Zero, bạt ng&agrave;n phụ kiện v&agrave; trang bị tận 7 đ&egrave;n LED ở mắt, đ&egrave;n trước sau dạng oto, đ&egrave;n s&uacute;ng.&nbsp;<br />\r\n<br />\r\nĐặc biệt l&agrave; khả năng trans sang dạng xe &ocirc; t&ocirc; Beetle.</span></span></span></span></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#777777\">K&iacute;ch thước: ~20cm, chất liệu nhựa ABS + die-cast kim loại.</span></span></span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#777777\">Phụ kiện: 1 s&uacute;ng c&oacute; LED, 2 kiếm, 1 b&uacute;a</span></span></span></span></span></span></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 16:21:19', '2020-08-27 16:21:19', 1),
(278, 'COMBO LS-14 + LS-15', 3, 1, 5100000, 'images/product/278/1598520112_avatar_1.jpg', 10, 123, '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">Combo 2 mẫu LS-14 &amp; LS-15<br />\r\n<br />\r\n- LS-14 Optimus Prime - cao 25CM, phụ kiện s&uacute;ng, khi&ecirc;n.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">- LS-15 Jetfire - cao 33CM, LED mắt s&aacute;ng rực, dạng phi thuyền si&ecirc;u d&agrave;i: 52CM</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 16:21:52', '2020-08-27 16:21:52', 1),
(279, 'LTS-LT03C - Bumblebee', 3, 1, 3200000, 'images/product/279/1598520143_avatar_1.jpg', 12, 145, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\">Đ&uacute;ng như t&ecirc;n gọi, si&ecirc;u phẩm trong tầm gi&aacute; tới từ h&atilde;ng Legendary Toys. Chất lượng ho&agrave;n thiện của LT lu&ocirc;n được đ&aacute;nh gi&aacute; cao v&agrave; nước sơn được chăm ch&uacute;t tỉ mỉ.</span></span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#7b858a\"><span style=\"background-color:white\">- Chiều cao: 18 CM</span><br />\r\n<span style=\"background-color:white\">- Transform được th&agrave;nh xe Camaro</span><br />\r\n<span style=\"background-color:white\">- Chất liệu: ABS &amp; Die-cast kim loại</span><br />\r\n<span style=\"background-color:white\">- Phụ kiện: B&uacute;a + s&uacute;ng.</span></span></span></span></span></span></p>\r\n', '2020-08-27 16:22:23', '2020-08-27 16:22:23', 1),
(280, 'WJ - BlackoutHide Shadow', 3, 1, 3800000, 'images/product/280/1598520173_avatar_1.jpeg', 0, 101, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Helvetica&quot;,sans-serif\"><span style=\"color:#1d2129\">M&ocirc; h&igrave;nh Hide Shadow KO aka Blackout Set B, l&agrave; Decepticon xuất hiện đầu ti&ecirc;n trong phần 1 Transformers, Blackout dọn sạch cả căn cứ kh&ocirc;ng qu&acirc;n của l&iacute;nh Mỹ v&agrave; su&yacute;t đ&aacute;nh l&eacute;n th&agrave;nh c&ocirc;ng Optimus Prime.<br />\r\n<br />\r\n- Chất liệu nhựa ABS cao cấp + die cast kim loại<br />\r\n- K&iacute;ch thước dạng robot: cao 32 cm<br />\r\n- K&iacute;ch thước dạng trực thăng: D&agrave;i 65 cm, cao 17 cm<br />\r\n<br />\r\nSet B l&agrave; phi&ecirc;n bản đầy đủ gồm ốp bụng trực thăng v&agrave; san b&agrave;n + bọ cạp sơn rất đẹp.</span></span></span></span></span></p>\r\n', '2020-08-27 16:22:53', '2020-08-27 16:22:53', 1),
(281, 'WJ - Bumble Bee Oversize', 3, 1, 3600000, 'images/product/281/1598520202_avatar_1.jpg', 13, 100, '<p>&nbsp;</p>\r\n\r\n<p><iframe class=\"col-md-12 col-xs-12\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/FPPW2-5qoJU?start=6\" width=\"560\"></iframe></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-size:10.5pt\"><span style=\"color:#1c1e21\">B&eacute; BumbleBee 28 CM kh&ocirc;ng mới m&agrave; cũng chưa bao giờ cũ. L&agrave; mẫu Bee đẹp nhất trong tầm gi&aacute;, hiện h&atilde;ng WJ đ&atilde; đ&oacute;ng cửa n&ecirc;n c&aacute;c mẫu n&agrave;y đang dần trở th&agrave;nh h&agrave;ng limited, shop về th&ecirc;m được 1 &iacute;t đợt n&agrave;y.</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-size:10.5pt\"><span style=\"color:#1c1e21\">- K&iacute;ch thước: Cao 28CM dạng robot &amp; d&agrave;i 27CM dạng xe<br />\r\n- Chất liệu: ABS &amp; kim loại die-cast ( kh&aacute; nhiều kim loại )</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-08-27 16:23:22', '2020-08-27 16:23:22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review`
--

CREATE TABLE `tbl_review` (
  `id_review` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `star` tinyint(1) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_review`
--

INSERT INTO `tbl_review` (`id_review`, `id_user`, `id_product`, `star`, `created`) VALUES
(5, 42, 243, 3, '2020-08-30 22:18:21'),
(11, 42, 226, 4, '2020-09-03 19:51:08'),
(16, 42, 227, 2, '2020-09-04 18:43:09'),
(31, 42, 191, 5, '2020-09-18 16:27:06'),
(32, 42, 192, 5, '2020-09-18 16:27:11'),
(33, 42, 266, 5, '2020-09-18 16:27:21'),
(34, 42, 269, 5, '2020-09-18 16:27:26'),
(35, 42, 276, 5, '2020-09-18 16:27:33'),
(36, 42, 281, 5, '2020-09-18 16:27:39'),
(37, 42, 231, 1, '2020-09-18 16:28:11'),
(38, 42, 229, 2, '2020-09-18 16:28:21'),
(39, 42, 259, 3, '2020-09-18 16:28:26'),
(40, 42, 256, 4, '2020-09-18 16:28:30'),
(41, 42, 237, 5, '2020-09-18 16:29:29'),
(42, 42, 260, 5, '2020-09-18 16:29:51'),
(43, 42, 268, 5, '2020-09-18 16:30:04'),
(44, 120, 192, 5, '2020-09-18 18:00:30'),
(45, 42, 190, 1, '2020-09-18 22:29:06'),
(46, 122, 276, 5, '2020-09-18 23:55:49'),
(47, 122, 266, 5, '2020-09-18 23:55:56'),
(48, 122, 269, 5, '2020-09-18 23:56:16'),
(49, 122, 191, 5, '2020-09-18 23:56:21'),
(50, 122, 196, 3, '2020-09-18 23:56:49'),
(51, 122, 281, 5, '2020-09-19 01:37:16'),
(52, 115, 266, 5, '2020-09-19 10:56:33'),
(53, 114, 192, 5, '2020-09-22 20:21:17'),
(54, 115, 191, 5, '2020-09-23 13:53:05'),
(57, 114, 189, 1, '2020-09-23 14:52:30'),
(58, 114, 281, 5, '2020-09-23 14:53:07'),
(59, 114, 269, 5, '2020-09-23 14:53:55'),
(60, 114, 273, 5, '2020-09-23 14:55:25'),
(61, 114, 231, 4, '2020-09-23 15:24:42'),
(62, 114, 260, 5, '2020-09-23 17:49:40'),
(63, 114, 237, 5, '2020-09-23 17:50:06'),
(64, 115, 192, 5, '2020-09-24 10:12:54'),
(65, 115, 206, 5, '2020-09-24 10:30:12'),
(66, 115, 260, 5, '2020-09-24 10:30:42'),
(67, 115, 280, 5, '2020-09-24 10:41:47'),
(68, 115, 230, 5, '2020-09-24 10:42:30'),
(69, 115, 253, 5, '2020-09-24 10:42:57'),
(70, 115, 235, 5, '2020-09-24 10:43:09'),
(71, 115, 189, 5, '2020-09-24 10:43:53'),
(72, 115, 213, 5, '2020-09-24 10:44:13'),
(73, 115, 209, 5, '2020-09-24 10:44:41'),
(74, 115, 224, 5, '2020-09-24 10:47:02'),
(75, 115, 232, 5, '2020-09-24 10:47:42'),
(77, 115, 255, 5, '2020-09-24 10:48:13'),
(78, 42, 230, 1, '2020-09-24 10:52:31'),
(79, 42, 238, 2, '2020-09-24 10:53:02'),
(80, 115, 194, 5, '2020-09-24 10:53:26'),
(81, 115, 226, 5, '2020-09-24 14:08:34'),
(82, 115, 223, 5, '2020-09-24 14:11:47'),
(83, 108, 191, 5, '2020-09-24 14:13:28'),
(84, 108, 211, 5, '2020-09-24 14:13:51'),
(86, 108, 221, 5, '2020-09-24 14:15:27'),
(87, 108, 219, 5, '2020-09-24 14:16:31'),
(89, 108, 207, 5, '2020-09-24 14:16:48'),
(90, 42, 219, 3, '2020-09-24 14:17:15'),
(91, 108, 225, 5, '2020-09-24 14:17:15'),
(92, 108, 231, 5, '2020-09-24 14:17:41'),
(93, 42, 189, 1, '2020-09-24 14:45:20'),
(94, 42, 235, 4, '2020-09-24 14:48:17'),
(95, 42, 254, 3, '2020-09-24 14:48:45'),
(96, 42, 236, 1, '2020-09-24 14:51:09'),
(97, 42, 239, 3, '2020-09-24 14:52:32'),
(98, 42, 233, 3, '2020-09-24 14:53:12'),
(101, 108, 210, 5, '2020-09-24 15:01:39'),
(103, 108, 227, 5, '2020-09-24 15:02:04'),
(104, 108, 202, 5, '2020-09-24 15:02:23'),
(105, 108, 212, 5, '2020-09-24 15:03:06'),
(108, 114, 228, 5, '2020-09-24 15:05:18'),
(111, 114, 236, 3, '2020-09-24 15:07:03'),
(112, 114, 205, 5, '2020-09-24 15:07:26'),
(113, 114, 263, 5, '2020-09-24 15:07:51'),
(114, 114, 279, 5, '2020-09-24 15:08:19'),
(115, 115, 204, 5, '2020-09-24 15:08:43'),
(116, 114, 235, 3, '2020-09-24 15:08:44'),
(118, 114, 193, 2, '2020-09-24 15:18:40'),
(119, 114, 230, 3, '2020-09-24 15:18:54'),
(120, 114, 229, 3, '2020-09-24 15:22:37'),
(121, 114, 232, 3, '2020-09-24 15:23:34'),
(122, 114, 266, 2, '2020-09-24 15:24:10'),
(123, 125, 260, 5, '2020-09-24 15:26:15'),
(124, 125, 266, 5, '2020-09-24 15:26:27'),
(125, 125, 269, 5, '2020-09-24 15:26:56'),
(126, 125, 281, 5, '2020-09-24 15:27:18'),
(127, 115, 259, 1, '2020-09-25 15:34:00'),
(128, 115, 257, 5, '2020-09-25 15:34:30'),
(129, 115, 236, 1, '2020-09-25 15:34:37'),
(130, 115, 258, 1, '2020-09-25 15:36:57'),
(131, 115, 256, 2, '2020-09-26 15:56:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_type`
--

CREATE TABLE `tbl_type` (
  `id_type` int(11) NOT NULL,
  `name_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stt` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_type`
--

INSERT INTO `tbl_type` (`id_type`, `name_type`, `description`, `created`, `stt`) VALUES
(1, 'Mô hình', 'Mô hình đồ chơi,tượng,...', '2020-07-18 16:44:07', 1),
(2, 'Đồ chơi công nghệ', 'Đồ chơi công nghệ, điện tử,...', '2020-08-16 21:46:56', 1),
(3, 'Phụ kiện', 'Phụ kiện theo chủ đề', '2020-08-16 21:46:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `id_fb` bigint(50) DEFAULT NULL,
  `name_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pass` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt_user` tinyint(4) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `id_fb`, `name_user`, `phone`, `email`, `pass`, `address`, `stt_user`, `created`, `last_update`) VALUES
(42, NULL, 'Hoàng Lâm', '0398762441', 'hiimlamxung@gmail.com', '6fd742a61bd034804c00c49b18045020', 'Thượng Thanh, Long Biên, Hà Nội', 1, '2020-08-30 15:16:37', '2020-09-26 14:26:52'),
(94, NULL, 'Hoàng Kiều Linh', '0372663222', 'kieulinh@gmail.com', '6fd742a61bd034804c00c49b18045020', 'HN', 1, '2020-09-07 23:29:45', '2020-09-07 23:29:45'),
(108, NULL, 'ngocduc', '0398992003', 'ngocduc022497@gmail.com', '6fd742a61bd034804c00c49b18045020', 'HN', 1, '2020-09-10 21:03:37', '2020-09-10 21:03:37'),
(111, NULL, 'Trần Bảo Ngọc', '0398222222', 'baongoc@gmail.com', '6fd742a61bd034804c00c49b18045020', 'hn', 1, '2020-09-11 15:32:52', '2020-09-11 15:49:47'),
(114, NULL, 'Hoàng', '0398222221', 'hoang@gmail.com', '6fd742a61bd034804c00c49b18045020', 'hn', 1, '2020-09-11 20:33:50', '2020-09-11 20:33:50'),
(115, NULL, 'Đức Phạm', '0357545556', 'ngocduc24021997@gmail.com', '296506902c693b458707ad6f7e24a544', 'Ngọc Thụy', 1, '2020-09-17 14:48:01', '2020-09-17 15:33:59'),
(120, 975569022856848, 'Lâm Hoàng', '0398762411', 'lamxx@gmail.com', '4b402190645d684f7bb02187e564f9e4', 'HN', 1, '2020-09-18 17:53:27', '2020-09-18 17:54:17'),
(122, NULL, 'Bùi Quang Tùng', '0302320012', 'buitung22@gmail.com', '6fd742a61bd034804c00c49b18045020', 'Bắc Ninh', 1, '2020-09-18 22:46:51', '2020-09-18 22:46:51'),
(123, NULL, 'Trần Tuân', '0309203243', 'tuan@gmail.com', '296506902c693b458707ad6f7e24a544', 'Hàng Bài', 1, '2020-09-21 21:48:05', '2020-09-21 21:48:05'),
(125, NULL, 'Ly Ly KLy', '0302223003', 'lyly@gmail.com', '6fd742a61bd034804c00c49b18045020', 'hn', 1, '2020-09-24 15:25:52', '2020-09-26 16:21:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_verification`
--

CREATE TABLE `tbl_verification` (
  `id` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `verification_code` text COLLATE utf8_unicode_ci NOT NULL,
  `last_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_voucher_order`
--

CREATE TABLE `tbl_voucher_order` (
  `id_voucher` int(11) NOT NULL,
  `code_voucher` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `apply_for` float NOT NULL,
  `time_apply` tinyint(4) NOT NULL,
  `discount` tinyint(4) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_voucher_order`
--

INSERT INTO `tbl_voucher_order` (`id_voucher`, `code_voucher`, `apply_for`, `time_apply`, `discount`, `created`) VALUES
(12, 'NOEL2022', 1000000, 5, 23, '2020-09-10 03:21:12'),
(13, 'GTRK56K', 1000000, 30, 20, '2020-09-19 00:00:34'),
(14, 'NOEL2020', 1000000, 30, 15, '2020-09-23 15:43:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD KEY `stt_admin` (`stt_admin`);

--
-- Indexes for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`id_brand`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id_contact`);

--
-- Indexes for table `tbl_data_user`
--
ALTER TABLE `tbl_data_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tbl_detail_image`
--
ALTER TABLE `tbl_detail_image`
  ADD PRIMARY KEY (`id_upload`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `tbl_detail_stt_admin`
--
ALTER TABLE `tbl_detail_stt_admin`
  ADD PRIMARY KEY (`id_stt`);

--
-- Indexes for table `tbl_detail_stt_order`
--
ALTER TABLE `tbl_detail_stt_order`
  ADD PRIMARY KEY (`id_stt`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`id_news`);

--
-- Indexes for table `tbl_noti_order`
--
ALTER TABLE `tbl_noti_order`
  ADD PRIMARY KEY (`id_noti`),
  ADD KEY `id_order` (`id_order`);

--
-- Indexes for table `tbl_noti_product`
--
ALTER TABLE `tbl_noti_product`
  ADD PRIMARY KEY (`id_noti`),
  ADD KEY `fk_tbl_id_product_tbl_noti_product_tbl_product` (`id_product`);

--
-- Indexes for table `tbl_noti_user`
--
ALTER TABLE `tbl_noti_user`
  ADD PRIMARY KEY (`id_noti`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `stt` (`stt`),
  ADD KEY `id_payment` (`id_payment`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id_payment`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_brand` (`id_brand`) USING BTREE,
  ADD KEY `id_type` (`id_type`);

--
-- Indexes for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD PRIMARY KEY (`id_review`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `tbl_type`
--
ALTER TABLE `tbl_type`
  ADD PRIMARY KEY (`id_type`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `id_fb` (`id_fb`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD KEY `stt_user` (`stt_user`);

--
-- Indexes for table `tbl_verification`
--
ALTER TABLE `tbl_verification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `tbl_voucher_order`
--
ALTER TABLE `tbl_voucher_order`
  ADD PRIMARY KEY (`id_voucher`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `id_brand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_detail_image`
--
ALTER TABLE `tbl_detail_image`
  MODIFY `id_upload` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=670;

--
-- AUTO_INCREMENT for table `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `tbl_detail_stt_admin`
--
ALTER TABLE `tbl_detail_stt_admin`
  MODIFY `id_stt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_detail_stt_order`
--
ALTER TABLE `tbl_detail_stt_order`
  MODIFY `id_stt` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `id_news` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_noti_order`
--
ALTER TABLE `tbl_noti_order`
  MODIFY `id_noti` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `tbl_noti_product`
--
ALTER TABLE `tbl_noti_product`
  MODIFY `id_noti` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `tbl_noti_user`
--
ALTER TABLE `tbl_noti_user`
  MODIFY `id_noti` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id_payment` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;

--
-- AUTO_INCREMENT for table `tbl_review`
--
ALTER TABLE `tbl_review`
  MODIFY `id_review` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `tbl_type`
--
ALTER TABLE `tbl_type`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `tbl_verification`
--
ALTER TABLE `tbl_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_voucher_order`
--
ALTER TABLE `tbl_voucher_order`
  MODIFY `id_voucher` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD CONSTRAINT `fk_stt_admin_tbl_admin_id_stt_tbl_detail_stt_admin` FOREIGN KEY (`stt_admin`) REFERENCES `tbl_detail_stt_admin` (`id_stt`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tbl_data_user`
--
ALTER TABLE `tbl_data_user`
  ADD CONSTRAINT `fk_id_user_tbl_data_user_tbl_user` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_detail_image`
--
ALTER TABLE `tbl_detail_image`
  ADD CONSTRAINT `fk_id_product_tbl_detail_image_tbl_product` FOREIGN KEY (`id_product`) REFERENCES `tbl_product` (`id_product`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  ADD CONSTRAINT `fk_id_order_tbl_detail_order_id_order_tbl_order` FOREIGN KEY (`id_order`) REFERENCES `tbl_order` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_product_tbl_detail_order_id_product_tbl_product` FOREIGN KEY (`id_product`) REFERENCES `tbl_product` (`id_product`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_noti_order`
--
ALTER TABLE `tbl_noti_order`
  ADD CONSTRAINT `fk_id_order_tbl_noti_order_id_order_tbl_order` FOREIGN KEY (`id_order`) REFERENCES `tbl_order` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_noti_product`
--
ALTER TABLE `tbl_noti_product`
  ADD CONSTRAINT `fk_tbl_id_product_tbl_noti_product_tbl_product` FOREIGN KEY (`id_product`) REFERENCES `tbl_product` (`id_product`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_noti_user`
--
ALTER TABLE `tbl_noti_user`
  ADD CONSTRAINT `fk_id_user_tbl_noti_user_tbl_user` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `fk_id_payment_tbl_order_tbl_payment` FOREIGN KEY (`id_payment`) REFERENCES `tbl_payment` (`id_payment`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_user_tbl_order_id_user_tbl_user` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_stt_tbl_order_id_stt_tbl_detail_stt_order` FOREIGN KEY (`stt`) REFERENCES `tbl_detail_stt_order` (`id_stt`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `fk_id_brand_tbl_product_id_brand_tbl_brand` FOREIGN KEY (`id_brand`) REFERENCES `tbl_brand` (`id_brand`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_type_tbl_product_id_type_tbl_type` FOREIGN KEY (`id_type`) REFERENCES `tbl_type` (`id_type`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD CONSTRAINT `fk_id_product_tbl_review_tbl_product` FOREIGN KEY (`id_product`) REFERENCES `tbl_product` (`id_product`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_user_tbl_review_tbl_user` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_verification`
--
ALTER TABLE `tbl_verification`
  ADD CONSTRAINT `fk_email_tbl_verification_email_tbl_user` FOREIGN KEY (`email`) REFERENCES `tbl_user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
