-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2025 at 06:14 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `task` varchar(100) NOT NULL,
  `status` enum('pending','completed','','') NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `userid`, `task`, `status`, `date`) VALUES
(25, 1, 'studying', 'completed', '2025-07-17 08:41:01'),
(27, 1, 'gardening', 'pending', '2025-07-17 08:41:14'),
(28, 1, 'painting', 'pending', '2025-07-17 08:41:19'),
(30, 1, 'jogging', 'completed', '2025-07-17 08:42:21'),
(31, 1, 'playing', 'pending', '2025-07-17 08:42:49'),
(32, 1, 'listening songs', 'completed', '2025-07-17 08:45:38'),
(33, 1, 'watching movies', 'completed', '2025-07-17 08:45:44'),
(36, 5, 'studying', 'pending', '2025-07-17 10:27:15'),
(37, 5, 'bathing', 'completed', '2025-07-17 10:27:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL COMMENT 'unique',
  `Password` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `reset_token` varchar(255) DEFAULT NULL,
  `token_expiry` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Name`, `Email`, `Password`, `date`, `reset_token`, `token_expiry`) VALUES
(1, 'Sohom Chakraborty', 'sohomchakraborty.tigps.2005@gmail.com', 'Abc123@', '2025-07-12', NULL, NULL),
(2, 'Sohan Saha', 'sahasohan173@gmail.com', '$2y$10$X5zVE0.XXbtsZ', '2025-07-13', NULL, NULL),
(5, 'Sourav', 'sourav132@gmail.com', 'Sourav123@', '2025-07-13', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
