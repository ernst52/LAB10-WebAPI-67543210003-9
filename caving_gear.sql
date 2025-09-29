-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2025 at 06:34 AM
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
-- Database: `caving_gear`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT 0,
  `brand` varchar(50) NOT NULL DEFAULT 'Unknown'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `category`, `quantity`, `brand`) VALUES
(1, 'Petzl Ecrin Roc', 'Classic mountaineering helmet, durable and ventilated.', 75.00, 'Helmet', 15, 'Petzl'),
(2, 'Petzl Vertex Vent', 'Comfortable ventilated helmet with six-point textile suspension.', 104.95, 'Helmet', 10, 'Petzl'),
(3, 'Edelrid Ultralight III', 'Lightweight helmet with modern design and improved ventilation.', 79.00, 'Helmet', 12, 'Edelrid'),
(4, 'Petzl Boreo', 'Versatile helmet for climbing and mountaineering.', 74.95, 'Helmet', 8, 'Petzl'),
(5, 'Petzl Strato', 'Lightweight helmet with adjustable chinstrap.', 74.95, 'Helmet', 9, 'Petzl'),
(6, 'Black Diamond Half Dome', 'Classic climbing helmet with durable shell.', 64.95, 'Helmet', 14, 'Black Diamond'),
(7, 'Camp Armour', 'Hybrid construction helmet for climbing and mountaineering.', 59.95, 'Helmet', 7, 'Camp'),
(8, 'Petzl Elia', 'Helmet designed for women with ponytail compatibility.', 69.95, 'Helmet', 6, 'Petzl'),
(9, 'Fenix HL60R', 'Rechargeable headlamp with 950 lumens.', 79.95, 'Headlamp', 10, 'Fenix'),
(10, 'Scurion Speleo 700', 'High-performance caving headlamp with 700 lumens.', 600.00, 'Headlamp', 3, 'Scurion'),
(11, 'Scurion 1500', 'Premium caving headlamp with 1500 lumens.', 845.00, 'Headlamp', 2, 'Scurion'),
(12, 'Manley 20', 'Rugged and waterproof caving headlamp.', 320.00, 'Headlamp', 4, 'Manley'),
(13, 'Sofirn SP40', 'Compact headlamp with 1200 lumens.', 29.99, 'Headlamp', 20, 'Sofirn'),
(14, 'Nitecore HC65', 'Headlamp with 1000 lumens and red light mode.', 69.95, 'Headlamp', 15, 'Nitecore'),
(15, 'Black Diamond Storm 500R', 'Rugged headlamp with 500 lumens.', 99.95, 'Headlamp', 8, 'Black Diamond'),
(16, 'Swaygo Dry Pack', 'Waterproof dry bag for caving expeditions.', 89.95, 'Dry Pack', 12, 'Swaygo'),
(17, 'Petzl Fractio', 'Comfortable seat harness for caving.', 129.95, 'Seat Harness', 6, 'Petzl'),
(18, 'Petzl Superavanti', 'Lightweight seat harness for vertical caving.', 119.95, 'Seat Harness', 5, 'Petzl'),
(19, 'MTDE Amazonia II', 'Seat harness with adjustable leg loops.', 139.95, 'Seat Harness', 4, 'MTDE'),
(20, 'MTDE Picos', 'Compact seat harness for tight spaces.', 129.95, 'Seat Harness', 3, 'MTDE'),
(21, 'AV Muruck', 'Seat harness with ergonomic design.', 169.95, 'Seat Harness', 2, 'AV'),
(22, 'Petzl Torse', 'Chest harness for rope access and caving.', 69.95, 'Chest Harness', 8, 'Petzl'),
(23, 'Petzl Serpentine', 'Adjustable chest harness for caving.', 79.95, 'Chest Harness', 6, 'Petzl'),
(24, 'Petzl Progress', 'Cowstail with adjustable length.', 89.95, 'Cowstail', 10, 'Petzl'),
(25, 'Petzl Spelegyca', 'Cowstail with elasticated design.', 99.95, 'Cowstail', 7, 'Petzl'),
(26, 'Petzl Footcord', 'Footloop for frog climbing system.', 19.95, 'Footloop', 15, 'Petzl'),
(27, 'Petzl Footape', 'Footloop with adjustable length.', 29.95, 'Footloop', 12, 'Petzl'),
(28, 'Petzl Ascension', 'Handle ascender for rope climbing.', 79.95, 'Ascender', 8, 'Petzl'),
(29, 'CMI Ultrascender', 'Compact ascender for caving.', 89.95, 'Ascender', 5, 'CMI'),
(30, 'CMI Expedition', 'Heavy-duty ascender for vertical caving.', 99.95, 'Ascender', 3, 'CMI'),
(31, 'Climbing Technology Quick Up', 'Quick-release ascender for caving.', 109.95, 'Ascender', 4, 'Climbing Technology'),
(32, 'Petzl Simple', 'Simple descender for rope control.', 49.95, 'Descender', 10, 'Petzl'),
(33, 'Petzl Stop', 'Descender with anti-panic function.', 59.95, 'Descender', 7, 'Petzl'),
(34, 'Howitzers Knee Pads', 'Protective knee pads for caving.', 39.95, 'Knee Pads', 12, 'Howitzers'),
(35, 'Sterling Rope', 'Durable rope for caving expeditions.', 199.95, 'Rope', 6, 'Sterling'),
(36, 'Petzl Spirit', 'Lightweight locking carabiner.', 19.95, 'Carabiner', 25, 'Petzl'),
(37, 'Black Diamond Positron', 'Durable locking carabiner.', 24.95, 'Carabiner', 20, 'Black Diamond'),
(38, 'Spelmix AVSP59', 'Caving suit with Cordura upper and waterproof polyamide lower.', 200.00, 'Caving Suit', 5, 'AventureVerticale'),
(39, 'Hölloch Comfort Man', 'Flexible and resistant caving suit.', 220.00, 'Caving Suit', 4, 'AventureVerticale'),
(40, 'Titan Man', 'High-resistance polyamide caving suit with reinforced knees, elbows, and buttocks.', 250.00, 'Caving Suit', 3, 'AventureVerticale'),
(41, 'Midroï', 'Flexible and strong caving suit with light-coated Cordura 500, ideal for dry and warm cavities.', 180.00, 'Caving Suit', 6, 'AventureVerticale'),
(42, 'Holloch Comfort Man à ZIP', 'Caving suit.', 240.00, 'Caving Suit', 2, 'AventureVerticale');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
