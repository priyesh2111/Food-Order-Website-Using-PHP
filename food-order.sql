-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2021 at 04:13 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-order`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(24, 'tester', 'test2', '202cb962ac59075b964b07152d234b70'),
(25, 'Admin', 'admin', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(12, 'Burger', 'Food_Category_105.jpg', 'Yes', 'Yes'),
(13, 'Momos', 'Food_Category_78.jpg', 'Yes', 'Yes'),
(19, 'Pizza', 'Food_Category_943.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(13, 'Veg Steam Momos', 'Steamed Momos with Veggies inside and Herbs ', '80.00', 'Food-Name-3301.jpg', 13, 'No', 'Yes'),
(20, 'Cheese Burger', 'Loaded with Cheese and Mayo with Crispy Patties', '130.00', 'Food-Name-7751.jpg', 12, 'No', 'Yes'),
(21, 'Cheese Crust  Pizza', 'Loaded with Cheese and Mozzarella in Crispy Crust.', '220.00', 'Food-Name-3224.jpg', 19, 'Yes', 'Yes'),
(22, 'Veg Supreme Pizza', 'Red & Green Bell Pepper,Onions and Double Cheese', '250.00', 'Food-Name-2935.jpg', 19, 'Yes', 'Yes'),
(24, 'Chilli Cheese Momos', 'Fried Spicy Momos With Cheese and Spicy Stuffing', '120.00', 'Food-Name-2894.jpg', 13, 'Yes', 'Yes'),
(25, 'Zinger Burger', 'Crispy Patties, Veggies and Lettuce with Tangy Sauce ', '150.00', 'Food-Name-3260.jpg', 12, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(32, 'Chilli Momos', '110.00', 1, '110.00', '2021-09-26 12:59:36', 'On Delivery', 'Priyesh Gohil', '8169305793', 'priyeshgohil21@gmail.com', 'Kharkhar Alley\r\n13,B-wing,Namaskar Bldg'),
(34, 'Cheese Burger', '124.00', 1, '124.00', '2021-09-26 04:45:42', 'Delivered', 'Priyesh Gohil', '8169305793', 'priyeshgohil21@gmail.com', 'Kharkhar Alley\r\n13,B-wing,Namaskar Bldg'),
(36, 'Veg Supreme Pizza', '200.00', 1, '200.00', '2021-09-26 04:50:16', 'Delivered', 'Priyesh Gohil', '8169305793', 'admin@gmail.com', 'Kharkhar Alley\r\n13,B-wing,Namaskar Bldg'),
(39, 'Veg Supreme Pizza', '250.00', 1, '250.00', '2021-09-28 06:32:21', 'On Delivery', 'Priyesh Gohil', '08169305793', 'priyeshgohil21@gmail.com', 'Kharkhar Alley\r\n13,B-wing,Namaskar Bldg'),
(40, 'Veg Steam Momos', '80.00', 1, '80.00', '2021-10-01 08:42:23', 'Delivered', 'Priyesh Gohil', '8169305793', 'priyeshgohil21@gmail.com', 'Kharkhar Alley\r\n13,B-wing,Namaskar Bldg'),
(43, 'Cheese Crust  Pizza', '220.00', 2, '440.00', '2021-10-06 11:05:39', 'Delivered', 'PRIYESH JAGDISH GOHIL', '08169305793', 'priyesh.g@somaiya.edu', '13,Namaskar Apt, Kharkhar Alley, Jambhli Naka, Thane (W'),
(44, 'Cheese Burger', '130.00', 1, '130.00', '2021-10-06 11:29:46', 'Ordered', 'PRIYESH JAGDISH GOHIL', '08169305793', 'priyesh.g@somaiya.edu', '13,Namaskar Apt, Kharkhar Alley, Jambhli Naka, Thane (W'),
(45, 'Cheese Crust  Pizza', '220.00', 4, '880.00', '2021-10-06 01:52:37', 'On Delivery', 'PRIYESH JAGDISH GOHIL', '08169305793', 'priyeshgohil21@gmail.com', '13,Namaskar Apt, Kharkhar Alley, Jambhli Naka, Thane (W');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `user_email`, `password`) VALUES
(1, 'Priyesh Gohil', 'priyeshgohil21@gmail.com', '202cb962ac59075b964b07152d234b70'),
(7, 'admin', 'admin@gmail.com', '202cb962ac59075b964b07152d234b70'),
(9, 'PRIYESH JAGDISH GOHIL', 'priyesh.g@somaiya.edu', '81dc9bdb52d04dc20036dbd8313ed055');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
