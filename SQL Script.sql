-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2024 at 07:20 AM
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
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"travel\",\"table\":\"customer\"},{\"db\":\"travel\",\"table\":\"customer_finance_restaurant\"},{\"db\":\"travel\",\"table\":\"customer_flight_finance\"},{\"db\":\"travel\",\"table\":\"customer_tourist_attraction_finance\"},{\"db\":\"travel\",\"table\":\"finance\"},{\"db\":\"travel\",\"table\":\"flight_stuff\"},{\"db\":\"travel\",\"table\":\"flight\"},{\"db\":\"travel\",\"table\":\"hotel\"},{\"db\":\"travel\",\"table\":\"hotel_room\"},{\"db\":\"travel\",\"table\":\"restaurant\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-12-29 08:48:16', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `travel`
--
CREATE DATABASE IF NOT EXISTS `travel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `travel`;

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `Airport_code` varchar(45) NOT NULL,
  `Location` varchar(45) NOT NULL,
  `Airport_Ranking` int(11) NOT NULL,
  `Services` varchar(45) NOT NULL,
  `Capacity` int(11) NOT NULL,
  `Index_Rank` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`Airport_code`, `Location`, `Airport_Ranking`, `Services`, `Capacity`, `Index_Rank`) VALUES
('01', 'Rome', 8, 'wifi', 12000, 2),
('02', 'Paris', 9, 'wifi, meals', 15000, 3),
('03', 'Athens', 7, 'entertainment', 13000, 2),
('04', 'Dubai', 10, 'full service', 20000, 5),
('05', 'Hurghada', 6, 'wifi', 14000, 1),
('1', 'Cairo', 5, 'wifi', 10000, 1),
('10', 'Alexandria', 6, 'drinks, meals', 11000, 2),
('11', 'Luxor', 7, 'meals, entertainment', 12000, 2),
('12', 'Aswan', 6, 'wifi, drinks', 10500, 1),
('13', 'Hurghada', 6, 'full service', 15000, 2),
('14', 'Sharm El Sheikh', 7, 'wifi, meals', 13500, 1),
('15', 'Marsa Alam', 6, 'entertainment', 12500, 2),
('16', 'Port Said', 5, 'meals, wifi', 11000, 1),
('17', 'Cairo', 5, 'wifi, snacks', 10000, 1),
('18', 'Alexandria', 6, 'entertainment, drinks', 11000, 2),
('19', 'Luxor', 7, 'wifi, full service', 12000, 2),
('20', 'Aswan', 6, 'meals, entertainment', 10500, 1),
('21', 'Hurghada', 6, 'wifi, meals', 15000, 2),
('22', 'Sharm El Sheikh', 7, 'full service', 13500, 1),
('23', 'Marsa Alam', 6, 'entertainment, snacks', 12500, 2),
('24', 'Port Said', 5, 'meals, drinks', 11000, 1),
('25', 'Cairo', 5, 'wifi, entertainment', 10000, 1),
('26', 'Alexandria', 6, 'meals, drinks', 11000, 2),
('27', 'Luxor', 7, 'full service', 12000, 2),
('28', 'Aswan', 6, 'wifi, snacks', 10500, 1),
('29', 'Hurghada', 6, 'wifi, drinks', 15000, 2),
('30', 'Sharm El Sheikh', 7, 'snacks, entertainment', 13500, 1),
('31', 'Marsa Alam', 6, 'meals, wifi', 12500, 2),
('32', 'Port Said', 5, 'drinks, snacks', 11000, 1),
('33', 'Cairo', 5, 'wifi, entertainment', 10000, 1),
('34', 'Alexandria', 6, 'meals, drinks', 11000, 2),
('35', 'Luxor', 7, 'full service', 12000, 2),
('36', 'Aswan', 6, 'snacks, drinks', 10500, 1),
('37', 'Hurghada', 6, 'wifi, snacks', 15000, 2),
('38', 'Sharm El Sheikh', 7, 'entertainment, drinks', 13500, 1),
('39', 'Marsa Alam', 6, 'meals, wifi', 12500, 2),
('6', 'Sharm El Sheikh', 7, 'wifi, drinks', 13500, 1),
('7', 'Marsa Alam', 6, 'entertainment', 12500, 2),
('8', 'Port Said', 5, 'full service', 11000, 1),
('9', 'Cairo', 5, 'wifi, snacks', 10000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `Country_Code` varchar(45) NOT NULL,
  `Safety_Index_Stars` int(11) NOT NULL,
  ` Attractiveness_Index_Rank` int(11) NOT NULL,
  `Feedback` text NOT NULL,
  `Country_Name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`Country_Code`, `Safety_Index_Stars`, ` Attractiveness_Index_Rank`, `Feedback`, `Country_Name`) VALUES
('1', 5, 3, 'Japan offers a unique blend of traditional culture and modern technology. Extremely safe with excellent public services.', 'Japan'),
('10', 3, 10, 'Egypt is known for its ancient history and landmarks like the Pyramids. Safety can be a concern in certain areas; travelers should stay informed.', 'Egypt'),
('2', 4, 5, 'France is renowned for its art, cuisine, and fashion. Major tourist attractions but occasional safety concerns in big cities.', 'France'),
('3', 5, 4, 'Australia boasts stunning natural landscapes and vibrant cities. Generally safe with a high quality of life.', 'Australia'),
('4', 4, 7, 'China has rich historical sites and rapid modernization. Safety varies across regions; major cities are generally safe.', 'China'),
('5', 4, 8, 'Russia offers diverse cultural experiences and vast landscapes. Safety can be a concern in certain areas.', 'Russia'),
('6', 4, 6, 'The UK has a rich history and bustling cities. Generally safe, though some urban areas may have higher crime rates.', 'United Kingdom'),
('7', 4, 9, 'Turkey is famous for its historical landmarks and beautiful coastlines. Safety can vary, especially in politically sensitive regions.', 'Turkey'),
('8', 4, 2, 'Italy is beloved for its art, architecture, and cuisine. Generally safe with vibrant tourist spots.', 'Italy'),
('9', 5, 1, 'Germany offers a high standard of living, efficient infrastructure, and rich cultural heritage. Very safe for residents and tourists.', 'Germany');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` int(11) NOT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Second_Name` varchar(45) NOT NULL,
  `Country_Code` varchar(45) NOT NULL,
  `Disease` varchar(45) DEFAULT NULL,
  `Passport_Number` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Phone_Number` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Date_of_Birth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_ID`, `First_Name`, `Second_Name`, `Country_Code`, `Disease`, `Passport_Number`, `Email`, `Phone_Number`, `Address`, `Gender`, `Date_of_Birth`) VALUES
(231, 'abdo', 'ameen', '3', NULL, '2321', 'alpha78', '113421234', 'giza/october', 'male', '0000-00-00'),
(24100, 'Ahmed', 'Hassan', '10', 'None', 'A1234567', 'ahmed.hassan@gmail.com', '01012345678', 'Cairo', 'Male', '1990-01-01'),
(24102, 'Sara', 'Kamel', '7', 'None', 'A1234569', 'sara.kamel@gmail.com', '01112345678', 'Giza', 'Female', '1994-03-10'),
(24103, 'Yasmine', 'Mahmoud', '10', 'Flu', 'A1234570', 'yasmine.mahmoud@gmail.com', '01212345678', 'Cairo', 'Female', '1996-04-20'),
(24104, 'Omar', 'Fouad', '4', 'None', 'A1234571', 'omar.fouad@gmail.com', '01022345678', 'Mansoura', 'Male', '1991-05-25'),
(24105, 'Noha', 'Tarek', '8', 'None', 'A1234572', 'noha.tarek@gmail.com', '01122345678', 'Cairo', 'Female', '1993-06-30'),
(24106, 'Karim', 'Ibrahim', '6', 'Asthma', 'A1234573', 'karim.ibrahim@gmail.com', '01222345678', 'Giza', 'Male', '1995-07-10'),
(24107, 'Hala', 'Samir', '1', 'None', 'A1234574', 'hala.samir@gmail.com', '01032345678', 'Ismailia', 'Female', '1990-08-15'),
(24108, 'Amr', 'Shawky', '2', 'None', 'A1234575', 'amr.shawky@gmail.com', '01132345678', 'Luxor', 'Male', '1997-09-25'),
(24109, 'Rana', 'Adel', '9', 'Diabetes', 'A1234576', 'rana.adel@gmail.com', '01232345678', 'Cairo', 'Female', '1992-10-10'),
(24111, 'Salma', 'Saeed', '4', 'Flu', 'A1234578', 'salma.saeed@gmail.com', '01142345678', 'Cairo', 'Female', '1996-12-15'),
(24112, 'Tamer', 'Zaki', '3', 'None', 'A1234579', 'tamer.zaki@gmail.com', '01242345678', 'Tanta', 'Male', '1990-01-05'),
(24113, 'Laila', 'Ehab', '8', 'None', 'A1234580', 'laila.ehab@gmail.com', '01052345678', 'Giza', 'Female', '1993-02-14'),
(24114, 'Mona', 'Khaled', '5', 'Hypertension', 'A1234581', 'mona.khaled@gmail.com', '01152345678', 'Cairo', 'Female', '1995-03-23'),
(24116, 'Farida', 'Osama', '5', 'None', 'A1234583', 'farida.osama@gmail.com', '01062345678', 'Cairo', 'Female', '1991-05-19'),
(24117, 'Mahmoud', 'Gamal', '9', 'None', 'A1234584', 'mahmoud.gamal@gmail.com', '01162345678', 'Fayoum', 'Male', '1992-06-06'),
(24118, 'Nour', 'Fathy', '5', 'Asthma', 'A1234585', 'nour.fathy@gmail.com', '01262345678', 'Cairo', 'Female', '1994-07-07'),
(24119, 'Basma', 'Reda', '8', 'None', 'A1234586', 'basma.reda@gmail.com', '01072345678', 'Giza', 'Female', '1996-08-28'),
(24120, 'Mostafa', 'Adham', '2', 'None', 'A1234587', 'mostafa.adham@gmail.com', '01172345678', 'Cairo', 'Male', '1990-09-19'),
(24122, 'Eman', 'Anwar', '1', 'None', 'A1234589', 'eman.anwar@gmail.com', '01082345678', 'Cairo', 'Female', '1995-11-11'),
(24123, 'Ramy', 'Ashraf', '8', 'None', 'A1234590', 'ramy.ashraf@gmail.com', '01182345678', 'Giza', 'Male', '1997-12-22'),
(24124, 'Heba', 'Magdy', '6', 'Flu', 'A1234591', 'heba.magdy@gmail.com', '01282345678', 'Cairo', 'Female', '1991-01-18'),
(24125, 'Sherif', 'Hani', '+20', 'None', 'A1234592', 'sherif.hani@gmail.com', '01092345678', 'Alexandria', 'Male', '1994-02-09'),
(24126, 'Reem', 'Yehia', '4', 'None', 'A1234593', 'reem.yehia@gmail.com', '01192345678', 'Cairo', 'Female', '1996-03-07'),
(24127, 'Khaled', 'Nasser', '1', 'Asthma', 'A1234594', 'khaled.nasser@gmail.com', '01292345678', 'Mansoura', 'Male', '1990-04-12'),
(24128, 'Aya', 'Hesham', '5', 'None', 'A1234595', 'aya.hesham@gmail.com', '01003345678', 'Cairo', 'Female', '1992-05-23'),
(24129, 'Ibrahim', 'Saad', '+20', 'Hypertension', 'A1234596', 'ibrahim.saad@gmail.com', '01103345678', 'Alexandria', 'Male', '1993-06-15'),
(24415, 'abdelrhman', 'ameen', '10', '', '231', 'beta682005@gmail.com', '01140801091', 'giza/october', 'male', '2024-12-04'),
(306055, 'Abosedaira', 'Hamed', '10', '', '010255454', 'Ahmeedmmm@gmail.com', '010255889966', 'Nile unive', 'male', '2006-03-08'),
(2441521, 'abdelrhman', 'ameen', '10', '', '23123', 'beta682005@gmail.com', '01140801091', 'giza/october', 'male', '2024-12-04');

-- --------------------------------------------------------

--
-- Table structure for table `customer_finance_restaurant`
--

CREATE TABLE `customer_finance_restaurant` (
  `Customer_ID` int(11) NOT NULL,
  `Transaction_Code` int(11) NOT NULL,
  `License_Number` int(11) NOT NULL,
  `Restaurant_Transaction_Code` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_finance_restaurant`
--

INSERT INTO `customer_finance_restaurant` (`Customer_ID`, `Transaction_Code`, `License_Number`, `Restaurant_Transaction_Code`) VALUES
(433255, 40842, 1100, '22923'),
(306055, 36637, 1000, '25885'),
(80601050, 47726, 1100, '30552'),
(4332, 93197, 1000, '57196'),
(433255, 62295, 1050, '58428'),
(12312, 93425, 1000, '77025'),
(2441521, 34742, 1000, '84732'),
(24415, 41770, 1000, '93814'),
(433255, 23455, 1000, '95939');

-- --------------------------------------------------------

--
-- Table structure for table `customer_flight_finance`
--

CREATE TABLE `customer_flight_finance` (
  `Customer_ID` int(11) NOT NULL,
  `Flight_ID` varchar(45) NOT NULL,
  `Transaction_Code` int(11) NOT NULL,
  `Flight_Transcation_Code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_flight_finance`
--

INSERT INTO `customer_flight_finance` (`Customer_ID`, `Flight_ID`, `Transaction_Code`, `Flight_Transcation_Code`) VALUES
(4332, 'F104', 93197, 19693),
(12312, 'F104', 93425, 31682),
(24415, 'F104', 41770, 42102),
(306055, 'F104', 36637, 11275),
(433255, 'F104', 23455, 82492),
(433255, 'F109', 40842, 39420),
(433255, 'F125', 62295, 82991),
(2441521, 'F104', 34742, 23519),
(80601050, 'F109', 47726, 22696);

-- --------------------------------------------------------

--
-- Table structure for table `customer_room_finance`
--

CREATE TABLE `customer_room_finance` (
  `customer_id` int(11) NOT NULL,
  `Room_Number` varchar(10) NOT NULL,
  `transaction_code` int(11) NOT NULL,
  `hotel_transaction_code` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_room_finance`
--

INSERT INTO `customer_room_finance` (`customer_id`, `Room_Number`, `transaction_code`, `hotel_transaction_code`) VALUES
(80601050, '0020-202', 47726, '17939'),
(24415, '0010-101', 41770, '36358'),
(433255, '0020-202', 40842, '39424'),
(2441521, '0010-101', 34742, '44784'),
(4332, '0010-101', 93197, '56877'),
(306055, '0010-101', 36637, '65002'),
(433255, '0010-101', 23455, '73773'),
(12312, '0010-101', 93425, '80788'),
(433255, '011-101', 62295, '94013');

-- --------------------------------------------------------

--
-- Table structure for table `customer_tourist_attraction_finance`
--

CREATE TABLE `customer_tourist_attraction_finance` (
  `Customer_id` int(11) NOT NULL,
  `Attraction_code` int(11) NOT NULL,
  `Transaction_Code` int(11) NOT NULL,
  `TOURIST_attractions_Transaction_Code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_tourist_attraction_finance`
--

INSERT INTO `customer_tourist_attraction_finance` (`Customer_id`, `Attraction_code`, `Transaction_Code`, `TOURIST_attractions_Transaction_Code`) VALUES
(433255, 5, 62295, 17192),
(433255, 1, 40842, 33001),
(306055, 3, 36637, 62087),
(2441521, 3, 34742, 62186),
(433255, 3, 23455, 62968),
(80601050, 1, 47726, 64727),
(12312, 3, 93425, 68779),
(4332, 3, 93197, 72536),
(24415, 3, 41770, 82180);

-- --------------------------------------------------------

--
-- Table structure for table `finance`
--

CREATE TABLE `finance` (
  `Transiction_Code` int(11) NOT NULL,
  `Total_Cost` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `finance`
--

INSERT INTO `finance` (`Transiction_Code`, `Total_Cost`) VALUES
(17321, 1250.00),
(23455, 770.00),
(26277, 0.00),
(29442, 0.00),
(34742, 770.00),
(36637, 770.00),
(40842, 1125.00),
(41770, 770.00),
(46920, 1250.00),
(47726, 1125.00),
(62295, 1310.00),
(70494, 1250.00),
(70949, 1065.00),
(90997, 1210.00),
(93197, 770.00),
(93425, 770.00);

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `Flight_ID` varchar(45) NOT NULL,
  `Airport_code` varchar(45) NOT NULL,
  `Built_Year` int(11) NOT NULL,
  `Took_Off_From` varchar(50) NOT NULL,
  `Destination` varchar(50) NOT NULL,
  `Trip_Duration` varchar(10) NOT NULL,
  `services` varchar(100) NOT NULL,
  `Departure_Time` time NOT NULL,
  `Flight_bill_cost` decimal(15,2) NOT NULL,
  `Country_Code` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`Flight_ID`, `Airport_code`, `Built_Year`, `Took_Off_From`, `Destination`, `Trip_Duration`, `services`, `Departure_Time`, `Flight_bill_cost`, `Country_Code`) VALUES
('F101', '1', 1931, 'Cairo', 'Japan', '7h', 'wifi', '11:00:00', 500.28, '1'),
('F104', '04', 1910, 'Dubai', 'Egypt', '7h', 'wifi, snacks', '11:45:00', 470.00, '10'),
('F105', '05', 1980, 'Hurghada', 'Japan', '10h', 'meals, wifi', '08:00:00', 600.00, '1'),
('F106', '6', 1999, 'Sharm El Sheikh', 'Japan', '9h', 'drinks, wifi', '07:00:00', 580.00, '1'),
('F107', '7', 2000, 'Marsa Alam', 'Japan', '11h', 'entertainment, wifi', '14:00:00', 620.00, '1'),
('F108', '8', 2010, 'Port Said', 'Japan', '10.5h', 'full service', '09:00:00', 650.00, '1'),
('F109', '9', 1985, 'Cairo', 'France', '6h', 'wifi, snacks', '06:30:00', 500.00, '2'),
('F11', '01', 1931, 'Rome', 'Egypt', '6h', 'meals', '09:30:00', 450.00, '10'),
('F110', '10', 1930, 'Alexandria', 'France', '5.5h', 'drinks, meals', '12:00:00', 470.00, '2'),
('F111', '11', 1937, 'Luxor', 'France', '7h', 'meals, entertainment', '15:30:00', 530.00, '2'),
('F112', '12', 1967, 'Aswan', 'France', '6.5h', 'wifi, drinks', '10:15:00', 510.00, '2'),
('F113', '13', 215, 'Hurghada', 'Australia', '14h', 'full service', '05:00:00', 800.00, '3'),
('F114', '14', 217, 'Sharm El Sheikh', 'Australia', '13.5h', 'wifi, meals', '16:00:00', 780.00, '3'),
('F115', '15', 1945, 'Marsa Alam', 'Australia', '15h', 'entertainment, drinks', '07:45:00', 820.00, '3'),
('F116', '16', 1980, 'Port Said', 'Australia', '14h', 'meals, wifi', '11:30:00', 810.00, '3'),
('F117', '17', 1975, 'Cairo', 'China', '9h', 'wifi, snacks', '08:30:00', 550.00, '4'),
('F118', '18', 2020, 'Alexandria', 'China', '8.5h', 'entertainment, drinks', '13:45:00', 530.00, '4'),
('F119', '19', 1992, 'Luxor', 'China', '10h', 'wifi, full service', '17:00:00', 590.00, '4'),
('F12', '02', 1968, 'Paris', 'Egypt', '5h', 'wifi, drinks', '10:00:00', 400.00, '10'),
('F120', '20', 1931, 'Aswan', 'China', '9.5h', 'meals, entertainment', '09:00:00', 570.00, '4'),
('F121', '21', 1931, 'Hurghada', 'Russia', '11h', 'wifi, meals', '06:45:00', 700.00, '5'),
('F122', '22', 1931, 'Sharm El Sheikh', 'Russia', '10.5h', 'full service', '10:30:00', 680.00, '5'),
('F123', '23', 1931, 'Marsa Alam', 'Russia', '12h', 'entertainment, snacks', '12:15:00', 720.00, '5'),
('F124', '24', 1931, 'Port Said', 'Russia', '11.5h', 'meals, drinks', '15:00:00', 710.00, '5'),
('F125', '25', 1931, 'Cairo', 'United Kingdom', '6h', 'wifi, entertainment', '08:00:00', 480.00, '6'),
('F126', '26', 1931, 'Alexandria', 'United Kingdom', '5.5h', 'meals, drinks', '14:30:00', 460.00, '6'),
('F127', '27', 1931, 'Luxor', 'United Kingdom', '7h', 'full service', '18:00:00', 520.00, '6'),
('F128', '28', 1931, 'Aswan', 'United Kingdom', '6.5h', 'wifi, snacks', '10:00:00', 500.00, '6'),
('F129', '29', 1931, 'Hurghada', 'Turkey', '4.5h', 'wifi, drinks', '07:00:00', 350.00, '7'),
('F13', '03', 1920, 'Athens', 'Egypt', '8h', 'entertainment', '13:15:00', 520.00, '10'),
('F130', '30', 1931, 'Sharm El Sheikh', 'Turkey', '4h', 'snacks, entertainment', '09:45:00', 330.00, '7'),
('F131', '31', 1931, 'Marsa Alam', 'Turkey', '5h', 'meals, wifi', '13:00:00', 370.00, '7'),
('F132', '32', 1931, 'Port Said', 'Turkey', '4.5h', 'drinks, snacks', '16:30:00', 360.00, '7'),
('F133', '33', 1931, 'Cairo', 'Italy', '5.5h', 'wifi, entertainment', '11:00:00', 400.00, '8'),
('F134', '34', 1931, 'Alexandria', 'Italy', '5h', 'meals, drinks', '15:30:00', 380.00, '8'),
('F135', '35', 1931, 'Luxor', 'Italy', '6h', 'full service', '17:45:00', 420.00, '8'),
('F136', '36', 1931, 'Aswan', 'Italy', '5.5h', 'snacks, drinks', '08:15:00', 410.00, '8'),
('F137', '37', 1931, 'Hurghada', 'Germany', '6.5h', 'wifi, snacks', '06:00:00', 470.00, '9'),
('F138', '38', 1931, 'Sharm El Sheikh', 'Germany', '6h', 'entertainment, drinks', '12:45:00', 450.00, '9'),
('F139', '39', 1931, 'Marsa Alam', 'Germany', '7h', 'meals, wifi', '14:15:00', 500.00, '9'),
('F140', '40', 1931, 'Port Said', 'Germany', '6.5h', 'full service', '09:30:00', 490.00, '9');

-- --------------------------------------------------------

--
-- Table structure for table `flight_stuff`
--

CREATE TABLE `flight_stuff` (
  `Flight_ID` varchar(45) NOT NULL,
  `Crew_ID` int(11) NOT NULL,
  `Years_of_experience` int(11) NOT NULL,
  `Shift_Start_Time` time NOT NULL,
  `Shift_End_Time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flight_stuff`
--

INSERT INTO `flight_stuff` (`Flight_ID`, `Crew_ID`, `Years_of_experience`, `Shift_Start_Time`, `Shift_End_Time`) VALUES
('F101', 24100, 5, '08:00:00', '16:00:00'),
('F101', 24101, 3, '09:00:00', '17:00:00'),
('F104', 24102, 4, '10:00:00', '18:00:00'),
('F104', 24103, 6, '11:00:00', '19:00:00'),
('F105', 24104, 2, '12:00:00', '20:00:00'),
('F105', 24105, 7, '13:00:00', '21:00:00'),
('F106', 24106, 1, '14:00:00', '22:00:00'),
('F106', 24107, 8, '15:00:00', '23:00:00'),
('F107', 24108, 4, '16:00:00', '00:00:00'),
('F107', 24109, 5, '17:00:00', '01:00:00'),
('F108', 24110, 6, '18:00:00', '02:00:00'),
('F108', 24111, 3, '19:00:00', '03:00:00'),
('F109', 24112, 4, '20:00:00', '04:00:00'),
('F109', 24113, 5, '21:00:00', '05:00:00'),
('F11', 24114, 4, '22:00:00', '06:00:00'),
('F110', 24115, 3, '23:00:00', '07:00:00'),
('F111', 24116, 6, '00:00:00', '08:00:00'),
('F111', 24117, 5, '01:00:00', '09:00:00'),
('F112', 24118, 2, '02:00:00', '10:00:00'),
('F112', 24119, 7, '03:00:00', '11:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `Hotel_ID` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Rating` int(11) NOT NULL,
  `City` varchar(45) NOT NULL,
  `Meals` varchar(45) NOT NULL,
  `Price_range` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`Hotel_ID`, `Name`, `Rating`, `City`, `Meals`, `Price_range`) VALUES
(1, 'Grand Nile Hotel', 4, 'Cairo', 'Breakfast', 'high'),
(2, 'Luxor Palace', 4, 'Luxor', 'Half Board', 'low'),
(3, 'Red Sea Resort', 3, 'Sharm El Sheikh', 'All Inclusive', 'high'),
(4, 'Alexandria Royal', 2, 'Alexandria', 'Breakfast', 'medium'),
(5, 'Giza Pyramids View', 5, 'Giza', 'Bed & Breakfast', 'medium'),
(10, 'Hurghada Bay Hotel', 4, 'Hurghada', 'Full Board', 'medium'),
(11, 'London Tower Suites', 5, 'London', 'Full Board', 'high'),
(12, 'Desert Rose Resort', 4, 'Hurghada', 'Breakfast', 'medium'),
(13, 'Sharm Lagoon', 3, 'Sharm El Sheikh', 'All Inclusive', 'medium'),
(14, 'Aswan Palace', 4, 'Aswan', 'Half Board', 'high'),
(15, 'Berlin Grand', 4, 'Berlin', 'Full Board', 'medium'),
(20, 'Luxor Palace', 4, 'Luxor', 'Half Board', 'low'),
(21, 'Athens Sun Hotel', 4, 'Athens', 'Breakfast', 'medium'),
(22, 'Hurghada Breeze', 4, 'Hurghada', 'Half Board', 'medium'),
(23, 'Sharm Pearl', 3, 'Sharm El Sheikh', 'All Inclusive', 'low'),
(24, 'Cairo Central Plaza', 5, 'Cairo', 'Full Board', 'high'),
(25, 'Aswan Serenity', 5, 'Aswan', 'Full Board', 'high'),
(26, 'Giza Grande', 4, 'Giza', 'Half Board', 'medium'),
(27, 'Sydney Opera Suites', 5, 'Sydney', 'Breakfast', 'high'),
(28, 'Port Said Horizon', 4, 'Port Said', 'All Inclusive', 'medium'),
(29, 'Amsterdam Canal Hotel', 4, 'Amsterdam', 'Half Board', 'high'),
(30, 'Paris Skyview', 5, 'Paris', 'Full Board', 'high'),
(31, 'Toronto Skyscape', 5, 'Toronto', 'Bed & Breakfast', 'high'),
(32, 'Alex Golden Sands', 3, 'Alexandria', 'All Inclusive', 'low'),
(33, 'Cairo Plaza', 5, 'Cairo', 'Half Board', 'high'),
(34, 'Hurghada Sun', 3, 'Hurghada', 'Half Board', 'medium'),
(35, 'Marsa Beach', 4, 'Marsa Alam', 'All Inclusive', 'low'),
(36, 'Port Said Resort', 5, 'Port Said', 'Breakfast', 'medium'),
(37, 'Sharm Horizon', 3, 'Sharm El Sheikh', 'Full Board', 'medium'),
(38, 'Aswan Royal', 4, 'Aswan', 'Breakfast', 'high'),
(39, 'Giza Pyramid Resort', 5, 'Giza', 'Full Board', 'medium'),
(40, 'Grand Nile Hotel', 4, 'Cairo', 'Breakfast', 'high'),
(50, 'Tokyo Bay Hotel', 4, 'Tokyo', 'Bed & Breakfast', 'high'),
(60, 'Marsa Alam Resort', 3, 'Marsa Alam', 'All Inclusive', 'low'),
(70, 'Aswan Riverside', 5, 'Aswan', 'Breakfast', 'high'),
(80, 'New York Grand', 5, 'New York', 'Half Board', 'high'),
(90, 'Alex Seaview', 3, 'Alexandria', 'Bed & Breakfast', 'low'),
(100, 'Dubai Royal', 5, 'Dubai', 'All Inclusive', 'medium'),
(160, 'Rome Piazza Hotel', 4, 'Rome', 'All Inclusive', 'low'),
(170, 'Marsa Delight', 3, 'Marsa Alam', 'Breakfast', 'medium'),
(180, 'Port Said Inn', 4, 'Port Said', 'Half Board', 'medium'),
(190, 'Madrid Central', 5, 'Madrid', 'Bed & Breakfast', 'high'),
(200, 'Luxor Riverside', 4, 'Luxor', 'Full Board', 'low'),
(300, 'Beijing Cityscape', 4, 'Beijing', 'Full Board', 'medium'),
(323, '', 3, 'october', 'no meals', 'High'),
(400, 'Cape Town Bayview', 4, 'Cape Town', 'Half Board', 'medium');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_room`
--

CREATE TABLE `hotel_room` (
  `Room_Number` varchar(10) NOT NULL,
  `Hotel_ID` int(11) NOT NULL,
  `View` varchar(100) NOT NULL,
  `Style` varchar(100) NOT NULL,
  `Floor_Number` int(11) NOT NULL,
  `Total_bill_cost` decimal(15,2) NOT NULL,
  `Country_Code` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_room`
--

INSERT INTO `hotel_room` (`Room_Number`, `Hotel_ID`, `View`, `Style`, `Floor_Number`, `Total_bill_cost`, `Country_Code`) VALUES
('0010-101', 10, 'Garden', 'Standard', 1, 150.00, '10'),
('0010-202', 10, 'Pool', 'Suite', 2, 300.00, '10'),
('0020-101', 20, 'Ocean', 'Deluxe', 3, 200.00, '1'),
('0020-202', 20, 'City', 'Standard', 4, 100.00, '2'),
('0030-101', 30, 'Mountain', 'Suite', 5, 400.00, '3'),
('0030-202', 30, 'City', 'Standard', 1, 120.00, '3'),
('0030-301', 30, 'Pool', 'Suite', 2, 250.00, '3'),
('0040-101', 40, 'Ocean', 'Deluxe', 3, 350.00, '4'),
('0040-202', 40, 'City', 'Standard', 4, 180.00, '4'),
('0050-101', 50, 'Mountain', 'Suite', 5, 500.00, '1'),
('0050-202', 50, 'City', 'Standard', 1, 180.00, '1'),
('0050-301', 50, 'Pool', 'Suite', 2, 350.00, '1'),
('0060-101', 60, 'Ocean', 'Deluxe', 3, 220.00, '10'),
('0060-202', 60, 'City', 'Standard', 4, 110.00, '10'),
('0070-101', 70, 'Mountain', 'Suite', 5, 300.00, '10'),
('0070-202', 70, 'City', 'Standard', 1, 90.00, '10'),
('0080-101', 80, 'Pool', 'Suite', 2, 400.00, '10'),
('0080-202', 80, 'Ocean', 'Deluxe', 3, 250.00, '10'),
('0090-101', 90, 'City', 'Standard', 4, 150.00, '2'),
('0090-202', 90, 'Mountain', 'Suite', 5, 300.00, '2'),
('0100-101', 100, 'City', 'Standard', 1, 80.00, '10'),
('0100-202', 100, 'Pool', 'Suite', 2, 150.00, '10'),
('011-101', 11, 'Ocean', 'Deluxe', 3, 450.00, '6'),
('011-202', 11, 'City', 'Standard', 4, 200.00, '6'),
('012-101', 12, 'Mountain', 'Suite', 5, 300.00, '10'),
('012-202', 12, 'City', 'Standard', 1, 120.00, '10'),
('013-101', 13, 'Pool', 'Suite', 2, 250.00, '10'),
('013-202', 13, 'Ocean', 'Deluxe', 3, 180.00, '10'),
('014-101', 14, 'City', 'Standard', 4, 180.00, '10'),
('014-202', 14, 'Mountain', 'Suite', 5, 350.00, '10'),
('015-101', 15, 'City', 'Standard', 1, 150.00, '9'),
('015-202', 15, 'Pool', 'Suite', 2, 300.00, '9'),
('0160-101', 160, 'Ocean', 'Deluxe', 3, 250.00, '8'),
('0160-202', 160, 'City', 'Standard', 4, 120.00, '8'),
('0170-101', 170, 'Mountain', 'Suite', 5, 200.00, '10'),
('0170-202', 170, 'City', 'Standard', 1, 80.00, '10'),
('0180-101', 180, 'Pool', 'Suite', 2, 180.00, '10'),
('0180-202', 180, 'Ocean', 'Deluxe', 3, 120.00, '10'),
('0190-101', 190, 'City', 'Standard', 4, 180.00, '5'),
('0190-202', 190, 'Mountain', 'Suite', 5, 350.00, '5'),
('0200-101', 200, 'City', 'Standard', 1, 100.00, '1'),
('0200-202', 200, 'Pool', 'Suite', 2, 200.00, '1'),
('021-101', 21, 'Ocean', 'Deluxe', 3, 150.00, '7'),
('021-202', 21, 'City', 'Standard', 4, 80.00, '7'),
('022-101', 22, 'Mountain', 'Suite', 5, 250.00, '10'),
('022-202', 22, 'City', 'Standard', 1, 100.00, '10'),
('023-101', 23, 'Pool', 'Suite', 2, 180.00, '10'),
('023-202', 23, 'Ocean', 'Deluxe', 3, 120.00, '10'),
('024-101', 24, 'City', 'Standard', 4, 200.00, '10'),
('024-202', 24, 'Mountain', 'Suite', 5, 400.00, '10'),
('025-101', 25, 'City', 'Standard', 1, 180.00, '10'),
('101', 1, 'Garden', 'Standard', 1, 150.00, '10'),
('202', 1, 'Pool', 'Suite', 2, 300.00, '10'),
('301', 2, 'Ocean', 'Deluxe', 3, 200.00, '1'),
('404', 2, 'City', 'Standard', 4, 100.00, '2'),
('505', 3, 'Mountain', 'Suite', 5, 400.00, '3');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `License_Number` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Rating` int(11) NOT NULL,
  `Price_Range` varchar(10) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Country_Code` varchar(45) NOT NULL,
  `Restaurant_bill_cost` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`License_Number`, `Name`, `Rating`, `Price_Range`, `Location`, `Type`, `Country_Code`, `Restaurant_bill_cost`) VALUES
(1000, 'Abou Elsid Restaurant', 4, 'Medium', 'Zamalek', 'Egyptian Food', '10', 100.00),
(1001, 'Zooba', 5, 'Medium', 'El Sheikh Zayed City', 'Egyptian Food', '10', 150.00),
(1002, 'Makino', 4, 'High', 'Zamalek', 'Japanese Food', '10', 250.00),
(1003, 'O’s Pasta', 3, 'Medium', 'Zamalek', 'Italian Food', '10', 125.00),
(1030, 'La Pergola', 5, 'High', 'Rome', 'Italian Food', '8', 300.00),
(1031, 'Da Vittorio', 5, 'High', 'Bergamo', 'Italian Food', '8', 200.00),
(1032, 'Pizzeria Spontini', 4, 'Medium', 'Milan', 'Italian Food', '8', 80.00),
(1033, 'Trattoria da Enzo', 4, 'Medium', 'Florence', 'Italian Food', '8', 90.00),
(1034, 'Antica Pesa', 4, 'Medium', 'Rome', 'Italian Food', '8', 100.00),
(1040, 'Nusr-Et Steakhouse', 5, 'High', 'Istanbul', 'Turkish Food', '7', 400.00),
(1041, 'Ciya Sofrasi', 4, 'Medium', 'Istanbul', 'Turkish Food', '7', 120.00),
(1042, 'Haci Abdullah Lokantasi', 4, 'Medium', 'Istanbul', 'Turkish Food', '7', 100.00),
(1043, 'Meze by Lemon Tree', 5, 'High', 'Istanbul', 'Turkish Food', '7', 150.00),
(1044, 'Tarihi Sultanahmet Koftecisi', 4, 'Low', 'Istanbul', 'Turkish Food', '7', 50.00),
(1050, 'The Fat Duck', 5, 'High', 'Bray', 'British Food', '6', 350.00),
(1051, 'Sketch', 4, 'High', 'London', 'British Food', '6', 250.00),
(1052, 'Dishoom', 4, 'Medium', 'London', 'Indian Fusion', '6', 90.00),
(1053, 'Rules Restaurant', 4, 'High', 'London', 'British Food', '6', 200.00),
(1054, 'Hawksmoor', 5, 'Medium', 'Manchester', 'Steakhouse', '6', 150.00),
(1060, 'Sukiyabashi Jiro', 5, 'High', 'Tokyo', 'Japanese Food', '1', 400.00),
(1061, 'Ramen Street', 4, 'Medium', 'Tokyo', 'Japanese Food', '1', 100.00),
(1062, 'Narisawa', 5, 'High', 'Tokyo', 'Japanese Food', '1', 300.00),
(1063, 'Uobei Sushi', 4, 'Low', 'Tokyo', 'Japanese Food', '1', 50.00),
(1064, 'Kaiseki Kanda', 5, 'High', 'Tokyo', 'Japanese Food', '1', 500.00),
(1080, 'White Rabbit', 5, 'High', 'Moscow', 'Russian Food', '7', 300.00),
(1081, 'Café Pushkin', 5, 'High', 'Moscow', 'Russian Food', '7', 250.00),
(1082, 'Mari Vanna', 4, 'Medium', 'Moscow', 'Russian Food', '7', 150.00),
(1083, 'Turandot', 5, 'High', 'Moscow', 'Russian Food', '7', 400.00),
(1084, 'Palkin', 4, 'Medium', 'St. Petersburg', 'Russian Food', '7', 200.00),
(1090, 'Viktualienmarkt', 4, 'Medium', 'Munich', 'German Food', '9', 100.00),
(1091, 'Zur Letzten Instanz', 4, 'Medium', 'Berlin', 'German Food', '9', 150.00),
(1092, 'Hofbräuhaus', 5, 'Medium', 'Munich', 'German Food', '9', 120.00),
(1093, 'Berliner Republik', 4, 'Low', 'Berlin', 'German Food', '9', 80.00),
(1094, 'Tantris', 5, 'High', 'Munich', 'German Food', '9', 300.00),
(1100, 'Le Jules Verne', 5, 'High', 'Paris', 'French Food', '2', 400.00),
(1101, 'L\'Ambroisie', 5, 'High', 'Paris', 'French Food', '2', 500.00),
(1102, 'Paul Bocuse', 4, 'High', 'Lyon', 'French Food', '2', 300.00),
(1103, 'Le Meurice', 5, 'High', 'Paris', 'French Food', '2', 450.00),
(1104, 'Le Comptoir', 4, 'Medium', 'Paris', 'French Food', '2', 120.00),
(1110, 'Da Dong Roast Duck', 5, 'High', 'Beijing', 'Chinese Food', '4', 300.00),
(1111, 'Din Tai Fung', 5, 'Medium', 'Shanghai', 'Chinese Food', '4', 150.00),
(1112, 'Li Qun Roast Duck', 4, 'Medium', 'Beijing', 'Chinese Food', '4', 100.00),
(1113, 'HuTong', 5, 'High', 'Beijing', 'Chinese Food', '4', 250.00),
(1114, 'Crystal Jade', 4, 'Medium', 'Shanghai', 'Chinese Food', '4', 120.00),
(2001, 'Le Gourmet', 5, 'High', 'Paris', 'French Food', '2', 150.00),
(2002, 'Chez Pierre', 4, 'Medium', 'Marseille', 'French Food', '2', 120.00),
(2003, 'La Belle Vie', 3, 'Low', 'Lyon', 'French Food', '2', 80.00),
(2004, 'Cafe du Monde', 5, 'High', 'Nice', 'French Food', '2', 170.00),
(2005, 'Le Petit Bistro', 4, 'Medium', 'Toulouse', 'French Food', '2', 110.00),
(2006, 'Maison Blanche', 5, 'High', 'Strasbourg', 'French Food', '2', 160.00),
(2007, 'Brasserie Royale', 4, 'Medium', 'Bordeaux', 'French Food', '2', 130.00),
(2008, 'La Terrasse', 3, 'Low', 'Nantes', 'French Food', '2', 90.00),
(2009, 'Le Panache', 5, 'High', 'Paris', 'French Food', '2', 180.00),
(2010, 'Au Bord de Mer', 4, 'Medium', 'Marseille', 'French Food', '2', 140.00),
(3001, 'Outback Grill', 5, 'High', 'Sydney', 'Australian Food', '3', 150.00),
(3002, 'The Kangaroo Table', 4, 'Medium', 'Melbourne', 'Australian Food', '3', 120.00),
(3003, 'Koala Cafe', 3, 'Low', 'Brisbane', 'Australian Food', '3', 90.00),
(3004, 'Aussie Eats', 5, 'High', 'Perth', 'Australian Food', '3', 170.00),
(3005, 'Crocodile Bite', 4, 'Medium', 'Adelaide', 'Australian Food', '3', 110.00),
(3006, 'Great Barrier Bites', 5, 'High', 'Cairns', 'Australian Food', '3', 160.00),
(3007, 'Sydney Harbour Cafe', 4, 'Medium', 'Sydney', 'Australian Food', '3', 130.00),
(3008, 'Bush Tucker Kitchen', 3, 'Low', 'Darwin', 'Australian Food', '3', 90.00),
(3009, 'Outback Oasis', 5, 'High', 'Alice Springs', 'Australian Food', '3', 180.00),
(3010, 'Tasmanian Treats', 4, 'Medium', 'Hobart', 'Australian Food', '3', 140.00),
(4001, 'Golden Dragon', 5, 'High', 'Beijing', 'Chinese Food', '4', 150.00),
(4002, 'Dim Sum Delight', 4, 'Medium', 'Shanghai', 'Chinese Food', '4', 120.00),
(4003, 'Great Wall Bites', 3, 'Low', 'Xi\'an', 'Chinese Food', '4', 90.00),
(4004, 'Panda Express', 5, 'High', 'Chengdu', 'Chinese Food', '4', 170.00),
(4005, 'Mandarin Magic', 4, 'Medium', 'Guangzhou', 'Chinese Food', '4', 110.00),
(4006, 'Tea House Bliss', 5, 'High', 'Hangzhou', 'Chinese Food', '4', 160.00),
(4007, 'Shanghai Noodles', 4, 'Medium', 'Shanghai', 'Chinese Food', '4', 130.00),
(4008, 'Red Lantern', 3, 'Low', 'Beijing', 'Chinese Food', '4', 90.00),
(4009, 'Dragon Palace', 5, 'High', 'Shenzhen', 'Chinese Food', '4', 180.00),
(4010, 'Chow Mein Corner', 4, 'Medium', 'Tianjin', 'Chinese Food', '4', 140.00),
(5001, 'Moscow Delights', 5, 'High', 'Moscow', 'Russian Food', '5', 150.00),
(5002, 'St. Petersburg Eats', 4, 'Medium', 'St. Petersburg', 'Russian Food', '5', 120.00),
(5003, 'Siberian Savour', 3, 'Low', 'Novosibirsk', 'Russian Food', '5', 90.00),
(5004, 'The Kremlin Kitchen', 5, 'High', 'Moscow', 'Russian Food', '5', 170.00),
(5005, 'Cossack Cafe', 4, 'Medium', 'Kazan', 'Russian Food', '5', 110.00),
(5006, 'Trans-Siberian Bites', 5, 'High', 'Vladivostok', 'Russian Food', '5', 160.00),
(5007, 'Lake Baikal Bistro', 4, 'Medium', 'Irkutsk', 'Russian Food', '5', 130.00),
(5008, 'Arctic Eats', 3, 'Low', 'Murmansk', 'Russian Food', '5', 90.00),
(5009, 'Red Square Cafe', 5, 'High', 'Moscow', 'Russian Food', '5', 180.00),
(5010, 'Golden Ring Gourmet', 4, 'Medium', 'Yaroslavl', 'Russian Food', '5', 140.00);

-- --------------------------------------------------------

--
-- Table structure for table `stuff`
--

CREATE TABLE `stuff` (
  `Crew_ID` int(11) NOT NULL,
  `Passport_ID` varchar(45) NOT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Second_Name` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Department` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stuff`
--

INSERT INTO `stuff` (`Crew_ID`, `Passport_ID`, `First_Name`, `Second_Name`, `Email`, `Department`) VALUES
(24101, 'P1000002', 'Mona', 'Mohamed', 'mona.mohamed@example.com', 'Finance'),
(24102, 'P1000003', 'Youssef', 'Ali', 'youssef.ali@example.com', 'Marketing'),
(24103, 'P1000004', 'Aya', 'Ibrahim', 'aya.ibrahim@example.com', 'Sales'),
(24105, 'P1000006', 'Farida', 'Adel', 'farida.adel@example.com', 'Engineering'),
(24106, 'P1000007', 'Tarek', 'Gamal', 'tarek.gamal@example.com', 'Finance'),
(24107, 'P1000008', 'Nour', 'Ahmed', 'nour.ahmed@example.com', 'Marketing'),
(24108, 'P1000009', 'Salma', 'Hisham', 'salma.hisham@example.com', 'Sales'),
(24109, 'P1000010', 'Khaled', 'Mahmoud', 'khaled.mahmoud@example.com', 'Human Resources'),
(24110, 'P1000011', 'Esraa', 'Fouad', 'esraa.fouad@example.com', 'Engineering'),
(24111, 'P1000012', 'Mostafa', 'Othman', 'mostafa.othman@example.com', 'Finance'),
(24112, 'P1000013', 'Nada', 'Saad', 'nada.saad@example.com', 'Marketing'),
(24113, 'P1000014', 'Hany', 'Sami', 'hany.sami@example.com', 'Sales'),
(24114, 'P1000015', 'Amira', 'Khalil', 'amira.khalil@example.com', 'Human Resources'),
(24115, 'P1000016', 'Ziad', 'Nabil', 'ziad.nabil@example.com', 'Engineering'),
(24116, 'P1000017', 'Heba', 'Farouk', 'heba.farouk@example.com', 'Finance'),
(24117, 'P1000018', 'Mahmoud', 'Rashad', 'mahmoud.rashad@example.com', 'Marketing'),
(24118, 'P1000019', 'Dina', 'Lotfy', 'dina.lotfy@example.com', 'Sales'),
(24119, 'P1000020', 'Karim', 'Abdelrahman', 'karim.abdelrahman@example.com', 'Human Resources'),
(241099, '213121', 'ahmed', 'omar', 'N/A', 'call center');

-- --------------------------------------------------------

--
-- Table structure for table `tourist_attraction`
--

CREATE TABLE `tourist_attraction` (
  `Attraction_Code` int(11) NOT NULL,
  `Location` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `Rating` decimal(10,2) NOT NULL,
  `Popularity` varchar(10) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Country_Code` varchar(45) NOT NULL,
  `Tourist_attraction_bill_cost` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tourist_attraction`
--

INSERT INTO `tourist_attraction` (`Attraction_Code`, `Location`, `City`, `Rating`, `Popularity`, `Name`, `Country_Code`, `Tourist_attraction_bill_cost`) VALUES
(1, 'Eiffel Tower', 'Paris', 0.99, 'High', 'Eiffel Tower', '2', 25.00),
(2, 'Colosseum', 'Rome', 0.99, 'High', 'Colosseum', '8', 20.00),
(3, 'Pyramids of Giza', 'Cairo', 4.90, 'High', 'Pyramids of Giza', '10', 20.00),
(4, 'Karnak Temple', 'Luxor', 4.80, 'High', 'Karnak Temple', '10', 15.00),
(5, 'Big Ben', 'London', 3.99, 'High', 'Big Ben', '6', 10.00),
(6, 'Neuschwanstein Castle', 'Füssen', 2.99, 'High', 'Neuschwanstein Castle', '9', 25.00),
(8, 'Brandenburg Gate', 'Berlin', 0.99, 'Medium', 'Brandenburg Gate', '9', 65.00),
(9, 'Saint Basil\'s Cathedral', 'Moscow', 2.60, 'High', 'Saint Basil\'s Cathedral', '5', 20.00),
(11, 'Great Wall', 'Beijing', 0.99, 'Very High', 'Great Wall of China', '4', 30.00),
(13, 'Mount Fuji', 'Tokyo', 0.99, 'Medium', 'Mount Fuji', '1', 150.00),
(31, 'Pyramids of Giza', 'Cairo', 0.99, 'High', 'Pyramids of Giza', '10', 20.00),
(36, 'Sydney Opera House', 'Sydney', 0.99, 'High', 'Sydney Opera House', '3', 30.00),
(41, 'Hagia Sophia', 'Istanbul', 0.99, 'High', 'Hagia Sophia', '7', 15.00),
(42, 'Pamukkale', 'Denizli', 0.99, 'Medium', 'Pamukkale', '7', 10.00),
(43, 'Cappadocia', 'Goreme', 0.99, 'High', 'Cappadocia', '7', 20.00),
(44, 'Karnak Temple', 'Luxor', 0.99, 'High', 'Karnak Temple', '10', 15.00),
(45, 'Valley of the Kings', 'Luxor', 0.99, 'High', 'Valley of the Kings', '10', 20.00),
(46, 'Abu Simbel', 'Aswan', 0.99, 'High', 'Abu Simbel Temples', '10', 25.00),
(47, 'The Egyptian Museum', 'Cairo', 0.99, 'High', 'Egyptian Museum', '10', 10.00),
(48, 'Alexandria Library', 'Alexandria', 0.99, 'Medium', 'Bibliotheca Alexandrina', '10', 5.00),
(49, 'Siwa Oasis', 'Siwa', 0.99, 'Medium', 'Siwa Oasis', '10', 10.00),
(50, 'Philae Temple', 'Aswan', 0.99, 'High', 'Philae Temple', '10', 15.00),
(51, 'Mount Sinai', 'Sinai', 0.99, 'Medium', 'Mount Sinai', '10', 5.00),
(52, 'Citadel of Salah El-Din', 'Cairo', 0.99, 'High', 'Cairo Citadel', '10', 10.00),
(55, 'Philae Temple', 'Aswan', 4.80, 'High', 'Philae Temple', '10', 15.00),
(57, 'Berlin Wall Memorial', 'Berlin', 0.99, 'Medium', 'Berlin Wall Memorial', '9', 100.00),
(58, 'Cologne Cathedral', 'Cologne', 0.99, 'High', 'Cologne Cathedral', '9', 0.00),
(59, 'Heidelberg Castle', 'Heidelberg', 0.99, 'Medium', 'Heidelberg Castle', '9', 8.00),
(60, 'Louvre Museum', 'Paris', 0.99, 'High', 'Louvre Museum', '2', 20.00),
(63, 'Topkapi Palace', 'Istanbul', 0.99, 'High', 'Topkapi Palace', '7', 12.00),
(64, 'Ephesus', 'Izmir', 0.99, 'High', 'Ephesus', '7', 18.00),
(65, 'Tower of London', 'London', 0.99, 'High', 'Tower of London', '6', 25.00),
(66, 'Stonehenge', 'Wiltshire', 0.99, 'High', 'Stonehenge', '6', 20.00),
(67, 'Leaning Tower of Pisa', 'Pisa', 0.99, 'High', 'Leaning Tower of Pisa', '8', 15.00),
(68, 'Venice Canals', 'Venice', 0.99, 'High', 'Venice Canals', '8', 0.00),
(69, 'Terracotta Army', 'Xi\'an', 0.99, 'High', 'Terracotta Army', '4', 20.00),
(70, 'Great Barrier Reef', 'Cairns', 0.99, 'High', 'Great Barrier Reef', '3', 50.00),
(71, 'Uluru', 'Northern Territory', 0.99, 'High', 'Uluru', '3', 10.00),
(72, 'Kremlin', 'Moscow', 0.99, 'High', 'Moscow Kremlin', '5', 15.00),
(73, 'Kinkaku-ji', 'Kyoto', 0.99, 'High', 'Kinkaku-ji', '1', 5.00),
(74, 'Fushimi Inari-taisha', 'Kyoto', 0.99, 'High', 'Fushimi Inari-taisha', '1', 60.00),
(75, 'Tokyo Tower', 'Tokyo', 0.99, 'High', 'Tokyo Tower', '1', 10.00),
(111, 'Eiffel Tower', 'Paris', 4.80, 'High', 'Eiffel Tower', '2', 25.00),
(112, 'Colosseum', 'Rome', 4.70, 'High', 'Colosseum', '8', 20.00),
(115, 'Big Ben', 'London', 4.80, 'High', 'Big Ben', '6', 10.00),
(116, 'Neuschwanstein Castle', 'Füssen', 4.70, 'High', 'Neuschwanstein Castle', '9', 25.00),
(118, 'Brandenburg Gate', 'Berlin', 4.60, 'Medium', 'Brandenburg Gate', '9', 96.00),
(119, 'Saint Basil\'s Cathedral', 'Moscow', 4.90, 'High', 'Saint Basil\'s Cathedral', '5', 20.00),
(130, 'Mount Fuji', 'Tokyo', 4.70, 'Medium', 'Mount Fuji', '1', 69.00),
(141, 'Hagia Sophia', 'Istanbul', 4.80, 'High', 'Hagia Sophia', '7', 15.00),
(142, 'Pamukkale', 'Denizli', 4.70, 'Medium', 'Pamukkale', '7', 10.00),
(143, 'Cappadocia', 'Goreme', 4.90, 'High', 'Cappadocia', '7', 20.00),
(163, 'Topkapi Palace', 'Istanbul', 4.70, 'High', 'Topkapi Palace', '7', 12.00),
(164, 'Ephesus', 'Izmir', 4.80, 'High', 'Ephesus', '7', 18.00),
(165, 'Tower of London', 'London', 4.70, 'High', 'Tower of London', '6', 25.00),
(166, 'Stonehenge', 'Wiltshire', 4.80, 'High', 'Stonehenge', '6', 20.00),
(167, 'Leaning Tower of Pisa', 'Pisa', 4.70, 'High', 'Leaning Tower of Pisa', '8', 15.00),
(168, 'Venice Canals', 'Venice', 4.90, 'High', 'Venice Canals', '8', 66.00),
(172, 'Kremlin', 'Moscow', 4.80, 'High', 'Moscow Kremlin', '5', 15.00),
(470, 'The Egyptian Museum', 'Cairo', 4.70, 'High', 'Egyptian Museum', '10', 10.00),
(480, 'Alexandria Library', 'Alexandria', 4.60, 'Medium', 'Bibliotheca Alexandrina', '10', 5.00),
(490, 'Siwa Oasis', 'Siwa', 4.70, 'Medium', 'Siwa Oasis', '10', 10.00),
(500, 'Valley of the Kings', 'Luxor', 4.90, 'High', 'Valley of the Kings', '10', 20.00),
(510, 'Mount Sinai', 'Sinai', 4.70, 'Medium', 'Mount Sinai', '10', 70.00),
(520, 'Citadel of Salah El-Din', 'Cairo', 4.70, 'High', 'Cairo Citadel', '10', 10.00),
(600, 'Abu Simbel', 'Aswan', 4.80, 'High', 'Abu Simbel Temples', '10', 25.00),
(730, 'Kinkaku-ji', 'Kyoto', 4.80, 'High', 'Kinkaku-ji', '1', 5.00),
(740, 'Fushimi Inari-taisha', 'Kyoto', 4.90, 'High', 'Fushimi Inari-taisha', '1', 60.00),
(750, 'Tokyo Tower', 'Tokyo', 4.70, 'High', 'Tokyo Tower', '1', 10.00),
(1136, 'Sydney Opera House', 'Sydney', 4.90, 'High', 'Sydney Opera House', '3', 30.00),
(1157, 'Berlin Wall Memorial', 'Berlin', 4.70, 'Medium', 'Berlin Wall Memorial', '9', 100.00),
(1158, 'Cologne Cathedral', 'Cologne', 4.80, 'High', 'Cologne Cathedral', '9', 120.00),
(1159, 'Heidelberg Castle', 'Heidelberg', 4.70, 'Medium', 'Heidelberg Castle', '9', 8.00),
(1160, 'Louvre Museum', 'Paris', 4.90, 'High', 'Louvre Museum', '2', 20.00),
(1170, 'Great Barrier Reef', 'Cairns', 4.80, 'High', 'Great Barrier Reef', '3', 50.00),
(1171, 'Uluru', 'Northern Territory', 4.80, 'High', 'Uluru', '3', 10.00),
(2269, 'Terracotta Army', 'Xi\'an', 4.80, 'High', 'Terracotta Army', '4', 20.00),
(5511, 'Great Wall', 'Beijing', 4.90, 'Very High', 'Great Wall of China', '4', 30.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`Airport_code`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`Country_Code`),
  ADD UNIQUE KEY ` Attractiveness_INDEX_RANK_UNIQUE` (` Attractiveness_Index_Rank`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`),
  ADD KEY `Country_Code_idx` (`Country_Code`);

--
-- Indexes for table `customer_finance_restaurant`
--
ALTER TABLE `customer_finance_restaurant`
  ADD PRIMARY KEY (`Customer_ID`,`Transaction_Code`,`License_Number`),
  ADD UNIQUE KEY `Restaurant_Transaction_Code_UNIQUE` (`Restaurant_Transaction_Code`),
  ADD KEY `Transaction_Code_idx` (`Transaction_Code`),
  ADD KEY `License_Number_idx` (`License_Number`);

--
-- Indexes for table `customer_flight_finance`
--
ALTER TABLE `customer_flight_finance`
  ADD PRIMARY KEY (`Customer_ID`,`Flight_ID`),
  ADD UNIQUE KEY `Flight_Transcation_Code_UNIQUE` (`Flight_Transcation_Code`),
  ADD KEY `Flight_ID_idx` (`Flight_ID`);

--
-- Indexes for table `customer_room_finance`
--
ALTER TABLE `customer_room_finance`
  ADD PRIMARY KEY (`customer_id`,`transaction_code`,`Room_Number`),
  ADD UNIQUE KEY `hotel_transaction_code_UNIQUE` (`hotel_transaction_code`),
  ADD KEY `HotelID_idx` (`Room_Number`),
  ADD KEY `transaction@code_idx` (`transaction_code`);

--
-- Indexes for table `customer_tourist_attraction_finance`
--
ALTER TABLE `customer_tourist_attraction_finance`
  ADD PRIMARY KEY (`Customer_id`,`Attraction_code`,`Transaction_Code`),
  ADD UNIQUE KEY `TOURIST_attractions_Transaction_Code_UNIQUE` (`TOURIST_attractions_Transaction_Code`),
  ADD KEY `Attraction_Code_idx` (`Attraction_code`),
  ADD KEY `Transaction_Code_idx` (`Transaction_Code`),
  ADD KEY `Transaction#Code_idx` (`Transaction_Code`);

--
-- Indexes for table `finance`
--
ALTER TABLE `finance`
  ADD PRIMARY KEY (`Transiction_Code`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`Flight_ID`),
  ADD KEY `country^code_idx` (`Country_Code`),
  ADD KEY `airport_code` (`Airport_code`);

--
-- Indexes for table `flight_stuff`
--
ALTER TABLE `flight_stuff`
  ADD PRIMARY KEY (`Flight_ID`,`Crew_ID`),
  ADD KEY `crew_id_idx` (`Crew_ID`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`Hotel_ID`);

--
-- Indexes for table `hotel_room`
--
ALTER TABLE `hotel_room`
  ADD PRIMARY KEY (`Room_Number`),
  ADD KEY `hotel_id_idx` (`Hotel_ID`),
  ADD KEY `country$code_idx` (`Country_Code`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`License_Number`),
  ADD KEY `country-code_idx` (`Country_Code`);

--
-- Indexes for table `stuff`
--
ALTER TABLE `stuff`
  ADD PRIMARY KEY (`Crew_ID`),
  ADD UNIQUE KEY `Email_UNIQUE` (`Email`);

--
-- Indexes for table `tourist_attraction`
--
ALTER TABLE `tourist_attraction`
  ADD PRIMARY KEY (`Attraction_Code`),
  ADD KEY `country_code_idx` (`Country_Code`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `Country_Code` FOREIGN KEY (`Country_Code`) REFERENCES `country` (`Country_Code`);

--
-- Constraints for table `customer_finance_restaurant`
--
ALTER TABLE `customer_finance_restaurant`
  ADD CONSTRAINT `Customer_ID` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`),
  ADD CONSTRAINT `License_Number` FOREIGN KEY (`License_Number`) REFERENCES `restaurant` (`License_Number`),
  ADD CONSTRAINT `Transaction_Code` FOREIGN KEY (`Transaction_Code`) REFERENCES `finance` (`Transiction_Code`);

--
-- Constraints for table `customer_flight_finance`
--
ALTER TABLE `customer_flight_finance`
  ADD CONSTRAINT `CustomerID` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`),
  ADD CONSTRAINT `Fligth_ID` FOREIGN KEY (`Flight_ID`) REFERENCES `flight` (`Flight_ID`);

--
-- Constraints for table `customer_room_finance`
--
ALTER TABLE `customer_room_finance`
  ADD CONSTRAINT `customer@id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`Customer_ID`),
  ADD CONSTRAINT `room_number` FOREIGN KEY (`Room_Number`) REFERENCES `hotel_room` (`Room_Number`),
  ADD CONSTRAINT `transaction@code` FOREIGN KEY (`transaction_code`) REFERENCES `finance` (`Transiction_Code`);

--
-- Constraints for table `customer_tourist_attraction_finance`
--
ALTER TABLE `customer_tourist_attraction_finance`
  ADD CONSTRAINT `Attraction_Code` FOREIGN KEY (`Attraction_code`) REFERENCES `tourist_attraction` (`Attraction_Code`),
  ADD CONSTRAINT `Transaction#Code` FOREIGN KEY (`Transaction_Code`) REFERENCES `finance` (`Transiction_Code`),
  ADD CONSTRAINT `customer#ID` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`Customer_ID`);

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `airport_code` FOREIGN KEY (`Airport_code`) REFERENCES `airport` (`Airport_code`),
  ADD CONSTRAINT `country^code` FOREIGN KEY (`Country_Code`) REFERENCES `country` (`Country_Code`);

--
-- Constraints for table `flight_stuff`
--
ALTER TABLE `flight_stuff`
  ADD CONSTRAINT `fk_crew_id` FOREIGN KEY (`Crew_ID`) REFERENCES `stuff` (`Crew_ID`),
  ADD CONSTRAINT `fk_flight_id` FOREIGN KEY (`Flight_ID`) REFERENCES `flight` (`Flight_ID`);

--
-- Constraints for table `hotel_room`
--
ALTER TABLE `hotel_room`
  ADD CONSTRAINT `country$code` FOREIGN KEY (`Country_Code`) REFERENCES `country` (`Country_Code`),
  ADD CONSTRAINT `hotel_id` FOREIGN KEY (`Hotel_ID`) REFERENCES `hotel` (`Hotel_ID`);

--
-- Constraints for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD CONSTRAINT `country-code` FOREIGN KEY (`Country_Code`) REFERENCES `country` (`Country_Code`);

--
-- Constraints for table `tourist_attraction`
--
ALTER TABLE `tourist_attraction`
  ADD CONSTRAINT `country#code` FOREIGN KEY (`Country_Code`) REFERENCES `country` (`Country_Code`);
--
-- Database: `travel_system`
--
CREATE DATABASE IF NOT EXISTS `travel_system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `travel_system`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
