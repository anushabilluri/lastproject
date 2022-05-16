-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 19, 2022 at 02:54 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(1, 9, 1, 4),
(3, 9, 4, 6),
(4, 9, 12, 2),
(5, 2, 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(2, 'Bangles', ''),
(3, 'Necklace', ''),
(4, 'Rings', '');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'Ring', '', 'ring', 899, 'ring_1650328300.jpg', '2022-04-19', 1),
(2, 1, 'Nose ring', '\r\n', 'nose-ring', 799, 'nose-ring_1650328215.jpg', '2018-05-10', 3),
(3, 1, 'Ring', '', 'ring', 599, 'ring_1650328321.jpg', '2018-05-12', 1),
(4, 1, 'Ring', '', 'ring', 399, 'ring_1650328341.jpg', '2018-05-10', 3),
(5, 1, 'Ring', '', 'ring', 339, 'ring_1650328363.jpg', '2018-05-10', 3),
(6, 2, 'Bangle', '<p>Bangle&nbsp;</p>\r\n\r\n<p>china made</p>\r\n', 'bangle', 449.99, 'bangle_1650326830.jpg', '0000-00-00', 0),
(7, 3, 'Neclkace', '', 'neclkace', 619, 'neclkace_1650327954.jpg', '0000-00-00', 0),
(8, 3, 'Necklace Gold', '<p>Necklace&nbsp;</p>\r\n\r\n<p>china made</p>\r\n', 'necklace-gold', 549.99, 'necklace_1650314329.jpg', '0000-00-00', 0),
(9, 2, 'Bangle', '', 'bangle', 599.99, 'bangle_1650328056.jpg', '0000-00-00', 0),
(10, 2, 'Bangle', '', 'bangle', 599.99, 'bangle_1650328067.jpg', '2018-05-10', 1),
(11, 2, 'Bangle', '', 'bangle', 489.98, 'bangle_1650328102.jpg', '2018-05-12', 1),
(12, 1, 'Ring', '<p>Engagement Ring</p>\r\n\r\n<p>Size 9</p>\r\n', 'ring', 749.99, 'ring_1650328387.jpg', '2018-05-12', 3),
(13, 2, 'Bangle', '', 'bangle', 799.99, 'bangle_1650328127.jpg', '2018-05-12', 1),
(14, 2, 'Bangle', '', 'bangle', 899.99, 'bangle_1650328143.jpg', '2018-05-10', 13),
(15, 1, 'Ring', '<p>Men Ring</p>\r\n', 'ring', 999.99, 'ring_1650314433.jpg', '2022-04-19', 1),
(16, 1, 'Ring', '<p>Gold wedding ring</p>\r\n', 'ring', 100, 'ring_1650313188.jpg', '2018-05-10', 2),
(17, 1, 'Engagement Ring', '<p>Gold cotted Ring.</p>\r\n', 'engagement-ring', 49.99, 'amazon-fire-7-tablet-alexa-2017-8-gb-black_1650327470.jpg', '2018-05-12', 1),
(18, 1, 'Nose ring', '', 'nose-ring', 79.99, 'nose-ring_1650328252.jpg', '2018-05-12', 2),
(19, 2, 'Bangle', '<p>qasdfghjkl</p>\r\n', 'bangle', 99.99, 'bangle_1650328167.jpg', '2018-05-10', 1),
(20, 1, 'Ring', '<p>engagement Ring</p>\r\n', 'ring', 339, 'apple-9-7-ipad-32-gb-space-grey_1650313901.jpg', '2018-05-12', 1),
(21, 3, 'Necklace', '', 'necklace', 339, 'necklace_1650328188.jpg', '2018-05-12', 1),
(60, 1, 'Ring', '', 'ring', 449.99, 'ring_1650328278.jpg', '0000-00-00', 0),
(80, 2, 'Bang;e', '', 'bang-e', 549.99, 'bang-e_1650327980.jpg', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2022-04-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2022-04-10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$8wY63GX/y9Bq780GBMpxCesV9n1H6WyCqcA2hNy2uhC59hEnOpNaS', 1, 'Admin', 'Gems Galore', '', '', 'photo0.jpeg', 1, '', '', '2018-05-01'),
(2, 'customer@gmail.com', '$2y$10$8wY63GX/y9Bq780GBMpxCesV9n1H6WyCqcA2hNy2uhC59hEnOpNaS', 0, 'customer', 'cust', 'cal', '23543', '8.jpg', 1, '[value-11]', '[value-12]', '2012-12-22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
