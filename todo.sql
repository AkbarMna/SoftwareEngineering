-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 30, 2019 at 07:57 AM
-- Server version: 5.6.43-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todo`
--

-- --------------------------------------------------------

--
-- Table structure for table `deletedtasks`
--

CREATE TABLE `deletedtasks` (
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `task_name` varchar(60) NOT NULL,
  `task_priority` tinyint(2) NOT NULL DEFAULT '2',
  `task_color` varchar(7) NOT NULL DEFAULT '#ffffff',
  `task_description` varchar(150) DEFAULT NULL,
  `task_attendees` varchar(4000) DEFAULT NULL,
  `task_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deletedtasks`
--

INSERT INTO `deletedtasks` (`task_id`, `user_id`, `task_name`, `task_priority`, `task_color`, `task_description`, `task_attendees`, `task_date`) VALUES
(47, 1, 'Test Mail 48 July', 4, '#ffffff', 'Changed Description 2', 'dragonsand922@hotmail.com', '2019-06-15 23:35:00'),
(46, 1, 'Test Mail', 1, '  #0000', 'Working?', 'dragonsand922@hotmail.com', '2019-04-16 00:00:00'),
(61, 1, 'TestingAfterAdd', 2, '  #63f1', 'work plz', 'dragonsand922@hotmail.com', '2020-09-09 14:00:00'),
(64, 0, '', 0, '', '', '', '0000-00-00 00:00:00'),
(45, 1, 'Test Mail', 1, '#000000', 'Working?', 'cipher1997@gmail.com', '2019-04-16 00:00:00'),
(54, 1, 'Test Mail 4', 3, '#ffff00', 'Description', 'cipher1997@gmail.com', '2019-04-15 23:57:00'),
(63, 0, '', 0, '', '', '', '0000-00-00 00:00:00'),
(55, 0, '', 0, '', '', '', '0000-00-00 00:00:00'),
(57, 0, '', 0, '', '', '', '0000-00-00 00:00:00'),
(62, 0, '', 0, '', '', '', '0000-00-00 00:00:00'),
(71, 0, '', 0, '', '', '', '0000-00-00 00:00:00'),
(72, 12, 'cacac', 2, '#ff00ff', '', '', '2222-02-22 14:22:00'),
(65, 12, '12 test', 2, '#ff0000', 'Description', 'asdasd@dasd.com', '2019-04-26 11:11:00'),
(77, 12, '5', 5, '#00ffff', 'Description', 'akbarmna123@gmail.com', '2019-11-11 05:55:00'),
(78, 12, 'aaa', 5, '#ff00ff', 'aaa', 'asdasd@dasd.com', '2019-04-29 12:00:00'),
(82, 15, 'Test Mail', 2, '#ffff00', '', '', '2019-04-30 06:15:00'),
(83, 15, 'Test Mail', 2, '#000000', '', '', '2019-11-11 11:11:00'),
(84, 15, 'aaa', 2, '#000000', '', '', '2019-11-11 11:11:00'),
(86, 15, 'aaa', 2, '#000000', '', '', '2019-12-12 11:11:00'),
(85, 15, 'aa', 2, '#000000', '', '', '2019-11-11 11:11:00'),
(73, 12, '1', 1, '#ff0000', 'Description', 'akbarmna123@gmail.com', '2019-11-11 11:11:00');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `session_key` varchar(60) NOT NULL,
  `session_address` varchar(100) NOT NULL,
  `session_useragent` varchar(200) NOT NULL,
  `session_expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`session_id`, `user_id`, `session_key`, `session_address`, `session_useragent`, `session_expires`) VALUES
(1, 1, '3bc85556c26865437fdb556f13644b3c', '219.92.163.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '2019-04-08 10:18:53'),
(2, 1, '3bc85556c26865437fdb556f13644b3c', '219.92.163.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '2019-04-08 10:15:48'),
(3, 1, 'abce614f9501db3ebe51b6481984e4f3', '161.142.34.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '2019-04-08 21:11:12'),
(4, 1, 'abce614f9501db3ebe51b6481984e4f3', '161.142.34.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '2019-04-08 20:26:18'),
(5, 1, 'abce614f9501db3ebe51b6481984e4f3', '161.142.33.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '2019-04-08 20:36:25'),
(6, 1, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-10 19:47:32'),
(7, 1, 'abce614f9501db3ebe51b6481984e4f3', '161.142.54.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-10 23:08:06'),
(8, 1, 'abce614f9501db3ebe51b6481984e4f3', '161.142.54.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-10 23:08:06'),
(9, 1, 'abce614f9501db3ebe51b6481984e4f3', '161.142.59.223', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-10 23:08:07'),
(10, 1, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-13 09:01:21'),
(11, 1, '449aeeb2258d8da4a78adbafdcf49c88', '219.92.163.133', 'Mozilla/5.0 (Linux; U; Android 7.1.1; en-my; MI MAX 2 Build/NMF26F) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/61.0.3163.128 Mobile Safari/537.36 XiaoMi/MiuiBrowser/10.6.3-g', '2019-04-13 09:04:51'),
(12, 1, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-13 13:17:30'),
(13, 1, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-13 22:22:19'),
(14, 1, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-14 01:08:04'),
(15, 1, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-14 02:19:47'),
(16, 1, '365bd60ffdedb52a19f5900d16061167', '219.92.163.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-14 05:05:22'),
(17, 1, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-14 04:27:15'),
(18, 1, '449aeeb2258d8da4a78adbafdcf49c88', '115.164.203.59', 'Mozilla/5.0 (Linux; U; Android 7.1.1; en-my; MI MAX 2 Build/NMF26F) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/61.0.3163.128 Mobile Safari/537.36 XiaoMi/MiuiBrowser/10.6.3-g', '2019-04-14 05:16:07'),
(19, 1, '6e8e7d2e9a6cfa4bb928e8db117dec11', '219.92.163.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-14 07:56:48'),
(20, 1, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-14 10:07:42'),
(21, 1, '6e8e7d2e9a6cfa4bb928e8db117dec11', '219.92.163.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-14 12:26:49'),
(22, 1, 'abce614f9501db3ebe51b6481984e4f3', '161.142.44.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-14 21:26:59'),
(23, 1, 'abce614f9501db3ebe51b6481984e4f3', '161.142.43.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-14 21:28:53'),
(24, 1, '92a910abf79a19ff73f985fa8a90a291', '161.142.43.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-14 22:03:45'),
(25, 1, '92a910abf79a19ff73f985fa8a90a291', '161.142.44.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-14 22:04:03'),
(26, 1, '7a84267797b18668496f1155f1a825a8', '113.210.113.155', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-15 03:23:05'),
(27, 1, '7a84267797b18668496f1155f1a825a8', '161.142.43.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-15 05:00:06'),
(28, 1, '7a84267797b18668496f1155f1a825a8', '161.142.44.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-15 04:59:22'),
(29, 1, 'cc04fca3271d3f9804a590ca52fb3855', '219.92.163.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-15 11:22:56'),
(30, 1, 'cc04fca3271d3f9804a590ca52fb3855', '219.92.163.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-15 08:11:06'),
(31, 1, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-15 10:08:02'),
(32, 1, '92a910abf79a19ff73f985fa8a90a291', '161.142.15.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-15 14:08:23'),
(33, 1, 'abce614f9501db3ebe51b6481984e4f3', '161.142.49.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-15 19:22:27'),
(34, 1, 'abce614f9501db3ebe51b6481984e4f3', '161.142.49.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-15 19:16:27'),
(35, 1, 'abce614f9501db3ebe51b6481984e4f3', '161.142.49.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-15 19:17:24'),
(36, 1, 'abce614f9501db3ebe51b6481984e4f3', '161.142.52.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-15 19:22:36'),
(37, 1, '92a910abf79a19ff73f985fa8a90a291', '161.142.49.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-15 22:03:00'),
(38, 1, '92a910abf79a19ff73f985fa8a90a291', '161.142.49.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-15 21:14:39'),
(39, 1, '92a910abf79a19ff73f985fa8a90a291', '161.142.52.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-15 21:14:42'),
(40, 1, 'd1ab5807edf749d331530e3f9f65b9cf', '161.142.49.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-15 21:54:03'),
(41, 1, 'd1ab5807edf749d331530e3f9f65b9cf', '161.142.49.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-15 21:52:46'),
(42, 1, 'd1ab5807edf749d331530e3f9f65b9cf', '161.142.49.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-15 21:53:35'),
(43, 1, 'd1ab5807edf749d331530e3f9f65b9cf', '161.142.49.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-15 21:54:00'),
(44, 1, 'd1ab5807edf749d331530e3f9f65b9cf', '113.210.116.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-15 21:57:15'),
(45, 1, '2dda51df9c818e4f61a59daa8dae0742', '161.142.49.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-16 01:18:02'),
(46, 1, '2dda51df9c818e4f61a59daa8dae0742', '161.142.52.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-16 01:20:42'),
(47, 1, '34cbbefe0f296db14cb4169d06684233', '219.92.163.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-17 03:56:52'),
(48, 1, '34cbbefe0f296db14cb4169d06684233', '219.92.163.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-17 09:57:13'),
(49, 1, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-17 17:00:46'),
(50, 1, 'abce614f9501db3ebe51b6481984e4f3', '161.142.41.175', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-17 23:30:16'),
(51, 1, 'b8dfd132261fb5f5df250d96b1eed2c4', '219.92.163.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-18 10:58:52'),
(52, 1, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-18 11:56:33'),
(53, 1, '36cc3b22dbe9b87d1c8c192de129d37e', '115.164.175.27', 'Mozilla/5.0 (Linux; U; Android 7.1.1; en-my; MI MAX 2 Build/NMF26F) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/61.0.3163.128 Mobile Safari/537.36 XiaoMi/MiuiBrowser/10.6.3-g', '2019-04-18 20:56:10'),
(54, 1, 'abce614f9501db3ebe51b6481984e4f3', '118.100.103.248', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-21 08:35:46'),
(55, 1, '92a910abf79a19ff73f985fa8a90a291', '161.142.15.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-21 18:33:00'),
(56, 1, '6eed1884fd67ca853c4d161b34acc162', '161.142.36.233', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-22 00:10:03'),
(57, 1, '6eed1884fd67ca853c4d161b34acc162', '161.142.36.233', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-22 00:09:45'),
(58, 1, '6eed1884fd67ca853c4d161b34acc162', '161.142.36.233', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-22 00:10:02'),
(59, 1, '6eed1884fd67ca853c4d161b34acc162', '183.171.185.82', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-22 01:06:05'),
(60, 1, '6eed1884fd67ca853c4d161b34acc162', '183.171.71.212', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-22 00:20:08'),
(61, 1, 'abce614f9501db3ebe51b6481984e4f3', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-23 01:53:26'),
(62, 1, 'abce614f9501db3ebe51b6481984e4f3', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-23 08:17:38'),
(63, 1, 'd5aca0ee189e8ffb044c5d607505ad97', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-23 10:23:53'),
(64, 1, 'abce614f9501db3ebe51b6481984e4f3', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-23 10:56:14'),
(65, 1, 'abce614f9501db3ebe51b6481984e4f3', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-23 09:39:07'),
(66, 8, 'd5aca0ee189e8ffb044c5d607505ad97', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-23 09:52:05'),
(67, 6, 'abce614f9501db3ebe51b6481984e4f3', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-23 09:56:50'),
(68, 9, 'd5aca0ee189e8ffb044c5d607505ad97', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-23 09:57:25'),
(69, 7, 'abce614f9501db3ebe51b6481984e4f3', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-23 10:00:23'),
(70, 8, 'd5aca0ee189e8ffb044c5d607505ad97', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-23 10:01:35'),
(71, 1, 'a5baf5b14b822cc3d4dc96c31ef790ca', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-23 10:19:23'),
(72, 1, '1471ac2695a14e7f32eec8443094e2b0', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-23 10:20:09'),
(73, 12, 'eefc01e7d0bb275c695366a10f1b08a5', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-23 10:23:24'),
(74, 1, 'b1bf7b2f9b7b4dcdd65602df0bee6d6f', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-23 10:24:11'),
(75, 12, 'd5aca0ee189e8ffb044c5d607505ad97', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-23 10:23:53'),
(76, 12, '98a39ea5b499095063292570dbf2b1a8', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-23 10:25:10'),
(77, 12, 'a6e10deeae069f842ab9989a0ac6d195', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-23 10:24:39'),
(78, 1, 'd57ce102e013f4a48869e652112ed67e', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-23 10:25:33'),
(79, 1, '4c8cec4b2f995bd635a6e6f21e7c5508', '183.171.68.218', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-23 12:06:18'),
(80, 12, 'abce614f9501db3ebe51b6481984e4f3', '161.142.39.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-23 20:52:31'),
(81, 12, 'abce614f9501db3ebe51b6481984e4f3', '161.142.39.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-23 20:51:00'),
(82, 1, '9fc03d8acaff0c8c5e81715a1ceb2739', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-24 23:51:50'),
(83, 1, '517a3dc98565e83082328566df9a38f3', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', '2019-04-24 23:42:58'),
(84, 1, '9fc03d8acaff0c8c5e81715a1ceb2739', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-24 21:51:22'),
(85, 12, 'abce614f9501db3ebe51b6481984e4f3', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-24 23:06:05'),
(86, 12, '9fc03d8acaff0c8c5e81715a1ceb2739', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-24 21:54:34'),
(87, 1, '9fc03d8acaff0c8c5e81715a1ceb2739', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-24 21:57:46'),
(88, 12, '9337bdcd79322188a5e874f862445f9f', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-24 21:59:54'),
(89, 1, 'f8b6325eadbb4a6de7d9abd13687cca5', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-24 22:00:08'),
(90, 1, 'f3f042be0cf9653e18cacdf1537101e7', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-24 22:06:51'),
(91, 1, 'c91723299a58992600596d1de974c45f', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', '2019-04-24 22:14:38'),
(92, 1, '2aa80ca0f778fe37a3d944b4ec6e46dd', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-24 22:55:59'),
(93, 1, 'abce614f9501db3ebe51b6481984e4f3', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-24 23:01:19'),
(94, 1, 'abce614f9501db3ebe51b6481984e4f3', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-24 23:03:25'),
(95, 1, 'abce614f9501db3ebe51b6481984e4f3', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-24 23:06:04'),
(96, 1, '9fc03d8acaff0c8c5e81715a1ceb2739', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-24 23:11:39'),
(97, 12, '9fc03d8acaff0c8c5e81715a1ceb2739', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-24 23:11:49'),
(98, 1, '9fc03d8acaff0c8c5e81715a1ceb2739', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-24 23:19:10'),
(99, 1, '9fc03d8acaff0c8c5e81715a1ceb2739', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-24 23:20:28'),
(100, 1, '9fc03d8acaff0c8c5e81715a1ceb2739', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-24 23:23:05'),
(101, 12, '9fc03d8acaff0c8c5e81715a1ceb2739', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-24 23:23:27'),
(102, 1, '9fc03d8acaff0c8c5e81715a1ceb2739', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-24 23:24:20'),
(103, 1, '9fc03d8acaff0c8c5e81715a1ceb2739', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-24 23:25:27'),
(104, 12, '9fc03d8acaff0c8c5e81715a1ceb2739', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-24 23:25:35'),
(105, 12, '9fc03d8acaff0c8c5e81715a1ceb2739', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-24 23:30:50'),
(106, 1, '9fc03d8acaff0c8c5e81715a1ceb2739', '118.100.164.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-24 23:31:56'),
(107, 1, '517a3dc98565e83082328566df9a38f3', '183.171.185.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', '2019-04-25 00:29:59'),
(108, 1, 'abce614f9501db3ebe51b6481984e4f3', '161.142.41.81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-25 00:33:36'),
(109, 1, 'abce614f9501db3ebe51b6481984e4f3', '161.142.42.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-25 00:33:58'),
(110, 1, '632b6659e694631bfa20ff2c9186a14a', '113.210.50.140', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-25 23:27:03'),
(111, 1, '32c4d56485710eb5adab541000e54bcf', '161.142.47.204', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-26 00:28:13'),
(112, 1, '32c4d56485710eb5adab541000e54bcf', '161.142.44.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-26 00:28:06'),
(113, 12, '7da189e65351868283e2a4613b3ec80f', '161.142.44.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', '2019-04-26 02:24:50'),
(114, 12, '7da189e65351868283e2a4613b3ec80f', '161.142.47.204', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', '2019-04-26 02:24:40'),
(115, 12, 'abce614f9501db3ebe51b6481984e4f3', '175.144.40.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-27 00:54:42'),
(116, 1, 'abce614f9501db3ebe51b6481984e4f3', '175.144.40.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-27 06:35:06'),
(117, 1, '2c07a1d67376e49b8a389510a38e5730', '175.143.133.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', '2019-04-27 17:13:13'),
(118, 12, 'abce614f9501db3ebe51b6481984e4f3', '175.144.40.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-27 20:02:08'),
(119, 12, 'abce614f9501db3ebe51b6481984e4f3', '175.144.40.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-27 23:02:22'),
(120, 1, 'abce614f9501db3ebe51b6481984e4f3', '175.144.40.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-28 01:20:13'),
(121, 1, 'aba4196f4e92c0bbf67748e3e73aa1bd', '183.171.185.2', 'Mozilla/5.0 (Linux; Android 7.1.1; MI MAX 2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.112 Mobile Safari/537.36', '2019-04-28 02:35:28'),
(122, 1, '440d197e284ca2c01dd12098fb712e1d', '42.189.2.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-28 02:47:38'),
(123, 12, '440d197e284ca2c01dd12098fb712e1d', '42.189.2.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-28 05:41:33'),
(124, 12, 'abce614f9501db3ebe51b6481984e4f3', '175.144.40.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-28 07:08:47'),
(125, 12, '36cc3b22dbe9b87d1c8c192de129d37e', '115.164.179.225', 'Mozilla/5.0 (Linux; U; Android 7.1.1; en-my; MI MAX 2 Build/NMF26F) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/61.0.3163.128 Mobile Safari/537.36 XiaoMi/MiuiBrowser/10.6.3-g', '2019-04-28 08:46:57'),
(126, 1, 'a5edf7c50680f6163aeddeeb129a45c2', '183.171.97.107', 'Mozilla/5.0 (Linux; Android 7.1.1; MI MAX 2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.112 Mobile Safari/537.36', '2019-04-28 08:47:21'),
(127, 1, 'a5edf7c50680f6163aeddeeb129a45c2', '183.171.185.62', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.112 Safari/537.36', '2019-04-28 08:47:31'),
(128, 12, 'e39376da36fc33e6d77137aafc0c6331', '115.164.179.225', 'Mozilla/5.0 (Linux; Android 7.1.1; MI MAX 2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.112 Mobile Safari/537.36', '2019-04-28 08:48:06'),
(129, 12, 'e39376da36fc33e6d77137aafc0c6331', '115.164.179.225', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.112 Safari/537.36', '2019-04-28 08:49:09'),
(130, 12, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-28 10:25:38'),
(131, 12, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-28 20:34:03'),
(132, 12, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Mobile Safari/537.36', '2019-04-28 20:11:56'),
(133, 12, '6c8c9aee265f8157a0a1ce21725604f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/18.17763', '2019-04-28 20:21:18'),
(134, 12, 'abce614f9501db3ebe51b6481984e4f3', '161.142.53.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-28 21:18:02'),
(135, 12, 'abce614f9501db3ebe51b6481984e4f3', '161.142.53.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-28 21:16:53'),
(136, 12, 'abce614f9501db3ebe51b6481984e4f3', '161.142.53.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-28 21:17:42'),
(137, 12, 'abce614f9501db3ebe51b6481984e4f3', '161.142.53.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-28 21:18:01'),
(138, 12, 'abce614f9501db3ebe51b6481984e4f3', '161.142.53.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-28 23:06:39'),
(139, 12, 'abce614f9501db3ebe51b6481984e4f3', '161.142.53.209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-28 23:05:11'),
(140, 1, '49f90277d5083aaf6c05f4f8683158b3', '183.171.185.57', 'Mozilla/5.0 (Linux; Android 7.1.1; MI MAX 2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.112 Mobile Safari/537.36', '2019-04-29 02:39:36'),
(141, 12, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 07:59:28'),
(142, 1, '558b73bfd02f9c33344e60caa12cba8f', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', '2019-04-29 08:02:48'),
(143, 12, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 07:40:12'),
(144, 1, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 07:40:24'),
(145, 1, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 07:55:24'),
(146, 1, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 07:55:43'),
(147, 1, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 07:59:28'),
(148, 1, 'a263fe4ae1c953f09c40abdacb053c8b', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 08:16:10'),
(149, 12, 'a263fe4ae1c953f09c40abdacb053c8b', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 08:07:43'),
(150, 12, 'a263fe4ae1c953f09c40abdacb053c8b', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 08:07:59'),
(151, 1, 'a263fe4ae1c953f09c40abdacb053c8b', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 08:08:15'),
(152, 1, 'a263fe4ae1c953f09c40abdacb053c8b', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 08:12:14'),
(153, 12, 'a263fe4ae1c953f09c40abdacb053c8b', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 08:12:25'),
(154, 12, 'a263fe4ae1c953f09c40abdacb053c8b', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 08:12:32'),
(155, 1, 'a263fe4ae1c953f09c40abdacb053c8b', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 08:15:43'),
(156, 12, 'a263fe4ae1c953f09c40abdacb053c8b', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 08:15:58'),
(157, 1, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:54:37'),
(158, 12, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:09:04'),
(159, 12, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:09:26'),
(160, 12, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:09:54'),
(161, 12, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:09:59'),
(162, 12, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:20:49'),
(163, 12, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:20:56'),
(164, 12, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:22:38'),
(165, 1, 'f8fe89f2ffb195157b82bc438a03b02e', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:22:56'),
(166, 12, 'f8fe89f2ffb195157b82bc438a03b02e', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:22:56'),
(167, 12, 'a35997661bdfd9e850786a391a576672', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:24:09'),
(168, 1, 'a35997661bdfd9e850786a391a576672', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:24:17'),
(169, 12, 'b5d3f8c8b69147ccd17b1f51021601c7', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:25:14'),
(170, 1, '558b73bfd02f9c33344e60caa12cba8f', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', '2019-04-29 10:12:33'),
(171, 12, '64c756897f5715313b9229857e73d501', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:27:06'),
(172, 1, '64c756897f5715313b9229857e73d501', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:27:16'),
(173, 12, '44950dc160a187e1d81a0da9e3c4cb8c', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:29:41'),
(174, 12, 'b48d3951cc6deb4aa6ab44682d3da2f7', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:29:53'),
(175, 12, 'a7c822426d508e1f4850a0bce4bea821', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:30:53'),
(176, 12, '86bb7d6a791349d5498a478e4b270bb2', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:43:20'),
(177, 12, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:33:03'),
(178, 1, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:38:29'),
(179, 12, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:38:36'),
(180, 12, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:39:20'),
(181, 1, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:39:45'),
(182, 1, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:41:04'),
(183, 12, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:41:09'),
(184, 12, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:41:26'),
(185, 12, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:42:01'),
(186, 1, '86bb7d6a791349d5498a478e4b270bb2', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:42:27'),
(187, 12, '86bb7d6a791349d5498a478e4b270bb2', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:43:11'),
(188, 1, '86bb7d6a791349d5498a478e4b270bb2', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:43:19'),
(189, 1, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:44:54'),
(190, 12, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:45:40'),
(191, 1, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:46:51'),
(192, 12, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:46:58'),
(193, 12, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:51:33'),
(194, 12, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:53:34'),
(195, 12, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:54:37'),
(196, 12, 'abce614f9501db3ebe51b6481984e4f3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:57:40'),
(197, 12, '8d0c0c85924266f8b1da8bc25f835ee8', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:57:45'),
(198, 1, '8dfab0952c42cf7bbe67857802db6992', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:57:51'),
(199, 12, '656b0f0d559b338fbb0d4a10a166fc12', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:59:16'),
(200, 1, '656b0f0d559b338fbb0d4a10a166fc12', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:58:54'),
(201, 1, '656b0f0d559b338fbb0d4a10a166fc12', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:59:24'),
(202, 1, '34ff3fedc704485bfe962cccb458dcca', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:59:57'),
(203, 12, '34ff3fedc704485bfe962cccb458dcca', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 09:59:57'),
(204, 12, '10ac970e93b1236952c24b649e8ed6fb', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 10:00:23'),
(205, 1, '4c96e3de42e3a231ef36f8d41e2150e3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 10:46:47'),
(206, 12, 'a263fe4ae1c953f09c40abdacb053c8b', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 10:15:51'),
(207, 1, 'a37d82edcc72aa4a0c5da4eb0c8a62aa', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 10:16:00'),
(208, 14, '4c96e3de42e3a231ef36f8d41e2150e3', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 10:46:47'),
(209, 12, '9e4c26e0e887146c087e79df471778bc', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 10:47:31'),
(210, 14, '9069fed6e43f3205d2e063089ab0be32', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 10:47:36'),
(211, 12, 'ced4dfb0e61383818c1bb6b62090eb19', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 10:52:23'),
(212, 14, '19e345c053a65eef592b6abcc611eb53', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 10:52:30'),
(213, 12, '86bb7d6a791349d5498a478e4b270bb2', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 11:19:44'),
(214, 12, 'a37d82edcc72aa4a0c5da4eb0c8a62aa', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 11:20:04'),
(215, 12, '1e1278c353608bf046d45b5000e5b8a1', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 11:35:47'),
(216, 1, 'd3b1417da889f18450aa6ba5923e2c87', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 11:35:57'),
(217, 12, '74ca71ca48b13209b44dfb9fdaeabfac', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 12:06:58'),
(218, 12, '45eabb1a09ed3c2487dd19879f991a69', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 12:07:47'),
(219, 12, '45eabb1a09ed3c2487dd19879f991a69', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 15:51:20'),
(220, 1, '558b73bfd02f9c33344e60caa12cba8f', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', '2019-04-29 15:34:03'),
(221, 1, '558b73bfd02f9c33344e60caa12cba8f', '183.171.78.167', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', '2019-04-29 15:41:52'),
(222, 12, 'f138fda44a16d1039180a346a34da07a', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 15:53:31'),
(223, 15, '05d1c64bdd36e9ef8f41fc3ba779f6db', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 17:01:35'),
(224, 12, '2b285de2073f8136cd007d71aa9d92b6', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 16:44:27'),
(225, 12, 'd0160f9f324a96a11c374804bcb3bf93', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 16:51:42'),
(226, 15, '18435c9e00b23066207206fe3e134215', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 16:57:39'),
(227, 12, 'db64f5dab9e93c43c72d59731cd585cf', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 17:00:47'),
(228, 1, '838a2a49b4c397a4b91cddf92b7f9fee', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 17:01:53'),
(229, 16, '8c360686358566c2c82c4105c6738c77', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 17:02:55'),
(230, 15, 'cae08f543fd58e15d69185b16f314999', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 17:25:09'),
(231, 12, '34893ffbc591e2efece720b7ff8bdc9f', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 17:37:28'),
(232, 15, '383cca8ee7e327c89c71a831ec70acac', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 18:11:08'),
(233, 1, 'c66a0c5c01a4ff1d64c98715ae1379bc', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', '2019-04-29 18:16:48'),
(234, 1, '3c6118144a5cc775385ad87d769e6392', '161.142.61.81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 18:54:00'),
(235, 12, '3c6118144a5cc775385ad87d769e6392', '161.142.61.81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 18:54:09'),
(236, 12, '3c6118144a5cc775385ad87d769e6392', '161.142.49.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 18:54:26'),
(237, 1, 'b4146fb0ec4b222819fc119c0b5600c6', '161.142.61.81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 18:55:19'),
(238, 12, 'b4146fb0ec4b222819fc119c0b5600c6', '161.142.61.81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 18:54:59'),
(239, 12, '3743118a2407f91915bbedd0b73e51b3', '113.210.99.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 18:56:28'),
(240, 15, '6d34c9fdcf5acace3bdb886d42830251', '113.210.99.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 18:56:57'),
(241, 16, '2d63029c888a7e403d8165337d01eba6', '113.210.99.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 19:15:13'),
(242, 15, 'cacf987433ba3651a5c523fc1154896b', '113.210.99.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 19:15:11'),
(243, 12, '838a2a49b4c397a4b91cddf92b7f9fee', '161.142.61.81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 21:45:34');
INSERT INTO `sessions` (`session_id`, `user_id`, `session_key`, `session_address`, `session_useragent`, `session_expires`) VALUES
(244, 12, '838a2a49b4c397a4b91cddf92b7f9fee', '161.142.61.81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 21:45:21'),
(245, 1, 'f39810b840db3a646c56e82104489a59', '161.142.49.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', '2019-04-29 21:47:36'),
(246, 1, 'f39810b840db3a646c56e82104489a59', '161.142.61.81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', '2019-04-29 21:47:38'),
(247, 12, '838a2a49b4c397a4b91cddf92b7f9fee', '161.142.61.81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 23:33:19'),
(248, 15, '9b1d9fab17e1f5a21e722b51b4a05e07', '161.142.49.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 23:46:42'),
(249, 15, '9b1d9fab17e1f5a21e722b51b4a05e07', '161.142.49.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 23:34:08'),
(250, 15, '9b1d9fab17e1f5a21e722b51b4a05e07', '161.142.49.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-29 23:34:26'),
(251, 15, '9b1d9fab17e1f5a21e722b51b4a05e07', '219.92.163.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', '2019-04-30 01:44:56');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `task_name` varchar(60) NOT NULL,
  `task_priority` tinyint(2) NOT NULL DEFAULT '2',
  `task_color` varchar(7) NOT NULL DEFAULT '#ffffff',
  `task_description` varchar(150) DEFAULT NULL,
  `task_attendees` varchar(4000) DEFAULT NULL,
  `task_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`task_id`, `user_id`, `task_name`, `task_priority`, `task_color`, `task_description`, `task_attendees`, `task_date`) VALUES
(87, 15, 'Data Science Exam', 3, '#8080ff', 'Exam', 'akbarmna123@gmail.com', '2019-05-13 09:30:00'),
(74, 12, '2', 2, '#00ff00', 'Description', 'akbarmna123@gmail.com', '2019-11-11 02:22:00'),
(75, 12, '3', 3, '#000080', 'Description', 'akbarmna123@gmail.com', '2019-11-11 03:33:00'),
(76, 12, '4', 4, '#ff0080', 'Description', 'akbarmna123@gmail.com', '2019-11-11 04:44:00'),
(92, 12, 'as', 2, '#000000', '', '', '3321-03-31 15:33:00'),
(93, 12, 'as', 2, '#000000', '', '', '3321-03-31 15:33:00'),
(79, 15, 'Data Science Assignment', 5, '#ff0000', 'Report', 'akbarmna123@gmail.com', '2019-05-02 12:00:00'),
(80, 15, 'Do FYP Analysis Chapters', 4, '#ff8040', 'Draft', 'akbarmna123@gmail.com', '2019-05-03 12:00:00'),
(88, 15, 'Software Eng Exam', 3, '#8080ff', 'Exam', 'akbarmna123@gmail.com', '2019-05-14 09:30:00'),
(89, 15, 'Robotics Exam', 3, '#8080ff', 'Exam', 'akbarmna123@gmail.com', '2019-05-15 09:30:00'),
(90, 15, 'Internship start', 1, '#00ff00', 'Internship', 'akbarmna123@gmail.com', '2019-06-17 00:00:00'),
(91, 12, 'as', 2, '#000000', '', '', '3321-03-31 15:33:00'),
(70, 1, 'Test Mail 4', 2, '#ff8040', 'Description', 'akbarmna123@gmail.com', '2222-02-22 14:22:00'),
(69, 1, 'Test Mail 3', 2, '#ffff00', 'Description', 'akbarmna123@gmail.com', '2222-02-22 14:22:00'),
(67, 1, 'Test Mail', 2, '#0000ff', 'Description', 'akbarmna123@gmail.com', '2222-02-22 14:22:00'),
(68, 1, 'Test Mail 2', 2, '#0000ff', 'Description', 'akbarmna123@gmail.com', '2222-02-22 14:22:00'),
(94, 12, 'as', 2, '#000000', '', '', '3321-03-31 15:33:00'),
(95, 12, 'as', 2, '#000000', '', '', '3321-03-31 15:33:00'),
(96, 12, 'as', 2, '#000000', '', '', '3321-03-31 15:33:00'),
(97, 12, 'as', 2, '#000000', '', '', '3321-03-31 15:33:00'),
(98, 12, 'as', 2, '#000000', '', '', '3321-03-31 15:33:00'),
(99, 12, 'as', 2, '#000000', '', '', '3321-03-31 15:33:00'),
(100, 12, 'as', 2, '#000000', '', '', '3321-03-31 15:33:00'),
(101, 16, 'Reminder1', 2, '#46f033', 'Remiinder Description', 'email@gmail.com', '2019-05-01 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(100) NOT NULL,
  `user_password` varchar(64) NOT NULL,
  `user_firstname` varchar(50) NOT NULL,
  `user_surname` varchar(50) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_login`, `user_password`, `user_firstname`, `user_surname`, `user_email`, `user_registered`) VALUES
(1, 'developerdrive', '1f948e81221f715e07cdda644d9de11a', 'developer', 'drive', 'developer@email.com', '2019-04-08 07:38:49'),
(15, 'AkbarMna', '202cb962ac59075b964b07152d234b70', 'Akbar', 'Mna', 'akbarmna123@gmail.com', '0000-00-00 00:00:00'),
(13, '123', '202cb962ac59075b964b07152d234b70', '123', '456', '123@456.com', '0000-00-00 00:00:00'),
(14, 'sss', '9f6e6800cfae7749eb6c486619254b9c', 'sss', 'sss', 'sss@sss.com', '0000-00-00 00:00:00'),
(12, 'aaa', '47bce5c74f589f4867dbd57e9ca9f808', 'aaa', 'aaa', 'aaa@gmail.com', '0000-00-00 00:00:00'),
(16, 'CKS', '202cb962ac59075b964b07152d234b70', 'Choong', 'Ken Shen', 'dragonsand922@hotmail.com', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `deletedtasks`
--
ALTER TABLE `deletedtasks`
  ADD PRIMARY KEY (`task_id`),
  ADD KEY `idx_task_name_key` (`task_name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `idx_session_key` (`session_key`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`task_id`),
  ADD KEY `idx_task_name_key` (`task_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `idx_user_login_key` (`user_login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `deletedtasks`
--
ALTER TABLE `deletedtasks`
  MODIFY `task_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `task_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
