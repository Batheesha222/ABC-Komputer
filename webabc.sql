-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2023 at 06:45 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webabc`
--

-- --------------------------------------------------------

--
-- Table structure for table `normal_admin`
--

CREATE TABLE `normal_admin` (
  `aId` int(20) NOT NULL,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `number` int(20) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `normal_admin`
--

INSERT INTO `normal_admin` (`aId`, `name`, `email`, `number`, `password`) VALUES
(1, 'batheesha', 'batheesha@gmail.com', 773968486, '098f96a9ebd793600faa053aa2322043'),
(2, 'shashi', 'shashi@gmail.com', 765747423, '0160b443617891742411197c2ed4f4f1'),
(5, 'peheliya', 'peheliya@gmail.com', 749484583, 'da4d2b0efac5315b285294a31062dea5');

-- --------------------------------------------------------

--
-- Table structure for table `product_info`
--

CREATE TABLE `product_info` (
  `pId` int(20) NOT NULL,
  `pName` varchar(225) NOT NULL,
  `pPrice` int(20) NOT NULL,
  `pQuantity` int(20) NOT NULL,
  `pDescription` varchar(225) NOT NULL,
  `pImg` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_info`
--

INSERT INTO `product_info` (`pId`, `pName`, `pPrice`, `pQuantity`, `pDescription`, `pImg`) VALUES
(26, 'acer ', 200000, 12, 'acer i5 /8ram ', '10.jpg'),
(27, 'dell', 400000, 13, 'dell note book i7', '11.jpg'),
(28, 'hp', 120000, 10, ' hp i3 4gb ram', '10.jpg'),
(29, 'asus', 500000, 13, ' gaming lap 16gb ram', '11.jpg'),
(30, 'mac', 600000, 5, 'mac 3 ram 4gm', '9.jpg'),
(32, 'Hp i9', 300000, 5, 'i9 / 16 ram /1TB HDD', '10.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `super_admin`
--

CREATE TABLE `super_admin` (
  `sId` int(20) NOT NULL,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `number` int(20) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `super_admin`
--

INSERT INTO `super_admin` (`sId`, `name`, `email`, `number`, `password`) VALUES
(1, 'batheesha', 'batheesha@gmail.com', 773968486, '098f96a9ebd793600faa053aa2322043');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `uId` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `number` int(20) NOT NULL,
  `epassword` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`uId`, `name`, `email`, `number`, `epassword`) VALUES
(1, 'batheesha', 'batheesha@gmail.com', 773968486, '098f96a9ebd793600faa053aa2322043'),
(2, 'shashi', 'shashi@gmail.com', 765747423, '0160b443617891742411197c2ed4f4f1'),
(13, 'nipuna', 'nipuna@gmail.com', 778384950, 'e3ea96b71161d8ea3b4a2a9602a93af8'),
(14, 'peheliya', 'peheliya@gmail.com', 749484583, 'da4d2b0efac5315b285294a31062dea5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `normal_admin`
--
ALTER TABLE `normal_admin`
  ADD PRIMARY KEY (`aId`);

--
-- Indexes for table `product_info`
--
ALTER TABLE `product_info`
  ADD PRIMARY KEY (`pId`);

--
-- Indexes for table `super_admin`
--
ALTER TABLE `super_admin`
  ADD PRIMARY KEY (`sId`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`uId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `normal_admin`
--
ALTER TABLE `normal_admin`
  MODIFY `aId` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_info`
--
ALTER TABLE `product_info`
  MODIFY `pId` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `super_admin`
--
ALTER TABLE `super_admin`
  MODIFY `sId` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `uId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
