-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2024 at 06:02 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebewd2_cr5_animal_adoption_nicholas`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--
-- Creation: Jun 17, 2024 at 07:32 AM
-- Last update: Jun 19, 2024 at 12:53 PM
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `size` varchar(150) NOT NULL,
  `age` int(100) NOT NULL,
  `vaccine:` varchar(100) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `fk_supplier` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `products`:
--   `fk_supplier`
--       `suppliers` -> `id`
--   `fk_supplier`
--       `suppliers` -> `id`
--

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `gender`, `size`, `age`, `vaccine:`, `picture`, `fk_supplier`) VALUES
(20, 'Annie', 'Female rabbit', 'Small in size', 8, 'Vaccinated', '667050de5c4be.jpg', 4),
(21, 'George', 'Female Guinea Pig', 'Extra small', 5, 'Vaccinated', '6670531ed8d0f.jpg', 7),
(22, 'Luna', 'Female dog', 'Big in size', 9, 'Vaccinated', '66705407d2d89.jpg', 1),
(23, 'Betta', 'Female Pig', 'Big in size', 11, 'Vaccinated', '667054cc87c85.jpg', 2),
(24, 'Daniel', 'Male Dog', 'Big', 9, 'Vaccinated', '66705560d7f44.jpg', 2),
(25, 'Husky', 'Male dog', 'Big', 9, 'Vaccinated', '66705606df4f0.jpg', 4),
(26, 'Ruddy', 'Male Dog', 'Big in size', 9, 'Vaccinated', '6670571ca5655.jpg', 2),
(27, 'Chanel', 'Female cat', 'Medium in size', 8, 'Vaccinated', '6670585e80324.jpg', 1),
(28, 'Amy', 'Female Hammster', 'Small in size', 4, 'Vaccinated', '667058cab7bf3.jpg', 1),
(29, 'Berry', 'Male cat', 'Small in size', 9, 'Vaccinated', '66705a932d0cc.jpg', 2),
(30, 'Husky     ', 'Male dog', 'Small in size', 8, 'Vaccinated', '66716ab651d8b.jpg', 1),
(31, 'Brownie    ', 'Male dog', 'Small in size', 6, 'Vaccinated', '66716b2c417cc.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--
-- Creation: Jun 19, 2024 at 12:36 PM
-- Last update: Jun 19, 2024 at 12:35 PM
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `adoption_date` varchar(100) NOT NULL,
  `fk_suppliers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `suppliers`:
--

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `email`, `address`, `adoption_date`, `fk_suppliers`) VALUES
(1, 'Andy\r\nMuthab\r\n', 'andy@yahoo.com', 'Amalinger Street 29/10\r\n1900Wien', '', 0),
(2, 'Jude\r\nIfanyi\r\n', 'ify@email.com', 'Amalinger Street 29/10\r\n1900Wien', '', 0),
(3, 'Nicole\r\nGerorge\r\n', 'nicky@outlook.com', 'Schönbrunnergasse 19/3/7', '', 0),
(4, 'Karin Lisa\r\nAnorld', 'karlisa@email.com', 'Brunnerstraße 15/3\r\n1200Wien', '', 0),
(7, 'Sophia\r\nGath', 'gath@email.com', 'Galilie Avenue 33/7\r\nWien,1500', '', 0),
(8, 'Karin Lisa\r\nAnorld', 'karlisa@email.com', 'Brunnerstraße 15/3\r\n1200Wien', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--
-- Creation: Jun 18, 2024 at 12:02 PM
-- Last update: Jun 19, 2024 at 09:38 AM
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `users`:
--

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `password`, `date_of_birth`, `email`, `phone_number`, `address`, `picture`, `status`) VALUES
(2, 'Sophia', 'Gath', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '2008-03-15', 'gath@email.com', '06506784930', 'Galilie Avenue 33/7\r\nWien,1500', 'avatar.png', 'user'),
(5, 'Karin Lisa', 'Anorld', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '1999-10-15', 'karlisa@email.com', '06648988794', 'Brunnerstraße 15/3\r\n1200Wien', '666d9529b271d.jpg', 'user'),
(6, 'Andy', 'Muthab', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '2002-11-15', 'andy@yahoo.com', '0688900008', 'Amalinger Street 29/10\r\n1900Wien', '666d95a6f40ff.jpg', 'user'),
(9, 'Philipo', 'Inzagi', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '2000-11-18', 'zagi@email.com', '01483647', 'Rock street 33/2/1\r\n1100Wien', 'avatar.png', 'adm'),
(10, 'Jude', 'Ifanyi', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '1999-07-18', 'ify@email.com', '067672222220', 'Seeböckgasse 10/1, Wien 1020', '6671d8e07050a.jpg', 'user'),
(11, 'Nicole', 'Gerorge', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '2001-12-19', 'nicky@outlook.com', '06765555271', 'Schönbrunnergasse 19/3/7', '667273dd9f946.jpg', 'user'),
(12, 'Jaja', 'Yoyo', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '1996-03-19', 'yo@email.com', '018700233', 'Praterstrasse 15/2', '66727498e4356.jpg', 'adm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_supplier` (`fk_supplier`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
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
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`fk_supplier`) REFERENCES `suppliers` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`fk_supplier`) REFERENCES `suppliers` (`id`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
