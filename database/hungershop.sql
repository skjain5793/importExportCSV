-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2017 at 10:15 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hungershop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(255) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_image` varchar(2000) NOT NULL,
  `category_icon` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_image`, `category_icon`) VALUES
(6, 'category', '6.jpg', ''),
(8, 'category1', '10.jpg', '46.jpg'),
(9, 'test', '11.jpg', '9.jpg'),
(10, 'testtest', '12.jpg', '3d.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `coupen_code`
--

CREATE TABLE `coupen_code` (
  `id` int(255) NOT NULL,
  `code` varchar(100) NOT NULL,
  `rupees` varchar(100) NOT NULL,
  `percentage` varchar(50) NOT NULL,
  `expiry_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `facebook_users`
--

CREATE TABLE `facebook_users` (
  `id` int(11) NOT NULL,
  `oauth_provider` enum('','facebook','google','twitter') COLLATE utf8_unicode_ci NOT NULL,
  `oauth_uid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `facebook_users`
--

INSERT INTO `facebook_users` (`id`, `oauth_provider`, `oauth_uid`, `first_name`, `last_name`, `email`, `gender`, `locale`, `picture`, `link`, `created`, `modified`) VALUES
(1, 'facebook', '210513392780712', 'Shabi', 'Mahiya', 'hungerzshop@gmail.com', 'male', 'en_GB', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/17862019_205656136599771_144005494733216013_n.jpg?oh=a417cdfc0b1a43abf8fd65143c9fdf61&oe=598875C1', 'https://www.facebook.com/app_scoped_user_id/210513392780712/', '2017-04-19 18:35:27', '2017-04-19 18:35:30'),
(2, 'facebook', '210871979411520', 'Shabi', 'Mahiya', 'hungerzshop@gmail.com', 'male', 'en_GB', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/17862019_205656136599771_144005494733216013_n.jpg?oh=a417cdfc0b1a43abf8fd65143c9fdf61&oe=598875C1', 'https://www.facebook.com/app_scoped_user_id/210871979411520/', '2017-04-20 10:39:04', '2017-04-20 10:41:03'),
(3, 'facebook', '1346462615444202', 'Sanjeev', 'Kumar', 'sanjeevkumar.kumar497@gmail.com', 'male', 'en_US', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/11143505_871159819641153_3960012692598128171_n.jpg?oh=df1f51a299df802790817c99f83a23d9&oe=599AB6ED', 'https://www.facebook.com/app_scoped_user_id/1346462615444202/', '2017-04-20 10:42:20', '2017-04-20 10:45:03'),
(4, 'facebook', '1346466062110524', 'Sanjeev', 'Kumar', 'sanjeevkumar.kumar497@gmail.com', 'male', 'en_US', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/11143505_871159819641153_3960012692598128171_n.jpg?oh=df1f51a299df802790817c99f83a23d9&oe=599AB6ED', 'https://www.facebook.com/app_scoped_user_id/1346466062110524/', '2017-04-20 10:49:02', '2017-04-20 10:56:40'),
(5, 'facebook', '1346500478773749', 'Sanjeev', 'Kumar', 'sanjeevkumar.kumar497@gmail.com', 'male', 'en_US', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/11143505_871159819641153_3960012692598128171_n.jpg?oh=df1f51a299df802790817c99f83a23d9&oe=599AB6ED', 'https://www.facebook.com/app_scoped_user_id/1346500478773749/', '2017-04-20 11:36:56', '2017-04-20 13:06:36');

-- --------------------------------------------------------

--
-- Table structure for table `google_plus_users`
--

CREATE TABLE `google_plus_users` (
  `id` int(11) NOT NULL,
  `oauth_provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `oauth_uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `google_plus_users`
--

INSERT INTO `google_plus_users` (`id`, `oauth_provider`, `oauth_uid`, `first_name`, `last_name`, `email`, `gender`, `locale`, `picture`, `link`, `created`, `modified`) VALUES
(1, 'google', '110385224643291369538', 'Hungerzshop', 'online meat bazaar', 'hungerzshop@gmail.com', '', 'en', 'https://lh5.googleusercontent.com/-9zgaLKc8iRw/AAAAAAAAAAI/AAAAAAAAADA/i3eW6Lbs-wY/photo.jpg', 'https://plus.google.com/110385224643291369538', '2017-04-20 09:11:53', '2017-04-20 11:11:47'),
(2, '', '', '', '', '', '', '', '', '', '2017-04-20 10:08:30', '2017-04-20 10:12:45'),
(3, 'google', '', '', '', '', '', '', '', '', '2017-04-20 10:14:46', '2017-04-20 10:14:47'),
(4, 'google', '116679046289400350991', 'Sanjeev', 'Kumar', 'sanjeevkumara57@gmail.com', '', 'en', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg', 'https://plus.google.com/116679046289400350991', '2017-04-20 10:20:40', '2017-04-20 10:20:42'),
(5, 'google', '110097384166477755516', 'Sanjeev', 'Kumar', 'sanjeevkumar.kumar497@gmail.com', 'male', 'en', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg', 'https://plus.google.com/110097384166477755516', '2017-04-20 12:52:17', '2017-04-20 18:12:28');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(255) NOT NULL,
  `pin_code` varchar(50) NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `extra_charges` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `pin_code`, `state`, `city`, `extra_charges`) VALUES
(3, '1', 'h', 's', ''),
(4, '2', 's', 'c', ''),
(5, '125001', 'Haryana', 'Hisar', '10');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(255) NOT NULL,
  `category_id` int(255) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_image` varchar(2000) NOT NULL,
  `actual_price` varchar(100) NOT NULL,
  `net_pieces` varchar(50) NOT NULL,
  `gross_pieces` varchar(100) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_description` varchar(2500) NOT NULL,
  `pin_code` varchar(50) NOT NULL,
  `isSameDayDelievery` tinyint(1) NOT NULL,
  `isCOD` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `category_id`, `product_name`, `product_image`, `actual_price`, `net_pieces`, `gross_pieces`, `product_price`, `product_description`, `pin_code`, `isSameDayDelievery`, `isCOD`) VALUES
(7, 6, 'product1', '1.jpg', '100', '6', '6', '80', 'description', '125005', 0, 0),
(8, 8, 'prod', '', '', '', '', '', '', '', 0, 0),
(9, 8, 'y', '', '', '', '', '', '', '', 1, 1),
(10, 8, 'p', '', '', '', '', '', '', '', 1, 0),
(11, 10, 'testtest', '10.jpg', '100', '', '', '80', '', '125001', 1, 0),
(12, 9, 'pro', '6.jpg', '100', '8', '6', '80', 'description', '125001', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile_number` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `mobile_number`, `password`) VALUES
(3, 'test', 'test@gmail.com', '9999999999', '123456'),
(4, 'test name', 'test@gmail.com', '9876541230', '123456'),
(5, 'eee', 'e@g.c', '9876541230', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `facebook_users`
--
ALTER TABLE `facebook_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_plus_users`
--
ALTER TABLE `google_plus_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `facebook_users`
--
ALTER TABLE `facebook_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `google_plus_users`
--
ALTER TABLE `google_plus_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
