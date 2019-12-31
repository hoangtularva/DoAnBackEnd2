-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 18, 2019 at 03:05 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idUser` int(10) UNSIGNED NOT NULL,
  `idTinTuc` int(10) UNSIGNED NOT NULL,
  `NoiDung` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_iduser_foreign` (`idUser`),
  KEY `comment_idtintuc_foreign` (`idTinTuc`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loaitin`
--

DROP TABLE IF EXISTS `loaitin`;
CREATE TABLE IF NOT EXISTS `loaitin` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idTheLoai` int(10) UNSIGNED NOT NULL,
  `Ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TenKhongDau` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `loaitin_idtheloai_foreign` (`idTheLoai`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loaitin`
--

INSERT INTO `loaitin` (`id`, `idTheLoai`, `Ten`, `TenKhongDau`, `created_at`, `updated_at`) VALUES
(1, 1, 'Thời sự', 'thoi-su', NULL, NULL),
(2, 1, 'Giao thông', 'giao-thong', NULL, NULL),
(3, 1, 'Môi trường', 'moi-truong', NULL, NULL),
(4, 3, 'Bóng đá', 'bong-da', NULL, NULL),
(5, 3, 'Bóng chuyền', 'bong-chuyen', NULL, NULL),
(6, 2, 'Tin tức quốc tế', 'tin-quoc-te', NULL, NULL),
(7, 5, 'CNTT-Viễn thông', 'cntt-vien-thong', NULL, NULL),
(9, 5, 'Thiết bị-Phần cứng', 'thiet-bi-phan-cung', '2019-12-18 01:36:58', '2019-12-18 01:36:58'),
(10, 3, 'Tennis', 'tennis', '2019-12-18 02:50:45', '2019-12-18 02:50:45');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

DROP TABLE IF EXISTS `slide`;
CREATE TABLE IF NOT EXISTS `slide` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Hinh` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NoiDung` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

DROP TABLE IF EXISTS `theloai`;
CREATE TABLE IF NOT EXISTS `theloai` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TenKhongDau` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `theloai`
--

INSERT INTO `theloai` (`id`, `Ten`, `TenKhongDau`, `created_at`, `updated_at`) VALUES
(1, 'Xã hội', 'xa-hoi', NULL, NULL),
(2, 'Thế giới', 'the-gioi', NULL, NULL),
(3, 'Thể thao', 'the-thao', NULL, NULL),
(4, 'Kinh doanh', 'kinh-doanh', NULL, NULL),
(5, 'Công nghệ', 'cong-nghe', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

DROP TABLE IF EXISTS `tintuc`;
CREATE TABLE IF NOT EXISTS `tintuc` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TieuDe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TieuDeKhongDau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TomTat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `NoiDung` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Hinh` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NoiBat` int(11) NOT NULL DEFAULT '0',
  `idLoaiTin` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tintuc_idloaitin_foreign` (`idLoaiTin`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quyen` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_name_unique` (`name`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `avatar`, `birthday`, `remember_token`, `created_at`, `updated_at`, `quyen`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$ZgH7MNpyjPKDJMwXrFcAEeJnysOKwnLFQytVZJZfVuuQ9.gJ05CQi', NULL, NULL, NULL, '2019-12-18 02:34:08', '2019-12-18 02:34:08', 1),
(2, 'hoangtu123', 'hoangtu@gmail.com', '$2y$10$fAGhA.mjtVH1PnjsPFZcRueuw9g7vQId5VS99Xw7Hb6EnNSBmfFrK', NULL, NULL, NULL, '2019-12-18 02:34:32', '2019-12-18 02:54:02', 0),
(3, 'vanlong', 'vanlong@gmail.com', '$2y$10$sKkeg4kNIMEIrTG8UgJrA.s5vnd0yaQkuCkDVlyt5fjof1PZmb7rO', NULL, NULL, NULL, '2019-12-18 03:01:52', '2019-12-18 03:01:52', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
