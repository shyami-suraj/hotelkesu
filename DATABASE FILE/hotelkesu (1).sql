-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2022 at 08:27 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelkesu`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `room_id` int(10) NOT NULL,
  `booking_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `check_in` varchar(100) DEFAULT NULL,
  `check_out` varchar(100) NOT NULL,
  `total_price` int(10) NOT NULL,
  `remaining_price` int(10) NOT NULL,
  `payment_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `customer_id`, `room_id`, `booking_date`, `check_in`, `check_out`, `total_price`, `remaining_price`, `payment_status`) VALUES
(9, 9, 28, '2022-04-04 04:29:06', '06-04-2022', '08-04-2022', 7500, 0, 1),
(10, 10, 45, '2022-04-04 04:32:06', '05-04-2022', '20-04-2022', 104000, 0, 0),
(11, 11, 33, '2022-04-04 04:34:09', '13-04-2022', '15-04-2022', 9000, 0, 1),
(12, 12, 29, '2022-04-10 14:47:43', '11-04-2022', '13-04-2022', 7500, 0, 1),
(13, 13, 43, '2022-04-10 14:57:40', '11-04-2022', '12-04-2022', 12000, 12000, 0),
(14, 14, 30, '2022-04-10 14:58:37', '11-04-2022', '12-04-2022', 5000, 0, 1),
(15, 15, 28, '2022-04-10 15:08:29', '11-04-2022', '12-04-2022', 5000, 0, 1),
(16, 16, 44, '2022-04-10 15:20:04', '16-04-2022', '19-04-2022', 24000, 0, 0),
(17, 17, 29, '2022-05-08 05:40:32', '05-06-2022', '06-06-2022', 5000, 0, 1),
(18, 18, 30, '2022-05-08 05:54:34', '09-05-2022', '10-05-2022', 5000, 0, 1),
(19, 19, 34, '2022-06-17 07:38:44', '18-06-2022', '20-06-2022', 9000, 0, 1),
(20, 20, 31, '2022-08-18 09:13:17', '18-08-2022', '19-08-2022', 6000, 0, 1),
(21, 23, 35, '2022-08-18 09:15:36', '19-08-2022', '20-08-2022', 8000, 0, 1),
(22, 25, 35, '2022-08-18 09:20:12', '18-08-2022', '19-08-2022', 8000, 0, 1),
(23, 26, 36, '2022-08-21 11:23:29', '21-08-2022', '24-08-2022', 12000, 0, 1),
(24, 27, 36, '2022-08-21 11:23:29', '21-08-2022', '24-08-2022', 12000, 0, 1),
(25, 28, 35, '2022-08-21 11:27:44', '21-08-2022', '24-08-2022', 16000, 0, 1),
(26, 29, 36, '2022-08-21 11:29:06', '21-08-2022', '22-08-2022', 8000, 8000, 0),
(27, 30, 36, '2022-08-21 11:29:06', '21-08-2022', '22-08-2022', 8000, 8000, 0),
(28, 31, 28, '2022-08-22 07:51:38', '22-08-2022', '23-08-2022', 5000, 0, 1),
(29, 32, 28, '2022-08-25 04:41:45', '25-08-2022', '26-08-2022', 2500, 2500, 0),
(30, 33, 29, '2022-08-25 06:49:10', '25-08-2022', '27-08-2022', 5000, 5000, 0),
(31, 34, 29, '2022-08-25 06:49:10', '25-08-2022', '27-08-2022', 5000, 5000, 0),
(32, 35, 30, '2022-08-29 08:11:11', '29-08-2022', '30-08-2022', 5000, 0, 1),
(33, 36, 30, '2022-08-29 08:11:11', '29-08-2022', '30-08-2022', 5000, 5000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` int(11) NOT NULL,
  `complainant_name` varchar(100) NOT NULL,
  `complaint_type` varchar(100) NOT NULL,
  `complaint` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `resolve_status` tinyint(1) NOT NULL,
  `resolve_date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `budget` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`id`, `complainant_name`, `complaint_type`, `complaint`, `created_at`, `resolve_status`, `resolve_date`, `budget`) VALUES
(7, 'suraj ', 'room', ' bad smell', '2022-03-18 06:01:48', 0, '2022-03-18 06:01:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `contact_no` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_card_type_id` int(10) NOT NULL,
  `id_card_no` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `contact_no`, `email`, `id_card_type_id`, `id_card_no`, `address`) VALUES
(9, 'suraj manandha', 9849676580, 'surajshyami@gmail.com', 1, '1028384712314', 'kalimati ktm'),
(10, 'bishnu kumari limbu', 9044673255, 'bishnu752@gmail.com', 4, 'ab20123745234512342', 'kalanki, ktm'),
(11, 'bimala manandhar', 1234567890, 'bimila@gmail.com', 2, 'xasd/1234421', 'balaju ktm'),
(12, 'momo manandha', 9844673255, 'surajshyami@gmail.com', 1, '123123123123', 'kathmandu'),
(13, 'bishnu kumari manandha', 1234565789, 'surajshyami@gmail.com', 1, '12345678123123', 'kalanki, ktm'),
(14, 'bimala manandha', 1234567890, 'bishnu752@gmail.com', 1, '178908908902', 'balkhu'),
(15, 'suraj  manandhar', 9840929478, 'surajshyami@gmail.com', 1, '102345678912', 'kalimati ktm'),
(16, 'bimala manandhar', 9840929478, 'surajshyami@gmail.com', 1, '123456789012', 'kalimati ktm'),
(17, 'suraj  manandhar', 1234567890, 'surajshyami@gmail.com', 1, '1234567890085', 'kalimati ktm'),
(18, 'suraj  manandha', 1234567890, 'shyamisuraj@gmail.com', 1, '123412312312', 'kalimati ktm'),
(19, 'bishnu kumari manandhar', 1234567890, 'surajshyami@gmail.com', 2, '1234567890-=', 'asdfghjkl;'),
(20, 'Suraj  Manandhar', 9840929478, 'shyamisuraj@gmail.com', 1, '123', ''),
(23, 'Suraj  Manandhar', 9840929478, 'shyamisuraj@gmail.com', 1, '86783737535373', ''),
(25, 'Suraj  Manandhar', 9849676580, 'shyamisuraj@gmail.com', 1, '854621378652', 'kalimati'),
(26, 'Suraj  Manandhar', 9876543210, 'shyamisuraj@gmail.com', 1, '123456985623', 'kalimati'),
(27, 'Suraj  Manandhar', 9876543210, 'shyamisuraj@gmail.com', 1, '123456985623', 'kalimati'),
(28, 'Suraj  Manandhar', 9876543210, 'shyamisuraj@gmail.com', 1, '789456321012', 'kalimati'),
(29, 'Suraj  Manandhar', 9876543210, 'shyamisuraj@gmail.com', 1, '987654321012', 'kalimati'),
(30, 'Suraj  Manandhar', 9876543210, 'shyamisuraj@gmail.com', 1, '987654321012', 'kalimati'),
(31, 'Suraj  Manandhar', 9876543109, 'shyamisuraj@gmail.com', 1, '123456789632', 'kalimati'),
(32, 'suraj manandhar', 9844673255, 'shyamisuraj@gmail.com', 1, '123456789654', 'kalimati'),
(33, 'Rolisha SThapit', 9844673255, 'shyamisuraj@gmail.com', 2, '123456/11111', 'kalimati'),
(34, 'Rolisha SThapit', 9844673255, 'shyamisuraj@gmail.com', 2, '123456/11111', 'kalimati'),
(35, 'suraj manandhar', 9844673255, 'shyamisuraj@gmail.com', 1, '123456987102', 'kalimati'),
(36, 'suraj manandhar', 9844673255, 'shyamisuraj@gmail.com', 1, '123456987102', 'kalimati');

-- --------------------------------------------------------

--
-- Table structure for table `emp_history`
--

CREATE TABLE `emp_history` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `from_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `to_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_history`
--

INSERT INTO `emp_history` (`id`, `emp_id`, `shift_id`, `from_date`, `to_date`, `created_at`) VALUES
(1, 1, 1, '2017-11-13 05:39:06', '2017-11-15 02:22:26', '2017-11-13 05:39:06'),
(2, 2, 3, '2017-11-13 05:39:39', '2017-11-15 02:22:43', '2017-11-13 05:39:39'),
(3, 3, 1, '2017-11-13 05:40:18', '2017-11-15 02:22:49', '2017-11-13 05:40:18'),
(4, 4, 1, '2017-11-13 05:40:56', '2017-11-15 02:22:35', '2017-11-13 05:40:56'),
(5, 5, 1, '2017-11-13 05:41:31', NULL, '2017-11-13 05:41:31'),
(6, 6, 3, '2017-11-13 05:42:03', NULL, '2017-11-13 05:42:03'),
(7, 7, 4, '2017-11-13 05:42:35', '2017-11-18 02:35:02', '2017-11-13 05:42:35'),
(8, 8, 3, '2017-11-13 05:43:13', '2017-11-18 02:32:26', '2017-11-13 05:43:13'),
(9, 9, 2, '2017-11-13 05:43:49', NULL, '2017-11-13 05:43:49'),
(10, 10, 1, '2017-11-13 06:30:45', '2017-11-18 02:34:28', '2017-11-13 06:30:45'),
(11, 1, 2, '2017-11-15 06:52:26', '2017-11-17 02:23:05', '2017-11-15 06:52:26'),
(12, 4, 3, '2017-11-15 06:52:35', NULL, '2017-11-15 06:52:35'),
(13, 2, 3, '2017-11-15 06:52:43', NULL, '2017-11-15 06:52:43'),
(14, 3, 3, '2017-11-15 06:52:49', NULL, '2017-11-15 06:52:49'),
(15, 1, 3, '2017-11-17 06:53:05', NULL, '2017-11-17 06:53:05'),
(16, 8, 1, '2017-11-18 07:02:26', NULL, '2017-11-18 07:02:26'),
(17, 11, 2, '2017-11-18 07:04:03', NULL, '2017-11-18 07:04:03'),
(18, 10, 2, '2017-11-18 07:04:28', NULL, '2017-11-18 07:04:28'),
(19, 7, 2, '2017-11-18 07:05:02', NULL, '2017-11-18 07:05:02'),
(20, 12, 1, '2021-04-08 17:54:22', NULL, '2021-04-08 17:54:22'),
(21, 13, 2, '2021-04-09 08:35:27', NULL, '2021-04-09 08:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `id_card_type`
--

CREATE TABLE `id_card_type` (
  `id_card_type_id` int(10) NOT NULL,
  `id_card_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `id_card_type`
--

INSERT INTO `id_card_type` (`id_card_type_id`, `id_card_type`) VALUES
(1, 'National Identity Card'),
(2, 'Voter Id Card'),
(3, 'Pan Card'),
(4, 'Driving License');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(10) NOT NULL,
  `room_type_id` int(10) NOT NULL,
  `room_no` varchar(10) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `check_in_status` tinyint(1) NOT NULL,
  `check_out_status` tinyint(1) NOT NULL,
  `deleteStatus` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_type_id`, `room_no`, `status`, `check_in_status`, `check_out_status`, `deleteStatus`) VALUES
(28, 1, '101', 1, 1, 1, 0),
(29, 1, '102', 1, 1, 1, 0),
(30, 1, '103', NULL, 0, 1, 0),
(31, 2, '201', NULL, 0, 1, 0),
(33, 2, '202', NULL, 0, 1, 0),
(34, 2, '203', NULL, 0, 1, 0),
(35, 3, '301', NULL, 0, 1, 0),
(36, 3, '302', NULL, 0, 1, 0),
(37, 3, '303', NULL, 0, 0, 0),
(38, 4, '401', NULL, 0, 0, 0),
(41, 4, '402', NULL, 0, 0, 0),
(42, 4, '403', NULL, 0, 0, 0),
(43, 5, '501', 1, 1, 0, 0),
(44, 5, '502', 1, 1, 0, 0),
(45, 6, '601', 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `room_type_id` int(10) NOT NULL,
  `room_type` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `max_person` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`room_type_id`, `room_type`, `price`, `max_person`) VALUES
(1, 'Standard Room', 2500, 2),
(2, 'Deluxe Room', 3000, 3),
(3, 'Premium Room', 4000, 3),
(4, 'Studio Apartment', 5000, 4),
(5, 'Mini-Suite', 6000, 4),
(6, 'Master Suite', 6500, 6);

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `shift_id` int(10) NOT NULL,
  `shift` varchar(100) NOT NULL,
  `shift_timing` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`shift_id`, `shift`, `shift_timing`) VALUES
(1, 'Morning', '5:00 AM - 10:00 AM'),
(2, 'Day', '10:00 AM - 4:00PM'),
(3, 'Evening', '4:00 PM - 10:00 PM'),
(4, 'Night', '10:00PM - 5:00AM');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `staff_type_id` int(11) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `id_card_type` int(11) NOT NULL,
  `id_card_no` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_no` bigint(20) NOT NULL,
  `salary` bigint(20) NOT NULL,
  `joining_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`emp_id`, `emp_name`, `staff_type_id`, `shift_id`, `id_card_type`, `id_card_no`, `address`, `contact_no`, `salary`, `joining_date`, `updated_at`) VALUES
(1, 'ram shrestha', 1, 3, 1, '422510099122', 'balaju ktm', 3479454777, 21000, '2022-04-01 04:33:46', '2022-04-05 04:33:51'),
(2, 'shyam rai', 3, 3, 1, '422510099122', 'kalanki', 1479994500, 12500, '2022-04-01 04:33:55', '2022-04-05 04:34:02'),
(3, 'hari shrestha', 2, 3, 1, '422510099122', 'rnac', 976543111, 25000, '2022-04-01 04:34:20', '2022-04-05 04:34:29'),
(4, 'sita maharjan', 2, 3, 2, '0', 'balkhu', 7451112450, 31000, '2022-04-01 04:34:33', '2022-04-05 04:34:41'),
(5, 'gita tamang', 4, 1, 1, '12345341212', 'banashowr', 4578884500, 28000, '2022-04-01 04:34:46', '2022-04-05 04:34:52'),
(6, 'bishnu kumari limbu', 3, 3, 3, '1234123123', 'nayabazar', 8520000000, 40000, '2022-04-01 04:35:05', '2022-04-05 04:35:12'),
(7, 'mona tamang', 2, 2, 1, '422510099122', 'boudha', 4547778450, 40000, '2022-04-01 04:35:18', '2022-04-05 04:35:25'),
(8, 'krishna shrestha', 1, 1, 4, '0', 'kalanki', 1457845554, 15000, '2022-04-01 04:35:29', '2022-04-05 04:35:35'),
(9, 'bimila manandhar', 3, 2, 4, '1234123', 'kalimati', 7145554500, 30000, '2022-04-01 04:35:43', '2022-04-05 04:35:49'),
(10, 'babita sherpa', 5, 2, 1, '422510099122', 'kritipur', 3475468569, 24000, '2022-04-01 04:33:29', '2022-04-05 04:33:39'),
(11, 'sriju', 3, 2, 1, '0', 'newroad\r\n', 7869696969, 20000, '2019-11-01 07:04:03', '2022-04-05 04:35:59'),
(12, 'srijal', 2, 1, 4, 'AD69 14579500002', 'balaju', 1475550036, 13500, '2021-04-08 17:54:22', '2022-03-18 05:01:04'),
(13, 'sarad', 9, 2, 1, '457854555012', 'kalanki', 7457778560, 65500, '2021-04-09 08:35:27', '2022-03-18 05:01:20');

-- --------------------------------------------------------

--
-- Table structure for table `staff_type`
--

CREATE TABLE `staff_type` (
  `staff_type_id` int(10) NOT NULL,
  `staff_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_type`
--

INSERT INTO `staff_type` (`staff_type_id`, `staff_type`) VALUES
(1, 'Manager'),
(2, 'Housekeeping Manager'),
(3, 'Front Desk Receptionist'),
(4, 'Cheif'),
(5, 'Waiter'),
(6, 'Room Attendant'),
(7, 'Concierge'),
(8, 'Hotel Maintenance Engineer'),
(9, 'Hotel Sales Manager');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `email`, `password`, `created_at`) VALUES
(2, 'Suraj Manandhar', 'shyamisuraj', 'shyamisuraj@gmail.com', 'password', '2022-03-13 12:49:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `customer_id_type` (`id_card_type_id`);

--
-- Indexes for table `emp_history`
--
ALTER TABLE `emp_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `shift_id` (`shift_id`);

--
-- Indexes for table `id_card_type`
--
ALTER TABLE `id_card_type`
  ADD PRIMARY KEY (`id_card_type_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `room_type_id` (`room_type_id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`room_type_id`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`shift_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `id_card_type` (`id_card_type`),
  ADD KEY `shift_id` (`shift_id`),
  ADD KEY `staff_type_id` (`staff_type_id`);

--
-- Indexes for table `staff_type`
--
ALTER TABLE `staff_type`
  ADD PRIMARY KEY (`staff_type_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `emp_history`
--
ALTER TABLE `emp_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `id_card_type`
--
ALTER TABLE `id_card_type`
  MODIFY `id_card_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `room_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shift`
--
ALTER TABLE `shift`
  MODIFY `shift_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `staff_type`
--
ALTER TABLE `staff_type`
  MODIFY `staff_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`id_card_type_id`) REFERENCES `id_card_type` (`id_card_type_id`);

--
-- Constraints for table `emp_history`
--
ALTER TABLE `emp_history`
  ADD CONSTRAINT `emp_history_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `staff` (`emp_id`),
  ADD CONSTRAINT `emp_history_ibfk_2` FOREIGN KEY (`shift_id`) REFERENCES `shift` (`shift_id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`room_type_id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`id_card_type`) REFERENCES `id_card_type` (`id_card_type_id`),
  ADD CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`shift_id`) REFERENCES `shift` (`shift_id`),
  ADD CONSTRAINT `staff_ibfk_3` FOREIGN KEY (`staff_type_id`) REFERENCES `staff_type` (`staff_type_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
