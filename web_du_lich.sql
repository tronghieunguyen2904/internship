-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 17, 2023 at 03:38 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_du_lich`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(200) CHARACTER SET utf8 NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `email` varchar(30) CHARACTER SET utf8 NOT NULL,
  `phone` int(12) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `name`, `email`, `phone`) VALUES
('admin', '$2a$12$ncn.2UYxwN4kXBZl84LZR.JsoKqI2XDhxwVO.HkEHt89jsJ6waiHm', 'Nguyễn Trọng Hiếu', 'nguyentronghieu@gmail.com', 931487873),
('admin2', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyen B', 'b@gmail.com', 123456789),
('admin3', '123456', 'Nguyen A', 'a@gmail.com', 931487873),
('admin5', '111111', 'Nguyễn Trọng Hiếu', 'hieu745233@gmail.com', 931487873);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `address` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `phone` int(12) NOT NULL,
  `img` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `date_of_birth` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission` varchar(50) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_name`, `email`, `password`, `address`, `phone`, `img`, `gender`, `date_of_birth`, `id`, `permission`) VALUES
('a@gmail.com', 'a@gmail.com', '$2a$12$lhmJ8I1MGcwT019NK3dnu.rF3qoBfRbpcR8zVf1ka05crWicBl2/G', '124 HCM', 123456789, '1.jpg', '', '', 1, 'user'),
('Nguyễn Trọng Hiếu', 'hieu111@gmail.com', '7815696ecbf1c96e6894b779456d330e', '123 quận 7 HCM', 11111, NULL, 'Nam', '29/04/2001', 2, 'user'),
('Nguyễn Trọng Hiếu', 'hieu1234@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', NULL, 931487873, NULL, NULL, NULL, 3, 'user'),
('Nguyễn Trọng Hiếu', 'hieu123@gmail.com', '$2y$10$XZGg.Fbc2T0hObJRUR7nIevsmz9L.PKVAQQ7lWLlRMUMhBc2GM7fu', '123 quận 7 HCM', 909090909, NULL, NULL, NULL, 4, 'admin'),
('Nguyễn Trọng Hiếu', 'hieu22@gmail.com', '$2y$10$XnuhlaKU7Z1nLxw5RtoElOEGc9seEY7mlWqW4UAbuGW69uoni5JOm', NULL, 931487873, NULL, NULL, NULL, 5, 'user'),
('Nguyễn Trọng Hiếu', 'hieu745233@gmail.com', 'E150A1EC81E8E93E1EAE2C3A77E66EC6DBD6A3B460F89C1D08AECF422EE401A0', '123 quận 7 HCM', 909090909, '', 'Nam', '29/04/2001', 6, 'user'),
('Hiếu 1', 'hieu74523@gmail.com', '$2y$10$XZGg.Fbc2T0hObJRUR7nIevsmz9L.PKVAQQ7lWLlRMUMhBc2GM7fu', 'asdassad', 931487873, '339400582_773179080690186_398332459381044316_n.jpg', 'nam', '18/04/2023', 7, 'user'),
('Quang Trường', 'quangtruong@gmail.com', '$2y$10$CXpr4jh12hCUnRCgqTK7KOjfNtbFrmcXot7ynxGkF451b2XMa8sMW', 'test', 222222, 'test', 'test', 'test', 8, 'user'),
('Nguyễn Trọng Hiếu', 'test2@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', NULL, 931487873, NULL, NULL, NULL, 9, 'user'),
('Nguyễn Trọng Hiếu', 'test@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, 931487873, NULL, NULL, NULL, 10, 'user'),
('Nguyễn Trọng Hiếu', 'tronghieu@gmail.com', '$2y$10$YlBqFtBI4XQBSV9v4lCQyutY0Y7WpM0E3g0mrhYn32MXrgbDsgG/6', NULL, 931487873, NULL, NULL, NULL, 11, 'user'),
('asdsadsa', 'hieu74523333@gmail.com', '12345', 'a', 931487873, '339400582_773179080690186_398332459381044316_n.jpg', 'nam', '17/04/2023', 13, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `date_go`
--

DROP TABLE IF EXISTS `date_go`;
CREATE TABLE IF NOT EXISTS `date_go` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tour` varchar(50) CHARACTER SET utf8 NOT NULL,
  `date` datetime NOT NULL,
  `month` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk-tour-date_go` (`id_tour`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `date_go`
--

INSERT INTO `date_go` (`id`, `id_tour`, `date`, `month`) VALUES
(1, 'NDSGN1352-010-060722VU-V', '2023-04-12 11:47:31', 4);

-- --------------------------------------------------------

--
-- Table structure for table `detail_order_tour`
--

DROP TABLE IF EXISTS `detail_order_tour`;
CREATE TABLE IF NOT EXISTS `detail_order_tour` (
  `id_tour` varchar(50) CHARACTER SET utf8 NOT NULL,
  `id_order` int(50) NOT NULL,
  `name_customer` varchar(50) CHARACTER SET utf8 NOT NULL,
  `sex` varchar(50) CHARACTER SET utf8 NOT NULL,
  `CMND` int(50) DEFAULT NULL,
  `birth` date NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `id_order` (`id_order`),
  KEY `id_tour` (`id_tour`,`id_order`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_order_tour`
--

INSERT INTO `detail_order_tour` (`id_tour`, `id_order`, `name_customer`, `sex`, `CMND`, `birth`, `id`) VALUES
('NDSGN1352-010-060722VU-V', 1669687523, 'Lê Ngọc Huy', 'Nữ', 678678, '2022-11-24', 86),
('NDSGN1352-010-060722VU-V', 1669687523, 'Adult 1', 'Nam', 1231414, '2022-11-03', 87),
('NDSGN1352-010-060722VU-V', 1669966470, 'Child 2', 'Nam', 3333, '2022-12-03', 88),
('NDSGN1352-010-060722VU-V', 1669966470, 'Adult 1', 'Nam', 1111, '2022-12-01', 89),
('NDSGN1352-010-060722VU-V', 1669966470, 'Adult 2', 'Nữ', 222, '2022-12-09', 90),
('NDSGN1352-010-060722VU-V', 1669971636, 'Child 2', 'Nữ', 22222222, '2022-12-03', 91),
('NDSGN1352-010-060722VU-V', 1669971636, 'Adult 1', 'Nam', 11111111, '2022-12-03', 92),
('NDSGN1352-011-060722VU-V', 1669971781, 'Child 2', 'Nữ', 333333, '2022-12-03', 93),
('NDSGN1352-011-060722VU-V', 1669971781, 'Adult 1', 'Nam', 1231414, '2022-12-03', 94),
('NDSGN1352-011-060722VU-V', 1670421601, 'Child 2', 'Nữ', 1111111, '2022-12-08', 95),
('NDSGN1352-011-060722VU-V', 1670421601, 'Adult 1', 'Nam', 1231414, '2022-12-08', 96),
('NDSGN3981-003-040822VN-D', 1670575547, 'b', 'Nữ', 222, '2022-12-10', 100),
('NDSGN3981-003-040822VN-D', 1670575547, 'a', 'Nam', 111, '2022-12-09', 101),
('NDSGN1352-010-060722VU-V', 1670575970, 'Child 2', 'Nữ', 1111111, '2022-12-10', 102),
('NDSGN1352-010-060722VU-V', 1670575970, 'Adult 1', 'Nam', 1231414, '2022-12-09', 103),
('NDSGN1352-011-060722VU-V', 1670904995, 'Child 2', 'Nữ', 1111111, '2022-12-14', 104),
('NDSGN1352-011-060722VU-V', 1670904995, 'Adult 1', 'Nam', 1231414, '2022-12-14', 105),
('NDSGN1352-010-060722VU-V', 1671087820, 'Child 2', 'Nam', 1111111, '2022-12-15', 106),
('NDSGN1352-010-060722VU-V', 1671087820, 'Adult 1', 'Nam', 1231414, '2022-12-15', 107),
('NDSGN1352-010-060722VU-V', 1671087820, 'Adult 2', 'Nữ', 22222, '2022-12-16', 108),
('NDSGN1352-011-060722VU-V', 1671336951, 'Child 2', 'Nữ', 333333, '2022-12-19', 251),
('NDSGN1352-011-060722VU-V', 1671336951, 'Adult 1', 'Nam', 1231414, '2022-12-18', 252),
('NDSGN1352-011-060722VU-V', 1671463281, 'Trần Quang Trường', 'Nam', 22222222, '2022-12-20', 261),
('NDSGN1352-011-060722VU-V', 1671463281, 'Nguyễn Trọng Hiếu', 'Nam', 1231414, '2022-12-20', 262),
('NDSGN1352-011-060722VU-V', 1671463429, 'Trần Quang Trường', 'Nữ', 333333, '2022-12-20', 263),
('NDSGN1352-011-060722VU-V', 1671463429, 'Nguyễn Trọng Hiếu', 'Nam', 1111111, '2022-12-21', 264),
('NDSGN1352-011-060722VU-V', 1671493946, 'Child 2', 'Nam', 1111111, '2022-12-21', 265),
('NDSGN1352-011-060722VU-V', 1671493946, 'Adult 1', 'Nam', 1231414, '2022-12-21', 266),
('NDSGN579-039-231122XE-V', 1671502188, 'Child 2', 'Nam', 22222222, '2022-12-14', 267),
('NDSGN579-039-231122XE-V', 1671502188, 'Adult 3', 'Nữ', 2222222, '2022-12-21', 268),
('NDSGN579-039-231122XE-V', 1671502217, 'Child 2', 'Nam', 3333, '2022-12-21', 269),
('NDSGN579-039-231122XE-V', 1671502217, 'Adult 1', 'Nam', 1231414, '2022-12-20', 270),
('NDSGN579-039-231122XE-V', 1671502217, 'Adult 2', 'Nữ', 2222222, '2022-12-21', 271);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
CREATE TABLE IF NOT EXISTS `hotel` (
  `id_hotel` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name_hotel` varchar(50) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8 NOT NULL,
  `address` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id_hotel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id_hotel`, `name_hotel`, `phone`, `address`) VALUES
('1', 'Beachwalk Hotel', '0909090909', '123 quận 7 HCM');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_tour`
--

DROP TABLE IF EXISTS `hotel_tour`;
CREATE TABLE IF NOT EXISTS `hotel_tour` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `id_tour` varchar(50) CHARACTER SET utf8 NOT NULL,
  `id_hotel` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk-hotel_tour-tour` (`id_tour`),
  KEY `fk-hotel_tour-hotel` (`id_hotel`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_tour`
--

INSERT INTO `hotel_tour` (`id`, `id_tour`, `id_hotel`) VALUES
(1, 'NDSGN1352-010-060722VU-V', '1'),
(2, 'NDSGN1352-010-060722VU-V', '1');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE IF NOT EXISTS `location` (
  `id_location` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name_location` varchar(50) CHARACTER SET utf8 NOT NULL,
  `describe_location` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id_location`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id_location`, `name_location`, `describe_location`) VALUES
('bn', 'Du lịch Bắc Ninh', ''),
('cd', 'Du lịch Côn Đảo', ''),
('ct', 'Du Lịch Cần Thơ', ''),
('dn', 'Du lịch Đà Nẵng', ''),
('h', 'Du lịch Huế', ''),
('hcm', 'Du lịch Hồ Chí Minh', ''),
('hl', 'Du lịch Hạ Long', ''),
('hn', 'Du lịch Hà Nội', ''),
('hp', 'Du lịch Hải Phòng', ''),
('MT', 'Tour Miền Trung', ''),
('pq', 'Du lịch Phú Quốc', ''),
('pt', 'Du lịch Phú Thọ', ''),
('qb', 'Du lịch Quảng Bình', ''),
('qn', 'Du lịch Quảng Nam', ''),
('qt', 'Du lịch Quảng Trị', ''),
('st', 'Du lịch Sóc Trăng', ''),
('tg', 'Du lịch Tiền Giang', ''),
('tn', 'Du lịch Tây Ninh', ''),
('vl', 'Du lịch Vĩnh Long', ''),
('vt', 'Du lịch Bà Rịa - Vũng Tàu', '');

-- --------------------------------------------------------

--
-- Table structure for table `location_tour`
--

DROP TABLE IF EXISTS `location_tour`;
CREATE TABLE IF NOT EXISTS `location_tour` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_location` varchar(50) CHARACTER SET utf8 NOT NULL,
  `id_tour` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk-location_tour-tour` (`id_tour`),
  KEY `fk-location_tour-location` (`id_location`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location_tour`
--

INSERT INTO `location_tour` (`id`, `id_location`, `id_tour`) VALUES
(2, 'hn', 'NDSGN1352-011-060722VU-V');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id_news` varchar(50) CHARACTER SET utf8 NOT NULL,
  `title_news` varchar(50) CHARACTER SET utf8 NOT NULL,
  `date` varchar(50) CHARACTER SET utf8 NOT NULL,
  `content_news` text CHARACTER SET utf8 NOT NULL,
  `id_admin` int(50) NOT NULL,
  PRIMARY KEY (`id_news`),
  KEY `fk_admin_news` (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id_news`, `title_news`, `date`, `content_news`, `id_admin`) VALUES
('1', 'Tin Tức A', '1/8/2022', 'Tin tức về du lịch', 1),
('2', 'Tin Tức B', '1/8/2022', 'Tin tức về thời tiết', 2);

-- --------------------------------------------------------

--
-- Table structure for table `order_tour`
--

DROP TABLE IF EXISTS `order_tour`;
CREATE TABLE IF NOT EXISTS `order_tour` (
  `id_order_tour` int(50) NOT NULL,
  `order_time` datetime NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `phone` int(50) NOT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `id_customer` int(11) NOT NULL,
  PRIMARY KEY (`id_order_tour`),
  KEY `fk_order_customer` (`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_tour`
--

INSERT INTO `order_tour` (`id_order_tour`, `order_time`, `status`, `email`, `name`, `phone`, `address`, `id_customer`) VALUES
(1, '2022-10-16 18:23:13', 'Yes', 'a@gmail.com', '', 0, '', 1),
(3, '2022-10-19 02:16:11', 'Yes', 'a@gmail.com', '', 0, '', 1),
(1668867770, '2022-11-19 14:22:50', 'Yes', 'a@gmail.com', 'Nguyễn Trọng Hiếu', 931487873, '1427 ấp 3 xã hiệp phước nhà bè tp hcm', 1),
(1668942450, '2022-11-20 11:07:30', 'Yes', 'a@gmail.com', 'Nguyễn Trọng Hiếu', 931487873, '1427 ấp 3 xã hiệp phước nhà bè tp hcm', 1),
(1668943259, '2022-11-20 11:20:59', 'Yes', 'a@gmail.com', 'Nguyễn Trọng Hiếu', 931487873, '1427 ấp 3 xã hiệp phước nhà bè tp hcm', 1),
(1668943325, '2022-11-20 11:22:05', 'Yes', 'a@gmail.com', 'Nguyễn Trọng Hiếu', 931487873, '1427 ấp 3 xã hiệp phước nhà bè tp hcm', 1),
(1668943350, '2022-11-20 11:22:30', 'No', 'a@gmail.com', 'Nguyễn Trọng Hiếu', 931487873, '1427 ấp 3 xã hiệp phước nhà bè tp hcm', 1),
(1669687523, '2022-11-29 02:05:23', 'No', 'hieu745233@gmail.com', 'Nguyễn Trọng Hiếu', 931487873, '1427 ấp 3 xã hiệp phước nhà bè tp hcm', 1),
(1669966470, '2022-12-02 07:34:30', 'Yes', 'hieu745233@gmail.com', 'Nguyễn Trọng Hiếu', 931487873, '1427 ấp 3 xã hiệp phước nhà bè tp hcm', 1),
(1669971636, '2022-12-02 09:00:36', 'Yes', 'hieu745233@gmail.com', 'Nguyễn Trọng Hiếu', 12345678, '1427 ấp 3 xã hiệp phước nhà bè tp hcm', 1),
(1669971781, '2022-12-02 09:03:01', 'No', 'hieu745233@gmail.com', 'Nguyễn Trọng Hiếu', 111, '1427 ấp 3 xã hiệp phước nhà bè tp hcm', 1),
(1670421601, '2022-12-07 14:00:01', 'Yes', 'hieu745233@gmail.com', 'Nguyễn Trọng Hiếu', 931487873, '1427 ấp 3 xã hiệp phước nhà bè tp hcm', 1),
(1670575547, '2022-12-09 08:45:47', 'No', 'hieu745233@gmail.com', 'Nguyễn Trọng Hiếu', 909090909, '123 quận 7 HCM', 1),
(1670575970, '2022-12-09 08:52:50', 'Yes', 'hieu745233@gmail.com', 'Nguyễn Trọng Hiếu', 909090909, '123 quận 7 HCM', 1),
(1670904995, '2022-12-13 04:16:35', 'No', 'quangtruong@gmail.com', 'Quang Trường', 11111, 'Quan 8', 1),
(1671087820, '2022-12-15 07:03:40', 'Yes', 'hieu22@gmail.com', 'Nguyễn Trọng Hiếu', 931487873, '123 quan 8', 1),
(1671336951, '2022-12-18 04:15:51', 'No', 'hieu123@gmail.com', 'Nguyễn Trọng Hiếu', 909090909, '123 quận 7 HCM', 1),
(1671463281, '2022-12-19 15:21:21', 'No', 'hieu123@gmail.com', 'Nguyễn Trọng Hiếu', 909090909, '123 quận 7 HCM', 1),
(1671463429, '2022-12-19 15:23:49', 'No', 'hieu1234@gmail.com', 'Nguyễn Trọng Hiếu', 931487873, 'quan 8', 1),
(1671493946, '2022-12-19 23:52:26', 'No', 'test@gmail.com', 'Nguyễn Trọng Hiếu', 931487873, 'quan 8', 1),
(1671502188, '2022-12-20 02:09:48', 'No', 'test2@gmail.com', 'Nguyễn Trọng Hiếu', 931487873, 'quan 8', 1),
(1671502217, '2022-12-20 02:10:17', 'Yes', 'test2@gmail.com', 'Nguyễn Trọng Hiếu', 931487873, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(10, 'App\\Models\\Api\\User', 6, 'auth_token', '20a15e0598e23a421bfdd38f07b71f59b0c721c1132dd774e87a63e5df81776b', '[\"*\"]', NULL, '2023-04-14 06:39:57', '2023-04-14 06:39:57'),
(9, 'App\\Models\\Api\\User', 6, 'auth_token', '3590cea046bbe08bf96eb1298ad5519a8652f02a41109a3b7dcfd70ed9bef490', '[\"*\"]', NULL, '2023-04-14 06:35:02', '2023-04-14 06:35:02'),
(8, 'App\\Models\\Api\\User', 6, 'auth_token', '48bd21ddde1ef4b394f2c360045112f66fefff2138ff4a1fcaddb37946550236', '[\"*\"]', NULL, '2023-04-14 06:34:25', '2023-04-14 06:34:25'),
(7, 'App\\Models\\Api\\User', 6, 'auth_token', 'a674151223c32073b987edf103d9d131bf5dc327d6a0cb57fa65d508753de427', '[\"*\"]', NULL, '2023-04-14 06:29:19', '2023-04-14 06:29:19'),
(6, 'App\\Models\\Api\\User', 6, 'auth_token', 'ac8ceb37cdc152e868d4e10023a8da057c210fa8b690d5c1b61ef4f01f669ed1', '[\"*\"]', NULL, '2023-04-14 06:27:22', '2023-04-14 06:27:22'),
(11, 'App\\Models\\Api\\User', 6, 'auth_token', 'ee0121161db797b1f113876136642bc7ebbc8efef525679a4e16776fb1c4094f', '[\"*\"]', NULL, '2023-04-14 06:41:06', '2023-04-14 06:41:06'),
(12, 'App\\Models\\Api\\User', 6, 'auth_token', 'c9d8ca42a43bb1ce8cd0a5414c47b8184bb1b25ef3fa7047cbe612dfcd746777', '[\"*\"]', NULL, '2023-04-14 06:45:30', '2023-04-14 06:45:30'),
(13, 'App\\Models\\Api\\User', 6, 'auth_token', '55e1b9c3ff4ae1b3c9da1d888ecf6dd22f0151e9a80b7ff06390d9b958866352', '[\"*\"]', NULL, '2023-04-14 06:46:37', '2023-04-14 06:46:37'),
(14, 'App\\Models\\Api\\User', 6, 'auth_token', 'e4bf2f82e88bb89dcfd0b04ed8340311d59eaf64cf63ab1bf2ff84127129e3ae', '[\"*\"]', NULL, '2023-04-17 04:37:29', '2023-04-17 04:37:29'),
(15, 'App\\Models\\Api\\User', 1, 'auth_token', 'ca5acc2d981797886bc59628decb34c23c4498a7a992716c30ba2ddda39543cd', '[\"*\"]', NULL, '2023-04-17 04:48:07', '2023-04-17 04:48:07'),
(16, 'App\\Models\\Api\\User', 7, 'auth_token', 'f59d1e0c497e6417e62532f348f37c41e25914eedd1ecb7817704feb8798b0cf', '[\"*\"]', NULL, '2023-04-17 04:48:22', '2023-04-17 04:48:22'),
(17, 'App\\Models\\Api\\User', 7, 'auth_token', '92b58d109ea873d11f4d81e6d6a713847205bc193f43add629a73228290d9f00', '[\"*\"]', NULL, '2023-04-17 04:48:53', '2023-04-17 04:48:53'),
(18, 'App\\Models\\Api\\User', 7, 'auth_token', '3d495b66cd207e922491776466e5e693fe72fe28e379b3023e9d8360476bb66c', '[\"*\"]', NULL, '2023-04-17 04:52:32', '2023-04-17 04:52:32'),
(19, 'App\\Models\\Api\\User', 7, 'auth_token', 'c5ef5c12f579e9d43e2741a988ed85d3b6006b5ba3037983cddf4f0cf8b63e5f', '[\"*\"]', NULL, '2023-04-17 06:01:39', '2023-04-17 06:01:39'),
(20, 'App\\Models\\Api\\User', 7, 'auth_token', '9a19a74bce2d599acbcf1211b4446d2fb2ae0081b51d9824ea7a621514a25526', '[\"*\"]', NULL, '2023-04-17 06:24:03', '2023-04-17 06:24:03'),
(21, 'App\\Models\\Api\\User', 7, 'auth_token', 'def7a0223e851b18b48ff215fbc353a81e05f55fb6b65df3ac56dd4c686ad9d2', '[\"*\"]', NULL, '2023-04-17 07:00:22', '2023-04-17 07:00:22'),
(22, 'App\\Models\\Api\\User', 7, 'auth_token', '6e756ac1c81a09c20b7deb0feceef54e3ff8b90b597622f33bee772a541b7927', '[\"*\"]', NULL, '2023-04-17 07:40:50', '2023-04-17 07:40:50'),
(23, 'App\\Models\\Api\\User', 7, 'auth_token', '029ff3968471123d23dab05e7edcb393922577e797050befc60e894413ef62a0', '[\"*\"]', NULL, '2023-04-17 07:54:20', '2023-04-17 07:54:20'),
(24, 'App\\Models\\Api\\User', 7, 'auth_token', '15a3b32a003099bb4f99fb20fd239dd9f54445fdecd06956afd432880a82c167', '[\"*\"]', NULL, '2023-04-17 08:06:40', '2023-04-17 08:06:40'),
(25, 'App\\Models\\Api\\User', 7, 'auth_token', 'e7d1fdb6fe8d4d7b6c0a16351e37adffd22bd3d2e9c0a06615abb67ca15b471b', '[\"*\"]', NULL, '2023-04-17 08:07:43', '2023-04-17 08:07:43'),
(26, 'App\\Models\\Api\\User', 7, 'auth_token', '703dfc6402677d1b3bc74c9cf68875a91a3b38568da108a8ee8da8c03c6822d8', '[\"*\"]', NULL, '2023-04-17 08:09:29', '2023-04-17 08:09:29'),
(27, 'App\\Models\\Api\\User', 7, 'auth_token', '57544c1674dffba4a34d7398ac1fe41f535aa53c89f7085f609e729e8c877274', '[\"*\"]', NULL, '2023-04-17 08:11:02', '2023-04-17 08:11:02'),
(28, 'App\\Models\\Api\\User', 7, 'auth_token', 'a8cb41b7c223e020c6d75a082a72581a4fc1948057e564074e1266705fe66f2f', '[\"*\"]', NULL, '2023-04-17 08:12:03', '2023-04-17 08:12:03'),
(29, 'App\\Models\\Api\\User', 7, 'auth_token', '9f4d0753dbcd85a6a5ae03a76c899860039ba1a9f74d7941fef9e5586524f519', '[\"*\"]', NULL, '2023-04-17 08:12:56', '2023-04-17 08:12:56'),
(30, 'App\\Models\\Api\\User', 7, 'auth_token', '595fe40460ebba278eff5c3338c9824e7863ff634ff8a67db48ff78b2c0969ed', '[\"*\"]', NULL, '2023-04-17 08:13:25', '2023-04-17 08:13:25'),
(31, 'App\\Models\\Api\\User', 7, 'auth_token', 'c7a855b0892b13e8b7fd054af6294937a38a5e6cc3b7e0e5d49fc195bf607e75', '[\"*\"]', NULL, '2023-04-17 08:15:01', '2023-04-17 08:15:01'),
(32, 'App\\Models\\Api\\User', 7, 'auth_token', '4ac5b6e417dfc77c2ce3219ac55b8dcea9054866136db4c2977750bbf27650d2', '[\"*\"]', NULL, '2023-04-17 08:16:43', '2023-04-17 08:16:43'),
(33, 'App\\Models\\Api\\User', 7, 'auth_token', '5713e5b3c2df67a7c31fac52c49ab8ad5b28cbd8f858bf6fa6a22449b8c14d97', '[\"*\"]', NULL, '2023-04-17 08:20:23', '2023-04-17 08:20:23'),
(34, 'App\\Models\\Api\\User', 7, 'auth_token', '6aa9e15ba38a43c58c47484072fdff0cede8e4774ba93a3a1d52ce6f54797692', '[\"*\"]', NULL, '2023-04-17 08:22:31', '2023-04-17 08:22:31'),
(35, 'App\\Models\\Api\\User', 7, 'auth_token', '6902df7f179f661532d6a66ba71838132fc6e402cc6d026e1a809d61bc4b2600', '[\"*\"]', NULL, '2023-04-17 08:25:04', '2023-04-17 08:25:04'),
(36, 'App\\Models\\Api\\User', 4, 'auth_token', 'ac7e3ebc83b02f8cce82e14a770dd5b2b6c1f07943e151fef12b9add74d0eced', '[\"*\"]', NULL, '2023-04-17 08:25:17', '2023-04-17 08:25:17'),
(37, 'App\\Models\\Api\\User', 4, 'auth_token', '21a9a0080267d014e95abfb0b5f4a47e8c900280788e4ae78713872e4136ddd1', '[\"*\"]', NULL, '2023-04-17 08:25:53', '2023-04-17 08:25:53');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
CREATE TABLE IF NOT EXISTS `ticket` (
  `id_ticket` int(50) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `id_tour` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id_ticket`),
  KEY `fk_tour_ticket` (`id_tour`),
  KEY `fk_customer_ticket` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_details`
--

DROP TABLE IF EXISTS `ticket_details`;
CREATE TABLE IF NOT EXISTS `ticket_details` (
  `id_ticket_details` int(50) NOT NULL AUTO_INCREMENT,
  `id_ticket` int(50) NOT NULL,
  `name_customer` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id_ticket_details`),
  KEY `fk_ticket_ticket-detail` (`id_ticket`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tour`
--

DROP TABLE IF EXISTS `tour`;
CREATE TABLE IF NOT EXISTS `tour` (
  `id_tour` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name_tour` varchar(300) CHARACTER SET utf8 NOT NULL,
  `date_back` varchar(50) CHARACTER SET utf8 NOT NULL,
  `content_tour` text CHARACTER SET utf8 NOT NULL,
  `place_go` varchar(50) CHARACTER SET utf8 NOT NULL,
  `child_price` varchar(50) CHARACTER SET utf8 NOT NULL,
  `adult_price` varchar(50) NOT NULL,
  `img_tour` varchar(200) CHARACTER SET utf8mb4 DEFAULT NULL,
  `best_seller` int(12) NOT NULL DEFAULT '0' COMMENT '0:binh thuong,1:ban chay',
  `hot_tour` int(12) NOT NULL DEFAULT '0' COMMENT '0:binh thuong,1:hot',
  PRIMARY KEY (`id_tour`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tour`
--

INSERT INTO `tour` (`id_tour`, `name_tour`, `date_back`, `content_tour`, `place_go`, `child_price`, `adult_price`, `img_tour`, `best_seller`, `hot_tour`) VALUES
('NDSGN1352-010-060722VU-V', 'Sapa - Bản Cát Cát - Fansipan  1', '04 / 18 / 2023', 'Sapa 1', 'TP . Hồ Chí Minh', '3,400,000', '4,250,000', 'phuquoc.jpg', 0, 0),
('NDSGN1352-011-060722VU-V', 'Đà Lạt - Thác Bobla - KDL Cao Nguyên Hoa - Trang Trại rau và hoa Vạn Thành', '2022-07-10', 'Du lịch Hạ Long , Hà Nội , Cát Cát', 'TP . Hồ Chí Minh', '8,000,000', '10,000,000', 'dalat.jpg', 1, 0),
('NDSGN303-008-241122VU-D-F-1', 'Đà Nẵng - Bà Nà - Cầu Vàng - Sơn Trà - Biển Mỹ Khê - Hội An - Đà Nẵng (Khách sạn 4* trọn tour)', '2022-11-24', 'Thác Bobla: đẹp như một bức tranh thiên nhiên với dòng thác nguyên sơ, hùng vĩ cao hơn 40m, rộng hơn 20m, cùng cảnh quan được tôn tạo tuyệt đẹp, lưu giữ nhiều cây cổ thụ hàng trăm năm tuổi, phía xa hút tầm mắt là những đồi chè, cà phê xanh mát.  Chiều đoàn tiếp tục hành trình về Đà Lạt, nhận phòng nghỉ ngơi. Buổi tối, Quý khách tự do thưởng thức café ngắm hồ Xuân Hương về đêm.', 'HCM', '5,000,000', '8,000,000', 'danang.jpg', 1, 1),
('NDSGN3981-003-040822VN-D', 'Hà Nội - Sapa - Fansipan - Yên Tử - Hạ Long - Ninh Bình - Tuyệt Tịnh Cốc - Tràng An - Bái Đính', '2022-08-05', 'Huế', 'TP . Hồ Chí Minh', '5,000,000', '6,000,000', 'sapa.jpg', 1, 0),
('NDSGN579-039-231122XE-V', 'Hà Nội - Vịnh Hạ Long - Sapa - Bản Cát Cát - Fansipan (Khách sạn 4 sao) - Lễ 30/4', '2022-11-24', 'Thác Bobla: đẹp như một bức tranh thiên nhiên với dòng thác nguyên sơ, hùng vĩ cao hơn 40m, rộng hơn 20m, cùng cảnh quan được tôn tạo tuyệt đẹp, lưu giữ nhiều cây cổ thụ hàng trăm năm tuổi, phía xa hút tầm mắt là những đồi chè, cà phê xanh mát.  Chiều đoàn tiếp tục hành trình về Đà Lạt, nhận phòng nghỉ ngơi. Buổi tối, Quý khách tự do thưởng thức café ngắm hồ Xuân Hương về đêm.', 'HCM', '4,000,000', '5,000,000', 'halong.jpg', 0, 1),
('NDSGN590-010-200423VU-V', 'Quy Nhơn - Eo Gió - Kỳ Co - Phú Yên - Gành Đá Dĩa', '10/07/2022', 'Quý khách tập trung tại ga đi Trong Nước Sân bay Tân Sơn Nhất, hướng dẫn viên hỗ trợ làm thủ tục cho đoàn đáp chuyến bay đi sân bay Phù Cát (Quy Nhơn). Đến nơi, xe và hướng dẫn viên Vietravel đón đoàn đi tham quan:  \r\n- Khu du lịch Hầm Hô: Lâm viên hoang dã và nên thơ, đoàn khám phá cảnh non nước hữu tình. Bên cạnh đó, Quý khách có thể tự túc lựa chọn thêm dịch vụ khác như: xe ngựa, câu cá thư giãn, chèo thuyền trên sông Kút, nghỉ võng dưới tán cây rừng đại ngàn… ', 'TP . Hồ Chí Minh', '5,790,000', '7,790,000', 'quynhon.jpg', 0, 0),
('NDSGN844-052-150423XE-D', 'Miền Tây: Cần Thơ - Sóc Trăng - Bạc Liêu - Cà Mau - Đất Mũi', '2022-12-19', 'Thác Bobla: đẹp như một bức tranh thiên nhiên với dòng thác nguyên sơ, hùng vĩ cao hơn 40m, rộng hơn 20m, cùng cảnh quan được tôn tạo tuyệt đẹp, lưu giữ nhiều cây cổ thụ hàng trăm năm tuổi, phía xa hút tầm mắt là những đồi chè, cà phê xanh mát.  Chiều đoàn tiếp tục hành trình về Đà Lạt, nhận phòng nghỉ ngơi. Buổi tối, Quý khách tự do thưởng thức café ngắm hồ Xuân Hương về đêm.', 'HCM', '4,000,000', '5,000,000', 'cantho.jpg', 0, 1),
('NNSGN607-001-300423NH-D', 'Côn Đảo - Thiên Đường Của Biển', '5/8/2022', 'KHÁM PHÁ CÔN ĐẢO “THIÊN ĐƯỜNG CỦA BIỂN”', 'TP. Hồ Chí Minh', '6,990,000', '8,990,000', 'condao.jpg', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_tour`
--

DROP TABLE IF EXISTS `vehicle_tour`;
CREATE TABLE IF NOT EXISTS `vehicle_tour` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `id_vehicle` varchar(50) CHARACTER SET utf8 NOT NULL,
  `id_tour` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk-vehicle_tour-tour` (`id_tour`),
  KEY `fk-vehicle_tour-vehicle` (`id_vehicle`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_tour`
--

INSERT INTO `vehicle_tour` (`id`, `id_vehicle`, `id_tour`) VALUES
(1, '1', 'NDSGN1352-010-060722VU-V'),
(2, '2', 'NDSGN1352-010-060722VU-V');

-- --------------------------------------------------------

--
-- Table structure for table `vihecle`
--

DROP TABLE IF EXISTS `vihecle`;
CREATE TABLE IF NOT EXISTS `vihecle` (
  `id_vehicle` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name_vehicle` varchar(50) CHARACTER SET utf8 NOT NULL,
  `capacity` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id_vehicle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vihecle`
--

INSERT INTO `vihecle` (`id_vehicle`, `name_vehicle`, `capacity`) VALUES
('1', 'Xe du lịch 16 chỗ', '16'),
('2', 'Máy bay', '198'),
('3', 'Tàu', '100');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `date_go`
--
ALTER TABLE `date_go`
  ADD CONSTRAINT `fk-tour-date_go` FOREIGN KEY (`id_tour`) REFERENCES `tour` (`id_tour`);

--
-- Constraints for table `detail_order_tour`
--
ALTER TABLE `detail_order_tour`
  ADD CONSTRAINT `fk_order_detail-order` FOREIGN KEY (`id_order`) REFERENCES `order_tour` (`id_order_tour`),
  ADD CONSTRAINT `fk_tour_order-detail` FOREIGN KEY (`id_tour`) REFERENCES `tour` (`id_tour`);

--
-- Constraints for table `hotel_tour`
--
ALTER TABLE `hotel_tour`
  ADD CONSTRAINT `fk-hotel_tour-hotel` FOREIGN KEY (`id_hotel`) REFERENCES `hotel` (`id_hotel`),
  ADD CONSTRAINT `fk-hotel_tour-tour` FOREIGN KEY (`id_tour`) REFERENCES `tour` (`id_tour`);

--
-- Constraints for table `location_tour`
--
ALTER TABLE `location_tour`
  ADD CONSTRAINT `fk-location_tour-location` FOREIGN KEY (`id_location`) REFERENCES `location` (`id_location`),
  ADD CONSTRAINT `fk-location_tour-tour` FOREIGN KEY (`id_tour`) REFERENCES `tour` (`id_tour`);

--
-- Constraints for table `order_tour`
--
ALTER TABLE `order_tour`
  ADD CONSTRAINT `fk_order_customer` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id`);

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `fk_tour_ticket` FOREIGN KEY (`id_tour`) REFERENCES `tour` (`id_tour`);

--
-- Constraints for table `ticket_details`
--
ALTER TABLE `ticket_details`
  ADD CONSTRAINT `fk_ticket_ticket-detail` FOREIGN KEY (`id_ticket`) REFERENCES `ticket` (`id_ticket`);

--
-- Constraints for table `vehicle_tour`
--
ALTER TABLE `vehicle_tour`
  ADD CONSTRAINT `fk-vehicle_tour-tour` FOREIGN KEY (`id_tour`) REFERENCES `tour` (`id_tour`),
  ADD CONSTRAINT `fk-vehicle_tour-vehicle` FOREIGN KEY (`id_vehicle`) REFERENCES `vihecle` (`id_vehicle`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
