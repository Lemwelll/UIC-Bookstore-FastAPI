-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2024 at 04:30 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore_grp13`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `mngstore` varchar(50) NOT NULL,
  `adminID` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`mngstore`, `adminID`, `username`, `password`) VALUES
('', '', '', ''),
('qweq', 'eqwwq', 'ewq', 'eqweqw'),
('test1', '1111', 'admin1', '1111'),
('test2', '2222', 'admin2', '2222'),
('test3', '3333', 'admin3', '3333'),
('test4', '4444', 'admin4', '4444'),
('test5', '5555', 'admin5', '5555'),
('test9', '12', 'dasdssasad', 'dasdsa');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `mngstore` varchar(50) NOT NULL,
  `bookID` int(11) NOT NULL,
  `mngbkstore` varchar(50) NOT NULL,
  `bookTitle` varchar(50) NOT NULL,
  `bookquantityAvailability` int(11) NOT NULL,
  `bookpriceDetails` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`mngstore`, `bookID`, `mngbkstore`, `bookTitle`, `bookquantityAvailability`, `bookpriceDetails`) VALUES
('test1', 1, 'sddadasd', 'pharm', 12332, 121),
('test1', 2, '11', 'testdev', 1, 111),
('test3', 3, '33', 'testdev3', 3, 333),
('test4', 4, '44', 'testdev4', 4, 444),
('test5', 5, '55', 'testdev5', 5, 555),
('test5', 7, 'dsada', 'dsadsad', 123, 2112),
('test1', 8, 'dsad', 'dsadsaddsadadasd', 123, 2112);

-- --------------------------------------------------------

--
-- Table structure for table `reservationdetails`
--

CREATE TABLE `reservationdetails` (
  `createDate` longtext NOT NULL,
  `reservationdetailsID` int(11) NOT NULL,
  `expiryDate` date NOT NULL,
  `numofItems` int(11) NOT NULL,
  `totalAmount` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `items` longtext NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservationdetails`
--

INSERT INTO `reservationdetails` (`createDate`, `reservationdetailsID`, `expiryDate`, `numofItems`, `totalAmount`, `studentID`, `items`, `status`) VALUES
('Mon Apr 22 2024 20:27:00 GMT+0800 (China Standard Time)', 27, '0000-00-00', 6, 13986, 123123123, '\"[{\\\"id\\\":1,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (PE)\\\",\\\"price\\\":12321,\\\"stock\\\":1,\\\"size\\\":\\\"M\\\",\\\"image\\\":\\\"\\\"},{\\\"id\\\":2,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (uniform)\\\",\\\"price\\\":111,\\\"stock\\\":1,\\\"size\\\":\\\"M\\\",\\\"image\\\":\\\"\\\"},{\\\"id\\\":6,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (PE)\\\",\\\"price\\\":555,\\\"stock\\\":1,\\\"size\\\":\\\"XXL\\\",\\\"image\\\":\\\"\\\"},{\\\"id\\\":5,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (Polo)\\\",\\\"price\\\":444,\\\"stock\\\":1,\\\"size\\\":\\\"XL\\\",\\\"image\\\":\\\"\\\"},{\\\"id\\\":3,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (uniform)\\\",\\\"price\\\":222,\\\"stock\\\":1,\\\"size\\\":\\\"S\\\",\\\"image\\\":\\\"\\\"},{\\\"id\\\":4,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (PE)\\\",\\\"price\\\":333,\\\"stock\\\":1,\\\"size\\\":\\\"L\\\",\\\"image\\\":\\\"\\\"}]\"', 'pending'),
('Mon Apr 22 2024 20:34:07 GMT+0800 (China Standard Time)', 28, '0000-00-00', 5, 1665, 123123123, '\"[{\\\"id\\\":5,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (Polo)\\\",\\\"price\\\":444,\\\"stock\\\":1,\\\"size\\\":\\\"XL\\\",\\\"image\\\":\\\"\\\"},{\\\"id\\\":6,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (PE)\\\",\\\"price\\\":555,\\\"stock\\\":1,\\\"size\\\":\\\"XXL\\\",\\\"image\\\":\\\"\\\"},{\\\"id\\\":2,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (uniform)\\\",\\\"price\\\":111,\\\"stock\\\":1,\\\"size\\\":\\\"M\\\",\\\"image\\\":\\\"\\\"},{\\\"id\\\":3,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (uniform)\\\",\\\"price\\\":222,\\\"stock\\\":1,\\\"size\\\":\\\"S\\\",\\\"image\\\":\\\"\\\"},{\\\"id\\\":4,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (PE)\\\",\\\"price\\\":333,\\\"stock\\\":1,\\\"size\\\":\\\"L\\\",\\\"image\\\":\\\"\\\"}]\"', 'pending'),
('Mon Apr 22 2024 21:47:10 GMT+0800 (China Standard Time)', 29, '0000-00-00', 7, 5899, 123123123, '\"[{\\\"id\\\":5,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (Polo)\\\",\\\"price\\\":444,\\\"stock\\\":1,\\\"size\\\":\\\"XL\\\",\\\"image\\\":\\\"\\\"},{\\\"id\\\":1,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"pharm\\\",\\\"price\\\":121,\\\"stock\\\":1,\\\"image\\\":\\\"\\\"},{\\\"id\\\":2,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"testdev\\\",\\\"price\\\":111,\\\"stock\\\":1,\\\"image\\\":\\\"\\\"},{\\\"id\\\":4,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"testdev4\\\",\\\"price\\\":444,\\\"stock\\\":1,\\\"image\\\":\\\"\\\"},{\\\"id\\\":5,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"testdev5\\\",\\\"price\\\":555,\\\"stock\\\":1,\\\"image\\\":\\\"\\\"},{\\\"id\\\":7,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"dsadsad\\\",\\\"price\\\":2112,\\\"stock\\\":1,\\\"image\\\":\\\"\\\"},{\\\"id\\\":8,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"dsadsaddsadadasd\\\",\\\"price\\\":2112,\\\"stock\\\":1,\\\"image\\\":\\\"\\\"}]\"', 'pending'),
('Mon Apr 22 2024 21:48:19 GMT+0800 (China Standard Time)', 30, '0000-00-00', 7, 5788, 123123123, '\"[{\\\"id\\\":8,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"dsadsaddsadadasd\\\",\\\"price\\\":2112,\\\"stock\\\":1,\\\"image\\\":\\\"\\\"},{\\\"id\\\":4,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"testdev4\\\",\\\"price\\\":444,\\\"stock\\\":1,\\\"image\\\":\\\"\\\"},{\\\"id\\\":3,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"testdev3\\\",\\\"price\\\":333,\\\"stock\\\":1,\\\"image\\\":\\\"\\\"},{\\\"id\\\":5,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"testdev5\\\",\\\"price\\\":555,\\\"stock\\\":1,\\\"image\\\":\\\"\\\"},{\\\"id\\\":7,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"dsadsad\\\",\\\"price\\\":2112,\\\"stock\\\":1,\\\"image\\\":\\\"\\\"},{\\\"id\\\":2,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"testdev\\\",\\\"price\\\":111,\\\"stock\\\":1,\\\"image\\\":\\\"\\\"},{\\\"id\\\":1,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"pharm\\\",\\\"price\\\":121,\\\"stock\\\":1,\\\"image\\\":\\\"\\\"}]\"', 'pending'),
('Mon Apr 22 2024 21:48:33 GMT+0800 (China Standard Time)', 31, '0000-00-00', 1, 111, 123123123, '\"[{\\\"id\\\":2,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (uniform)\\\",\\\"price\\\":111,\\\"stock\\\":1,\\\"size\\\":\\\"M\\\",\\\"image\\\":\\\"\\\"}]\"', 'pending'),
('Mon Apr 22 2024 21:52:12 GMT+0800 (China Standard Time)', 32, '0000-00-00', 5, 5556, 123123123, '\"[{\\\"id\\\":4,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"testdev4\\\",\\\"price\\\":444,\\\"stock\\\":1,\\\"image\\\":\\\"\\\"},{\\\"id\\\":3,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"testdev3\\\",\\\"price\\\":333,\\\"stock\\\":1,\\\"image\\\":\\\"\\\"},{\\\"id\\\":8,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"dsadsaddsadadasd\\\",\\\"price\\\":2112,\\\"stock\\\":1,\\\"image\\\":\\\"\\\"},{\\\"id\\\":5,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"testdev5\\\",\\\"price\\\":555,\\\"stock\\\":1,\\\"image\\\":\\\"\\\"},{\\\"id\\\":7,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"dsadsad\\\",\\\"price\\\":2112,\\\"stock\\\":1,\\\"image\\\":\\\"\\\"}]\"', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentID` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `uicEmail` varchar(250) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentID`, `firstName`, `lastName`, `uicEmail`, `password`) VALUES
(1, 'Raldin', 'Casidar', 'raldin.disomimba13@gmail.com', 'dindin23');

-- --------------------------------------------------------

--
-- Table structure for table `uniform`
--

CREATE TABLE `uniform` (
  `mngstore` varchar(50) NOT NULL,
  `uniformID` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `size` varchar(30) NOT NULL,
  `uniformQuantityAvailability` int(11) NOT NULL,
  `uniformPriceDetails` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uniform`
--

INSERT INTO `uniform` (`mngstore`, `uniformID`, `type`, `size`, `uniformQuantityAvailability`, `uniformPriceDetails`) VALUES
('test1', 1, 'PE', 'M', 213, 12321),
('test1', 2, 'uniform', 'M', 1, 111),
('test2', 3, 'uniform', 'S', 22, 222),
('test3', 4, 'PE', 'L', 3, 333),
('test4', 5, 'Polo', 'XL', 4, 444),
('test5', 6, 'PE', 'XXL', 5, 555);

-- --------------------------------------------------------

--
-- Table structure for table `uniformdetails`
--

CREATE TABLE `uniformdetails` (
  `uniformreservationID` int(11) NOT NULL,
  `reservationdetailsID` int(11) NOT NULL,
  `uniformID` int(11) NOT NULL,
  `uniformQuantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uniformdetails`
--

INSERT INTO `uniformdetails` (`uniformreservationID`, `reservationdetailsID`, `uniformID`, `uniformQuantity`) VALUES
(1, 3, 1, 11),
(2, 4, 1, 22),
(4, 1, 5, 44),
(5, 2, 1, 55);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`mngstore`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bookID`),
  ADD KEY `mngstore` (`mngstore`);

--
-- Indexes for table `reservationdetails`
--
ALTER TABLE `reservationdetails`
  ADD PRIMARY KEY (`reservationdetailsID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentID`);

--
-- Indexes for table `uniform`
--
ALTER TABLE `uniform`
  ADD PRIMARY KEY (`uniformID`),
  ADD KEY `mngstore` (`mngstore`);

--
-- Indexes for table `uniformdetails`
--
ALTER TABLE `uniformdetails`
  ADD PRIMARY KEY (`uniformreservationID`),
  ADD KEY `uniformID` (`uniformID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `bookID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reservationdetails`
--
ALTER TABLE `reservationdetails`
  MODIFY `reservationdetailsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `studentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uniform`
--
ALTER TABLE `uniform`
  MODIFY `uniformID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `uniformdetails`
--
ALTER TABLE `uniformdetails`
  MODIFY `uniformreservationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`mngstore`) REFERENCES `admin` (`mngstore`);

--
-- Constraints for table `uniform`
--
ALTER TABLE `uniform`
  ADD CONSTRAINT `uniform_ibfk_1` FOREIGN KEY (`mngstore`) REFERENCES `admin` (`mngstore`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
