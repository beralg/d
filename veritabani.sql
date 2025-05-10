-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2023 at 08:55 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `veritabani`
--

-- --------------------------------------------------------

--
-- Table structure for table `seotamsin-duyuru`
--

CREATE TABLE `seotamsin-duyuru` (
  `id` int(11) NOT NULL,
  `baslik` enum('duyuru','guncelleme') NOT NULL,
  `aciklama` varchar(255) NOT NULL,
  `tarih` datetime NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seotamsin-user`
--

CREATE TABLE `seotamsin-user` (
  `id` int(11) NOT NULL,
  `seo_name` varchar(255) NOT NULL,
  `seo_key` varchar(255) NOT NULL,
  `seo_member` enum('0','1','2','3','4') NOT NULL DEFAULT '1',
  `seo_os` varchar(255) NOT NULL,
  `seo_browser` varchar(255) NOT NULL,
  `seo_browserdetails` varchar(255) NOT NULL,
  `seo_start` datetime NOT NULL DEFAULT current_timestamp(),
  `seo_end` varchar(255) NOT NULL,
  `seo_cooldown` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `multi_access` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seotamsin-user`
--

INSERT INTO `seotamsin-user` (`id`, `seo_name`, `seo_key`, `seo_member`, `seo_os`, `seo_browser`, `seo_browserdetails`, `seo_start`, `seo_end`, `seo_cooldown`, `user_id`, `multi_access`) VALUES
(1, 'admin', 'seotamsin', '4', '', '', '', '2023-04-09 05:35:17', '-1', '', 1, '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `seotamsin-duyuru`
--
ALTER TABLE `seotamsin-duyuru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seotamsin-user`
--
ALTER TABLE `seotamsin-user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `seotamsin-duyuru`
--
ALTER TABLE `seotamsin-duyuru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seotamsin-user`
--
ALTER TABLE `seotamsin-user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
