-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2024 at 05:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Table structure for table `bookdetails`
--

CREATE TABLE `bookdetails` (
  `bookreservationID` int(11) NOT NULL,
  `reservationdetailsID` int(11) NOT NULL,
  `bookID` int(11) NOT NULL,
  `bookQuantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookdetails`
--

INSERT INTO `bookdetails` (`bookreservationID`, `reservationdetailsID`, `bookID`, `bookQuantity`) VALUES
(1, 3, 1, 11),
(3, 5, 8, 33),
(4, 1, 5, 44),
(5, 2, 7, 55);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `reservationdetailsID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reservationdetailsID`) VALUES
(1),
(1),
(2),
(2),
(4);

-- --------------------------------------------------------

--
-- Table structure for table `reservationdetails`
--

CREATE TABLE `reservationdetails` (
  `reservationdetailsID` int(11) NOT NULL,
  `createDate` date NOT NULL,
  `expiryDate` date NOT NULL,
  `numofItems` int(11) NOT NULL,
  `totalAmount` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `items` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservationdetails`
--

INSERT INTO `reservationdetails` (`reservationdetailsID`, `createDate`, `expiryDate`, `numofItems`, `totalAmount`, `studentID`, `items`) VALUES
(1, '2024-03-12', '2024-03-08', 1, 1, 9, 'wrqwer'),
(2, '2024-03-13', '2024-03-08', 2, 33, 9, 'rewer'),
(3, '2024-03-06', '2024-03-09', 3, 3, 9, 'rqwerer'),
(4, '2024-03-08', '2024-03-15', 4, 4, 9, 'rewrwerr'),
(5, '2024-03-08', '2024-03-09', 5, 5, 9, 'rewrwer'),
(8, '0000-00-00', '0000-00-00', 112, 121, 9, 'wrewerw');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentID`, `firstName`, `lastName`, `uicEmail`, `password`) VALUES
(4, 'lau', 'lapating', 'test4@uic.edu.ph', '312312'),
(5, 'dos', 'dosdos', 'test5@uic.edu.ph', ''),
(6, 'smbot', 'qweqw', 'sdfsdfsdfsd', ''),
(7, '1321', '1232', '213112', ''),
(8, 'lemwel', 'baysonnn', 'lemuelbayson@gmail.com', ''),
(9, '1', 'dasdsas', 'dsaasdasad', ''),
(11, '8', 'dasdasd', 'asdsadsd', ''),
(12, 'angel', 'esperida', 'Angel@gmail.com', ''),
(13, 'sample ', 'Sample2', 'Uic@gmail.com', '');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Indexes for table `bookdetails`
--
ALTER TABLE `bookdetails`
  ADD PRIMARY KEY (`bookreservationID`),
  ADD KEY `reservationdetailsID` (`reservationdetailsID`),
  ADD KEY `bookID` (`bookID`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD KEY `reservationdetailsID` (`reservationdetailsID`);

--
-- Indexes for table `reservationdetails`
--
ALTER TABLE `reservationdetails`
  ADD PRIMARY KEY (`reservationdetailsID`),
  ADD KEY `studentID` (`studentID`);

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
  ADD KEY `uniformdetails_ibfk_1` (`reservationdetailsID`),
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
-- AUTO_INCREMENT for table `bookdetails`
--
ALTER TABLE `bookdetails`
  MODIFY `bookreservationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reservationdetails`
--
ALTER TABLE `reservationdetails`
  MODIFY `reservationdetailsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `studentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
-- Constraints for table `bookdetails`
--
ALTER TABLE `bookdetails`
  ADD CONSTRAINT `bookdetails_ibfk_1` FOREIGN KEY (`reservationdetailsID`) REFERENCES `reservationdetails` (`reservationdetailsID`),
  ADD CONSTRAINT `bookdetails_ibfk_2` FOREIGN KEY (`bookID`) REFERENCES `book` (`bookID`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`reservationdetailsID`) REFERENCES `reservationdetails` (`reservationdetailsID`);

--
-- Constraints for table `reservationdetails`
--
ALTER TABLE `reservationdetails`
  ADD CONSTRAINT `reservationdetails_ibfk_1` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`);

--
-- Constraints for table `uniform`
--
ALTER TABLE `uniform`
  ADD CONSTRAINT `uniform_ibfk_1` FOREIGN KEY (`mngstore`) REFERENCES `admin` (`mngstore`);

--
-- Constraints for table `uniformdetails`
--
ALTER TABLE `uniformdetails`
  ADD CONSTRAINT `uniformdetails_ibfk_1` FOREIGN KEY (`reservationdetailsID`) REFERENCES `reservationdetails` (`reservationdetailsID`),
  ADD CONSTRAINT `uniformdetails_ibfk_2` FOREIGN KEY (`uniformID`) REFERENCES `uniform` (`uniformID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
