-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 25, 2018 at 10:52 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hr`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`) VALUES
(1, 'การบันทึกบัญชีเจ้าหนี้'),
(2, 'การใช้โปรแกรมควบคุมสต๊อคสินค้า'),
(3, 'เทคนิคการขายสำหรับผู้จัดการสาขา');

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE IF NOT EXISTS `persons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PID` varchar(13) NOT NULL,
  `title` varchar(50) NOT NULL,
  `firstName` varchar(150) NOT NULL,
  `lastName` varchar(150) NOT NULL,
  `positionName` varchar(150) NOT NULL,
  `workStartDate` date NOT NULL,
  `birthDate` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `PID` (`PID`),
  KEY `firstName` (`firstName`),
  KEY `lastName` (`lastName`),
  KEY `workStartDate` (`workStartDate`),
  KEY `birthDate` (`birthDate`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`id`, `PID`, `title`, `firstName`, `lastName`, `positionName`, `workStartDate`, `birthDate`) VALUES
(1, '3950200636678', 'นาย', 'วินัย', 'ดีเยี่ยม', 'พนักงานขาย', '2014-04-23', '1994-04-22'),
(2, '1950300637789', 'นางสาว', 'รัตนา', 'แสงอินทร์', 'พนักงานคุมสต๊อค', '2012-04-23', '1990-08-25'),
(3, '8523691478521', 'นาง', 'ปองศรี', 'วีระศักดานุวัฒนะ', 'ผู้จัดการฝ่ายขายเขตพื้นที่ 5', '2000-08-24', '1983-04-03');

-- --------------------------------------------------------

--
-- Table structure for table `traininglogs`
--

CREATE TABLE IF NOT EXISTS `traininglogs` (
  `personId` int(11) NOT NULL COMMENT 'ไอดีของพนักงาน',
  `courseId` int(11) NOT NULL COMMENT 'ไอดีของคอร์ส',
  `startDate` date NOT NULL COMMENT 'วันเดือนปีที่เริ่มเข้าอบรม',
  `duration` int(11) NOT NULL COMMENT 'ระยะเวลาที่อบรม(วัน)',
  PRIMARY KEY (`personId`,`courseId`,`startDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `traininglogs`
--

