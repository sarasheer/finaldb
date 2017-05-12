-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 10, 2017 at 11:21 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `practice`
--

-- --------------------------------------------------------

--
-- Table structure for table `child_dependency`
--

CREATE TABLE `child_dependency` (
  `measure_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `year` int(5) NOT NULL,
  `value` decimal(4,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `child_dependency`
--

INSERT INTO `child_dependency` (`measure_id`, `country_id`, `year`, `value`) VALUES
(1, 1, 2015, '65.4'),
(2, 1, 2050, '39.4'),
(3, 2, 2015, '100.2'),
(4, 2, 2050, '55.8'),
(5, 3, 2015, '81.2'),
(6, 3, 2050, '46.3'),
(7, 4, 2015, '50.5'),
(8, 4, 2050, '35.6'),
(9, 5, 2015, '68.9'),
(10, 5, 2050, '37.6'),
(11, 6, 2015, '82.2'),
(12, 6, 2050, '40.7'),
(13, 7, 2015, '72.7'),
(14, 7, 2050, '39.4'),
(15, 8, 2015, '63.6'),
(16, 8, 2050, '45.2'),
(17, 9, 2015, '42.4'),
(18, 9, 2050, '43.1');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'Mexico'),
(2, 'Guatemala'),
(3, 'Belize'),
(4, 'Costa Rica'),
(5, 'El Salvador'),
(6, 'Honduras'),
(7, 'Nicaragua'),
(8, 'Panama'),
(9, 'United States');

-- --------------------------------------------------------

--
-- Table structure for table `fertility_rate`
--

CREATE TABLE `fertility_rate` (
  `measure_id` int(10) NOT NULL,
  `country_id` int(10) NOT NULL,
  `year` int(4) NOT NULL,
  `value` decimal(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fertility_rate`
--

INSERT INTO `fertility_rate` (`measure_id`, `country_id`, `year`, `value`) VALUES
(1, 1, 1980, '4.37'),
(2, 1, 2015, '2.14'),
(3, 2, 1980, '6.10'),
(4, 2, 2015, '3.03'),
(5, 3, 1980, '5.40'),
(6, 3, 2015, '2.46'),
(7, 4, 1980, '3.50'),
(8, 4, 2015, '1.76'),
(9, 5, 1980, '4.75'),
(10, 5, 2015, '1.87'),
(11, 6, 1980, '6.00'),
(12, 6, 2015, '2.25'),
(13, 7, 1980, '5.85'),
(14, 7, 2015, '2.16'),
(15, 8, 1980, '3.63'),
(16, 8, 2015, '2.36'),
(17, 9, 1980, '1.80'),
(18, 9, 2015, '1.90');

-- --------------------------------------------------------

--
-- Table structure for table `median_age`
--

CREATE TABLE `median_age` (
  `measure_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `value` decimal(3,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `median_age`
--

INSERT INTO `median_age` (`measure_id`, `country_id`, `year`, `value`) VALUES
(1, 1, 2015, '27.4'),
(2, 2, 2015, '21.2'),
(3, 1, 2050, '40.9'),
(4, 2, 2050, '31.5'),
(5, 3, 2015, '23.5'),
(6, 3, 2050, '34.0'),
(7, 4, 2015, '31.4'),
(8, 4, 2050, '45.3'),
(9, 5, 2015, '26.7'),
(10, 5, 2050, '41.8'),
(11, 6, 2015, '23.4'),
(12, 6, 2050, '38.2'),
(13, 7, 2015, '25.2'),
(14, 7, 2050, '40.1'),
(15, 8, 2015, '28.7'),
(16, 8, 2050, '38.5'),
(17, 9, 2015, '38.0'),
(18, 9, 2050, '41.7');

-- --------------------------------------------------------

--
-- Table structure for table `old_age_dependency`
--

CREATE TABLE `old_age_dependency` (
  `measure_id` int(10) NOT NULL,
  `country_id` int(10) NOT NULL,
  `year` int(4) NOT NULL,
  `value` decimal(3,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `old_age_dependency`
--

INSERT INTO `old_age_dependency` (`measure_id`, `country_id`, `year`, `value`) VALUES
(1, 1, 2015, '11.4'),
(2, 1, 2050, '30.2'),
(3, 2, 2015, '10.2'),
(4, 2, 2050, '17.6'),
(5, 3, 2015, '7.1'),
(6, 3, 2050, '15.9'),
(7, 4, 2015, '14.7'),
(8, 4, 2050, '41.7'),
(9, 5, 2015, '15.0'),
(10, 5, 2050, '30.4'),
(11, 6, 2015, '9.3'),
(12, 6, 2050, '22.7'),
(13, 7, 2015, '9.3'),
(14, 7, 2050, '29.0'),
(15, 8, 2015, '13.5'),
(16, 8, 2050, '32.4'),
(17, 9, 2015, '24.7'),
(18, 9, 2050, '40.9');

-- --------------------------------------------------------

--
-- Table structure for table `total_dependency`
--

CREATE TABLE `total_dependency` (
  `measure_id` int(10) NOT NULL,
  `country_id` int(10) NOT NULL,
  `year` int(4) NOT NULL,
  `value` decimal(4,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `total_dependency`
--

INSERT INTO `total_dependency` (`measure_id`, `country_id`, `year`, `value`) VALUES
(1, 1, 2015, '76.8'),
(2, 1, 2050, '71.8'),
(3, 2, 2015, '110.4'),
(4, 2, 2050, '73.4'),
(5, 3, 2015, '88.3'),
(6, 3, 2050, '62.2'),
(7, 4, 2015, '84.0'),
(8, 4, 2050, '77.3'),
(9, 5, 2015, '84.0'),
(10, 5, 2050, '68.1'),
(11, 6, 2015, '91.5'),
(12, 6, 2050, '63.4'),
(13, 7, 2015, '82.0'),
(14, 7, 2050, '68.4'),
(15, 8, 2015, '77.1'),
(16, 8, 2050, '77.6'),
(17, 9, 2015, '67.2'),
(18, 9, 2050, '84.0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `child_dependency`
--
ALTER TABLE `child_dependency`
  ADD PRIMARY KEY (`measure_id`),
  ADD KEY `country` (`country_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `fertility_rate`
--
ALTER TABLE `fertility_rate`
  ADD PRIMARY KEY (`measure_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `median_age`
--
ALTER TABLE `median_age`
  ADD PRIMARY KEY (`measure_id`),
  ADD KEY `country` (`country_id`);

--
-- Indexes for table `old_age_dependency`
--
ALTER TABLE `old_age_dependency`
  ADD PRIMARY KEY (`measure_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `total_dependency`
--
ALTER TABLE `total_dependency`
  ADD PRIMARY KEY (`measure_id`),
  ADD KEY `country_id` (`country_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
