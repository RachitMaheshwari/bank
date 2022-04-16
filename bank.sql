-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2021 at 05:51 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `ACNO` varchar(50) NOT NULL,
  `PIN` varchar(50) DEFAULT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `FNAME` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `PHNUMBER` varchar(50) DEFAULT NULL,
  `AMOUNT` varchar(50) DEFAULT NULL,
  `CITY` varchar(50) DEFAULT NULL,
  `STATE` varchar(50) DEFAULT NULL,
  `COUNTRY` varchar(50) DEFAULT NULL,
  `GENDER` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`ACNO`, `PIN`, `NAME`, `FNAME`, `EMAIL`, `PHNUMBER`, `AMOUNT`, `CITY`, `STATE`, `COUNTRY`, `GENDER`) VALUES
('SBI101', '1234', 'akhil', 'ramesh singh gsuain', 'akhilgsuain2@gmail.com', '7830773698', '10003933', 'dehradun', 'uttarkhand', 'India', 'male'),
('SBI102', '54321', 'preeti gusain', 'ramesh singh gusain', 'preetigusain777@gtmail.com', '9760035374', '183', 'dehradun', 'uttarkhand', 'India', 'female'),
('SBI103', '12345', 'tanuja gusain', 'dinesh gusain', 'tanujagusain@gmail.com', '8650185686', '193', 'dehradun', 'uttarkhand', 'India', 'female'),
('SBI104', '1234', 'naman ', 'rajesh thapliyal', 'namathapliyal57@gmail.com', '8630007951', '193', 'dehradun', 'uttarkhand', 'India', 'male'),
('SBI105', '1234', 'manisha gusain', 'ramesh singh gusain', 'gsuainmanisha777@gmail.com', '9639178801', '193', 'lansdowen', 'uttarkhand', 'India', 'female'),
('SBI106', '1234', 'akhil gusain', 'mr', 'akhilgusain2@gmail.com', '77888', '193', 'dehradun', 'uttarkhand', 'India', 'male'),
('SBI107', '1234', 'Tanuja', 'Dinesh', 'tanuja.gusain35@gmail.com', '8650185686', '193', 'Dehradun', 'uttarkhand', 'India', 'female'),
('SBI108', '1234', 'pawan', 'suraj rawat', 'pawanrawat@gmail.com', '7895312246', '193', 'dehradun', 'uttarkhand', 'India', 'male'),
('SBI109', '1234', 'bhaskar sharma', 'mr', 'bhaskar@gmail.com', '78945632', '10005000', 'dehradn', 'uttarkhand', 'India', 'male'),
('SBI110', '1234', 'mahaveer singh', 'mr', 'mahaveersinghrwwat@gmail.com', '789456321', '5000', 'dehradun', 'uttarkhand', 'India', 'female');

-- --------------------------------------------------------

--
-- Table structure for table `tran`
--

CREATE TABLE `tran` (
  `id` int(50) NOT NULL,
  `ACNO` varchar(50) DEFAULT NULL,
  `dt` varchar(50) DEFAULT NULL,
  `AMOUNT` varchar(50) DEFAULT NULL,
  `DS` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tran`
--

INSERT INTO `tran` (`id`, `ACNO`, `dt`, `AMOUNT`, `DS`) VALUES
(17, 'SBI101', '21/09/21  12:41:00', '2000', 'transfer'),
(20, 'SBI102', '21/09/21  12:41:52', '2000', 'receive'),
(21, 'sbi101', '21/09/21  06:02:21', '2555', 'deposit'),
(22, 'Sbi105', '22/09/21  08:17:50', '10000', 'deposit'),
(23, 'SBI106', '24/09/21  09:31:11', '50000', 'deposit'),
(24, 'sbi102', '24/09/21  09:34:29', '100', 'Withdraw'),
(26, 'sbi101', '24/09/21  09:37:30', '40000', 'transfer'),
(27, 'sbi102', '24/09/21  09:37:30', '40000', 'receive'),
(28, 'sbi104', '24/09/21  10:21:56', '20', 'deposit'),
(29, 'SBI108', '28/09/21  03:26:50', '50000', 'deposit'),
(30, 'sbi109', '30/09/21  03:21:37', '500000', 'deposit'),
(31, 'sbi101', '01/10/21  07:36:33', '1000', 'transfer'),
(32, 'sbi102', '01/10/21  07:36:33', '1000', 'receive'),
(35, 'SBI111', '15/10/21  06:20:54', '400000', 'deposit'),
(37, 'sbi102', '15/10/21  06:27:14', '5000', 'receive'),
(73, 'SBI101', '22/10/21  09:19:29', '1000', 'deposit'),
(74, 'SBI101', '22/10/21  09:21:13', '100', 'Withdraw'),
(75, 'SBI101', '22/10/21  09:21:34', '100', 'Withdraw'),
(76, 'SBI109', '02/11/21  04:04:48', '5000', 'deposit'),
(77, 'SBI101', '08/11/21  01:18:00', '10000000', 'deposit');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`ACNO`);

--
-- Indexes for table `tran`
--
ALTER TABLE `tran`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tran`
--
ALTER TABLE `tran`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
