-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2019 at 07:52 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company2`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `department`, `password`, `created_at`) VALUES
(3, 'mostafa mahfouz', 'm@m.com', 'cs', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-10-25 12:54:19'),
(4, 'mohamad ahmad', 'mo@mo.com', 'it', 'dd5fef9c1c1da1394d6d34b248c51be2ad740840', '2019-10-25 12:54:40'),
(5, 'Jhon mena', 'j@j.com', 'it', 'dd5fef9c1c1da1394d6d34b248c51be2ad740840', '2019-10-25 12:55:12'),
(6, 'elhamy maged', 'el@el.com', 'cs', '444528fc68f99ea0f4fe027cb6cbd262f2a707fe', '2019-10-25 12:55:33'),
(7, 'adulrahman mohamad', 'aa@aa.com', 'it', 'dd5fef9c1c1da1394d6d34b248c51be2ad740840', '2019-10-25 12:56:21'),
(8, 'mohamad fathy', 'fa@fa.com', 'cs', '444528fc68f99ea0f4fe027cb6cbd262f2a707fe', '2019-10-25 12:56:40'),
(9, 'rania ahmad', 'r@r.com', 'it', '661f6e6f7dee92b68818bf5ea2e9017a7452b15e', '2019-10-25 12:56:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
