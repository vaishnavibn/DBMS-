-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2020 at 07:30 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leave_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--
INSERT INTO `department` (`id`, `department`) VALUES
(21, 'HUMANITIES Department'),
(20, 'SUPPORT STAFF Department'),
(19, 'ADMIN STAFF Department'),
(18, 'CHEM Department'),
(17, 'PHYSICS Department'),
(16, 'MATH Department'),
(15, 'MBA Department'),
(14, 'MCA Department'),
(13, 'AI&DS Department'),
(12, 'CSE(CYBER) Department'),
(11, 'CSE(DS) Department'),
(10, 'AI&ML Department'),
(9, 'CIVIL Department'),
(8, 'MECH Department'),
(7, 'EIE Department'),
(6, 'EEE Department'),
(5, 'ECE Department'),
(4, 'CSE Department'),
(3, 'ISE Department');



-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL,
  `department_id` int(11) NOT NULL,
  `address` varchar(2000) NOT NULL,
  `birthday` date NOT NULL,
  `role` int(11) NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `email`, `mobile`, `password`, `department_id`, `address`, `birthday`, `role`) VALUES
(71, 'Ms. Harshitha G', 'harshitha.g@example.com', '9876543240', 'harshitha123', 15, 'Random Address 31', '2001-03-20', 2),
(70, 'Mr. Umesh', 'umesh@example.com', '9876543249', 'umesh123', 11, 'Random Address 39', '2011-10-28', 2),
(69, 'Mr. Madhu Kumar H', 'madhu.kumar@example.com', '9876543248', 'madhu123', 10, 'Random Address 38', '2010-06-22', 2),
(68, 'Mr. Nagaraj Poojari', 'nagaraj.poojari@example.com', '9876543247', 'nagaraj123', 9, 'Random Address 37', '2009-02-15', 2),
(67, 'Ms. Sowmya. M', 'sowmya.m@example.com', '9876543246', 'sowmya123', 8, 'Random Address 36', '2008-09-30', 2),
(66, 'Mr. Deepak', 'deepak@example.com', '9876543245', 'deepak123', 8, 'Random Address 35', '2008-04-18', 2),
(65, 'Mr. Abhilash G', 'abhilash.g@example.com', '9876543244', 'abhilash123', 8, 'Random Address 34', '2007-11-05', 2),
(64, 'Ms. Akshatha M', 'akshatha.m@example.com', '9876543243', 'akshatha123', 7, 'Random Address 33', '2006-07-20', 2),
(63, 'Mr. Manu', 'manu@example.com', '9876543242', 'manu123', 6, 'Random Address 32', '2005-02-28', 2),
(62, 'Mr. Siddalingeshwar S A', 'siddalingeshwar.sa@example.com', '9876543241', 'siddalingeshwar123', 6, 'Random Address 31', '2004-09-15', 2),
(61, 'Mr. Kedarnath H M', 'kedarnath.hm@example.com', '9876543240', 'kedarnath123', 5, 'Random Address 30', '2003-05-10', 2),
(60, 'Ms. Sowmyashree S', 'sowmyashree.s@example.com', '9876543239', 'sowmyashree123', 5, 'Random Address 29', '2002-01-18', 2),
(59, 'Mr. Umesh M', 'umesh.m@example.com', '9876543238', 'umesh123', 5, 'Random Address 28', '2002-08-03', 2),
(58, 'Ms. Divyashree S', 'divyashree.s@example.com', '9876543237', 'divyashree123', 5, 'Random Address 27', '2001-04-09', 2),
(57, 'Ms. Nivedita G Y', 'nivedita.gy@example.com', '9876543236', 'nivedita123', 5, 'Random Address 26', '2001-11-15', 2),
(56, 'Mr. Janardhan Singh K', 'janardhan.singh@example.com', '9876543235', 'janardhan123', 5, 'Random Address 25', '2000-07-22', 2),
(55, 'Mr. Vishesh J', 'vishesh.j@example.com', '9876543234', 'vishesh123', 5, 'Random Address 24', '2000-03-17', 2),
(54, 'Mr. Jagadeesh B N', 'jagadeesh.bn@example.com', '9876543233', 'jagadeesh123', 5, 'Random Address 23', '1999-10-28', 2),
(53, 'Ms. Harshitha P', 'harshitha.p@example.com', '9876543232', 'harshitha123', 5, 'Random Address 22', '1999-05-12', 2),
(52, 'Ms. Ashwini M Rayannavar', 'ashwini.rayannavar@example.com', '9876543231', 'ashwini123', 5, 'Random Address 21', '1998-01-20', 2),
(51, 'Ms. Aruna U', 'aruna.u@example.com', '9876543230', 'aruna123', 5, 'Random Address 20', '1998-08-15', 2),
(50, 'Ms. Varshitha M K', 'varshitha.mk@example.com', '9876543229', 'varshitha123', 5, 'Random Address 19', '1997-04-30', 2),
(49, 'Ms. Aishwarya G', 'aishwarya.g@example.com', '9876543228', 'aishwarya123', 5, 'Random Address 18', '1997-11-05', 2),
(48, 'Ms. Chaithra S', 'chaithra.s@example.com', '9876543227', 'chaithra123', 5, 'Random Address 30', '1997-06-25', 2),
(47, 'Ms. Kavitha B', 'kavitha.b@example.com', '9876543226', 'kavitha123', 5, 'Random Address 29', '1996-02-12', 2),
(46, 'Ms. Purnima S M', 'purnima.sm@example.com', '9876543225', 'purnima123', 5, 'Random Address 28', '1995-09-02', 2),
(45, 'Ms. Shyla N', 'shyla.n@example.com', '9876543224', 'shyla123', 5, 'Random Address 27', '1994-05-18', 2),
(44, 'Dr. Sunitha K', 'sunitha.k@example.com', '9876543223', 'sunitha123', 5, 'Random Address 26', '1995-01-10', 2),
(43, 'Ms. Shyla N', 'shyla.n@example.com', '9876543223', 'shyla123', 5, 'Random Address 27', '1994-05-18', 2),
(42, 'Ms. Purnima S M', 'purnima.sm@example.com', '9876543224', 'purnima123', 5, 'Random Address 28', '1995-09-02', 2),
(41, 'Mr. Ravi Kumar S G', 'ravi.kumar@example.com', '9876543219', 'ravi123', 3, 'Random Address 23', '1993-04-22', 2),
(40, 'Ms. Harshitha P', 'harshitha.p@example.com', '9876543232', 'harshitha123', 3, 'Random Address 22', '1999-05-12', 2),
(39, 'Ms. Ashwini M Rayannavar', 'ashwini.r@example.com', '9876543231', 'ashwini123', 3, 'Random Address 21', '1998-11-30', 2),
(38, 'Ms. Aruna U', 'aruna.u@example.com', '9876543230', 'aruna123', 3, 'Random Address 20', '1999-01-22', 2),
(37, 'Ms. Varshitha M K', 'varshitha.mk@example.com', '9876543229', 'varshitha123', 3, 'Random Address 19', '1996-10-20', 2),
(36, 'Ms. Aishwarya G', 'aishwarya.g@example.com', '9876543228', 'aishwarya123', 3, 'Random Address 18', '1995-06-05', 2),
(35, 'Ms. Chaithra S', 'chaithra.s@example.com', '9876543227', 'chaithra123', 3, 'Random Address 17', '1997-11-05', 2),
(34, 'Ms. Kavitha B', 'kavitha.b@example.com', '9876543226', 'kavitha123', 3, 'Random Address 16', '1996-02-12', 2),
(33, 'Mr. Kedarnath H M', 'kedarnath.hm@example.com', '9876543239', 'kedarnath123', 3, 'Random Address 30', '2000-11-06', 2),
(32, 'Ms. Sowmyashree S', 'sowmyashree.s@example.com', '9876543238', 'sowmyashree123', 3, 'Random Address 29', '2000-06-24', 2),
(31, 'Mr. Umesh M', 'umesh.m@example.com', '9876543237', 'umesh123', 3, 'Random Address 28', '2000-02-09', 2),
(30, 'Ms. Divyashree S', 'divyashree.s@example.com', '9876543236', 'divyashree123', 3, 'Random Address 27', '1999-09-27', 2),
(29, 'Ms. Nivedita G Y', 'nivedita.gy@example.com', '9876543235', 'nivedita123', 3, 'Random Address 26', '1999-05-14', 2),
(28, 'Mr. Janardhan Singh K', 'janardhan.singh@example.com', '9876543234', 'janardhan123', 3, 'Random Address 25', '1999-01-01', 2),
(27, 'Mr. Vishesh J', 'vishesh.j@example.com', '9876543233', 'vishesh123', 3, 'Random Address 24', '1998-07-28', 2),
(26, 'Mr. Jagadeesh B N', 'jagadeesh.bn@example.com', '9876543232', 'jagadeesh123', 3, 'Random Address 23', '1998-03-15', 2),
(25, 'Ms. Harshitha P', 'harshitha.p@example.com', '9876543231', 'harshitha123', 3, 'Random Address 22', '1997-11-08', 2),
(24, 'Ms. Ashwini M Rayannavar', 'ashwini.r@example.com', '9876543230', 'ashwini123', 3, 'Random Address 21', '1997-08-25', 2),
(23, 'Ms. Aruna U', 'aruna.u@example.com', '9876543229', 'aruna123', 3, 'Random Address 20', '1996-04-12', 2),
(22, 'Ms. Varshitha M K', 'varshitha.mk@example.com', '9876543228', 'varshitha123', 3, 'Random Address 19', '1996-02-28', 2),
(21, 'Ms. Aishwarya G', 'aishwarya.g@example.com', '9876543227', 'aishwarya123', 3, 'Random Address 18', '1995-06-05', 2),
(20, 'Ms. Chaithra S', 'chaithra.s@example.com', '9876543226', 'chaithra123', 3, 'Random Address 17', '1996-02-28', 2),
(19, 'Ms. Kavitha B', 'kavitha.b@example.com', '9876543225', 'kavitha123', 3, 'Random Address 16', '1994-12-14', 2),
(18, 'Ms. Purnima S M', 'purnima.sm@example.com', '9876543224', 'purnima123', 3, 'Random Address 15', '1995-09-02', 2),
(17, 'Ms. Shyla N', 'shyla.n@example.com', '9876543223', 'shyla123', 3, 'Random Address 14', '1994-05-18', 2),
(16, 'Dr. Sunitha K', 'sunitha.k@example.com', '9876543222', 'sunitha123', 3, 'Random Address 13', '1995-01-10', 2),
(15, 'Ms. Vanishri V Sataraddi', 'vanishri.s@example.com', '9876543221', 'vanishri123', 3, 'Random Address 12', '1993-11-28', 2),
(14, 'Ms. Vinutha G K', 'vinutha.gk@example.com', '9876543220', 'vinutha123', 3, 'Random Address 11', '1994-08-15', 2),
(13, 'Ms. Ravi Kumar S G', 'ravi.kumar@example.com', '9876543219', 'ravi123', 3, 'Random Address 10', '1993-04-22', 2),
(12, 'Dr. Manohar P', 'manohar.p@example.com', '9876543218', 'manohar123', 3, 'Random Address 9', '1992-03-05', 2),
(11, 'Dr. Nirmalkumar S. Benni', 'nirmalkumar.benni@example.com', '9876543217', 'nirmalkumar123', 3, 'Random Address 8', '1989-11-30', 2),
(10, 'Dr. Bhagyashree Ambore', 'bhagyashree.ambore@example.com', '9876543216', 'bhagyashree123', 3, 'Random Address 7', '1990-01-22', 2),
(9, 'Dr. Hema N', 'hema.n@example.com', '9876543215', 'hema123', 3, 'Random Address 6', '1987-07-08', 2),
(8, 'Dr. Prakasha S', 'prakasha.s@example.com', '9876543214', 'prakasha123', 3, 'Random Address 5', '1988-09-12', 2),
(7, 'Mr. T S Bhagavath Singh', 'bhagavath.singh@example.com', '9876543213', 'bhagavath123', 3, 'Random Address 4', '1985-04-18', 2),
(6, 'Dr. Mamatha G', 'mamatha.g@example.com', '9876543212', 'mamatha123', 3, 'Random Address 3', '1982-12-10', 2),
(5, 'Dr. Sathish Kumar S', 'sathish.kumar@example.com', '9876543211', 'sathish123', 3, 'Random Address 2', '1980-06-25', 2),
(4, 'Dr. Suresh L', 'suresh.l@example.com', '9876543210', 'suresh123', 3, 'Random Address 1', '1975-03-10', 2),
(3,'admin','admin@example.com','1234567890','admin',2,'address','1985-09-10',1);

-- --------------------------------------------------------

--
-- Table structure for table `leave`
--

CREATE TABLE `leave` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `leave_id` int(11) NOT NULL,
  `leave_from` date NOT NULL,
  `leave_to` date NOT NULL,
  `leave_description` text NOT NULL,
  `leave_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave`
--

INSERT INTO `leave` (`id`, `employee_id`, `leave_id`, `leave_from`, `leave_to`, `leave_description`, `leave_status`) VALUES
(2, 2, 3, '2020-01-01', '2020-01-02', 'Not well', 1),
(3, 4, 2, '2020-01-01', '2020-01-02', 'test', 3),
(4, 4, 3, '2020-01-02', '2020-01-03', 'test desc', 2);

-- --------------------------------------------------------

--
-- Table structure for table `leave_type`
--

CREATE TABLE `leave_type` (
  `id` int(11) NOT NULL,
  `leave_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_type`
--

INSERT INTO `leave_type` (`id`, `leave_type`) VALUES
(2, 'Casual'),
(3, 'Earned'),
(4, 'medical'),
(5, 'maternity'),
(6,'leave without pay');
--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave`
--
ALTER TABLE `leave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_type`
--
ALTER TABLE `leave_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `leave`
--
ALTER TABLE `leave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `leave_type`
--
ALTER TABLE `leave_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;