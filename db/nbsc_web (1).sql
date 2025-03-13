-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2025 at 08:51 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nbsc_web`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `registration` (IN `First_name` VARCHAR(50), IN `Middle_name` VARCHAR(50), IN `Last_name` VARCHAR(50), IN `Mobile_num` VARCHAR(12), IN `Birthdate` DATE, IN `Email` VARCHAR(50), IN `Photo` LONGBLOB)  BEGIN
    -- Insert into the registration table
    INSERT INTO registration_table (First_name, Middle_name, Last_name, Mobile_num, Birthdate, Email, Photo)
    VALUES (First_name, Middle_name, Last_name, Mobile_num, Birthdate, Email, Photo);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `login_logs`
--

CREATE TABLE `login_logs` (
  `login_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `login_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_logs`
--

INSERT INTO `login_logs` (`login_id`, `user_id`, `login_time`) VALUES
(1, 4, '2025-02-13 14:49:56'),
(2, 5, '2025-02-13 14:50:22'),
(3, 6, '2025-02-13 14:51:48'),
(4, 7, '2025-02-13 14:52:16'),
(5, 5, '2025-02-13 14:55:38'),
(6, 5, '2025-02-20 16:53:11'),
(7, 5, '2025-03-13 14:36:55'),
(8, 4, '2025-03-13 15:04:02'),
(9, 4, '2025-03-13 15:07:51'),
(10, 4, '2025-03-13 15:09:17'),
(11, 4, '2025-03-13 15:12:22'),
(12, 4, '2025-03-13 15:16:15'),
(13, 4, '2025-03-13 15:16:24'),
(14, 4, '2025-03-13 15:17:18'),
(15, 4, '2025-03-13 15:18:23'),
(16, 4, '2025-03-13 15:21:25'),
(17, 4, '2025-03-13 15:23:34'),
(18, 4, '2025-03-13 15:24:20'),
(19, 4, '2025-03-13 15:26:28'),
(20, 4, '2025-03-13 15:27:04'),
(21, 4, '2025-03-13 15:27:39'),
(22, 4, '2025-03-13 15:29:38'),
(23, 4, '2025-03-13 15:29:49'),
(24, 4, '2025-03-13 15:32:54'),
(25, 4, '2025-03-13 15:34:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `attendance_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `attendance_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`attendance_id`, `user_id`, `attendance_date`) VALUES
(2, 4, '2025-03-13 07:45:05'),
(3, 4, '2025-03-13 07:45:08'),
(4, 4, '2025-03-13 07:45:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `student_ID` int(100) NOT NULL,
  `First_name` varchar(50) NOT NULL,
  `Middle_name` varchar(50) NOT NULL,
  `Last_name` varchar(50) NOT NULL,
  `Mobile_num` varchar(12) NOT NULL,
  `Birthdate` date NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Photo` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` enum('admin','user') NOT NULL DEFAULT 'user',
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `user_type`, `last_login`, `created_at`) VALUES
(4, 'Arky', '$2y$10$SXxkP7bywbt6t2NylfQVwOMbZGkU/n2wVaUf7Pw3E8mG0wfHb0Mvu', 'user', '2025-03-13 15:34:02', '2025-02-13 06:49:49'),
(5, 'cliff', '$2y$10$sZ/d0JJJZfr4QGBeDRh8KuLtgAmOWL.oM/D/QcHBegAymNWLGakOS', 'admin', '2025-03-13 14:36:55', '2025-02-13 06:50:14'),
(6, 'Jethro', '$2y$10$4xMBli.YztlV8XJNaUcOx.5F6U8JBKTxlmIqOkHuIucCPs/YDbsXS', 'user', '2025-02-13 14:51:48', '2025-02-13 06:51:39'),
(7, 'Cha', '$2y$10$JUFjsK2Em9HejDa9uiD03OfhVbrZjwwUCdg6ePXNNy9EdfR/./Unq', 'admin', '2025-02-13 14:52:16', '2025-02-13 06:52:08'),
(8, 'Meme', '$2y$10$RUthHpZPtmdM8C21jemqIOpBZtYAUEsOI44ktv7TACOt22nUQKXfy', 'user', NULL, '2025-02-13 06:55:13'),
(9, 'Mar', '$2y$10$MmyXucDInmIQzVlfxDIM5O.NQbS39O/8qZ5laKV2NxMu.jpi5s0DK', 'admin', NULL, '2025-02-13 06:55:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login_logs`
--
ALTER TABLE `login_logs`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `tbl_attendance` (`user_id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`student_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login_logs`
--
ALTER TABLE `login_logs`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `student_ID` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD CONSTRAINT `tbl_attendance` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
