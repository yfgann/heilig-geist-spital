-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2023-09-05 14:00:09
-- 服务器版本： 10.4.28-MariaDB
-- PHP 版本： 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `Heilig_Geist_Spital`
--

-- --------------------------------------------------------

--
-- 表的结构 `Hospitals`
--

CREATE TABLE `Hospitals` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `latitude` float(10,6) NOT NULL,
  `longitude` float(10,6) NOT NULL,
  `construction_year` smallint(4) NOT NULL,
  `belonged_to_order` enum('yes','no') NOT NULL,
  `last_major_reconstruction` varchar(255) NOT NULL,
  `relation_church` enum('connected','courtyard complex','separated','without church') NOT NULL,
  `current_status` varchar(255) NOT NULL,
  `architectural_style` varchar(255) NOT NULL,
  `image_url` varchar(500) NOT NULL,
  `image_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `Hospitals`
--

INSERT INTO `Hospitals` (`id`, `name`, `address`, `latitude`, `longitude`, `construction_year`, `belonged_to_order`, `last_major_reconstruction`, `relation_church`, `current_status`, `architectural_style`, `image_url`, `image_id`) VALUES
(1, 'Heilig-Geist-Spital (Aichach)', 'Stadtplatz 35, 86551 Aichach', 48.458359, 11.131570, 1354, 'no', 'Mid-17th century', 'connected', 'nursing home', 'Baroque', 'https://upload.wikimedia.org/wikipedia/commons/d/df/Heilig_Geist_Spital_Aichach_R%C3%BCckseite.jpg', 1),
(2, 'Heilig-Geist-Spital (Augsburg)', 'Spitalgasse 15, 86150 Augsburg', 48.360352, 10.903250, 1150, 'no', '1623-1631', 'without church', 'Puppet Theatre Museum', 'Renaissance', 'https://upload.wikimedia.org/wikipedia/commons/6/6c/Spitalgasse_17_Augsburg.JPG', 2),
(3, 'Heilig-Geist-Spital (Blaubeuren)', 'Kirchplatz 10, 89143 Blaubeuren', 48.411819, 9.785404, 1424, 'no', '1965', 'separated', 'Museum of Prehistory', 'Half-timbering', 'https://upload.wikimedia.org/wikipedia/commons/f/f5/Urgeschichtliches_Museum_Blaubeuren_5137.jpg', 3),
(4, 'Heilig-Geist-Spital (Burghausen)', 'Spitalgasse 206, 84489 Burghausen', 48.154388, 12.828470, 1332, 'no', '18th century', 'connected', 'meeting center', 'Baroque', 'https://upload.wikimedia.org/wikipedia/commons/f/f5/Burghausen%2C_Hl-Geist-Kirche_v_SSW%2C_1.jpeg', 4),
(5, 'Heilig-Geist-Spital (Dinkelsbühl)', 'Dr.-Martin-Luther-Straße 6a-6d, 91550 Dinkelsbühl', 49.070919, 10.318970, 1280, 'no', '1893', 'separated', 'monument complex', 'Baroque', 'https://upload.wikimedia.org/wikipedia/commons/a/aa/Dinkelsb%C3%BChl_Altstadt_Spital_und_Rothenburger_Tor-001.JPG', 5),
(6, 'Heilig-Geist-Spital (Eichstätt)', 'Bahnhofplatz 3, 85072 Eichstätt', 48.891621, 11.181080, 1254, 'yes', '1729', 'connected', 'nursing home', 'Baroque', 'https://upload.wikimedia.org/wikipedia/commons/4/4b/Spital_Eichst%C3%A4tt.jpg', 6),
(7, 'Heiliggeistspital (Freising)', 'Heiliggeistgasse 5, 85354 Freising', 48.400871, 11.748923, 1378, 'no', '1686-1688', 'connected', 'nursing home', 'Baroque', 'https://upload.wikimedia.org/wikipedia/commons/c/c1/Heiliggeistgasse_5_Heiliggeistspital_Freising-2.jpg', 7),
(8, 'Heilig-Geist-Spital (Fulda)', 'Gambettagasse 1, 36037 Fulda', 50.548840, 9.675590, 1230, 'no', '1732', 'courtyard complex', 'nursing home', 'Baroque', 'https://upload.wikimedia.org/wikipedia/commons/0/07/Blick_vom_Dach_des_Parkhauses_Brauhausstra%C3%9Fe_auf_das_Heilig-Geist-Hospital%2C_Fulda.jpg', 8),
(9, 'Heilig-Geist-Bürgerspital (Füssen)', 'Spitalgasse 6, 87629 Füssen', 47.566380, 10.700600, 1465, 'no', '1735', 'connected', 'nursing home', 'Rococo', 'https://upload.wikimedia.org/wikipedia/commons/d/df/F%C3%BCssen%2C_Spitalgasse_6_20170629_001.jpg', 9),
(10, 'Spital Heilig Geist (Landshut)', 'Altstadt 97, 84028 Landshut', 48.538486, 12.151694, 1232, 'yes', '1722-1728', 'separated', 'nursing home', 'Baroque', 'https://upload.wikimedia.org/wikipedia/commons/a/a6/Altstadt_97_Hl.-Geist-Spital_Landshut-3.jpg', 10),
(11, 'Heilig-Geist-Spital (Mindelheim)', 'Maximilianstraße 27-27a, 87719 Mindelheim', 48.046349, 10.489079, 1426, 'no', '1829-1832', 'without church', 'appartment', 'Classicism', 'https://upload.wikimedia.org/wikipedia/commons/8/81/Maximilianstr._27-27a_Spital_zum_Hl._Geist_Mindelheim-1.jpg', 11),
(12, 'Heilig-Geist-Spital (Nördlingen)', 'Vordere Gerbergasse 1, 86720 Nördlingen', 48.853359, 10.486680, 1200, 'no', '16th century', 'connected', 'Nördlingen City Museum', 'Renaissance', 'https://upload.wikimedia.org/wikipedia/commons/e/e0/N%C3%B6rdlingen_Spital_mit_Spitalkirche_2.jpg', 12),
(13, 'Heilig-Geist-Spital (Nürnberg)', 'Spitalgasse 16, 90403 Nürnberg', 49.452778, 11.079167, 1339, 'no', '1518-1527', 'courtyard complex', 'restaurant', 'Gothic (reconstruction)', 'https://upload.wikimedia.org/wikipedia/commons/2/24/2018_Hl._Geist_N%C3%BCrnberg.jpg', 13),
(14, 'Heilig-Geist-Spital (Passau)', 'Heiliggeistgasse, 894032 Passau', 48.573299, 13.459410, 1347, 'no', '1864', 'connected', 'nursing home', 'Gothic and Renaissance', 'https://www.niederbayern-wiki.de/images/1/1c/Heilig-Geist-Seniorenheim_Passau.JPG', 14),
(15, 'Heilig-Geist-Spital (Rothenburg ob der Tauber)', 'Spitalgasse 48, 91541 Rothenburg ob der Tauber', 49.371460, 10.180590, 1280, 'no', '1574-1578', 'connected', 'student dormitory', 'Half-timbering', 'https://www.denkmalschutz.de/fileadmin/_processed_/7/d/csm_BY_Rothenburg_ob_der_Tauber_Heilig-Geist-Spital_Wagner_000015692_b648a6287e.jpg', 15),
(16, 'Bürgerspital zum Heiligen Geist (Würzburg)', 'Theaterstraße 19, 97070 Würzburg', 49.795731, 9.935180, 1317, 'no', '1718', 'courtyard complex', 'restaurant', 'Baroque (reconstruction)', 'https://upload.wikimedia.org/wikipedia/commons/2/25/B%C3%BCrgerspital_zum_Hl_Geist_2.JPG', 16),
(17, 'Altes Spital (Bad Wimpfen)', 'Hauptstraße 45, 74206 Bad Wimpfen', 49.229454, 9.162181, 1230, 'yes', '1543', 'without church', 'Imperial City Museum', 'Half-timbering', 'https://upload.wikimedia.org/wikipedia/commons/c/c9/BW-badwimpfen-spitalhof.jpg', 17);

-- --------------------------------------------------------

--
-- 表的结构 `images`
--

CREATE TABLE `images` (
  `image_id` int(11) NOT NULL,
  `url` varchar(500) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `creation_date` date DEFAULT NULL,
  `license` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `images`
--

INSERT INTO `images` (`image_id`, `url`, `author`, `creation_date`, `license`) VALUES
(1, 'https://upload.wikimedia.org/wikipedia/commons/d/df/Heilig_Geist_Spital_Aichach_R%C3%BCckseite.jpg', 'Ricardalovesmonuments', '2023-04-16', 'CC BY-SA 4.0'),
(2, 'https://upload.wikimedia.org/wikipedia/commons/6/6c/Spitalgasse_17_Augsburg.JPG', 'Gliwi', '2013-03-06', 'CC BY-SA 3.0'),
(3, 'https://upload.wikimedia.org/wikipedia/commons/f/f5/Urgeschichtliches_Museum_Blaubeuren_5137.jpg', 'Henning Schlottmann', '2018-06-17', 'CC BY-SA 4.0'),
(4, 'https://upload.wikimedia.org/wikipedia/commons/f/f5/Burghausen%2C_Hl-Geist-Kirche_v_SSW%2C_1.jpeg', 'Renardo la vulpo', '2020-09-05', 'CC BY-SA 4.0'),
(5, 'https://upload.wikimedia.org/wikipedia/commons/a/aa/Dinkelsb%C3%BChl_Altstadt_Spital_und_Rothenburger_Tor-001.JPG', 'Tilman2007', '2012-09-21', 'CC BY 3.0'),
(6, 'https://upload.wikimedia.org/wikipedia/commons/4/4b/Spital_Eichst%C3%A4tt.jpg', 'Rensi', '2009-02-02', 'CC0'),
(7, 'https://upload.wikimedia.org/wikipedia/commons/c/c1/Heiliggeistgasse_5_Heiliggeistspital_Freising-2.jpg', 'Rufus46', '2012-04-28', 'CC BY-SA 3.0'),
(8, 'https://upload.wikimedia.org/wikipedia/commons/0/07/Blick_vom_Dach_des_Parkhauses_Brauhausstra%C3%9Fe_auf_das_Heilig-Geist-Hospital%2C_Fulda.jpg', 'GerritR', '2019-06-29', 'CC BY-SA 4.0'),
(9, 'https://upload.wikimedia.org/wikipedia/commons/d/df/F%C3%BCssen%2C_Spitalgasse_6_20170629_001.jpg', 'Tilman2007', '2017-06-27', 'CC BY-SA 4.0'),
(10, 'https://upload.wikimedia.org/wikipedia/commons/a/a6/Altstadt_97_Hl.-Geist-Spital_Landshut-3.jpg', 'Rufus46', '2012-05-27', 'CC BY-SA 3.0'),
(11, 'https://upload.wikimedia.org/wikipedia/commons/8/81/Maximilianstr._27-27a_Spital_zum_Hl._Geist_Mindelheim-1.jpg', 'Rufus46', '2012-06-24', 'CC BY-SA 3.0'),
(12, 'https://upload.wikimedia.org/wikipedia/commons/e/e0/N%C3%B6rdlingen_Spital_mit_Spitalkirche_2.jpg', 'Andreas Praefcke', '2009-07-20', 'CC BY 3.0'),
(13, 'https://upload.wikimedia.org/wikipedia/commons/2/24/2018_Hl._Geist_N%C3%BCrnberg.jpg', 'Klaus Bärwinkel', '2018-06-09', 'CC BY-SA 4.0'),
(14, 'https://www.niederbayern-wiki.de/images/1/1c/Heilig-Geist-Seniorenheim_Passau.JPG', 'Konrad Lackerbeck', '2016-04-10', 'CC0'),
(15, 'https://www.denkmalschutz.de/fileadmin/_processed_/7/d/csm_BY_Rothenburg_ob_der_Tauber_Heilig-Geist-Spital_Wagner_000015692_b648a6287e.jpg', 'Matthias Wagner - Deutsche Stiftung Denkmalschutz', '2017-05-03', 'CC BY-SA 4.0'),
(16, 'https://upload.wikimedia.org/wikipedia/commons/2/25/B%C3%BCrgerspital_zum_Hl_Geist_2.JPG', 'Aarp65', '2011-04-17', 'CC BY-SA 3.0'),
(17, 'https://upload.wikimedia.org/wikipedia/commons/c/c9/BW-badwimpfen-spitalhof.jpg', 'Bgabel', '2011-08-18', 'CC BY-SA 3.0');

--
-- 转储表的索引
--

--
-- 表的索引 `Hospitals`
--
ALTER TABLE `Hospitals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_id` (`image_id`);

--
-- 表的索引 `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `Hospitals`
--
ALTER TABLE `Hospitals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- 使用表AUTO_INCREMENT `images`
--
ALTER TABLE `images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- 限制导出的表
--

--
-- 限制表 `Hospitals`
--
ALTER TABLE `Hospitals`
  ADD CONSTRAINT `hospitals_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `images` (`image_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
