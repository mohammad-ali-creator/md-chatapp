-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2021 at 06:34 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `conver`
--

CREATE TABLE `conver` (
  `msg_id` int(11) NOT NULL,
  `email` text NOT NULL,
  `name` varchar(200) NOT NULL,
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `conver`
--

INSERT INTO `conver` (`msg_id`, `email`, `name`, `msg`) VALUES
(47, 'nayon@gmail.com', 'Nayon', 'hi'),
(48, 'nayon@gmail.com', 'Nayon', 'ki khobor?'),
(49, 'mohammad@gmail.com', 'Mohammad', 'ai to aci'),
(50, 'nayon@gmail.com', 'Nayon', 'tarpor'),
(51, 'mohammad@gmail.com', 'Mohammad', 'bangladesh'),
(52, 'mohammad@gmail.com', 'Mohammad', 'kamne vai?'),
(53, 'mohammad@gmail.com', 'Mohammad', 'ertyui'),
(54, 'nayon@gmail.com', 'Nayon', 'tyhjukl;'),
(55, 'nayon@gmail.com', 'Nayon', 'hay'),
(56, 'nayon@gmail.com', 'Nayon', 'kaj kortaca re'),
(57, 'nayon@gmail.com', 'Nayon', 'oi oi]'),
(58, 'mohammad@gmail.com', 'Mohammad', 'oppo'),
(59, 'nayon@gmail.com', 'Nayon', 'hi i am Nayon'),
(60, 'nayon@gmail.com', 'Nayon', 'You are Mohammad redoy ?'),
(61, 'mohammad@gmail.com', 'Mohammad', 'Yes i am'),
(62, 'mohammad@gmail.com', 'Mohammad', 'did we meet before?'),
(63, 'nayon@gmail.com', 'Nayon', 'actualy not'),
(64, 'mohammad@gmail.com', 'Mohammad', 'wow i think you know me'),
(65, 'nayon@gmail.com', 'Nayon', 'hay'),
(66, 'mohammad@gmail.com', 'Mohammad', 'hi'),
(67, 'shati@gmail.com', 'Shati', 'hi there '),
(68, 'nayon@gmail.com', 'Nayon', 'hi shati'),
(69, 'shati@gmail.com', 'Shati', 'hi nayon'),
(70, 'nayon@gmail.com', 'Nayon', 'hay'),
(71, 'mohammad@gmail.com', 'Mohammad', 'hi'),
(72, 'nayon@gmail.com', 'Nayon', 'banglade '),
(73, 'shati@gmail.com', 'Shati', 'hello'),
(74, 'mohammad@gmail.com', 'Mohammad', 'how going');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `email` text NOT NULL,
  `pass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `pass`) VALUES
(6, 'Mohammad', 'Ali', 'mohammad@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(8, 'Nayon', 'Mia', 'nayon@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(9, 'Shati', 'Akhter', 'shati@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conver`
--
ALTER TABLE `conver`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conver`
--
ALTER TABLE `conver`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
