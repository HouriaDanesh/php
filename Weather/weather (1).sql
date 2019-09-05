-- phpMyAdmin SQL Dump
-- version 4.2.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jan 04, 2016 at 09:39 PM
-- Server version: 5.5.41-log
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `weather`
--

-- --------------------------------------------------------

--
-- Table structure for table `findlocation`
--

CREATE TABLE IF NOT EXISTS `findlocation` (
`id` int(11) NOT NULL,
  `date` tinytext NOT NULL,
  `time` tinytext NOT NULL,
  `city` tinytext NOT NULL,
  `city_temperature` tinytext NOT NULL,
  `city_humidity` tinytext NOT NULL,
  `city_wind` tinytext NOT NULL,
  `city_description` tinytext NOT NULL,
  `city_icon` tinytext NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `findlocation`
--

INSERT INTO `findlocation` (`id`, `date`, `time`, `city`, `city_temperature`, `city_humidity`, `city_wind`, `city_description`, `city_icon`, `city_id`) VALUES
(1, '04.01.2016', '23:01', 'Trevi', '10.79', '93', '1.5', 'few clouds', '02n', 6545158),
(2, '04.01.2016', '23:01', 'Paris 01', '5.91', '87', '2.6', 'Sky is Clear', '01n', 6618607);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `user_name` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `password`) VALUES
(1, 'admin', '1a1dc91c907325c69271ddf0c944bc72'),
(2, 'Houria', '25d55ad283aa400af464c76d713c07ad'),
(3, 'Houria', '12345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `findlocation`
--
ALTER TABLE `findlocation`
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
-- AUTO_INCREMENT for table `findlocation`
--
ALTER TABLE `findlocation`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
