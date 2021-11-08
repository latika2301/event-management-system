-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2019 at 03:57 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sanchalana2k20`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `event_title` varchar(50) NOT NULL,
  `event_price` int(11) DEFAULT NULL,
  `participents` int(100) DEFAULT 0,
  `img_link` text DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_title`, `event_price`, `participents`, `img_link`, `type_id`) VALUES
(1, 'Cryptohunt', 100, 0, 'https://miro.medium.com/max/676/1*oWIHu9edhH2D7gB-iiUW9A.jpeg', 1),
(2, 'Search-it', 50, 2, 'images/cs03.jpg', 1),
(3, 'Technical-Quiz', 50, 2, 'images/quiz.png', 1),
(4, 'Competitive-Coding', 50, 1, 'images/coding.jpg', 1),
(5, 'Pubg', 50, 1, 'images/pubg.jpg', 2),
(6, 'Counter-Strike', 100, 1, 'images/counter.jpg\r\n', 2),
(7, 'Fashion-Show', 200, 1, 'images/onstage.jpg', 3),
(8, 'Dance', 100, 0, 'images/dance.jpg', 3),
(9, 'Singing', 50, 0, 'images/sing.jpg', 3),
(10, 'Svit-Idol', 100, 0, 'images/idol.jpg', 3),
(11, 'Cooking-Without-Fire', 50, 0, 'images/cook.jpg', 4),
(12, 'Short-Movie', 200, 0, 'images/offstage.jpg', 4),
(13, 'Mehandi', 100, 0, 'data:image/jpeg;base64,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', 4),
(14, 'Rangoli', 50, 0, 'https://sl.sbs.com.au/public/image/file/fa9ee424-5767-4732-9f74-72c6a8d44c15/crop/16x9_large', 4);

-- --------------------------------------------------------

--
-- Table structure for table `event_info`
--

CREATE TABLE `event_info` (
  `event_id` int(10) NOT NULL,
  `Date` date DEFAULT NULL,
  `time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_info`
--

INSERT INTO `event_info` (`event_id`, `Date`, `time`) VALUES
(1, '2021-8-16', '3.00pm'),
(2, '2021-8-16', '1.00pm'),
(3, '2021-8-16', '11.00am'),
(4, '2021-8-16', '9.30am'),
(5, '2021-8-17', '10.00am'),
(6, '2021-7-17', '11.00am'),
(7, '2021-7-17', '9.30pm'),
(8, '2021-7-17', '7.00pm'),
(9, '2021-7-17', '5.00pm'),
(10, '2021-7-17', '6.00pm'),
(11, '2021-7-16', '10.30am'),
(12, '2021-7-16', '10.00am'),
(13, '2021-8-12', '3pm'),
(14, '2021-8-19', '2.00pm');

-- --------------------------------------------------------

--
-- Table structure for table `event_type`
--

CREATE TABLE `event_type` (
  `type_id` int(10) NOT NULL,
  `type_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_type`
--

INSERT INTO `event_type` (`type_id`, `type_title`) VALUES
(1, 'Technical Events'),
(2, 'Gaming Events'),
(3, 'On Stage Events'),
(4, 'Off Stage Events');

-- --------------------------------------------------------

--
-- Table structure for table `participent`
--

CREATE TABLE `participent` (
  `usn` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `branch` varchar(11) NOT NULL,
  `sem` int(11) NOT NULL,
  `email` varchar(300) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `college` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `participent`
--

INSERT INTO `participent` (`usn`, `name`, `branch`, `sem`, `email`, `phone`, `college`) VALUES
('1VA17CS005', 'Amit', 'CSE', 2, 'amit@gmail.com', '8123300011', 'IIIT'),
('1VA17CS012', 'Utkarsh', 'cse', 2, 'UTKARSH@GMAIL.COM', '9934736623', 'IIIT'),
('1VA17CS022', 'Krushnananda', 'cse', 2, 'Krushnananda@gmail.com', '7888387323', 'IIIT'),
('1VA17CS025', 'Mythri', 'ece', 2, 'mythri@saividya.ac.in', '8998848488', 'IIIT'),
('1VA17CS034', 'Prajwal', 'cse', 2, 'prajwal@gmail.com', '9858787438', 'IIIT'),
('1VA17IS045', 'Prathiksha', 'ece', 2, 'prathi@gmail.com', '7897854345', 'IIIT');

-- --------------------------------------------------------

--
-- Table structure for table `registered`
--

CREATE TABLE `registered` (
  `rid` int(11) NOT NULL,
  `usn` varchar(20) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registered`
--

INSERT INTO `registered` (`rid`, `usn`, `event_id`) VALUES
(1, '1VA17CS005', 2),
(2, '1VA17CS012', 4),
(3, '1VA17CS034', 2),
(4, '1VA17CS005', 3),
(5, '1VA17CS012', 3),
(6, '1VA17CS012', 5),
(8, '1VA17CS005', 6),
(10, '1VA17CS034', 7);

--
-- Triggers `registered`
--
DELIMITER $$
CREATE TRIGGER `count` AFTER INSERT ON `registered` FOR EACH ROW update events
set events.participents=events.participents+1
WHERE events.event_id=new.event_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `staff_coordinator`
--

CREATE TABLE `staff_coordinator` (
  `stid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_coordinator`
--

INSERT INTO `staff_coordinator` (`stid`, `name`, `phone`, `event_id`) VALUES
(1, 'Basant.A', '9956436610', 1),
(2, 'Priyanka.H', '9956436123', 2),
(3, 'Chetna.S', '9956436456', 3),
(4, 'R.K.Vyas', '9956436789', 4),
(5, 'Amit.K.A', '9956436101', 5),
(6, 'Smita.N', '9123436610', 6),
(7, 'Amit.K', '9456436610', 7),
(8, 'Anand.A', '9789436610', 8),
(9, 'Anupam.K', '9956412310', 9),
(10, 'Ashish.S', '9956445610', 10),
(11, 'Parikshit.S', '9956473510', 11),
(12, 'Priyanka.M', '9955636610', 12),
(13, 'Vinita.T', '8948476464', 13),
(14, 'Anand.A', NULL, 14);

-- --------------------------------------------------------

--
-- Table structure for table `student_coordinator`
--

CREATE TABLE `student_coordinator` (
  `sid` int(11) NOT NULL,
  `st_name` varchar(100) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_coordinator`
--

INSERT INTO `student_coordinator` (`sid`, `st_name`, `phone`, `event_id`) VALUES
(1, 'Ankur.A', '6956436610', 1),
(2, 'Vinay.B', '7956436123', 2),
(3, 'Arjun.A', '8956436456', 3),
(4, 'Sanjana', '6956436789', 4),
(5, 'Aman.S', '7956436101', 5),
(6, 'Pruthvi.P', '8123436610', 6),
(7, 'Anshuman.A.N', '6456436610', 7),
(8, 'Abhinandhan.A', '7789436610', 8),
(9, 'Aditya.D', '7956412310', 9),
(10, 'Nandlal', '7956445610', 10),
(11, 'Mythri', '6956473510', 11),
(12, 'Dhruv.S', '8955636610', 12),
(13, 'Kavya', '8994874384', 13),
(14, 'Rishitha', NULL, 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `event_info`
--
ALTER TABLE `event_info`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `event_type`
--
ALTER TABLE `event_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `participent`
--
ALTER TABLE `participent`
  ADD PRIMARY KEY (`usn`);

--
-- Indexes for table `registered`
--
ALTER TABLE `registered`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `staff_coordinator`
--
ALTER TABLE `staff_coordinator`
  ADD PRIMARY KEY (`stid`);

--
-- Indexes for table `student_coordinator`
--
ALTER TABLE `student_coordinator`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event_info`
--
ALTER TABLE `event_info`
  MODIFY `event_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `registered`
--
ALTER TABLE `registered`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `staff_coordinator`
--
ALTER TABLE `staff_coordinator`
  MODIFY `stid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `student_coordinator`
--
ALTER TABLE `student_coordinator`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
