-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 23 Sty 2020, 00:47
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `metal_rock_db`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `album`
--

CREATE TABLE `album` (
  `al_id` int(10) UNSIGNED NOT NULL,
  `al_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `al_no_songs` tinyint(3) UNSIGNED NOT NULL,
  `al_genre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `al_year` year(4) DEFAULT NULL,
  `al_average_price` tinyint(3) DEFAULT NULL,
  `band_ba_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `band`
--

CREATE TABLE `band` (
  `ba_id` int(10) UNSIGNED NOT NULL,
  `ba_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `ba_genre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ba_no_members` smallint(3) DEFAULT NULL,
  `ba_number_of_albums` smallint(3) DEFAULT NULL,
  `ba_country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ba_year_established` year(4) DEFAULT NULL,
  `ba_year_disbanded` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `band_has_musician`
--

CREATE TABLE `band_has_musician` (
  `band_ba_id` int(10) UNSIGNED NOT NULL,
  `musician_mu_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `musician`
--

CREATE TABLE `musician` (
  `mu_id` int(10) UNSIGNED NOT NULL,
  `mu_first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mu_last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mu_role` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `mu_city_origin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mu_country_origin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mu_date_of_birth` date DEFAULT NULL,
  `mu_date_of_death` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `song`
--

CREATE TABLE `song` (
  `so_id` int(10) UNSIGNED NOT NULL,
  `so_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `so_number_in_album` tinyint(3) UNSIGNED NOT NULL,
  `so_duration` smallint(4) UNSIGNED NOT NULL,
  `so_link_yt` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `so_link_lyrics` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `album_al_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`al_id`),
  ADD KEY `fk_album_band1_idx` (`band_ba_id`);

--
-- Indeksy dla tabeli `band`
--
ALTER TABLE `band`
  ADD PRIMARY KEY (`ba_id`);

--
-- Indeksy dla tabeli `band_has_musician`
--
ALTER TABLE `band_has_musician`
  ADD PRIMARY KEY (`band_ba_id`,`musician_mu_id`),
  ADD KEY `fk_band_has_musician_musician1_idx` (`musician_mu_id`),
  ADD KEY `fk_band_has_musician_band1_idx` (`band_ba_id`);

--
-- Indeksy dla tabeli `musician`
--
ALTER TABLE `musician`
  ADD PRIMARY KEY (`mu_id`);

--
-- Indeksy dla tabeli `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`so_id`),
  ADD KEY `fk_song_album_idx` (`album_al_id`);

--
-- AUTO_INCREMENT dla tabel zrzutów
--

--
-- AUTO_INCREMENT dla tabeli `album`
--
ALTER TABLE `album`
  MODIFY `al_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `band`
--
ALTER TABLE `band`
  MODIFY `ba_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `musician`
--
ALTER TABLE `musician`
  MODIFY `mu_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `fk_album_band1` FOREIGN KEY (`band_ba_id`) REFERENCES `band` (`ba_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `band_has_musician`
--
ALTER TABLE `band_has_musician`
  ADD CONSTRAINT `fk_band_has_musician_band1` FOREIGN KEY (`band_ba_id`) REFERENCES `band` (`ba_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_band_has_musician_musician1` FOREIGN KEY (`musician_mu_id`) REFERENCES `musician` (`mu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `fk_song_album` FOREIGN KEY (`album_al_id`) REFERENCES `album` (`al_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
