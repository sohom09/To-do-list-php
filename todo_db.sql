-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2025 at 02:43 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todo`
--
CREATE DATABASE IF NOT EXISTS `todo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `todo`;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `task` varchar(100) NOT NULL,
  `status` enum('pending','completed','','') NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `tasks`:
--

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `userid`, `task`, `status`, `date`) VALUES
(21, 5, 'dfg', 'pending', '2025-07-13 11:21:57'),
(22, 5, 'fdg', 'pending', '2025-07-13 11:22:00'),
(24, 1, 'dfg', 'pending', '2025-07-13 12:19:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL COMMENT 'unique',
  `Password` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `reset_token` varchar(255) DEFAULT NULL,
  `token_expiry` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `users`:
--

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Name`, `Email`, `Password`, `date`, `reset_token`, `token_expiry`) VALUES
(1, 'Sohom Chakraborty', 'sohomchakraborty.tigps.2005@gmail.com', 'abc123', '2025-07-12', '288a4bdc2f5ddd85ddd9c611ef1e3092f065d1ff06e222dfb0dfbcc209b27ae3', '2025-07-13 14:34:17'),
(2, 'Sohan Saha', 'sahasohan173@gmail.com', '$2y$10$X5zVE0.XXbtsZ', '2025-07-13', NULL, NULL),
(3, 'abc', 'abc@gmail.com', '$2y$10$LmP76Ssp7CDAO', '2025-07-13', NULL, NULL),
(4, 'qwerty', 'sohom.iem2005@gmail.com', '$2y$10$cyFm4dAdhaKtNoCtz49HUubChJv60g03Kci0SfZqudOfdvGuija7q', '2025-07-13', NULL, NULL),
(5, 'Sourav', 'sourav132@gmail.com', 'Sourav123@', '2025-07-13', NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
