-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 25.05.2021 klo 01:40
-- Palvelimen versio: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tukisivusto`
--

-- --------------------------------------------------------

--
-- Rakenne taululle `artikkeli`
--

CREATE TABLE `artikkeli` (
  `artikkeli_id` int(11) NOT NULL,
  `otsikko` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `teksti` text COLLATE utf8_swedish_ci NOT NULL,
  `kategoria_id` int(11) NOT NULL,
  `kirjoittaja` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `luontipvm` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Vedos taulusta `artikkeli`
--

INSERT INTO `artikkeli` (`artikkeli_id`, `otsikko`, `teksti`, `kategoria_id`, `kirjoittaja`, `luontipvm`) VALUES
(1, 'Verkkotunnuksen ohjaus Bloggeriin', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eu metus nulla. Mauris quis rutrum ipsum, ut cursus nisi. Sed vitae tortor est. Aenean ultrices velit in tortor dignissim molestie. Suspendisse sit amet augue sed libero sollicitudin cursus ut ac libero. Aliquam iaculis sapien pretium, imperdiet quam vel, faucibus nibh. Quisque a nulla cursus, sollicitudin libero et, venenatis felis. In maximus bibendum neque vel pharetra. Pellentesque ut nisi mollis, ultricies lectus vitae, cursus arcu. Sed ut risus velit. Vivamus sit amet dictum metus, ac fermentum nisl. Nam fringilla nec ligula non mollis. Nam tincidunt rutrum suscipit. Sed placerat congue dignissim.</p>\r\n\r\n<p>Nulla ultrices eget ex vel aliquam. Proin tempus ligula odio, quis efficitur dolor laoreet ut. Sed molestie eros in magna molestie dignissim. Vestibulum lobortis suscipit rutrum. Aenean dignissim, risus sit amet consectetur mattis, magna lorem elementum leo, feugiat ultrices mauris augue sed sapien. Maecenas vitae maximus nunc. Nulla convallis risus magna, quis condimentum tellus maximus nec. Cras dictum pretium malesuada. Pellentesque consectetur ornare velit, vel dapibus tellus dictum eget. Proin urna tellus, suscipit eget pulvinar eu, molestie sed velit. Nunc sodales, arcu eu condimentum accumsan, magna risus pretium eros, vitae elementum felis lectus non augue. In at ligula vitae quam gravida maximus ac et nunc. In ultricies velit vitae velit suscipit bibendum non vel eros. Maecenas bibendum magna ut lectus porttitor commodo. Suspendisse congue sem eget ornare pretium. Donec pulvinar, magna ac lobortis consectetur, tortor felis sodales neque, nec condimentum dolor metus eget orci.</p>', 1, 'damienkuosmanen', '2021-05-02'),
(2, 'Mitä ovat SMTP, IMAP ja POP3?', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eu metus nulla. Mauris quis rutrum ipsum, ut cursus nisi. Sed vitae tortor est. Aenean ultrices velit in tortor dignissim molestie. Suspendisse sit amet augue sed libero sollicitudin cursus ut ac libero. Aliquam iaculis sapien pretium, imperdiet quam vel, faucibus nibh. Quisque a nulla cursus, sollicitudin libero et, venenatis felis. In maximus bibendum neque vel pharetra. Pellentesque ut nisi mollis, ultricies lectus vitae, cursus arcu. Sed ut risus velit. Vivamus sit amet dictum metus, ac fermentum nisl. Nam fringilla nec ligula non mollis. Nam tincidunt rutrum suscipit. Sed placerat congue dignissim.</p>\r\n\r\n<p>Nulla ultrices eget ex vel aliquam. Proin tempus ligula odio, quis efficitur dolor laoreet ut. Sed molestie eros in magna molestie dignissim. Vestibulum lobortis suscipit rutrum. Aenean dignissim, risus sit amet consectetur mattis, magna lorem elementum leo, feugiat ultrices mauris augue sed sapien. Maecenas vitae maximus nunc. Nulla convallis risus magna, quis condimentum tellus maximus nec. Cras dictum pretium malesuada. Pellentesque consectetur ornare velit, vel dapibus tellus dictum eget. Proin urna tellus, suscipit eget pulvinar eu, molestie sed velit. Nunc sodales, arcu eu condimentum accumsan, magna risus pretium eros, vitae elementum felis lectus non augue. In at ligula vitae quam gravida maximus ac et nunc. In ultricies velit vitae velit suscipit bibendum non vel eros. Maecenas bibendum magna ut lectus porttitor commodo. Suspendisse congue sem eget ornare pretium. Donec pulvinar, magna ac lobortis consectetur, tortor felis sodales neque, nec condimentum dolor metus eget orci.</p>', 5, 'damienkuosmanen', '2021-05-17');

-- --------------------------------------------------------

--
-- Rakenne taululle `kategoria`
--

CREATE TABLE `kategoria` (
  `kategoria_id` int(11) NOT NULL,
  `nimi` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `jarjestysnro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Vedos taulusta `kategoria`
--

INSERT INTO `kategoria` (`kategoria_id`, `nimi`, `jarjestysnro`) VALUES
(1, 'Verkkotunnukset', 2),
(2, 'Webhotellit', 1),
(3, 'Kotisivukone', 4),
(4, 'Virtuaalipalvelimet', 3),
(5, 'Sähköposti', 5),
(6, 'Oma tili', 6);

-- --------------------------------------------------------

--
-- Rakenne taululle `kayttaja`
--

CREATE TABLE `kayttaja` (
  `tunnus` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `salasana` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `etunimi` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `sukunimi` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `rooli` varchar(100) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Vedos taulusta `kayttaja`
--

INSERT INTO `kayttaja` (`tunnus`, `salasana`, `etunimi`, `sukunimi`, `rooli`) VALUES
('damienkuosmanen', '163decde52ad282d20e26b89784da5754c799a7e', 'Damien', 'Kuosmanen', 'Community manager');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikkeli`
--
ALTER TABLE `artikkeli`
  ADD PRIMARY KEY (`artikkeli_id`),
  ADD KEY `kategoria_id` (`kategoria_id`),
  ADD KEY `kirjoittaja` (`kirjoittaja`);

--
-- Indexes for table `kategoria`
--
ALTER TABLE `kategoria`
  ADD PRIMARY KEY (`kategoria_id`);

--
-- Indexes for table `kayttaja`
--
ALTER TABLE `kayttaja`
  ADD PRIMARY KEY (`tunnus`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikkeli`
--
ALTER TABLE `artikkeli`
  MODIFY `artikkeli_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kategoria`
--
ALTER TABLE `kategoria`
  MODIFY `kategoria_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Rajoitteet vedostauluille
--

--
-- Rajoitteet taululle `artikkeli`
--
ALTER TABLE `artikkeli`
  ADD CONSTRAINT `artikkeli_ibfk_1` FOREIGN KEY (`kategoria_id`) REFERENCES `kategoria` (`kategoria_id`),
  ADD CONSTRAINT `artikkeli_ibfk_2` FOREIGN KEY (`kirjoittaja`) REFERENCES `kayttaja` (`tunnus`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
