-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2025 at 11:01 AM
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
-- Database: `formv`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(11) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `dob` date NOT NULL,
  `sex` enum('Male','Female','Other') NOT NULL,
  `civil_status` varchar(50) NOT NULL,
  `civil_status_other` varchar(100) DEFAULT NULL,
  `tax_id` varchar(50) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `unit_bldg` varchar(100) DEFAULT NULL,
  `house_lot` varchar(100) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `subdivision` varchar(100) DEFAULT NULL,
  `barangay` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `telephone_no` varchar(20) DEFAULT NULL,
  `father_last_name` varchar(100) DEFAULT NULL,
  `father_first_name` varchar(100) DEFAULT NULL,
  `father_middle_initial` char(1) DEFAULT NULL,
  `mother_last_name` varchar(100) DEFAULT NULL,
  `mother_first_name` varchar(100) DEFAULT NULL,
  `mother_middle_initial` char(1) DEFAULT NULL,
  `home_unit_bldg` varchar(100) DEFAULT NULL,
  `home_house_lot` varchar(100) DEFAULT NULL,
  `home_street` varchar(100) DEFAULT NULL,
  `home_subdivision` varchar(100) DEFAULT NULL,
  `home_barangay` varchar(100) DEFAULT NULL,
  `home_city` varchar(100) DEFAULT NULL,
  `home_province` varchar(100) DEFAULT NULL,
  `home_country` varchar(100) DEFAULT NULL,
  `home_zip_code` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `last_name`, `first_name`, `middle_name`, `dob`, `sex`, `civil_status`, `civil_status_other`, `tax_id`, `nationality`, `religion`, `unit_bldg`, `house_lot`, `street`, `subdivision`, `barangay`, `city`, `province`, `country`, `zip_code`, `mobile_no`, `email_address`, `telephone_no`, `father_last_name`, `father_first_name`, `father_middle_initial`, `mother_last_name`, `mother_first_name`, `mother_middle_initial`, `home_unit_bldg`, `home_house_lot`, `home_street`, `home_subdivision`, `home_barangay`, `home_city`, `home_province`, `home_country`, `home_zip_code`, `created_at`) VALUES
(0, 'Mcneil', 'Amir', 'Gray Kramer', '2001-06-09', 'Female', 'Married', '', '123', 'Ipsam labore porro a', 'Aut dolorum error re', 'Sit id veniam culpa', 'Duis accusamus est', 'Et cumque ab cumque', 'Ipsa molestiae ex s', 'Voluptas nesciunt f', 'Quis laboriosam ut', 'Anim animi maxime m', 'Rwanda', '60114', '09123456789', 'cilydefa@mailinator.com', '09436536104', 'Goff', 'Keely', 'A', 'Dotson', 'Lesley', 'S', 'Omnis iste dolorum q', 'Quis enim in eos cu', 'Reiciendis omnis con', 'Optio et velit mini', 'Mollitia Nam consect', 'Distinctio Qui magn', 'Nihil voluptas aut i', 'Egypt', '76259', '2025-09-26 09:00:51');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
