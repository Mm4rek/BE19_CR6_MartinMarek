-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 11. Aug 2023 um 17:45
-- Server-Version: 10.4.28-MariaDB
-- PHP-Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `be19_cr6_bigeventsmartinmarek`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230811092812', '2023-08-11 11:29:17', 15);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `event_date_time` datetime NOT NULL,
  `event_description` longtext NOT NULL,
  `event_image` varchar(255) NOT NULL,
  `event_capacity` int(11) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `event_address` longtext NOT NULL,
  `event_url` varchar(255) NOT NULL,
  `event_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `event`
--

INSERT INTO `event` (`id`, `event_name`, `event_date_time`, `event_description`, `event_image`, `event_capacity`, `contact_email`, `contact_phone`, `event_address`, `event_url`, `event_type`) VALUES
(2, 'Music Fest', '2023-08-15 18:00:00', 'Join us for a night of live music performances!', 'https://media.istockphoto.com/id/1141427484/photo/dj-mixing-outdoor-at-beach-party-festival-with-crowd-of-people-in-background-summer-nightlife.webp?b=1&s=612x612&w=0&k=20&c=4wf2biq1HS4bOg34QhisNOdmHNS5ImeDR06XcQhhxB0=', 500, 'music@example.com', '123-456-7890', '123 Music Avenue, Cityville', 'https://example.com/music-fest', 'Music'),
(3, 'Jazz Night', '2023-08-20 20:00:00', 'An evening of smooth jazz and good company.', 'https://media.istockphoto.com/id/465732100/de/foto/afrikanischer-jazz-musiker-spielen-am-saxophon.webp?b=1&s=612x612&w=0&k=20&c=tgEfiU8mF004M3lOSe1nhNjwOpY1KIwGsgypp_Fm4tI=', 200, 'jazz@example.com', '987-654-3210', '456 Melody Street, Jazztown', 'https://example.com/jazz-night', 'Music'),
(4, 'Rock Concert', '2023-08-25 19:30:00', 'Get ready to rock out with your favorite bands!', 'https://media.istockphoto.com/id/1471448614/photo/crowd-of-people-dancing-at-a-music-show-in-barcelona-during-the-summer-of-2022.webp?b=1&s=612x612&w=0&k=20&c=5pxR4iVikSBNuAPi2-ClPOQQhaAnzxffdWBK8aVQ020=', 800, 'rock@example.com', '555-123-4567', '789 Amp Lane, Rockville', 'https://example.com/rock-concert', 'Music'),
(5, 'Acoustic Jam', '2023-09-02 17:00:00', 'Unplugged acoustic performances by local artists.', 'https://media.istockphoto.com/id/1469240602/photo/men-playing-acoustic-guitar.webp?b=1&s=612x612&w=0&k=20&c=5711nhO5cxk1Ikj-zgWgBMqyZl2fWRIEphtzeCnBaGQ=', 100, 'acoustic@example.com', '111-222-3333', '222 Harmony Road, Acoustictown', 'https://example.com/acoustic-jam', 'Music'),
(6, 'Soccer Tournament', '2023-08-18 14:00:00', 'Join the soccer tournament and showcase your skills!', 'https://media.istockphoto.com/id/1209456909/photo/soccer-players-performs-an-action-play-in-stadium.webp?b=1&s=612x612&w=0&k=20&c=lSbKHuPbsy12v1Yl4J0H7UgySvjG2ihiach_RWHYxbc=', 300, 'soccer@example.com', '555-789-1234', '456 Soccer Street, Kickville', 'https://example.com/soccer-tournament', 'Sport'),
(7, 'Basketball League', '2023-08-22 16:30:00', 'Compete in the city-wide basketball league.', 'https://media.istockphoto.com/id/1408109500/photo/basketball-ball-scoring-the-winning-points-on-basketball-net-hoop-on-basketball-arena.webp?b=1&s=612x612&w=0&k=20&c=aqE0RWnum2-HTayvWc1jLzq_I-Ig1q0_po_CcOzX2mI=', 250, 'basketball@example.com', '888-444-5555', '789 Hoop Lane, Dunktown', 'https://example.com/basketball-league', 'Sport'),
(8, 'Running Marathon', '2023-09-01 07:00:00', 'Participate in a scenic marathon through the city.', 'https://media.istockphoto.com/id/612398606/photo/marathon-running-race.webp?b=1&s=612x612&w=0&k=20&c=17igDx1FVH7YuNbyWBpW13SzGIoxmYnRO6qez_iqmJE=', 1000, 'marathon@example.com', '123-777-8888', '123 Runner Road, Fitville', 'https://example.com/running-marathon', 'Sport'),
(9, 'Tennis Open', '2023-09-05 10:00:00', 'Show off your tennis skills in this open tournament.', 'https://media.istockphoto.com/id/503392332/pl/zdj%C4%99cie/gracz-w-tenisa-trzymaj%C4%85c-rakiety-i-pi%C5%82ki-w-r%C4%99ce.webp?b=1&s=612x612&w=0&k=20&c=t6nZ84QBLxkXBdGThuC6UlijZDI6wsXWd-3JXeu3hOE=', 150, 'tennis@example.com', '333-111-2222', '456 Racket Street, Swingtown', 'https://example.com/tennis-open', 'Sport'),
(10, 'Movie Night Under the Stars', '2023-08-19 20:30:00', 'Enjoy a classic movie night under the open sky.', 'https://media.istockphoto.com/id/1318278635/pl/zdj%C4%99cie/popcorn-z-bliska-koncepcja-kina-na-%C5%9Bwie%C5%BCym-powietrzu.webp?b=1&s=612x612&w=0&k=20&c=R2SW7yKxka6CaLZ9vXQpZ4DX7EYaD0bl33rivo35KBI=', 200, 'movie@example.com', '777-888-9999', '123 Starry Lane, Cinematown', 'https://example.com/movie-night', 'Movie'),
(11, 'Film Festival Premiere', '2023-08-23 18:00:00', 'Be the first to see the latest films at our festival premiere.', 'https://media.istockphoto.com/id/1372681569/de/foto/h%C3%A4nde-halten-eine-filmtafel-die-eine-filmszene-inszeniert.webp?b=1&s=612x612&w=0&k=20&c=bKKMuWCvqoLqROtEiPRvsR1IvWdjbCKYEDoVW7UVdag=', 400, 'festival@example.com', '111-222-3333', '456 Premiere Street, Filmville', 'https://example.com/film-festival', 'Movie'),
(12, 'Family Movie Matinee', '2023-08-29 14:00:00', 'A fun afternoon of family-friendly movies for all ages.', 'https://media.istockphoto.com/id/1466383402/photo/family-enjoying-movie-in-theater.webp?b=1&s=612x612&w=0&k=20&c=WIp-b6qSjKA6KIOX8ordo-wVZEwMvLnLuYQDQ4aBF7I=', 150, 'family@example.com', '555-777-8888', '789 Family Avenue, Kidstown', 'https://example.com/family-movie', 'Movie'),
(13, 'Cult Classic Screening', '2023-09-04 19:00:00', 'Rediscover a beloved cult classic on the big screen.', 'https://cdn.pixabay.com/photo/2019/11/05/11/36/oldtimer-4603317_1280.jpg', 100, 'cult@example.com', '999-111-2222', '123 Cult Street, Cinemania', 'https://example.com/cult-classic', 'Movie'),
(14, 'Shakespeare in the Park', '2023-08-16 19:00:00', 'Experience a Shakespearean play in the beauty of the park.', 'https://media.istockphoto.com/id/1387930425/de/foto/b%C3%BCcher-menschlicher-sch%C3%A4del-stift-und-papier-auf-rustikalem-holz.webp?b=1&s=612x612&w=0&k=20&c=gzDkkZsWBZxvIYDt5W1Ael20NmcHkLLlFak1rX8NdSY=', 300, 'shakespeare@example.com', '222-333-4444', '456 Bard Lane, Theatertown', 'https://example.com/shakespeare-park', 'Theater'),
(15, 'Musical Extravaganza', '2023-08-24 20:00:00', 'A grand musical performance featuring talented artists.', 'https://cdn.pixabay.com/photo/2018/04/21/13/41/violinist-3338499_640.jpg', 500, 'musical@example.com', '666-888-9999', '789 Music Avenue, Melodyville', 'https://example.com/musical-extravaganza', 'Theater'),
(16, 'Comedy Night', '2023-08-30 18:30:00', 'Laugh out loud with a night of stand-up comedy.', 'https://cdn.pixabay.com/photo/2019/02/11/14/58/microphone-3989881_640.jpg', 200, 'comedy@example.com', '444-555-6666', '123 Comedy Lane, Laughington', 'https://example.com/comedy-night', 'Theater'),
(17, 'Drama Workshop', '2023-09-06 17:00:00', 'Join us for an interactive drama workshop and explore your acting skills.', 'https://media.istockphoto.com/id/1003275828/de/foto/theatermasken-auf-einem-dunklen-hintergrund-3d-rendering.webp?b=1&s=612x612&w=0&k=20&c=gyHbU-SENQSxJA3KtCROb_Ajgvg7sZmyhsQKAHF7GHM=', 100, 'drama@example.com', '777-999-1111', '456 Drama Street, Actville', 'https://example.com/drama-workshop', 'Theater');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indizes für die Tabelle `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
