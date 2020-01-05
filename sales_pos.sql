-- phpMyAdmin SQL Dump
-- version 3.5.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 26, 2016 at 04:56 PM
-- Server version: 5.5.28-log
-- PHP Version: 5.4.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sales_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE IF NOT EXISTS `collection` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `balance` int(11) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `membership_number` varchar(100) NOT NULL,
  `prod_name` varchar(550) NOT NULL,
  `expected_date` varchar(500) NOT NULL,
  `note` varchar(500) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `contact`, `membership_number`, `prod_name`, `expected_date`, `note`) VALUES
(15, 'charles', '48 udobio', '07035700945', '', 'Gass', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(200) NOT NULL,
  `gen_name` varchar(200) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `o_price` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `onhand_qty` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `qty_sold` int(10) NOT NULL,
  `expiry_date` varchar(500) NOT NULL,
  `date_arrival` varchar(500) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `gen_name`, `product_name`, `cost`, `o_price`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`) VALUES
(58, 'gas ', 'gas', ' gas ', '', '180', '200', '20', '', 0, 150, 200, 'May-02-2018', 'May-02-2016'),
(59, 'bread', 'Bread', 'Bread ', '', '200', '250', '50', '', 0, 12, 30, 'May-12-2016', 'May-12-2016');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE IF NOT EXISTS `purchases` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `suplier` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `purchases_item`
--

CREATE TABLE IF NOT EXISTS `purchases_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE IF NOT EXISTS `sales` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(100) NOT NULL,
  `cashier` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `due_date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `balance` varchar(100) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=151 ;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`transaction_id`, `invoice_number`, `cashier`, `date`, `type`, `amount`, `profit`, `due_date`, `name`, `balance`) VALUES
(142, 'RS-3923200', 'Admin', '05/02/16', 'cash', '2400', '240', '2400', 'chares', ''),
(143, 'RS-0523', 'Admin', '05/03/16', 'cash', '1400', '140', '14000', '', ''),
(144, 'RS-2282032', 'Administrator', '05/09/16', 'cash', '1400', '140', '20000', '', ''),
(145, 'RS-0222225', 'Admin', '05/12/16', 'cash', '500', '100', '600', '', ''),
(146, 'RS-00322222', 'Admin', '07/22/16', 'cash', '200', '20', '200', '', ''),
(147, 'RS-233023', 'Admin', '07/22/16', 'cash', '1200', '120', '1200', '', ''),
(148, 'RS-4223222', 'Admin', '07/22/16', 'cash', '200', '20', '200', '', ''),
(149, 'RS-234204', 'Admin', '07/25/16', 'cash', '250', '50', '200', '', ''),
(150, 'RS-3033632', 'Admin', '07/26/16', 'cash', '3000', '600', '800', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE IF NOT EXISTS `sales_order` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `product_code` varchar(150) NOT NULL,
  `gen_name` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `date` varchar(500) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=335 ;

--
-- Dumping data for table `sales_order`
--

INSERT INTO `sales_order` (`transaction_id`, `invoice`, `product`, `qty`, `amount`, `profit`, `product_code`, `gen_name`, `name`, `price`, `discount`, `date`) VALUES
(315, 'RS-3923200', '58', '12', '2400', '240', 'gas ', 'gas', ' gas', '200', '', '05/02/16'),
(316, 'RS-0523', '58', '7', '1400', '140', 'gas ', 'gas', ' gas ', '200', '', '05/03/16'),
(317, 'RS-238232', '58', '1', '200', '20', 'gas ', 'gas', ' gas ', '200', '', '05/03/16'),
(318, 'RS-879920', '58', '1', '200', '20', 'gas ', 'gas', ' gas ', '200', '', '05/09/16'),
(319, 'RS-879920', '58', '1', '200', '20', 'gas ', 'gas', ' gas ', '200', '', '05/09/16'),
(320, 'RS-2282032', '58', '1', '200', '20', 'gas ', 'gas', ' gas ', '200', '', '05/09/16'),
(321, 'RS-2282032', '58', '5', '1000', '100', 'gas ', 'gas', ' gas ', '200', '', '05/09/16'),
(322, 'RS-2282032', '58', '1', '200', '20', 'gas ', 'gas', ' gas ', '200', '', '05/09/16'),
(323, 'RS-0222225', '59', '1', '250', '50', 'bread', 'Bread', 'Bread ', '250', '', '05/12/16'),
(324, 'RS-0222225', '59', '1', '250', '50', 'bread', 'Bread', 'Bread ', '250', '', '05/12/16'),
(325, 'RS-423322', '59', '1', '250', '50', 'bread', 'Bread', 'Bread ', '250', '', '05/12/16'),
(326, 'RS-0232233', '59', '1', '250', '50', 'bread', 'Bread', 'Bread ', '250', '', '05/13/16'),
(327, 'RS-0232233', '58', '1', '200', '20', 'gas ', 'gas', ' gas ', '200', '', '05/13/16'),
(328, 'RS-00322222', '58', '1', '200', '20', 'gas ', 'gas', ' gas ', '200', '', '07/22/16'),
(329, 'RS-233023', '58', '6', '1200', '120', 'gas ', 'gas', ' gas ', '200', '', '07/22/16'),
(330, 'RS-4223222', '58', '1', '200', '20', 'gas ', 'gas', ' gas ', '200', '', '07/22/16'),
(331, 'RS-234204', '59', '1', '250', '50', 'bread', 'Bread', 'Bread ', '250', '', '07/25/16'),
(332, 'RS-23362025', '59', '1', '250', '50', 'bread', 'Bread', 'Bread ', '250', '', '07/26/16'),
(333, 'RS-23362025', '58', '12', '2400', '240', 'gas ', 'gas', ' gas ', '200', '', '07/26/16'),
(334, 'RS-3033632', '59', '12', '3000', '600', 'bread', 'Bread', 'Bread ', '250', '', '07/26/16');

-- --------------------------------------------------------

--
-- Table structure for table `supliers`
--

CREATE TABLE IF NOT EXISTS `supliers` (
  `suplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `suplier_name` varchar(100) NOT NULL,
  `suplier_address` varchar(100) NOT NULL,
  `suplier_contact` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `note` varchar(500) NOT NULL,
  PRIMARY KEY (`suplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `position`) VALUES
(1, 'admin', 'admin', 'Admin', 'admin'),
(2, 'cashier', 'cashier', 'Cashier Pharmacy', 'Cashier'),
(3, 'admin', 'admin123', 'Administrator', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
