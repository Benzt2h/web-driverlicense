-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2018 at 10:48 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `driver_license`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `User` varchar(255) NOT NULL,
  `Password` text NOT NULL,
  `Name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`User`, `Password`, `Name`) VALUES
('admin', 'password', 'benz');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `user` int(13) NOT NULL,
  `password` text NOT NULL,
  `name` text NOT NULL,
  `score` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`user`, `password`, `name`, `score`) VALUES
(123455, '123455', '123455', 0);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `number` int(100) NOT NULL,
  `question` text NOT NULL,
  `answer1` text NOT NULL,
  `answer2` text NOT NULL,
  `answer3` text NOT NULL,
  `answer4` text NOT NULL,
  `correct_answer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`number`, `question`, `answer1`, `answer2`, `answer3`, `answer4`, `correct_answer`) VALUES
(1, 'à¹à¸ˆà¹‰à¸‡à¹ƒà¸šà¸‚à¸±à¸šà¸‚à¸µà¹ˆà¸«à¸²à¸¢à¸«à¸£à¸·à¸­à¸Šà¸³à¸£à¸¸à¸”à¸ à¸²à¸¢à¹ƒà¸™à¸à¸µà¹ˆà¸§à¸±à¸™', '7 à¸§à¸±à¸™', '15 à¸§à¸±à¸™', '30 à¸§à¸±à¸™', '60 à¸§à¸±à¸™', 2),
(2, 'à¹€à¸›à¸¥à¸µà¹ˆà¸¢à¸™à¸ªà¸µà¸£à¸–à¸•à¹‰à¸­à¸‡à¹à¸ˆà¹‰à¸‡à¸ à¸²à¸¢à¹ƒà¸™à¸à¸µà¹ˆà¸§à¸±à¸™', '7 à¸§à¸±à¸™', '14 à¸§à¸±à¸™', '30 à¸§à¸±à¸™', '60 à¸§à¸±à¸™', 1),
(3, 'à¹€à¸ˆà¹‰à¸²à¸‚à¸­à¸‡à¸£à¸–à¹„à¸¡à¹ˆà¹€à¸ªà¸µà¸¢à¸ à¸²à¸©à¸µà¸›à¸£à¸°à¸ˆà¸³à¸›à¸µ à¸ à¸²à¸¢à¹ƒà¸™à¸à¸³à¸«à¸™à¸”à¸ˆà¸°à¸•à¹‰à¸­à¸‡à¹€à¸ªà¸µà¸¢à¹€à¸‡à¸´à¸™à¹€à¸žà¸´à¸¡à¹€à¸—à¹ˆà¸²à¹ƒà¸”', 'à¸£à¹‰à¸­à¸¢à¸¥à¸° 20 à¸•à¹ˆà¸­à¸›à¸µ', 'à¸£à¹‰à¸­à¸¢à¸¥à¸° 1 à¸•à¹ˆà¸­à¸›à¸µ', 'à¸£à¹‰à¸­à¸¢à¸¥à¸° 10 à¸•à¹ˆà¸­à¹€à¸”à¸·à¸­à¸™', 'à¸£à¹‰à¸­à¸¢à¸¥à¸° 1 à¸•à¹ˆà¸­à¹€à¸”à¸·à¸­à¸™', 4),
(4, 'à¸£à¸™à¸¢à¸™à¸•à¹Œà¸—à¸µà¹ˆà¸¡à¸µà¸­à¸²à¸¢à¸¸à¸„à¸£à¸šà¸à¸µà¹ˆà¸›à¸µ à¸•à¹‰à¸­à¸‡à¸•à¸£à¸§à¸ˆà¸ªà¸ à¸²à¸žà¸£à¸–à¸à¹ˆà¸­à¸™à¹€à¸ªà¸µà¸¢à¸ à¸²à¸©à¸µ', '6 à¸›à¸µ', '7 à¸›à¸µ', '8 à¸›à¸µ', '9 à¸›à¸µ', 2),
(5, 'à¸•à¹ˆà¸­à¹ƒà¸šà¸‚à¸±à¸šà¸‚à¸µà¹ˆà¸¥à¹ˆà¸§à¸‡à¸«à¸™à¹‰à¸²à¹„à¸”à¹‰à¸à¸µà¹ˆà¹€à¸”à¸·à¸­à¸™(à¸£à¸–à¸ªà¹ˆà¸§à¸™à¸šà¸¸à¸„à¸„à¸¥-5 à¸›à¸µ)', '1 à¹€à¸”à¸·à¸­à¸™', '2 à¹€à¸”à¸·à¸­à¸™', '3 à¹€à¸”à¸·à¸­à¸™', '4 à¹€à¸”à¸·à¸­à¸™', 3),
(6, 'à¸•à¸²à¸¡ à¸ž.à¸£.à¸š. à¸£à¸–à¸¢à¸™à¸•à¹Œ à¸ž.à¸¨.2522 à¸£à¸–à¸¢à¸™à¸•à¹Œ à¸«à¸¡à¸²à¸¢à¸„à¸§à¸²à¸¡à¸§à¹ˆà¸²', 'à¸£à¸–à¸ªà¸²à¸˜à¸²à¸£à¸“à¸° à¸£à¸–à¸¢à¸™à¸•à¹Œà¸šà¸£à¸´à¸à¸²à¸£ à¸£à¸–à¸¢à¸™à¸•à¹Œà¸ªà¹ˆà¸§à¸™à¸šà¸¸à¸„à¸„à¸¥ à¸£à¸–à¹à¸—à¹‡à¸à¸‹à¸µà¹ˆ', 'à¸£à¸–à¸ªà¸²à¸˜à¸²à¸£à¸“à¸° à¸£à¸–à¸¢à¸™à¸•à¹Œà¸šà¸£à¸´à¸à¸²à¸£ à¹à¸¥à¸°à¸£à¸–à¸ˆà¸±à¸à¸£à¸¢à¸²à¸™à¸¢à¸™à¸•à¹Œà¸ªà¹ˆà¸§à¸™à¸šà¸¸à¸„à¸„à¸¥ ', 'à¸£à¸–à¸ˆà¸±à¸à¸£à¸¢à¸²à¸™à¸¢à¸™à¸•à¹Œà¸ªà¸²à¸˜à¸²à¸£à¸“à¸° à¸£à¸–à¸šà¸£à¸´à¸à¸²à¸£ à¹à¸¥à¸°à¸£à¸–à¸ˆà¸±à¸à¸£à¸¢à¸²à¸™à¸¢à¸™à¸•à¹Œ', 'à¸£à¸–à¸ªà¸²à¸˜à¸²à¸£à¸“à¸° à¸£à¸–à¸¢à¸™à¸•à¹Œà¸šà¸£à¸´à¸à¸²à¸£ à¹à¸¥à¸°à¸£à¸–à¸¢à¸™à¸•à¹Œà¸ªà¹ˆà¸§à¸™à¸šà¸¸à¸„à¸„à¸¥', 4),
(7, 'à¹ƒà¸šà¸­à¸™à¸¸à¸à¸²à¸•à¸‚à¸±à¸šà¸£à¸–à¸Šà¸™à¸´à¸”à¸Šà¸±à¹ˆà¸§à¸„à¸£à¸²à¸§à¸¡à¸µà¸­à¸²à¸¢à¸¸à¸à¸µà¹ˆà¸›à¸µ', '1 à¸›à¸µ', '2 à¸›à¸µ', '3 à¸›à¸µ', '4 à¸›à¸µ', 1),
(8, 'à¸‚à¸±à¸šà¸£à¸–à¹à¸•à¹ˆà¹ƒà¸Šà¹‰à¹ƒà¸šà¸‚à¸±à¸šà¸‚à¸µà¹ˆà¸«à¸¡à¸”à¸­à¸²à¸¢à¸¸ à¸›à¸£à¸±à¸šà¹€à¸—à¹ˆà¸²à¹„à¸«à¸£à¹ˆ', 'à¸›à¸£à¸±à¸šà¹„à¸¡à¹ˆà¹€à¸à¸´à¸™ 1 à¸žà¸±à¸™à¸šà¸²à¸—', 'à¸›à¸£à¸±à¸šà¹„à¸¡à¹ˆà¹€à¸à¸´à¸™ 2 à¸žà¸±à¸™à¸šà¸²à¸—', 'à¸›à¸£à¸±à¸šà¹„à¸¡à¹ˆà¹€à¸à¸´à¸™ 3 à¸žà¸±à¸™à¸šà¸²à¸—', 'à¸›à¸£à¸±à¸šà¹„à¸¡à¹ˆà¹€à¸à¸´à¸™ 5 à¸žà¸±à¸™à¸šà¸²à¸—', 2),
(9, 'à¸£à¸–à¸—à¸µà¹ˆà¸™à¸³à¸¡à¸²à¹ƒà¸Šà¹‰à¸šà¸™à¸—à¹‰à¸­à¸‡à¸–à¸™à¸™à¸•à¹‰à¸­à¸‡à¸¡à¸µà¸¥à¸±à¸à¸©à¸“à¸°à¸­à¸¢à¹ˆà¸²à¸‡à¹„à¸£', 'à¸£à¸–à¸—à¸µà¹ˆà¹‚à¸„à¸¡à¹„à¸Ÿà¸«à¸™à¹‰à¸²à¹„à¸¡à¹ˆà¸•à¸´à¸”', 'à¸£à¸–à¸—à¸µà¹ˆà¸¡à¸µà¹€à¸ªà¸µà¸¢à¸‡à¸”à¸±à¸‡ 90 à¹€à¸”à¸‹à¸´à¹€à¸šà¸¥', 'à¸£à¸–à¸—à¸µà¹ˆà¸¡à¸µà¸„à¸§à¸±à¸à¸”à¸³ 55%', 'à¸£à¸–à¸—à¸µà¹ˆà¸ˆà¸”à¸—à¸°à¹€à¸šà¸µà¸¢à¸™à¹à¸¥à¸°à¸Šà¸³à¸£à¸°à¸ à¸²à¸©à¸µà¹€à¸£à¸µà¸¢à¸šà¸£à¹‰à¸­à¸¢à¹à¸¥à¹‰à¸§', 4),
(10, 'à¸ˆà¸”à¸—à¸°à¹€à¸šà¸µà¸¢à¸™ à¹€à¸ªà¸µà¸¢à¸ à¸²à¸©à¸µà¸£à¸–à¸•à¹‰à¸­à¸‡à¸¢à¸·à¹ˆà¸™à¸„à¸³à¸‚à¸­à¸—à¸µà¹ˆà¹ƒà¸”', 'à¸¢à¸·à¹ˆà¸™à¸„à¸³à¸‚à¸­à¸•à¹ˆà¸­à¸™à¸²à¸¢à¸—à¸°à¹€à¸šà¸µà¸¢à¸™à¸—à¸µà¹ˆà¸ªà¸³à¸™à¸±à¸à¸‡à¸²à¸™à¸‚à¸™à¸ªà¹ˆà¸‡à¸ˆà¸±à¸‡à¸«à¸§à¸±à¸”à¸—à¸¸à¸à¹à¸«à¹ˆà¸‡', 'à¸¢à¸·à¹ˆà¸™à¸„à¸³à¸‚à¸­à¸•à¹ˆà¸­à¸™à¸²à¸¢à¸—à¸°à¹€à¸šà¸µà¸¢à¸™à¹à¸«à¹ˆà¸‡à¸—à¹‰à¸­à¸‡à¸—à¸µà¹ˆà¸—à¸µà¹ˆà¸•à¸™à¸¡à¸µà¸ à¸¹à¸¡à¸´à¸¥à¸³à¹€à¸™à¸²', 'à¸¢à¸·à¹ˆà¸™à¸„à¸³à¸‚à¸­à¸•à¹ˆà¸­à¸™à¸²à¸¢à¸—à¸°à¹€à¸šà¸µà¸¢à¸™à¸—à¸µà¹ˆà¸à¸£à¸¡à¸à¸²à¸£à¸‚à¸™à¸ªà¹ˆà¸‡à¸—à¸²à¸‡à¸šà¸', 'à¸–à¸¹à¸à¸—à¸¸à¸à¸‚à¹‰à¸­', 1),
(11, 'à¸‚à¹‰à¸­à¹ƒà¸”à¹„à¸¡à¹ˆà¹ƒà¸Šà¹ˆà¸‚à¹‰à¸­à¸«à¹‰à¸²à¸¡', 'à¸«à¹‰à¸²à¸¡à¹„à¸¡à¹ˆà¹ƒà¸«à¹‰à¸œà¸¹à¹‰à¸‚à¸±à¸šà¸‚à¸µà¹ˆà¸‚à¸±à¸šà¸£à¸–à¸¢à¸™à¸•à¹Œà¸šà¸™à¸—à¸²à¸‡à¹€à¸—à¹‰à¸²à¹‚à¸”à¸¢à¹„à¸¡à¹ˆà¸¡à¸µà¹€à¸«à¸•à¸¸à¸­à¸±à¸™à¸ªà¸¡à¸„à¸§à¸£', 'à¸«à¹‰à¸²à¸¡à¹„à¸¡à¹ˆà¹ƒà¸«à¹‰à¸œà¸¹à¹‰à¸‚à¸±à¸šà¸‚à¸µà¹ˆà¸‚à¸±à¸šà¸£à¸–à¹ƒà¸™à¸‚à¸“à¸°à¹€à¸¡à¸²à¸ªà¸¸à¸£à¸²à¸«à¸£à¸·à¸­à¸‚à¸­à¸‡à¹€à¸¡à¸²à¸­à¸¢à¹ˆà¸²à¸‡à¸­à¸·à¹ˆà¸™', 'à¸«à¹‰à¸²à¸¡à¹„à¸¡à¹ˆà¹ƒà¸«à¹‰à¸œà¸¹à¹‰à¸‚à¸±à¸šà¸‚à¸µà¹ˆà¸‚à¸±à¸šà¸£à¸–à¹ƒà¸™à¸‚à¸“à¸°à¸«à¸¢à¹ˆà¸­à¸™à¸„à¸§à¸²à¸¡à¸ªà¸²à¸¡à¸²à¸£à¸–à¹ƒà¸™à¸­à¸±à¸™à¸—à¸µà¹ˆà¸ˆà¸°à¸‚à¸±à¸š', 'à¸«à¹‰à¸²à¸¡à¹„à¸¡à¹ˆà¹ƒà¸«à¹‰à¸œà¸¹à¹‰à¸‚à¸±à¸šà¸‚à¸µà¹ˆà¸‚à¸±à¸šà¸£à¸–à¹ƒà¸™à¸‚à¸“à¸°à¸à¸™à¸•à¸à¸«à¸£à¸·à¸­à¸«à¸¡à¸­à¸à¸¥à¸‡', 4),
(12, 'à¸‚à¹‰à¸­à¹ƒà¸”à¸•à¹ˆà¸­à¹„à¸›à¸™à¸µà¹‰à¸„à¸·à¸­à¸—à¸²à¸‡à¸ªà¸³à¸«à¸£à¸±à¸šà¸‚à¸±à¸šà¸‚à¸µà¹ˆà¸£à¸–à¸¢à¸™à¸•à¹Œ', 'à¸Ÿà¸¸à¸•à¸šà¸²à¸—', 'à¸–à¸™à¸™', 'à¸Šà¹ˆà¸­à¸‡à¹€à¸”à¸´à¸™à¸ªà¸³à¸«à¸£à¸±à¸šà¸ˆà¸±à¸à¸£à¸¢à¸²à¸™', 'à¸—à¸²à¸‡à¸£à¸–à¹„à¸Ÿ', 2),
(13, 'à¸œà¸¹à¹‰à¸‚à¸±à¸šà¸‚à¸µà¹ˆà¸•à¹‰à¸­à¸‡à¹€à¸›à¸´à¸”à¹„à¸Ÿà¸«à¸™à¹‰à¸²à¸£à¸–à¹€à¸žà¸·à¹ˆà¸­à¹ƒà¸«à¹‰à¹à¸ªà¸‡à¸ªà¸§à¹ˆà¸²à¸‡à¹€à¸¡à¸·à¹ˆà¸­à¹ƒà¸”', 'à¸•à¸±à¹‰à¸‡à¹à¸•à¹ˆ 1 à¸—à¸¸à¹ˆà¸¡ à¸–à¸¶à¸‡ à¸•à¸µ 5', 'à¸•à¸±à¹‰à¸‡à¹à¸•à¹ˆ 2 à¸—à¸¸à¹ˆà¸¡ à¸–à¸¶à¸‡ 6 à¹‚à¸¡à¸‡à¹€à¸Šà¹‰à¸²', 'à¸žà¸£à¸°à¸­à¸²à¸—à¸´à¸•à¸¢à¹Œà¸à¸³à¸¥à¸±à¸‡à¸•à¸à¸”à¸´à¸™', 'à¸‚à¸“à¸°à¸—à¸µà¹ˆà¸¡à¸­à¸‡à¹„à¸¡à¹ˆà¹€à¸«à¹‡à¸™à¸–à¸™à¸™à¸‚à¹‰à¸²à¸‡à¸«à¸™à¹‰à¸²à¹„à¸”à¹‰à¸Šà¸±à¸”à¹€à¸ˆà¸™à¹ƒà¸™à¸£à¸°à¸¢à¸° 15 à¹€à¸¡à¸•à¸£', 4),
(14, 'à¸ªà¸±à¸à¸à¸²à¸“à¹€à¸ªà¸µà¸¢à¸‡à¹à¸•à¸£à¸ªà¸³à¸«à¸£à¸±à¸šà¸£à¸–à¸¢à¸™à¸•à¹Œà¹à¸¥à¸°à¸ˆà¸±à¸à¸£à¸¢à¸²à¸™à¸¢à¸™à¸•à¹Œà¹ƒà¸«à¹‰à¹„à¸”à¹‰à¸¢à¸´à¸™à¹ƒà¸™à¸£à¸°à¸¢à¸°à¹„à¸¡à¹ˆà¸™à¹‰à¸­à¸¢à¸à¸§à¹ˆà¸²', '60 à¹€à¸¡à¸•à¸£', '90 à¹€à¸¡à¸•à¸£', '100 à¹€à¸¡à¸•à¸£', '110 à¹€à¸¡à¸•à¸£', 1),
(15, 'à¸šà¸£à¸´à¹€à¸§à¸“à¸ªà¸±à¸à¸à¸²à¸“à¹„à¸Ÿà¸ˆà¸£à¸²à¸ˆà¸£ à¹€à¸¡à¸·à¹ˆà¸­à¹„à¸Ÿà¸ªà¸µà¹€à¸«à¸¥à¸·à¸­à¸‡', 'à¹ƒà¸«à¹‰à¸œà¸¹à¹‰à¸‚à¸±à¸šà¸‚à¸µà¹ˆà¸«à¸¢à¸¸à¸”à¸£à¸–à¸«à¸¥à¸±à¸‡à¹€à¸ªà¹‰à¸™à¹ƒà¸«à¹‰à¸«à¸¢à¸¸à¸”à¸£à¸–', 'à¹ƒà¸«à¹‰à¸œà¸¹à¹‰à¸‚à¸±à¸šà¸‚à¸µà¹ˆà¹€à¸•à¸£à¸µà¸¢à¸¡à¸«à¸¢à¸¸à¸”à¸£à¸–à¸«à¸¥à¸±à¸‡à¹€à¸ªà¹‰à¸™à¹ƒà¸«à¹‰à¸«à¸¢à¸¸à¸”à¸£à¸–', 'à¹ƒà¸«à¹‰à¸œà¸¹à¹‰à¸‚à¸±à¸šà¸‚à¸µà¹ˆà¸—à¸µà¹ˆà¹„à¸”à¹‰à¹€à¸¥à¸¢à¹€à¸ªà¹‰à¸™à¸«à¸¢à¸¸à¸”à¸£à¸–à¹„à¸›à¹à¸¥à¹‰à¸§à¹ƒà¸«à¹‰à¹€à¸¥à¸¢à¹„à¸›à¹„à¸”à¹‰à¹€à¸¥à¸¢', 'à¸–à¸¹à¸à¸—à¸¸à¸à¸‚à¹‰à¸­', 4),
(16, 'à¸à¸²à¸£à¸ˆà¸£à¸²à¸ˆà¸£ à¸•à¹ˆà¸­à¹„à¸›à¸™à¸µà¹‰ à¸‚à¹‰à¸­à¹ƒà¸”à¸–à¸¹à¸à¸•à¹‰à¸­à¸‡', 'à¸«à¹‰à¸²à¸¡à¸ˆà¸­à¸”à¸£à¸–à¸šà¸™à¸—à¸²à¸‡à¹€à¸—à¹‰à¸²', 'à¸«à¹‰à¸²à¸¡à¸ˆà¸­à¸”à¸£à¸–à¸šà¸™à¸ªà¸°à¸žà¸²à¸™à¸«à¸£à¸·à¸­à¹ƒà¸™à¸­à¸¸à¹‚à¸¡à¸‡à¸„à¹Œ', 'à¸«à¹‰à¸²à¸¡à¸ˆà¸­à¸”à¸£à¸–à¹ƒà¸™à¸—à¸²à¸‡à¸£à¹ˆà¸§à¸¡à¸—à¸²à¸‡à¹à¸¢à¸à¸«à¸£à¸·à¸­à¹ƒà¸™à¸£à¸°à¸¢à¸°à¸´à¸šà¹€à¸¡à¸•à¸£à¸ˆà¸²à¸à¸—à¸²à¸‡à¸£à¹ˆà¸§à¸¡', 'à¸–à¸¹à¸à¸—à¸¸à¸à¸‚à¹‰à¸­', 4),
(17, 'à¸‚à¹‰à¸­à¹ƒà¸”à¹€à¸›à¹‡à¸™à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸«à¸¡à¸²à¸¢à¸ˆà¸£à¸²à¸ˆà¸£à¸›à¸£à¸°à¹€à¸ à¸—à¸šà¸±à¸‡à¸„à¸±à¸š', 'à¹ƒà¸«à¹‰à¸—à¸²à¸‡', 'à¸—à¸²à¸‡à¹‚à¸—à¸•à¸±à¸”à¸—à¸²à¸‡à¸­à¸­à¸', 'à¸—à¸²à¸‡à¹‚à¸„à¹‰à¸‡à¸‚à¸§à¸²', 'à¸—à¸²à¸‡à¹à¸„à¸šà¸”à¹‰à¸²à¸™à¸‹à¹‰à¸²à¸¢', 1),
(18, 'à¹€à¸¡à¸·à¹ˆà¸­à¸£à¸–à¹€à¸ªà¸µà¸¢à¸„à¸§à¸£à¸›à¸Žà¸´à¸šà¸±à¸•à¸´à¸­à¸¢à¹ˆà¸²à¸‡à¹„à¸£', 'à¸ˆà¸­à¸”à¸£à¸–à¸—à¸´à¹‰à¸‡à¹„à¸§à¹‰à¸à¸¥à¸²à¸‡à¸–à¸™à¸™', 'à¸™à¸³à¸à¸´à¹ˆà¸‡à¹„à¸¡à¹‰à¸¡à¸²à¸§à¸²à¸‡à¹„à¸§à¹‰à¸—à¹‰à¸²à¸¢à¸£à¸–', 'à¹€à¸œà¸²à¸›à¹ˆà¸²à¸‚à¹‰à¸²à¸‡à¸—à¸²à¸‡à¸«à¸²à¸à¹€à¸›à¹‡à¸™à¸à¸¥à¸²à¸‡à¸„à¸·à¸™', 'à¸™à¸³à¸£à¸–à¹€à¸‚à¹‰à¸²à¸ˆà¸­à¸”à¸‚à¹‰à¸²à¸‡à¸—à¸²à¸‡,à¹€à¸›à¸´à¸”à¹„à¸Ÿà¸‰à¸¸à¸à¹€à¸‰à¸´à¸™', 4),
(19, 'à¸‚à¸±à¸šà¸£à¸–à¸•à¸­à¸™à¸à¸™à¸•à¸ à¸‚à¹‰à¸­à¹ƒà¸”à¸—à¸µà¹ˆà¸œà¸¹à¹‰à¸‚à¸±à¸šà¸‚à¸µà¹ˆà¹„à¸¡à¹ˆà¸„à¸§à¸£à¸›à¸Žà¸´à¸šà¸±à¸•à¸´', 'à¹€à¸›à¸´à¸”à¹„à¸Ÿà¸‰à¸¸à¸à¹€à¸‰à¸´à¸™à¸•à¸¥à¸­à¸”à¹€à¸ªà¹‰à¸™à¸—à¸²à¸‡', 'à¹€à¸›à¸´à¸”à¸—à¸µà¹ˆà¸›à¸±à¸”à¸™à¹‰à¸³à¸à¸™', 'à¹ƒà¸Šà¹‰à¸„à¸§à¸²à¸¡à¸£à¸°à¸¡à¸±à¸”à¸£à¸°à¸§à¸±à¸‡à¹€à¸žà¸´à¹ˆà¸¡à¸¡à¸²à¸à¸‚à¸¶à¹‰à¸™', 'à¸¥à¸”à¸„à¸§à¸²à¸¡à¹€à¸£à¹‡à¸§à¸‚à¸­à¸‡à¸£à¸–à¹ƒà¸«à¹‰à¸Šà¹‰à¸²à¸¥à¸‡à¸à¸§à¹ˆà¸²à¸›à¸à¸•à¸´', 1),
(20, 'à¸ªà¸±à¸à¸à¸²à¸“à¹„à¸Ÿà¹€à¸•à¸·à¸­à¸™à¸šà¸™à¹à¸œà¸‡à¸«à¸™à¹‰à¸²à¸›à¸±à¸”à¸£à¸–à¸ªà¸µà¹ƒà¸” à¸—à¸µà¹ˆà¹„à¸¡à¹ˆà¸„à¸§à¸£à¸›à¸£à¸²à¸à¸Žà¸‚à¸“à¸°à¸‚à¸±à¸šà¸£à¸–', 'à¸ªà¸µà¹à¸”à¸‡', 'à¸ªà¸µà¹€à¸‚à¸µà¸¢à¸§', 'à¸ªà¸µà¹€à¸«à¸¥à¸·à¸­à¸‡', 'à¸ªà¸µà¸¡à¹ˆà¸§à¸‡', 1),
(21, 'à¸à¸²à¸£à¸«à¸¡à¸¸à¸™à¸žà¸§à¸‡à¸¡à¸²à¸¥à¸±à¸¢à¸£à¸– à¸‚à¸“à¸°à¸ˆà¸­à¸”à¸£à¸–à¸­à¸¢à¸¹à¹ˆà¸à¸±à¸šà¸—à¸µà¹ˆà¸ˆà¸°à¸¡à¸µà¸œà¸¥à¸­à¸¢à¹ˆà¸²à¸‡à¹„à¸£', 'à¸—à¸³à¹ƒà¸«à¹‰à¸«à¸¡à¸¸à¸™à¸žà¸§à¸‡à¸¡à¸²à¸¥à¸±à¸¢à¸‡à¹ˆà¸²à¸¢à¸¡à¸²à¸à¸‚à¸¶à¹‰à¸™', 'à¸”à¸­à¸à¸¢à¸²à¸‡à¸ªà¸¶à¸à¹€à¸£à¹‡à¸§à¸à¸§à¹ˆà¸²à¸›à¸à¸•à¸´', 'à¸ªà¸´à¹‰à¸™à¹€à¸›à¸¥à¸·à¸­à¸‡à¸™à¹‰à¸³à¸¡à¸±à¸™à¹€à¸žà¸²à¹€à¸§à¸­à¸£à¹Œ', 'à¸ªà¸´à¹‰à¸™à¹€à¸›à¸¥à¸·à¸­à¸‡à¸™à¹‰à¸³à¸¡à¸±à¸™à¹€à¸Šà¸·à¹‰à¸­à¹€à¸žà¸¥à¸´à¸‡', 2),
(22, 'à¸‚à¸“à¸°à¸‚à¸±à¸šà¸£à¸–à¸¢à¸²à¸‡à¸£à¸–à¹à¸•à¸ à¸ˆà¸°à¸¡à¸µà¸­à¸²à¸à¸²à¸£à¸­à¸¢à¹ˆà¸²à¸‡à¹„à¸£', 'à¸žà¸§à¸‡à¸¡à¸²à¸¥à¸±à¸¢à¸£à¸–à¸ˆà¸°à¹„à¸£à¹‰à¸™à¹‰à¸³à¸«à¸™à¸±à¸', 'à¸žà¸§à¸‡à¸¡à¸²à¸¥à¸±à¸¢à¸ˆà¸°à¸«à¸™à¸±à¸ à¸£à¸–à¸ˆà¸°à¹€à¸­à¸µà¸¢à¸‡', 'à¸£à¸–à¸«à¸¢à¸¸à¸”à¸à¸°à¸—à¸±à¸™à¸«à¸±à¸™', 'à¹€à¸šà¸£à¸à¸ˆà¸°à¹„à¸¡à¹ˆà¹ˆà¸—à¸³à¸‡à¸²à¸™', 2),
(23, 'à¸–à¹‰à¸²à¸£à¸–à¹€à¸ªà¸µà¸¢à¸«à¸¥à¸±à¸à¸¥à¸·à¹ˆà¸™à¹„à¸–à¸¥à¸žà¸£à¹‰à¸­à¸¡à¹€à¸ªà¸µà¸¢à¸à¸²à¸£à¸—à¸£à¸‡à¸•à¸±à¸§ à¸„à¸§à¸£à¸›à¸Žà¸´à¸šà¸±à¸•à¸´à¸­à¸¢à¹ˆà¸²à¸‡à¹„à¸£à¹€à¸›à¹‡à¸™à¸­à¸±à¸™à¸”à¸±à¸šà¹à¸£à¸', 'à¸£à¸µà¸šà¹€à¸‚à¹‰à¸²à¹€à¸à¸µà¸¢à¸£à¹Œà¸•à¹ˆà¸³à¹€à¸žà¸·à¹ˆà¸­à¸‚à¸°à¸¥à¸­à¸„à¸§à¸²à¸¡à¹€à¸£à¹‡à¸§', 'à¸„à¹ˆà¸­à¸¢à¹†à¹€à¸«à¸¢à¸µà¸¢à¸šà¹à¸šà¹‰à¸™à¸„à¸¥à¸±à¸—à¸Šà¹Œ', 'à¸«à¸¡à¸¸à¸™à¸žà¸§à¸‡à¸¡à¸²à¸¥à¸±à¸¢à¹„à¸›à¸‹à¹‰à¸²à¸¢à¸šà¹‰à¸²à¸‡ à¸‚à¸§à¸²à¸šà¹‰à¸²à¸‡', 'à¸¥à¸”à¸„à¸§à¸²à¸¡à¹€à¸£à¹‡à¸§à¸ˆà¸±à¸šà¸žà¸§à¸‡à¸¡à¸²à¸¥à¸±à¸¢à¹ƒà¸«à¹‰à¸¡à¸±à¹ˆà¸™', 4),
(24, 'à¸à¸²à¸£à¸ˆà¸­à¸”à¸£à¸–à¸Šà¸´à¸”à¸‚à¸­à¸šà¸—à¸²à¸‡ à¸¥à¹‰à¸­à¸«à¸™à¹‰à¸²à¸„à¸§à¸£à¸­à¸¢à¸¹à¹ˆà¹ƒà¸™à¸¥à¸±à¸à¸©à¸“à¸°à¹ƒà¸”', 'à¸«à¸±à¸™à¹€à¸‚à¹‰à¸²à¸«à¸²à¸‚à¸­à¸šà¸—à¸²à¸‡', 'à¸­à¸¢à¸¹à¹ˆà¸­à¸¢à¹ˆà¸²à¸‡à¹„à¸£à¸à¹‡à¹„à¸”à¹‰', 'à¸•à¸£à¸‡à¹à¸¥à¸°à¸‚à¸™à¸²à¸™à¸à¸±à¸šà¸‚à¸­à¸šà¸—à¸²à¸‡à¸«à¸£à¸·à¸­à¸Ÿà¸¸à¸•à¸šà¸²à¸—', 'à¸«à¸±à¸™à¸­à¸­à¸à¸ˆà¸²à¸à¸‚à¸­à¸šà¸—à¸²à¸‡', 3),
(25, 'à¹€à¸¡à¸·à¹ˆà¸­à¸•à¸³à¸£à¸§à¸ˆà¹ƒà¸«à¹‰à¹ƒà¸šà¸ªà¸±à¹ˆà¸‡à¸à¸±à¸šà¹€à¸£à¸² à¸ªà¸²à¸¡à¸²à¸£à¸–à¹ƒà¸Šà¹‰à¹ƒà¸šà¸ªà¸±à¹ˆà¸‡à¸—à¸µà¹ˆà¹„à¸”à¹‰à¹à¸—à¸™à¹ƒà¸šà¸‚à¸±à¸šà¸‚à¸µà¹ˆà¹„à¸”à¹‰à¸à¸µà¹ˆà¸§à¸±à¸™', '5 à¸§à¸±à¸™', '7 à¸§à¸±à¸™', '14 à¸§à¸±à¸™', '30 à¸§à¸±à¸™', 2),
(26, 'à¸£à¸–à¸—à¸µà¹ˆà¸¡à¸µà¹„à¸§à¹‰à¸‚à¸²à¸¢à¸«à¸£à¸·à¸­à¸‹à¹ˆà¸­à¸¡à¸­à¸™à¸¸à¸à¸²à¸•à¹ƒà¸«à¹‰à¸‚à¸±à¸šà¹„à¸”à¹‰à¹€à¸§à¸¥à¸²à¹ƒà¸”', 'à¸•à¸±à¹‰à¸‡à¹à¸•à¹ˆ 1 à¸—à¸¸à¹ˆà¸¡ à¸–à¸¶à¸‡ à¸•à¸µ 5', 'à¸•à¸±à¹‰à¸‡à¹à¸•à¹ˆ 2 à¸—à¸¸à¹ˆà¸¡ à¸–à¸¶à¸‡ 6 à¹‚à¸¡à¸‡à¹€à¸Šà¹‰à¸²', 'à¹€à¸§à¸¥à¸²à¸žà¸£à¸°à¸­à¸²à¸—à¸´à¸•à¸¢à¹Œà¸‚à¸¶à¹‰à¸™à¸–à¸¶à¸‡à¸žà¸£à¸°à¸­à¸²à¸—à¸´à¸•à¸¢à¹Œà¸•à¸', 'à¸•à¸¥à¸­à¸”à¹€à¸§à¸¥à¸²', 3),
(27, 'à¸à¸²à¸£à¹ƒà¸Šà¹‰à¹€à¸à¸µà¸¢à¸£à¹Œà¹€à¸žà¸·à¹ˆà¸­à¸‚à¸¶à¹‰à¸™à¸¥à¸‡à¹€à¸‚à¸²à¸‚à¹‰à¸­à¹ƒà¸”à¸–à¸¹à¸à¸•à¹‰à¸­à¸‡', 'à¸‚à¸¶à¹‰à¸™à¹à¸¥à¸°à¸¥à¸‡à¹ƒà¸Šà¹‰à¹€à¸à¸µà¸¢à¸£à¹Œà¸•à¹ˆà¸³', 'à¸‚à¸¶à¹‰à¸™à¹ƒà¸Šà¹‰à¹€à¸à¸µà¸¢à¸£à¸·à¸•à¹ˆà¸³à¹à¸¥à¸°à¸¥à¸‡à¹ƒà¸Šà¹‰à¹€à¸à¸µà¸¢à¸£à¹Œà¸ªà¸¹à¸‡', 'à¸‚à¸¶à¹‰à¸™à¹ƒà¸Šà¹‰à¹€à¸à¸µà¸¢à¸£à¹Œà¸•à¹ˆà¸³à¹à¸¥à¸°à¸¥à¸‡à¹ƒà¸Šà¹‰à¹€à¸à¸µà¸¢à¸£à¹Œà¸§à¹ˆà¸²à¸‡', 'à¸‚à¸¶à¹‰à¸™à¹à¸¥à¸°à¸¥à¸‡à¹ƒà¸Šà¹‰à¹€à¸à¸µà¸¢à¸£à¹Œà¸ªà¸¹à¸‡', 1),
(28, 'à¸à¸£à¸“à¸µà¸œà¸¹à¹‰à¸à¸£à¸°à¸—à¸³à¸„à¸§à¸²à¸¡à¸œà¸´à¸”à¸–à¸¹à¸à¸¢à¸¶à¸”à¹ƒà¸šà¸‚à¸±à¸šà¸‚à¸µà¹ˆà¹€à¸žà¸·à¹ˆà¸­à¸™à¸³à¹„à¸›à¸šà¸±à¸™à¸—à¸¶à¸à¸„à¸°à¹à¸™à¸™à¸ˆà¸¸à¸–à¸¹à¸à¸¢à¸¶à¸”à¸„à¸£à¸±à¹‰à¸‡à¸¥à¸°à¹„à¸¡à¹ˆà¹€à¸à¸´à¸™à¸à¸µà¹ˆà¸§à¸±à¸™', '30 à¸§à¸±à¸™', '40 à¸§à¸±à¸™', '50 à¸§à¸±à¸™', '60 à¸§à¸±à¸™', 4),
(29, 'à¸à¸²à¸£à¸‚à¸±à¸šà¸£à¸–à¸•à¹‰à¸­à¸‡à¸‚à¸±à¸¢à¸£à¸–à¸Šà¸´à¸”à¸”à¹‰à¸²à¸™à¹ƒà¸”à¸‚à¸­à¸‡à¸–à¸™à¸™', 'à¸”à¹‰à¸²à¸™à¸‚à¸§à¸²', 'à¸”à¹‰à¸²à¸™à¸‹à¹‰à¸²à¸¢', 'à¸”à¹‰à¸²à¸™à¸—à¸µà¹ˆà¹„à¸¡à¹ˆà¸¡à¸µà¸£à¸–', 'à¸–à¸¹à¸à¸—à¸¸à¸à¸‚à¹‰à¸­', 2),
(30, 'à¹€à¸¡à¸·à¹ˆà¸­à¸šà¸£à¸£à¸—à¸¸à¸à¸‚à¸­à¸‡à¸¢à¸·à¹ˆà¸™à¹€à¸à¸´à¸™à¸„à¸§à¸²à¸¡à¸¢à¸²à¸§à¸‚à¸­à¸‡à¸•à¸±à¸§à¸£à¸– à¸•à¹‰à¸­à¸‡à¸•à¸´à¸”à¸˜à¸‡à¸«à¸£à¸·à¸­à¸œà¹‰à¸²à¸ªà¸µà¸­à¸°à¹„à¸£', 'à¸ªà¸µà¹à¸”à¸‡', 'à¸ªà¸µà¸‚à¸²à¸§', 'à¸ªà¸µà¸Ÿà¹‰à¸²', 'à¸ªà¸µà¸”à¸³', 1),
(31, 'à¹€à¸¡à¸·à¹ˆà¸­à¸šà¸£à¸£à¸—à¸¸à¸à¸‚à¸­à¸‡à¸¢à¸·à¹ˆà¸™à¹€à¸à¸´à¸™à¸„à¸§à¸²à¸¡à¸¢à¸²à¸§à¸‚à¸­à¸‡à¸•à¸±à¸§à¸£à¸– à¸•à¹‰à¸­à¸‡à¸•à¸´à¸”à¸˜à¸‡à¹ƒà¸«à¹‰à¹€à¸«à¹‡à¸™à¸£à¸°à¸¢à¸°à¹€à¸—à¹ˆà¸²à¹ƒà¸”', '50 à¹€à¸¡à¸•à¸£', '150 à¹€à¸¡à¸•à¸£', 'à¹„à¸¡à¹ˆà¸™à¹‰à¸­à¸¢à¸à¸§à¹ˆà¸² 50 à¹€à¸¡à¸•à¸£', 'à¹„à¸¡à¹ˆà¸™à¹‰à¸­à¸¢à¸à¸§à¹ˆà¸² 150 à¹€à¸¡à¸•à¸£', 4),
(32, 'à¸‚à¹‰à¸­à¹ƒà¸”à¸›à¸Žà¸´à¸šà¸±à¸•à¸´à¹„à¸¡à¹ˆà¸–à¸¹à¸à¸•à¹‰à¸­à¸‡ à¹€à¸¡à¸·à¹ˆà¸­à¸£à¸–à¸‚à¸­à¸‡à¸—à¹ˆà¸²à¸™à¸ˆà¸­à¸”à¹€à¸ªà¸µà¸¢à¸à¸¥à¸²à¸‡à¸—à¸²à¸‡à¸–à¸™à¸™à¸«à¸¥à¸§à¸‡', 'à¸•à¸±à¹‰à¸‡à¸ªà¸±à¸à¸¥à¸±à¸à¸©à¸“à¹Œà¹à¸ªà¸”à¸‡à¸§à¹ˆà¸²à¸¡à¸µà¸£à¸–à¸ˆà¸­à¸”à¹€à¸ªà¸µà¸¢à¹ƒà¸™à¸£à¸°à¸¢à¸° 150 à¹€à¸¡à¸•à¸£', 'à¹€à¸›à¸´à¸”à¸ªà¸±à¸à¸à¸²à¸“à¹„à¸Ÿà¸‰à¸¸à¸à¹€à¸‰à¸´à¸™à¸žà¸£à¹‰à¸­à¸¡à¹„à¸Ÿà¸«à¸™à¹‰à¸²à¸£à¸–', 'à¸¢à¸·à¸™à¹‚à¸šà¸à¸”à¹‰à¸²à¸™à¸—à¹‰à¸²à¸¢à¸£à¸–à¹€à¸žà¸·à¹ˆà¸­à¸ªà¹ˆà¸‡à¸ªà¸±à¸à¸à¸²à¸“à¸à¸±à¸™à¸£à¸–à¸Šà¸™à¸—à¹‰à¸²à¸¢à¸£à¸–à¹€à¸£à¸²', 'à¹€à¸›à¸´à¸”à¸à¹ˆà¸²à¸à¸£à¸°à¹‚à¸›à¸£à¸‡à¸”à¹‰à¸²à¸™à¸«à¸™à¹‰à¸²à¹à¸¥à¸°à¸—à¹‰à¸²à¸¢à¸£à¸– à¹€à¸žà¸·à¹ˆà¸­à¸ªà¹ˆà¸‡à¸ªà¸±à¸à¸à¸²à¸“', 3),
(33, 'à¸‚à¹‰à¸­à¹ƒà¸”à¹€à¸›à¹‡à¸™à¸›à¸±à¸ˆà¸ˆà¸±à¸¢à¸ªà¸³à¸„à¸±à¸à¸—à¸µà¹ˆà¸à¹ˆà¸­à¹ƒà¸«à¹‰à¹€à¸à¸´à¸”à¸­à¸¸à¸šà¸±à¸•à¸´à¹€à¸«à¸•à¸¸à¸—à¸²à¸‡à¸–à¸™à¸™à¸¡à¸²à¸à¸—à¸µà¹ˆà¸ªà¸¸à¸”', 'à¸–à¸™à¸™', 'à¸œà¸¹à¹‰à¸‚à¸±à¸šà¸‚à¸µà¹ˆà¸£à¸–', 'à¸ªà¸±à¸à¸à¸²à¸“à¹„à¸Ÿà¸ˆà¸£à¸²à¸ˆà¸£', 'à¹„à¸Ÿà¸ªà¹ˆà¸­à¸‡à¸–à¸™à¸™à¸šà¸£à¸´à¹€à¸§à¸“à¸—à¸²à¸‡à¸£à¹ˆà¸§à¸¡à¸—à¸²à¸‡à¹à¸¢à¸', 2),
(34, 'à¸à¸²à¸£à¸•à¸£à¸§à¸ˆà¹€à¸‹à¹‡à¸à¹à¸šà¸•à¹€à¸•à¸­à¸£à¸µà¹ˆà¹à¸šà¸šà¸‡à¹ˆà¸²à¸¢à¹† à¸§à¹ˆà¸²à¸¡à¸µà¹„à¸Ÿà¸›à¸à¸•à¸´à¸«à¸£à¸·à¸­à¹„à¸¡à¹ˆ à¸à¸°à¸—à¸³à¹„à¸”à¹‰à¸­à¸¢à¹ˆà¸²à¸‡à¹„à¸£', 'à¸šà¸µà¸šà¹à¸•à¸£à¹à¸¥à¸°à¸Ÿà¸±à¸‡à¹€à¸ªà¸µà¸¢à¸‡à¸§à¹ˆà¸²à¸›à¸à¸•à¸´à¸«à¸£à¸·à¸­à¹€à¸šà¸²à¸¥à¸‡', 'à¸­à¸­à¸à¸£à¸– 2-3 à¹€à¸¡à¸•à¸£à¹à¸¥à¹‰à¸§à¸—à¸”à¸ªà¸­à¸š', 'à¹€à¸«à¸¢à¸µà¸¢à¸šà¸„à¸¥à¸±à¸•à¸‹à¹Œà¹à¸¥à¸°à¹€à¸‚à¹‰à¸²à¹€à¸à¸µà¸¢à¸£à¹Œà¹ƒà¸«à¹‰à¸„à¸£à¸š', 'à¸«à¸¡à¸¸à¸™à¸žà¸§à¸‡à¸¡à¸²à¸¥à¸±à¸¢à¹„à¸›à¸”à¹‰à¸²à¸™à¸‹à¹‰à¸²à¸¢à¹à¸¥à¸°à¸‚à¸§à¸²', 1),
(35, 'à¹„à¸”à¸ªà¸•à¸²à¸£à¹Œà¸—à¸—à¸³à¸«à¸™à¹‰à¸²à¸—à¸µà¹ˆà¸­à¸°à¹„à¸£', 'à¸—à¸³à¸«à¸™à¹‰à¸²à¸—à¸µà¹ˆà¸«à¸¡à¸¸à¸™à¸žà¸§à¸‡à¸¡à¸²à¸¥à¸±à¸¢à¹„à¸”à¹‰à¸”à¸µ', 'à¸—à¸³à¹ƒà¸«à¹‰à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸¢à¸™à¸•à¹Œà¸•à¸´à¸”', 'à¸—à¸³à¹ƒà¸«à¹‰à¸£à¸°à¸šà¸šà¹€à¸šà¸£à¸à¸—à¸³à¸‡à¸²à¸™à¸”à¸µà¸‚à¸¶à¹‰à¸™', 'à¸—à¸³à¹ƒà¸«à¹‰à¹à¸­à¸£à¹Œà¹ƒà¸™à¸£à¸–à¹€à¸¢à¹‡à¸™à¸‚à¸¶à¹‰à¸™', 2),
(36, 'à¸™à¹‰à¸³à¸¡à¸±à¸™à¹à¸à¹Šà¸ªà¹‚à¸‹à¸®à¸­à¸¥à¹Œ à¸¡à¸µà¸„à¸§à¸²à¸¡à¸«à¸¡à¸²à¸¢à¸­à¸¢à¹ˆà¸²à¸‡à¹„à¸£', 'à¸™à¹‰à¸³à¸¡à¸±à¸™à¸—à¸µà¹ˆà¸¡à¸µà¸ªà¹ˆà¸§à¸™à¸œà¸ªà¸¡à¸‚à¸­à¸‡à¹€à¸­à¸—à¸²à¸™à¸­à¸¥', 'à¸™à¹‰à¸³à¸¡à¸±à¸™à¸—à¸µà¹ˆà¸¡à¸µà¸ªà¹ˆà¸§à¸™à¸œà¸ªà¸¡à¸‚à¸­à¸‡à¸ªà¸²à¸£à¸•à¸°à¸à¸±à¹ˆà¸§', 'à¸¡à¸µà¸™à¹‰à¸³à¸¡à¸±à¸™à¸—à¸µà¹ˆà¹„à¸”à¹‰à¸ˆà¸²à¸à¸žà¸·à¸Š 100 à¹€à¸›à¸­à¸£à¹Œà¹€à¸‹à¹‡à¸™à¸•à¹Œ', 'à¸™à¹‰à¸³à¸¡à¸±à¸™à¸—à¸µà¹ˆà¸¡à¸µà¸ªà¹ˆà¸§à¸™à¸œà¸ªà¸¡à¸‚à¸­à¸‡à¸™à¹‰à¸³à¸¡à¸±à¸™à¸«à¸¥à¹ˆà¸­à¸¥à¸·à¹ˆà¸™', 1),
(37, 'à¸«à¸²à¸à¸—à¹ˆà¸²à¸™à¹€à¸•à¸´à¸¡à¸™à¹‰à¸³à¸¡à¸±à¸™à¸œà¸´à¸”à¸›à¸£à¸°à¹€à¸ à¸— à¸„à¸§à¸£à¸›à¸Žà¸´à¸¢à¸±à¸•à¸´à¸­à¸¢à¹ˆà¸²à¸‡à¹„à¸£', 'à¹€à¸•à¸´à¸¡à¸Šà¸™à¸´à¸”à¸—à¸µà¹ˆà¸–à¸¹à¸à¹€à¸‚à¹‰à¸²à¹„à¸› à¹€à¸žà¸·à¹ˆà¸­à¸—à¸³à¹ƒà¸«à¹‰à¹€à¸ˆà¸·à¸­à¸ˆà¸²à¸‡', 'à¸‚à¸±à¸šà¹„à¸›à¹ƒà¸«à¹‰à¸«à¸¡à¸”à¸–à¸±à¸‡ à¹à¸¥à¹‰à¸§à¹€à¸•à¸´à¸¡à¸Šà¸™à¸´à¸”à¸—à¸µà¹ˆà¸–à¸¹à¸à¹€à¸‚à¹‰à¸²à¹„à¸›', 'à¸—à¸³à¸à¸²à¸£à¹€à¸›à¸¥à¸µà¹ˆà¸¢à¸™à¸–à¹ˆà¸²à¸¢à¸­à¸­à¸à¸—à¸±à¸™à¸—à¸µ', 'à¸‚à¸±à¸šà¹„à¸›à¸–à¹‰à¸²à¸¡à¸µà¸œà¸¥à¸•à¹ˆà¸­à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸¢à¸™à¸•à¹Œà¸„à¹ˆà¸­à¸¢à¸–à¹ˆà¸²à¸¢à¸­à¸­à¸', 3),
(38, 'à¸‚à¹‰à¸­à¹ƒà¸”à¸à¸¥à¹ˆà¸²à¸§à¸–à¸¹à¸à¸•à¹‰à¸­à¸‡', 'à¹„à¸¡à¹ˆà¸„à¸§à¸£à¹€à¸•à¸´à¸¡à¸™à¹‰à¸³à¸¡à¸±à¸™à¸«à¸¥à¹ˆà¸­à¸¥à¸·à¹ˆà¸™ à¸¥à¸‡à¹„à¸›à¸œà¸ªà¸¡à¹ƒà¸™à¸™à¹‰à¸³à¸¡à¸±à¸™à¹€à¸Šà¸·à¹‰à¸­à¹€à¸žà¸¥à¸´à¸‡', 'à¸à¸²à¸£à¹€à¸•à¸´à¸¡à¸™à¹‰à¸³à¸¡à¸±à¸™à¸„à¸§à¸£à¹€à¸•à¸´à¸¡à¹ƒà¸™à¸Šà¹ˆà¸§à¸‡à¸à¸¥à¸²à¸‡à¸§à¸±à¸™', 'à¹€à¸£à¸²à¹„à¸¡à¹ˆà¸ªà¸²à¸¡à¸²à¸£à¸–à¹€à¸•à¸´à¸¡à¸™à¹‰à¸³à¸¡à¸±à¸™à¸„à¹ˆà¸²à¸­à¸­à¸à¹€à¸—à¸™ 95 à¹à¸—à¸™à¸­à¸­à¸à¹€à¸—à¸™ 91 à¹„à¸”à¹‰', 'à¸™à¹‰à¸³à¸¡à¸±à¸™à¸—à¸µà¹ˆà¹à¸žà¸‡à¸„à¸·à¸­à¸™à¹‰à¸³à¸¡à¸±à¸™à¸—à¸µà¹ˆà¸”à¸µà¸—à¸µà¹ˆà¸ªà¸¸à¸”', 1),
(39, 'à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸¢à¸™à¸•à¹Œà¹€à¸šà¸™à¸‹à¸´à¸™à¸à¸±à¸šà¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸¢à¸™à¸•à¹Œà¸”à¸µà¹€à¸‹à¸¥à¸¡à¸µà¸‚à¹‰à¸­à¹à¸•à¸à¸•à¹ˆà¸²à¸‡à¸­à¸¢à¹ˆà¸²à¸‡à¹„à¸£', 'à¸¡à¸µà¸£à¸°à¸šà¸šà¸à¸²à¸£à¸ªà¸•à¸²à¸£à¹Œà¸—à¸•à¹ˆà¸²à¸‡à¸à¸±à¸™', 'à¸¡à¸µà¸£à¸°à¸šà¸šà¸à¸²à¸£à¹ƒà¸Šà¹‰à¸™à¹‰à¸³à¸£à¸°à¸šà¸²à¸¢à¸„à¸§à¸²à¸¡à¸£à¹‰à¸­à¸™à¸•à¹ˆà¸²à¸‡à¸à¸±à¸™', 'à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸¢à¸™à¸•à¹Œà¹€à¸šà¸™à¸‹à¸´à¸™à¹ƒà¸Šà¹‰à¸«à¸±à¸§à¹€à¸—à¸µà¸µà¸¢à¸™à¹ƒà¸™à¸à¸²à¸£à¸ˆà¸¸à¸”à¸£à¸°à¹€à¸šà¸´à¸”', 'à¸¡à¸µà¸£à¸°à¸šà¸šà¹„à¸Ÿà¸•à¹ˆà¸²à¸‡à¸à¸±à¸™', 3),
(40, 'à¹ƒà¸™à¸‚à¸“à¸°à¸—à¸µà¹ˆà¸—à¹ˆà¸²à¸™à¹€à¸•à¸´à¸¡à¸™à¹‰à¸³à¸¡à¸±à¸™à¹€à¸Šà¸·à¹‰à¸­à¹€à¸žà¸¥à¸´à¸‡à¸—à¹ˆà¸²à¸™à¸„à¸§à¸£à¸›à¸Žà¸´à¸šà¸±à¸•à¸´à¸­à¸¢à¹ˆà¸²à¸‡à¹„à¸£', 'à¸”à¸±à¸šà¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸¢à¸™à¸•à¹Œ', 'à¸¥à¸‡à¸ˆà¸²à¸à¸£à¸–à¹à¸¥à¸°à¹€à¸”à¸´à¸™à¸­à¸­à¸à¹ƒà¸«à¹‰à¹„à¸à¸¥', 'à¸›à¸´à¸”à¹à¸­à¸£à¹Œà¹ƒà¸™à¸£à¸–', 'à¸•à¸´à¸”à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸¢à¸™à¸•à¹Œà¹„à¸§à¹‰', 1),
(41, 'à¸™à¹‰à¸³à¸¡à¸±à¸™à¹€à¸šà¸™à¸‹à¸´à¸™ E85 à¸«à¸¡à¸²à¸¢à¸„à¸§à¸²à¸¡à¸§à¹ˆà¸²', 'à¸¡à¸µà¸ªà¹ˆà¸§à¸™à¸œà¸ªà¸¡à¸‚à¸­à¸‡à¹€à¸¡à¸—à¸²à¸™à¸­à¸¥ 15 à¸ªà¹ˆà¸§à¸™', 'à¸¡à¸µà¸ªà¹ˆà¸§à¸™à¸œà¸ªà¸¡à¸‚à¸­à¸‡à¹€à¸­à¸—à¸²à¸™à¸­à¸¥ 15 à¸ªà¹ˆà¸§à¸™', 'à¸¡à¸µà¸ªà¹ˆà¸§à¸™à¸œà¸ªà¸¡à¸‚à¸­à¸‡à¸™à¹‰à¸³à¸¡à¸±à¸™ 85 à¸ªà¹ˆà¸§à¸™', 'à¸¡à¸µà¸ªà¹ˆà¸§à¸™à¸œà¸ªà¸¡à¸‚à¸­à¸‡à¹€à¸­à¸—à¸²à¸™à¸­à¸¥ 85 à¸ªà¹ˆà¸§à¸™', 4),
(42, 'à¸£à¸–à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸¢à¸™à¸•à¹Œà¸”à¸µà¹€à¸‹à¸¥à¸«à¸²à¸à¸¡à¸µà¸„à¸§à¸±à¸™à¸”à¸³à¸¡à¸²à¸à¸œà¸´à¸”à¸›à¸à¸•à¸´à¹€à¸à¸´à¸”à¸ˆà¸²à¸à¸ªà¸²à¹€à¸«à¸•à¸¸à¹ƒà¸”', 'à¸à¸£à¸­à¸‡à¸­à¸²à¸à¸²à¸¨à¸•à¸±à¸™', 'à¹€à¸•à¸´à¸¡à¸™à¹‰à¸³à¸¡à¸±à¸™à¸œà¸´à¸”à¸›à¸£à¸°à¹€à¸ à¸—', 'à¹€à¸•à¸´à¸¡à¸™à¹‰à¸³à¸¡à¸±à¸™à¸›à¸¥à¸­à¸¡', 'à¹ƒà¸™à¸™à¹‰à¸³à¸¡à¸±à¸™à¸¡à¸µà¹€à¸Šà¸·à¹‰à¸­à¹€à¸žà¸¥à¸´à¸‡à¸¡à¸µà¸™à¹‰à¸³à¸œà¸ªà¸¡à¸­à¸¢à¸¹à¹ˆ', 1),
(43, 'à¸–à¹‰à¸²à¹€à¸•à¸´à¸¡à¸¥à¸¡à¸¢à¸²à¸‡à¸­à¹ˆà¸­à¸™à¹€à¸à¸´à¸™à¹„à¸› à¸ˆà¸°à¸¡à¸µà¸œà¸¥à¸à¸±à¸šà¸¢à¸²à¸‡à¸­à¸¢à¹ˆà¸²à¸‡à¹„à¸£', 'à¸”à¸­à¸à¸¢à¸²à¸‡à¸•à¸£à¸‡à¸ˆà¸°à¸£à¸¹à¹‰à¸ªà¸¶à¸à¹€à¸£à¹‡à¸§à¸à¸§à¹ˆà¸²à¸›à¸à¸•à¸´', 'à¸à¸²à¸£à¸‚à¸±à¸šà¸‚à¸µà¹ˆà¸ˆà¸°à¹à¸‚à¹‡à¸‡à¸à¸£à¸°à¸”à¹‰à¸²à¸‡', 'à¸—à¸³à¹ƒà¸«à¹‰à¸”à¸­à¸à¸¢à¸²à¸‡à¸—à¸²à¸‡à¸”à¹‰à¸²à¸™à¸‚à¹‰à¸²à¸‡à¸—à¸±à¹‰à¸‡à¸ªà¸­à¸‡à¸ªà¸¶à¸à¸«à¸£à¸­', 'à¸—à¸³à¹ƒà¸«à¹‰à¸à¸´à¸™à¸™à¹‰à¸³à¸¡à¸±à¸™à¸™à¹‰à¸­à¸¢à¸¥à¸‡', 1),
(44, 'à¹‚à¸”à¸¢à¸›à¸à¸•à¸´à¸à¸²à¸£à¸ªà¸¥à¸±à¸šà¸¢à¸²à¸‡à¸„à¸§à¸£à¸ªà¸¥à¸±à¸šà¸—à¸¸à¸à¸£à¸°à¸¢à¸°à¸—à¸²à¸‡à¸à¸µà¹ˆà¸à¸´à¹‚à¸¥à¹€à¸¡à¸•à¸£', '10,000 à¸à¸´à¹‚à¸¥à¹€à¸¡à¸•à¸£', '25,000 à¸à¸´à¹‚à¸¥à¹€à¸¡à¸•à¸£', '30,000 à¸à¸´à¹‚à¸¥à¹€à¸¡à¸•à¸£', '35,000 à¸à¸´à¹‚à¸¥à¹€à¸¡à¸•à¸£', 1),
(45, 'à¸‚à¹‰à¸­à¹ƒà¸”à¹„à¸¡à¹ˆà¹ƒà¸Šà¹ˆà¸ªà¸²à¹€à¸«à¸•à¸¸à¸‚à¸­à¸‡à¸à¸²à¸£à¸ªà¸•à¸²à¸£à¹Œà¸—à¸£à¸–à¹„à¸¡à¹ˆà¸•à¸´à¸”', 'à¸‚à¸±à¹‰à¸§à¹à¸šà¸•à¹€à¸•à¸­à¸£à¸µà¹ˆà¸«à¸¥à¸§à¸¡', 'à¸ªà¸²à¸¢à¸žà¸²à¸™à¸«à¸¢à¹ˆà¸­à¸™', 'à¸™à¹‰à¸³à¸¡à¸±à¸™à¹€à¸Šà¸·à¹‰à¸­à¹€à¸žà¸¥à¸´à¸‡à¸«à¸¡à¸”', 'à¸¡à¸­à¹€à¸•à¸­à¸£à¹Œà¸ªà¸•à¸²à¸£à¹Œà¸—à¹€à¸ªà¸µà¸¢', 1),
(46, 'à¹€à¸šà¸£à¸à¸¡à¸·à¸­à¹„à¸¡à¹ˆà¸„à¸§à¸£à¹ƒà¸Šà¹‰à¹ƒà¸™à¸ªà¸–à¸²à¸™à¸°à¸à¸²à¸£à¸“à¹Œà¹ƒà¸”', 'à¹ƒà¸Šà¹‰à¸«à¸¢à¸¸à¸”à¸£à¸–à¸šà¸™à¸—à¸²à¸‡à¸¥à¸²à¸”à¸Šà¸±à¸™', 'à¹ƒà¸Šà¹‰à¹€à¸¡à¸·à¸­à¸«à¸¢à¸¸à¸”à¸£à¸–à¸‚à¸“à¸°à¸•à¸´à¸”à¹„à¸Ÿà¹à¸”à¸‡', 'à¹ƒà¸Šà¹‰à¸ˆà¸­à¸”à¸£à¸–à¸šà¸™à¸—à¸²à¸‡à¸¥à¸²à¸”à¸Šà¸±à¸™', 'à¹ƒà¸Šà¹‰à¹€à¸¡à¸·à¹ˆà¸­à¸‚à¸±à¸šà¸£à¸–à¸¥à¸‡à¸—à¸²à¸‡à¸¥à¸²à¸”à¸Šà¸±à¸™', 4),
(47, 'à¹€à¸šà¸£à¸à¹€à¸—à¹‰à¸²à¸ˆà¸°à¸—à¸³à¸‡à¸²à¸™à¸—à¸µà¹ˆà¸¥à¹‰à¸­à¹ƒà¸”à¸šà¹‰à¸²à¸‡', 'à¸¥à¹‰à¸­à¸«à¸™à¹‰à¸²à¸‹à¹‰à¸²à¸¢ à¸¥à¹‰à¸­à¸«à¸¥à¸±à¸‡à¸‚à¸§à¸²', 'à¸¥à¹‰à¸­à¸„à¸¹à¹ˆà¸«à¸™à¹‰à¸²', 'à¸¥à¹‰à¸­à¸„à¸¹à¹ˆà¸«à¸¥à¸±à¸‡', 'à¸—à¸±à¹‰à¸‡ 4 à¸¥à¹‰à¸­', 4),
(48, 'à¸«à¸¡à¹‰à¸­à¸™à¹‰à¸³à¸£à¸–à¸¢à¸™à¸•à¹Œà¸¡à¸µà¸«à¸™à¹‰à¸²à¸—à¸µà¹ˆà¸­à¸°à¹„à¸£', 'à¸£à¸°à¸šà¸²à¸¢à¸„à¸§à¸²à¸¡à¸£à¹‰à¸­à¸™à¸‚à¸­à¸‡à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸¢à¸™à¸•à¹Œ', 'à¸—à¸³à¹ƒà¸«à¹‰à¸£à¸–à¸§à¸´à¹ˆà¸‡à¹€à¸£à¹‡à¸§à¸‚à¸¶à¹‰à¸™', 'à¸£à¸°à¸šà¸²à¸¢à¸„à¸§à¸²à¸¡à¸£à¹‰à¸­à¸™à¹ƒà¸«à¹‰à¸«à¹‰à¸­à¸‡à¸œà¸¹à¹‰à¹‚à¸”à¸¢à¸ªà¸²à¸£', 'à¸—à¸³à¹ƒà¸«à¹‰à¸›à¸£à¸°à¸«à¸¢à¸±à¸”à¸™à¹‰à¸³à¸¡à¸±à¸™', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`User`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `number` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;