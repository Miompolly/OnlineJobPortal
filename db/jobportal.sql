-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 23, 2023 at 01:15 PM
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
-- Database: `jobportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `Jobs`
--

CREATE TABLE `Jobs` (
  `id` int(11) NOT NULL,
  `jobTitle` varchar(255) NOT NULL,
  `jobDescription` text NOT NULL,
  `skillsRequired` varchar(255) NOT NULL,
  `experienceRequired` int(11) NOT NULL,
  `salary` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Jobs`
--

INSERT INTO `Jobs` (`id`, `jobTitle`, `jobDescription`, `skillsRequired`, `experienceRequired`, `salary`) VALUES
(5, 'ICT Teaching Opportunity', 'Experienced ICT professional dedicated to teaching and guiding students in mastering technological skills for a digital future', 'A1', 2, 400000.00),
(6, 'ICT Teaching Opportunity', 'Experienced ICT professional dedicated to teaching and guiding students in mastering technological skills for a digital future', 'a2', 2, 20000.00),
(7, 'ICT Teaching Opportunity', 'Experienced ICT professional dedicated to teaching and guiding students in mastering technological skills for a digital future', 'a2', 3, 343000.00),
(8, 'ICT Teaching Opportunity', 'Experienced ICT professional dedicated to teaching and guiding students in mastering technological skills for a digital future', 'A1', 3, 500000.00);

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `ID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`ID`, `username`, `password`, `full_name`, `role`) VALUES
(1, 'geffy@gmal.com', '123', 'joel MINANI', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Jobs`
--
ALTER TABLE `Jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Jobs`
--
ALTER TABLE `Jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
