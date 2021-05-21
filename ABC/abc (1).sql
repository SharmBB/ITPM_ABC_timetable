-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2021 at 03:35 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abc`
--

-- --------------------------------------------------------

--
-- Table structure for table `consecutive`
--

CREATE TABLE `consecutive` (
  `Id` int(11) NOT NULL,
  `Session1` int(11) NOT NULL,
  `Session2` int(11) NOT NULL,
  `Session3` int(11) NOT NULL,
  `Session4` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consecutive`
--

INSERT INTO `consecutive` (`Id`, `Session1`, `Session2`, `Session3`, `Session4`) VALUES
(6, 16, 33, 0, 0),
(7, 12, 34, 35, 0),
(8, 14, 36, 37, 39),
(9, 12, 40, 0, 0),
(10, 31, 42, 43, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `EmployeeId` varchar(6) NOT NULL,
  `LecturerName` varchar(200) NOT NULL,
  `Faculty` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Center` varchar(100) NOT NULL,
  `Building` varchar(100) NOT NULL,
  `Level` int(11) NOT NULL,
  `Rank` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`EmployeeId`, `LecturerName`, `Faculty`, `Department`, `Center`, `Building`, `Level`, `Rank`) VALUES
('E001', 'Nelum Chathuranka', 'Computing', 'IT', 'Malabe', 'A-Block', 3, '3.E001'),
('E002', 'Dilshan De Silva', 'Computing', 'Software', 'Malabe', 'B-Block', 2, '2.E002'),
('E003', 'Gaya Thamali', 'Computing', 'Data Science', 'Malabe', 'C-Block', 2, '2.E003'),
('E004', 'Nalaka ', 'Computing', 'Software', 'Malabe', 'New Building', 1, '1.E004'),
('E005', 'Janani', 'Computing', 'Bussiness', 'Malabe', 'New Building', 3, '3.E005'),
('E006', 'usal', 'Computing', 'Computing', 'Malabe', 'B-Block', 2, '2.E006'),
('E007', 'Pathum', 'Computing', 'Network', 'Malabe', 'B-Block', 2, '2.E007'),
('E008', 'Nuwan', 'Computing', 'ISE', 'Metro', 'A-Block', 1, '1.E008'),
('E009', 'Sasikka', 'Computing', 'Network', 'Malabe', 'B-Block', 2, '2.E009'),
('E010', 'Archana', 'Computing', 'IT', 'Malabe', 'A-Block', 3, '3.E010'),
('E011', 'Delina', 'Computing', 'ISE', 'Malabe', 'A-Block', 3, '3.E011');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `Id` int(11) NOT NULL,
  `BuildingName` varchar(50) NOT NULL,
  `RoomName` varchar(50) NOT NULL,
  `Capacity` int(11) NOT NULL,
  `RoomType` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`Id`, `BuildingName`, `RoomName`, `Capacity`, `RoomType`) VALUES
(8, 'NewBuilding', 'N201', 100, 'LectureHall'),
(9, 'E-Building', 'E01', 200, 'LectureHall'),
(10, 'NewBuilding', 'N202', 50, 'Laboratory'),
(11, 'MainBuilding', '401', 100, 'Laboratory'),
(12, 'MainBuilding', '301', 200, 'LectureHall'),
(1, 'NotAllocate', 'NotAllocate', 0, 'NotAllocate');

-- --------------------------------------------------------

--
-- Table structure for table `new`
--

CREATE TABLE `new` (
  `SubjectName` varchar(200) NOT NULL,
  `LecturerName` varchar(200) NOT NULL,
  `RoomName` varchar(200) NOT NULL,
  `Id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `new`
--

INSERT INTO `new` (`SubjectName`, `LecturerName`, `RoomName`, `Id`) VALUES
('NDM', 'Delina', '301', 1);

-- --------------------------------------------------------

--
-- Table structure for table `not_available`
--

CREATE TABLE `not_available` (
  `Id` int(11) NOT NULL,
  `LecturerId` varchar(12) NOT NULL,
  `GroupId` varchar(30) NOT NULL,
  `SubGroupId` varchar(30) NOT NULL,
  `SessionId` int(11) NOT NULL,
  `RoomId` int(11) NOT NULL,
  `Day` varchar(15) NOT NULL,
  `StartTime` double NOT NULL,
  `EndTime` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `overlap`
--

CREATE TABLE `overlap` (
  `Id` int(11) NOT NULL,
  `Session1` int(11) NOT NULL,
  `Session2` int(11) NOT NULL,
  `Session3` int(11) NOT NULL,
  `Session4` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `overlap`
--

INSERT INTO `overlap` (`Id`, `Session1`, `Session2`, `Session3`, `Session4`) VALUES
(3, 16, 43, 0, 0),
(4, 24, 42, 0, 0),
(5, 12, 19, 0, 0),
(6, 30, 39, 0, 0),
(7, 21, 23, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `parallel`
--

CREATE TABLE `parallel` (
  `Id` int(11) NOT NULL,
  `Session1` int(11) NOT NULL,
  `Session2` int(11) NOT NULL,
  `Session3` int(11) NOT NULL,
  `Session4` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parallel`
--

INSERT INTO `parallel` (`Id`, `Session1`, `Session2`, `Session3`, `Session4`) VALUES
(4, 26, 30, 0, 0),
(6, 13, 23, 0, 0),
(7, 25, 26, 0, 0),
(9, 18, 20, 24, 0),
(10, 28, 29, 0, 0),
(11, 15, 17, 19, 0);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `Id` int(11) NOT NULL,
  `Lecturer1Id` varchar(6) NOT NULL,
  `Lecturer2Id` varchar(6) NOT NULL,
  `SubjectCode` varchar(10) NOT NULL,
  `GroupId` varchar(30) NOT NULL,
  `Tag` varchar(10) NOT NULL,
  `Room` int(11) NOT NULL,
  `TotalStudent` int(11) NOT NULL,
  `Duration` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`Id`, `Lecturer1Id`, `Lecturer2Id`, `SubjectCode`, `GroupId`, `Tag`, `Room`, `TotalStudent`, `Duration`) VALUES
(16, 'E006', 'E002', 'IT1022', 'Y3S1.IM.5', '4', 1, 250, 2),
(15, 'E002', 'E005', 'IT1113', 'Y3S2.IT.8', '5', 1, 200, 2),
(14, 'E003', 'E001', 'IT1030', 'Y1S1.IT.1', '5', 8, 200, 2),
(13, 'E001', 'E001', 'IT1133', 'Y3S2.IT.8', '3', 11, 250, 1),
(12, 'E004', 'E005', 'IT1010', 'Y1S1.IT.3', '2', 1, 150, 2),
(17, 'E001', 'E002', 'IT1020', 'Y3S1.IM.5', '5', 1, 200, 2),
(18, 'E002', 'E003', 'IT1133', 'Y1S1.IT.3', '2', 1, 200, 3),
(19, 'E011', 'E008', 'ISE2020', 'Y1S1.IT.3', '3', 1, 200, 2),
(20, 'E007', 'E008', 'IT5050', 'Y1S1.IT.3', '5', 1, 300, 2),
(21, 'E003', 'E008', 'IT1010', 'Y1S1.IT.3', '2', 1, 300, 2),
(22, 'E009', 'E007', 'IT5050', 'Y3S2.IT.8', '3', 1, 200, 2),
(23, 'E001', 'E010', 'IT1010', 'Y1S1.IT.1', '2', 1, 250, 2),
(24, 'E004', 'E010', 'IT1022', 'Y3S1.IM.5', '5', 1, 200, 2),
(25, 'E010', 'E009', 'IS2020', 'Y2S2.CSE.11', '4', 1, 350, 2),
(26, 'E010', 'E011', 'IT1113', 'Y3S1.IM.5', '4', 1, 350, 1),
(27, 'E001', 'E011', 'IT1113', 'Y1S1.IT.3', '2', 1, 250, 2),
(28, 'E007', 'E009', 'IT5050', 'Y1S2.CSSE.1', '5', 1, 150, 2),
(29, 'E011', 'E008', 'IT1113', 'Y2S2.CSE.11', '2', 1, 400, 3),
(30, 'E005', 'E002', 'IT1133', 'Y3S1.IM.5', '3', 1, 200, 2),
(31, 'E005', 'E011', 'ISE2020', 'Y1S1.IT.3', '5', 1, 300, 2),
(32, 'E007', 'E009', 'IT5050', 'Y1S1.IT.3', '4', 1, 300, 2),
(33, 'E002', 'E006', 'IT1022', 'Y3S1.IM.5', '3', 1, 250, 2),
(34, 'E005', 'E004', 'IT1010', 'Y1S1.IT.3', '3', 1, 150, 2),
(35, 'E005', 'E004', 'IT1010', 'Y1S1.IT.3', '4', 1, 150, 2),
(36, 'E001', 'E003', 'IT1030', 'Y1S1.IT.1', '3', 1, 200, 2),
(37, 'E001', 'E003', 'IT1030', 'Y1S1.IT.1', '2', 1, 200, 2),
(39, 'E001', 'E003', 'IT1030', 'Y1S1.IT.1', '4', 1, 200, 2),
(40, 'E005', 'E004', 'IT1010', 'Y1S1.IT.3', '3', 1, 150, 2),
(41, 'E011', 'E005', 'ISE2020', 'Y1S1.IT.3', '2', 1, 300, 2),
(42, 'E005', 'E011', 'ISE2020', 'Y1S1.IT.3', '3', 1, 300, 2),
(43, 'E005', 'E011', 'ISE2020', 'Y1S1.IT.3', '4', 1, 300, 2);

-- --------------------------------------------------------

--
-- Table structure for table `studentgroub`
--

CREATE TABLE `studentgroub` (
  `Id` int(11) NOT NULL,
  `AcadamicYearSem` varchar(20) NOT NULL,
  `Program` varchar(20) NOT NULL,
  `GroupNo` int(11) NOT NULL,
  `SubGroupNo` int(11) NOT NULL,
  `GroupId` varchar(30) NOT NULL,
  `SubGroupId` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentgroub`
--

INSERT INTO `studentgroub` (`Id`, `AcadamicYearSem`, `Program`, `GroupNo`, `SubGroupNo`, `GroupId`, `SubGroupId`) VALUES
(1, 'Y1S1', 'IT', 1, 1, 'Y1S1.IT.1', 'Y1S1.IT.1.1'),
(3, 'Y1S2', 'CSSE', 1, 2, 'Y1S2.CSSE.1', 'Y1S2.CSSE.1.2'),
(4, 'Y1S1', 'IT', 3, 1, 'Y1S1.IT.3', 'Y1S1.IT.3.1'),
(5, 'Y2S2', 'CSE', 11, 1, 'Y2S2.CSE.11', 'Y2S2.CSE.11.1'),
(6, 'Y3S1', 'IM', 5, 2, 'Y3S1.IM.5', 'Y3S1.IM.5.2'),
(7, 'Y3S2', 'IT', 8, 1, 'Y3S2.IT.8', 'Y3S2.IT.8.1');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `SubjectCode` varchar(10) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `OfferedYear` int(11) NOT NULL,
  `OfferedSem` int(11) NOT NULL,
  `LectureHour` int(11) NOT NULL,
  `LabHour` int(11) NOT NULL,
  `TuteHour` int(11) NOT NULL,
  `EvaluationHour` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`SubjectCode`, `SubjectName`, `OfferedYear`, `OfferedSem`, `LectureHour`, `LabHour`, `TuteHour`, `EvaluationHour`) VALUES
('IT1113', 'Information System', 1, 1, 2, 1, 1, 3),
('IT1133', 'Software Fundamental', 1, 1, 2, 0, 1, 3),
('IT1010', 'Introduction to Programming', 1, 1, 2, 1, 1, 0),
('IT1030', 'Database System', 3, 1, 2, 2, 2, 1),
('IT1020', 'Programming Application and Framework', 3, 1, 2, 2, 2, 1),
('IT1022', 'OOP', 1, 2, 2, 1, 1, 1),
('IS2020', 'Computer Network', 2, 2, 2, 1, 2, 1),
('ISE2020', 'Information System', 3, 2, 2, 1, 1, 1),
('IT5050', 'NDM', 2, 2, 2, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `TagCode` int(11) NOT NULL,
  `TagName` varchar(10) NOT NULL,
  `RelatedTag` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`TagCode`, `TagName`, `RelatedTag`) VALUES
(3, '3', 'Lecture'),
(2, '2', 'Tutorial'),
(4, '4', 'Lab'),
(5, '5', 'Pratical');

-- --------------------------------------------------------

--
-- Table structure for table `workingday`
--

CREATE TABLE `workingday` (
  `Id` int(11) NOT NULL,
  `WorkingDays` tinyint(1) NOT NULL,
  `Monday` tinyint(1) NOT NULL,
  `Tuesday` tinyint(1) NOT NULL,
  `Wednesday` tinyint(1) NOT NULL,
  `Thursday` tinyint(1) NOT NULL,
  `Friday` tinyint(1) NOT NULL,
  `Saturday` tinyint(1) NOT NULL,
  `Sunday` tinyint(1) NOT NULL,
  `Hours` int(11) NOT NULL,
  `Minutes` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workingday`
--

INSERT INTO `workingday` (`Id`, `WorkingDays`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`, `Hours`, `Minutes`) VALUES
(5, 3, 1, 1, 0, 0, 0, 0, 0, 2, 0),
(12, 2, 0, 0, 0, 0, 0, 1, 1, 6, 0),
(11, 5, 1, 1, 1, 1, 1, 1, 0, 7, 0),
(13, 4, 1, 1, 1, 1, 0, 0, 0, 7, 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `consecutive`
--
ALTER TABLE `consecutive`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`EmployeeId`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `new`
--
ALTER TABLE `new`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `not_available`
--
ALTER TABLE `not_available`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `overlap`
--
ALTER TABLE `overlap`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `parallel`
--
ALTER TABLE `parallel`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `studentgroub`
--
ALTER TABLE `studentgroub`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`SubjectCode`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`TagCode`);

--
-- Indexes for table `workingday`
--
ALTER TABLE `workingday`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `consecutive`
--
ALTER TABLE `consecutive`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `not_available`
--
ALTER TABLE `not_available`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `overlap`
--
ALTER TABLE `overlap`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `parallel`
--
ALTER TABLE `parallel`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `studentgroub`
--
ALTER TABLE `studentgroub`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `workingday`
--
ALTER TABLE `workingday`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
