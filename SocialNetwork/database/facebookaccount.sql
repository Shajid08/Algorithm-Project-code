-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2023 at 07:29 AM
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
-- Database: `facebookaccount`
--

-- --------------------------------------------------------

--
-- Table structure for table `frnd`
--

CREATE TABLE `frnd` (
  `no` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `frnd`
--

INSERT INTO `frnd` (`no`, `Name`, `Phone`) VALUES
(1, 'MD Shajid Hossain ', '01817622974'),
(2, '', ''),
(3, '', ''),
(4, '01832058206', 'mdsajid@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `ID` int(11) NOT NULL,
  `posting` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`ID`, `posting`) VALUES
(10, 'hi '),
(11, ' my name is sajid hassan');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Name` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `Username` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `Repassword` varchar(100) NOT NULL,
  `Phonenamberoremail` varchar(200) NOT NULL,
  `gen` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Name`, `LastName`, `Username`, `Password`, `Repassword`, `Phonenamberoremail`, `gen`) VALUES
('', '', '', '', '', '', '  Male'),
('s', 's', 's', 's', 's', 's', '  Male'),
('', '', '', '', '', '', '  Male'),
('', '', '', '', '', '', '  Male'),
('MD Shajid Hossain', 'enter the letter only hassan', 'enter the letter only sajid', '123456', '123456', '01817622974', '  Male'),
('', '', '', '', '', '', '  Male'),
('', '', '', '', '', '', '  Male'),
('', '', '', '', '', '', '  Male'),
('sahid', 'ff', 'ff', '1233', '1233', '2355', '  Male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `frnd`
--
ALTER TABLE `frnd`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `frnd`
--
ALTER TABLE `frnd`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
