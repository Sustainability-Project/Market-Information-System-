-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 01 May 2022, 19:07:54
-- Sunucu sürümü: 5.7.36
-- PHP Sürümü: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `supermarket_inventory`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `pid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `stock` int(11) NOT NULL,
  `normal_price` int(3) NOT NULL,
  `discounted_price` int(3) DEFAULT NULL,
  `expiration_date` datetime NOT NULL,
  `exp_img` varchar(30) DEFAULT NULL,
  `MarketEmail` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `FK_market` (`MarketEmail`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`pid`, `title`, `stock`, `normal_price`, `discounted_price`, `expiration_date`, `exp_img`, `MarketEmail`) VALUES
(1, 'Beef Burgers, 20%Fat,3lbs', 15, 13, 9, '2022-05-25 17:01:10', 'img/expired.png', NULL),
(2, 'Coca-Cola Soda Pop,24 Pack', 12, 9, 6, '2022-05-01 14:13:52', 'img/expired.png', NULL),
(3, 'Jimmy Dean Pancake Sausage', 6, 6, 4, '2022-05-12 17:19:45', 'img/expired.png', NULL),
(4, 'Kraft Singles  Cheese Slices,24  Pack', 9, 5, 4, '2022-05-23 17:23:43', 'img/expired.png', NULL),
(5, 'Romaine Lettuce Hearts, 3 Pack', 10, 3, 2, '2023-06-01 17:26:19', 'img/expired.png', NULL),
(6, 'Great Value Green Olives ', 25, 3, 2, '2022-05-03 17:28:28', 'img/expired.png', NULL),
(7, 'Folgers Black Silk Ground Coffee', 23, 14, 10, '2022-05-15 17:32:14', 'img/expired.png', NULL),
(8, 'C & H Pure Granulated White Cane Sugar', 30, 4, 3, '2022-05-29 17:33:43', 'img/expired.png', NULL),
(9, 'Whisps Parmesan Cheese Crisps', 16, 9, 6, '2022-05-01 14:36:01', 'img/expired.png', NULL),
(10, 'Great Value Lowfat Vanilla Yogurt', 11, 2, 1, '2024-05-21 17:38:11', 'img/expired.png', NULL),
(11, 'Great Value Milk, 0.5 Gallon', 5, 2, 1, '2022-05-01 17:42:47', 'img/expired.png', NULL),
(12, 'Marketside Organic Brown Eggs 12', 11, 4, 3, '2022-07-28 17:45:59', 'img/expired.png', NULL),
(13, 'Country Crock Original Vegetable Oil', 40, 5, 4, '2022-08-19 17:47:26', 'img/expired.png', NULL),
(14, 'Land Lakes Butter with Canola Oil Spread', 9, 3, 2, '2022-05-18 17:50:58', 'img/expired.png', NULL),
(15, 'Pillsbury French Bread, Original,13', 7, 6, 4, '2022-04-29 17:54:49', 'img/expired.png', NULL),
(16, 'Snack Pack Chocolate Pudding Cups,3.25', 23, 2, 1, '2022-06-30 17:56:45', 'img/expired.png', NULL),
(17, ' Simply Orange Juice,2.63 Liters', 21, 5, 4, '2022-07-01 17:59:10', 'img/expired.png', NULL),
(18, '(12 Bottles) Gatorade Thirst Quencher Sports Drink', 10, 6, 4, '2022-04-29 18:06:20', 'img/expired.png', NULL),
(19, 'McCormick Tartar Sauce, 8 fl oz', 18, 10, 7, '2022-08-01 18:09:32', 'img/expired.png', NULL),
(20, 'FRESH SALMON SIDES', 9, 19, 13, '2022-06-01 18:11:23', 'img/expired.png', NULL),
(21, 'Beyond Meat Beyond Burger Patties, 2 pk', 8, 7, 5, '2022-05-16 18:13:29', 'img/expired.png', NULL),
(22, ' No Salt Added Petite Diced Tomatoes,14.5 oz', 12, 2, 1, '2022-05-16 18:15:12', 'img/expired.png', NULL),
(23, 'Lipton Tea +Probiotic Herbal Tea Sachets Cleanse', 21, 6, 4, '2022-05-14 18:18:17', 'img/expired.png', NULL),
(24, 'Old El Paso Mild Red Enchilada Sauce', 8, 4, 3, '2022-04-27 18:20:04', 'img/expired.png', NULL),
(25, 'Sweet Leaf, 70 Packets', 10, 9, 6, '2022-05-11 18:22:39', 'img/expired.png', NULL),
(26, 'Power Up Protein Packed Trail Mix from Gourmet Nut', 4, 12, 8, '2022-05-04 18:27:56', 'img/expired.png', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
