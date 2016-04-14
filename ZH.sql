-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2016. Ápr 12. 23:02
-- Kiszolgáló verziója: 10.1.9-MariaDB
-- PHP verzió: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `zh_olimpia`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `sportler`
--

CREATE TABLE `sportler` (
  `SportlerID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `RaumID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- A tábla adatainak kiíratása `sportler`
--

INSERT INTO `sportler` (`SportlerID`, `Name`, `RaumID`) VALUES
(1, 'Usain Bolt', 1),
(2, 'Stubner Aron', 2),
(3, 'Megyeri Bazsi', 2),
(4, 'Bob Ross', NULL);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `sportler`
--
ALTER TABLE `sportler`
  ADD PRIMARY KEY (`SportlerID`),
  ADD KEY `RaumID` (`RaumID`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `sportler`
--
ALTER TABLE `sportler`
  MODIFY `SportlerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `sportler`
--
ALTER TABLE `sportler`
  ADD CONSTRAINT `sportler_ibfk_1` FOREIGN KEY (`RaumID`) REFERENCES `raum` (`RaumID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
