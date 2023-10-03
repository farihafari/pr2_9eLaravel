-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2023 at 01:48 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pr209e`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `duration` varchar(100) DEFAULT '6 month'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `name`, `duration`) VALUES
(1, 'cpism', '6 month'),
(2, 'dism', '6 month'),
(3, 'adse1', '6 month'),
(4, 'adse2', '6 month'),
(5, 'hdse1', '6 month'),
(6, 'hdse2', '6 month');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `Age` int(11) NOT NULL,
  `gender` char(1) NOT NULL,
  `Contact` int(12) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Salary` int(11) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Date_of_joining` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `first_name`, `last_name`, `Age`, `gender`, `Contact`, `Address`, `Salary`, `Department`, `Date_of_joining`) VALUES
(1, 'asad', 'khan', 20, 'm', 25634215, 'shahra-e-faisal', 32000, 'admin', '2019-02-24'),
(2, 'hafsa', 'khan', 22, 'f', 23142156, 'north nazimabad', 2900, 'admin', '2019-02-24'),
(3, 'ali', 'hamza', 29, 'm', 24314253, 'north nazimabad', 45000, 'faculty', '2018-12-29'),
(4, 'raheela', 'zohaib', 22, 'f', 36452, 'shahra-e-faisal', 55000, 'faculty', '2020-07-12'),
(5, 'oamima', 'khan', 22, 'f', 26767823, 'bhadrabad', 30000, 'recovery', '2020-07-12'),
(6, 'wahab', 'shafeeq', 20, 'm', 3564125, 'defence', 35000, 'faculty', '2018-03-20'),
(7, 'raza', 'hassan', 22, 'm', 36526753, 'bhadrabad', 59000, 'faculty', '2020-09-24'),
(8, 'safiya', 'sheikh', 23, 'f', 63542673, 'north karachi', 29000, 'recovery', '2020-07-25'),
(9, 'rohail', 'nazar', 29, 'm', 623134215, 'shah faisal', 70000, 'manager', '2020-09-24'),
(10, 'faiqa', 'naz', 20, 'f', 256336755, 'shah faisal', 29990, 'faculty', '2018-05-17'),
(11, 'samad', 'obaid', 30, 'm', 578434215, 'north karachi', 100000, 'academic manager', '2022-07-29'),
(12, 'faiqa', 'khan', 20, 'f', 25634215, 'defence', 29000, 'admin', '2020-03-19'),
(13, 'yasir\r\n  ', 'khan', 20, 'm', 63542673, 'tariq road', 75000, 'faculty', '2022-12-22');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(2, 'kinza', 'kinza@gmail.com', '2023-09-30 17:23:10', '2023-09-30 17:23:10'),
(4, 'asad', 'a@gmail.com', '2023-10-03 17:27:02', '2023-10-03 17:27:02');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `c_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `f_name`, `c_id`) VALUES
(1, 'ali', 1),
(2, 'saima', 1),
(3, 'asad', 3),
(4, 'hamza', 5),
(5, 'romaisa', 6),
(6, 'omaima', 2);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` int(11) NOT NULL,
  `gender` enum('f','m') DEFAULT NULL,
  `city` varchar(100) DEFAULT 'karachi',
  `age` int(11) DEFAULT NULL CHECK (`age` >= 18),
  `class_status` varchar(100) DEFAULT NULL,
  `marks` int(11) NOT NULL,
  `f_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `email`, `phone`, `gender`, `city`, `age`, `class_status`, `marks`, `f_id`) VALUES
(1, 'alisha', 'alisha@gmail.com', 46563, 'f', 'islamabad', 20, 'online', 79, 5),
(2, 'saba', 'saba@gmail.com', 63254273, 'f', 'lahore', 20, 'online', 95, 1),
(3, 'asad', 'asad@gmail.com', 4652332, 'm', 'islamabad', 24, 'online', 78, 5),
(4, 'khan', 'khan@gmail.com', 326542, 'm', 'lahore', 23, 'online', 59, 4),
(5, 'sajid', 'sajid@gmail.com', 326542, 'm', 'karachi', 25, 'physical', 65, 5),
(6, 'rameen', 'rameen@gmail.com', 326534542, 'f', 'karachi', 28, 'physical', 32, 2),
(7, 'sana', 'sana@gmail.com', 326542, 'f', 'lahore', 20, 'online', 29, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c_id` (`c_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `f_id` (`f_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `course` (`id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`f_id`) REFERENCES `faculty` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
