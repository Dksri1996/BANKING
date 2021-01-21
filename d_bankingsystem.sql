-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2021 at 07:25 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `d_bankingsystem`
--
CREATE DATABASE IF NOT EXISTS `d_bankingsystem` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `d_bankingsystem`;

-- --------------------------------------------------------

--
-- Table structure for table `d_permissions`
--

CREATE TABLE `d_permissions` (
  `per_Id` int(11) NOT NULL,
  `permission` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `d_permissions`
--

INSERT INTO `d_permissions` (`per_Id`, `permission`) VALUES
(8, 'block'),
(5, 'credit'),
(3, 'debit'),
(7, 'insert'),
(4, 'transfer'),
(6, 'update'),
(1, 'view1'),
(2, 'view2');

-- --------------------------------------------------------

--
-- Table structure for table `d_pr`
--

CREATE TABLE `d_pr` (
  `role_Id` int(11) NOT NULL,
  `per_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `d_pr`
--

INSERT INTO `d_pr` (`role_Id`, `per_Id`) VALUES
(1, 1),
(1, 3),
(1, 4),
(2, 2),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(0, 6),
(0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `d_roles`
--

CREATE TABLE `d_roles` (
  `role_Id` int(11) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `d_roles`
--

INSERT INTO `d_roles` (`role_Id`, `role`) VALUES
(1, 'Normal'),
(2, 'employee'),
(0, 'tester');

-- --------------------------------------------------------

--
-- Table structure for table `d_ur`
--

CREATE TABLE `d_ur` (
  `user_Id` int(11) NOT NULL,
  `role_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `d_ur`
--

INSERT INTO `d_ur` (`user_Id`, `role_Id`) VALUES
(5, 1),
(6, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `d_userinfo`
--

CREATE TABLE `d_userinfo` (
  `user_Id` int(11) NOT NULL,
  `First_name` varchar(20) NOT NULL,
  `Last_name` varchar(20) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL,
  `home_branch` varchar(100) NOT NULL,
  `Pin` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `d_userinfo`
--

INSERT INTO `d_userinfo` (`user_Id`, `First_name`, `Last_name`, `phone`, `email`, `amount`, `home_branch`, `Pin`) VALUES
(2, 'Vinayak', 'choyyan', '8090730971', 'dksri1996@gmail.com', 959890, 'Sultanpur branchaah', '12'),
(5, 'Mahesh', 'Kumar', '9344711439', 'mahesh@gmail.com', 200010, 'Sultanpur branch', '42'),
(6, 'Rajesh', 'Kumar', '8090730971', 'dksri1996@outlook.com', 200000, 'Surathkal', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `d_users`
--

CREATE TABLE `d_users` (
  `user_Id` int(11) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `d_users`
--

INSERT INTO `d_users` (`user_Id`, `Password`) VALUES
(2, '12'),
(6, '12345'),
(4, '147'),
(25, '258'),
(33, '369'),
(5, '42');

-- --------------------------------------------------------

--
-- Table structure for table `v_admin_permission`
--

CREATE TABLE `v_admin_permission` (
  `v_admin_permission_id` int(11) NOT NULL,
  `v_admin_permission_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `v_admin_permission`
--

INSERT INTO `v_admin_permission` (`v_admin_permission_id`, `v_admin_permission_name`) VALUES
(1, 'add admin'),
(7, 'add employee'),
(5, 'assign roll'),
(3, 'create roll'),
(6, 'deassign roll'),
(4, 'delete roll'),
(2, 'remove admin'),
(8, 'remove employee');

-- --------------------------------------------------------

--
-- Table structure for table `v_admin_pr`
--

CREATE TABLE `v_admin_pr` (
  `v_admin_roll_id` int(11) NOT NULL,
  `v_admin_permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `v_admin_pr`
--

INSERT INTO `v_admin_pr` (`v_admin_roll_id`, `v_admin_permission_id`) VALUES
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(2, 1),
(2, 2),
(2, 3),
(2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `v_admin_role`
--

CREATE TABLE `v_admin_role` (
  `v_admin_roll_id` int(11) NOT NULL,
  `v_admin_roll_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `v_admin_role`
--

INSERT INTO `v_admin_role` (`v_admin_roll_id`, `v_admin_roll_name`) VALUES
(1, 'normal_admin'),
(2, 'super_admin');

-- --------------------------------------------------------

--
-- Table structure for table `v_admin_ur`
--

CREATE TABLE `v_admin_ur` (
  `v_admin_roll_id` int(11) NOT NULL,
  `v_admin_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `v_admin_ur`
--

INSERT INTO `v_admin_ur` (`v_admin_roll_id`, `v_admin_user_id`) VALUES
(1, 4),
(2, 33);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `d_users`
--
ALTER TABLE `d_users`
  ADD PRIMARY KEY (`user_Id`),
  ADD UNIQUE KEY `Password` (`Password`),
  ADD UNIQUE KEY `Password_2` (`Password`);

--
-- Indexes for table `v_admin_permission`
--
ALTER TABLE `v_admin_permission`
  ADD PRIMARY KEY (`v_admin_permission_id`),
  ADD UNIQUE KEY `v_admin_permission_name` (`v_admin_permission_name`);

--
-- Indexes for table `v_admin_pr`
--
ALTER TABLE `v_admin_pr`
  ADD KEY `v_admin_permission_id` (`v_admin_permission_id`),
  ADD KEY `v_admin_roll_id` (`v_admin_roll_id`);

--
-- Indexes for table `v_admin_role`
--
ALTER TABLE `v_admin_role`
  ADD PRIMARY KEY (`v_admin_roll_id`),
  ADD UNIQUE KEY `v_admin_roll_name` (`v_admin_roll_name`);

--
-- Indexes for table `v_admin_ur`
--
ALTER TABLE `v_admin_ur`
  ADD KEY `v_admin_user_id` (`v_admin_user_id`),
  ADD KEY `v_admin_roll_id` (`v_admin_roll_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `d_users`
--
ALTER TABLE `d_users`
  MODIFY `user_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `v_admin_permission`
--
ALTER TABLE `v_admin_permission`
  MODIFY `v_admin_permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `v_admin_role`
--
ALTER TABLE `v_admin_role`
  MODIFY `v_admin_roll_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `v_admin_pr`
--
ALTER TABLE `v_admin_pr`
  ADD CONSTRAINT `v_admin_pr_ibfk_1` FOREIGN KEY (`v_admin_permission_id`) REFERENCES `v_admin_permission` (`v_admin_permission_id`),
  ADD CONSTRAINT `v_admin_pr_ibfk_2` FOREIGN KEY (`v_admin_roll_id`) REFERENCES `v_admin_role` (`v_admin_roll_id`);

--
-- Constraints for table `v_admin_ur`
--
ALTER TABLE `v_admin_ur`
  ADD CONSTRAINT `v_admin_ur_ibfk_1` FOREIGN KEY (`v_admin_user_id`) REFERENCES `d_users` (`user_Id`),
  ADD CONSTRAINT `v_admin_ur_ibfk_2` FOREIGN KEY (`v_admin_roll_id`) REFERENCES `v_admin_role` (`v_admin_roll_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
