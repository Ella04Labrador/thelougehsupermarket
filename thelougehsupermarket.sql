-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2021 at 07:18 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thelougehsupermarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(100) NOT NULL,
  `customer_lastname` varchar(100) NOT NULL,
  `customer_firstname` varchar(100) NOT NULL,
  `customer_address` varchar(100) NOT NULL,
  `customer_contact_number` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_lastname`, `customer_firstname`, `customer_address`, `customer_contact_number`) VALUES
(1, 'labrador', 'ella', 'salunayan', '09555627282'),
(2, 'soriano', 'ivan', 'australia', '09464646463'),
(12, 'Flores', 'may', '', ''),
(12, 'Flores', 'may', '', ''),
(13, 'belarmino', 'belle', '', ''),
(12, 'lastimoso', 'tin', '', ''),
(1, 'villar', 'yvanny', '', ''),
(2, 'teofilo', 'jerson', '', ''),
(18, 'ded', 'garlyn', '', ''),
(19, 'Bato', 'Cyrus', '', ''),
(16, 'Dila', 'Jason', 'desa', '121324325');

-- --------------------------------------------------------

--
-- Table structure for table `deliver_by_suppliers`
--

CREATE TABLE `deliver_by_suppliers` (
  `delivery_transaction_id` int(100) NOT NULL,
  `supplier_id` int(100) NOT NULL,
  `barcode` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `cost_per_unit` int(100) NOT NULL,
  `total` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `barcode` int(100) NOT NULL,
  `product_description` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `cost_per_unit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`barcode`, `product_description`, `quantity`, `cost_per_unit`) VALUES
(12345, 'hotdog', 200, '10'),
(111, 'egg', 200, '5'),
(12, 'ali', 23, '2'),
(12, 'ali', 23, '2'),
(12, 'ali', 23, '2'),
(12, 'ali', 23, '2'),
(1, 'sibuyas', 50, '6'),
(0, '', 0, ''),
(111, 'mushroom', 50, '20'),
(19221000, 'combi', 500, '7'),
(0, '', 0, ''),
(0, '', 0, ''),
(0, '', 0, ''),
(0, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sales_id` int(100) NOT NULL,
  `costumer_id` int(100) NOT NULL,
  `barcode` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `cost_per_unit` int(100) NOT NULL,
  `total` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sales_id`, `costumer_id`, `barcode`, `quantity`, `cost_per_unit`, `total`) VALUES
(5, 12, 12345, 200, 5, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` int(100) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `company_contact_number` text NOT NULL,
  `company_address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `company_name`, `company_contact_number`, `company_address`) VALUES
(1, 'Max', '09662753379', 'Midsayap, North Cotabato'),
(12, 'snowbear', '09099477102', 'Kabacan, North Cotabato'),
(10, 'otoke', '0909094333', 'Gensan'),
(7, 'GCASH', '12134', 'Davao'),
(0, '', '', ''),
(7, 'iphone', '0985785368', 'Hawaii');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
