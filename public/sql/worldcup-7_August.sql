-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2018 at 08:07 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `worldcup`
--

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` int(10) UNSIGNED NOT NULL,
  `designation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `player_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `award_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `award_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prize_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `designation`, `player_name`, `team_name`, `award_description`, `award_img`, `prize_img`, `created_at`, `updated_at`) VALUES
(1, 'ADIDAS GOLDEN BALL AWARD', 'Luka MODRIC', 'Croatia', 'Luka Modric has been awarded the adidas Golden Ball award which honours the competition’s best player as voted for by members of the Technical Study Group of FIFA.', 'goldenballaward.jpg', 'goldenball.png', NULL, NULL),
(2, 'ADIDAS GOLDEN BOOT AWARD', 'Harry KANE', 'England', 'With six goals across six games England captain Harry Kane is the winner of the adidas Golden Boot award for Russia 2018.', 'goldenbootaward.jpg', 'goldenboot.png', NULL, NULL),
(3, 'ADIDAS GOLDEN GLOVE AWARD', 'Thibaut COURTOIS', 'Belgium', 'Belgium\'s Thibaut Courtois is the winner of the adidas Golden Glove award for the 2018 FIFA World Cup as decided by the FIFA Technical Study Group.', 'goldengloveaward.jpg', 'goldenglove.png', NULL, NULL),
(4, 'FIFA YOUNG PLAYER AWARD', 'Kylian MBAPPE', 'France', 'Kylian Mbappe\'s impact at Russia 2018 has secured the 19-year-old the FIFA Young Player award for the tournament.', 'fifayoungplayeraward.jpg', 'youngplayer.png', NULL, NULL),
(5, 'FIFA FAIR PLAY TROPHY', 'Spain', 'Spain', 'With a superb disciplinary record, Spain were the winners of the FIFA Fair Play Award for the 2018 FIFA World Cup.', 'fifafairplayaward.jpg', 'fairplayaward.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `email`, `date`, `comment`, `created_at`, `updated_at`) VALUES
(1, 2, 'sohag@gmail.com', '2018-07-19 00:00:00', 'No other sporting event on earth connects fans of all races, genders, age groups and nationalities like the FIFA World Cup™. That was especially the case during the 2018 FIFA World Cup Russia™, as our omni-channel fan campaign united football supporters around the globe.', NULL, NULL),
(2, 2, 'rana@gmail.com', '2018-07-19 10:00:00', 'During football’s showpiece event, fans captured their personal moments with another fan from a rival team and shared it with the #RivalHug campaign on their social media feeds. A total of 9,357 submissions reached 152.5 million fans worldwide, with the #RivalHug hashtag used 26,240 times. There was also a Hug Counter booth at the FIFA Fan Fest™ in Moscow, where a total of 14,005 fans took pictures and received a #RivalHug branded photo printout.', NULL, NULL),
(3, 1, 'riniyad@gmail.com', '2018-07-28 21:43:50', 'People gather on the fan zone to watch the Russia 2018 World Cup final football match between France and Croatia, on the Champ de Mars in Paris on July 15, 2018', '2018-07-28 15:43:50', '2018-07-28 15:43:50'),
(4, 2, 'sohag@gmail.com', '2018-07-28 22:03:59', 'In that Final, Matthaus revealed, “I was having some problems with my boots. The sole cracked and I had to play the second half with completely new boots.”', '2018-07-28 16:03:59', '2018-07-28 16:03:59'),
(5, 1, 'sohag@gmail.com', '2018-07-28 22:05:00', 'In that Final, Matthaus revealed, “I was having some problems with my boots. The sole cracked and I had to play the second half with completely new boots.”', '2018-07-28 16:05:00', '2018-07-28 16:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `match_id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `team1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team1_goal` int(11) NOT NULL,
  `team2_goal` int(11) NOT NULL,
  `team2` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `round` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_penalty` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `man_of_the_match` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stadium_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`match_id`, `date`, `team1`, `team1_goal`, `team2_goal`, `team2`, `round`, `is_penalty`, `man_of_the_match`, `stadium_name`, `created_at`, `updated_at`) VALUES
(1, '2018-06-14 18:00:00', 'Russia', 5, 0, 'Saudi Arabia', 'Group A', NULL, 'Denis CHERYSHEV', 'Luzhniki Stadium', NULL, NULL),
(2, '2018-06-15 17:00:00', 'Egypt', 0, 1, 'Uruguay', 'Group A', NULL, 'MOHAMED ELSHENAWY', 'Ekaterinburg Arena', NULL, NULL),
(3, '2018-06-15 18:00:00', 'Morocco', 0, 1, 'Iran', 'Group B', NULL, 'Amine HARIT', 'Saint Petersburg Stadium', NULL, NULL),
(4, '2018-06-15 21:00:00', 'Portugal', 3, 3, 'Spain', 'Group B', NULL, 'CRISTIANO RONALDO', 'Fisht Stadium', NULL, NULL),
(5, '2018-06-16 13:00:00', 'France', 2, 1, 'Australia', 'Group C', NULL, 'Antoine GRIEZMANN', 'Kazan Arena', NULL, NULL),
(6, '2018-06-15 16:00:00', 'Argentina', 1, 1, 'Iceland', 'Group D', NULL, 'Hannes HALLDORSSON', 'Spartak Stadium', NULL, NULL),
(7, '2018-06-16 19:00:00', 'Peru', 0, 1, 'Denmark', 'Group C', NULL, 'Yussuf Yurary POULSEN', 'Mordovia Arena', NULL, NULL),
(8, '2018-06-16 21:00:00', 'Croatia', 2, 0, 'Nigeria', 'Group D', NULL, 'Luka MODRIC', 'Kaliningrad Stadium', NULL, NULL),
(9, '2018-06-17 16:00:00', 'Costa Rica', 0, 1, 'Serbia', 'Group E', NULL, 'Aleksandar KOLAROV', 'Samara Arena', NULL, NULL),
(10, '2018-06-17 18:00:00', 'Germany', 0, 1, 'Mexico', 'Group F', NULL, 'Aleksandar KOLAROV', 'Luzhniki Stadium', NULL, NULL),
(11, '2018-06-17 21:00:00', 'Brazil', 1, 1, 'Switzerland', 'Group E', NULL, 'PHILIPPE COUTINHO', 'Rostov Arena', NULL, NULL),
(12, '2018-06-18 15:00:00', 'Sweden', 1, 0, 'Korea Republic', 'Group F', NULL, 'Andreas GRANQVIST', 'Nizhny Novgorod Stadium', NULL, NULL),
(13, '2018-06-18 18:00:00', 'Belgium', 3, 0, 'Panama', 'Group G', NULL, 'Romelu LUKAKU', 'Fisht Stadium', NULL, NULL),
(14, '2018-06-18 21:00:00', 'Tunisia', 1, 2, 'England', 'Group G', NULL, 'Harry KANE', 'Volgograd Stadium', NULL, NULL),
(15, '2018-06-30 17:00:00', 'France', 4, 3, 'Argentina', 'Round of 16', NULL, 'Kylian MBAPPE', 'Kazan Arena', NULL, NULL),
(16, '2018-06-30 21:00:00', 'Uruguay', 2, 1, 'Portugal', 'Round of 16', NULL, '', 'Fisht Stadium', NULL, NULL),
(17, '2018-07-01 17:00:00', 'Spain', 1, 1, 'Russia', 'Round of 16', 'Russia win on penalties (3 - 4)', '', 'Luzhniki Stadium', NULL, NULL),
(18, '2018-07-01 21:00:00', 'Croatia', 1, 1, 'Denmark', 'Round of 16', 'Croatia win on penalties (3 - 2)', '', 'Nizhny Novgorod Stadium', NULL, NULL),
(19, '2018-07-02 18:00:00', 'Brazil', 2, 0, 'Mexico', 'Round of 16', NULL, '', 'Samara Arena', NULL, NULL),
(20, '2018-07-02 21:00:00', 'Belgium', 3, 2, 'Japan', 'Round of 16', NULL, '', 'Rostov Arena', NULL, NULL),
(21, '2018-07-03 17:00:00', 'Sweden', 1, 0, 'Switzerland', 'Round of 16', NULL, '', 'Saint Petersburg Stadium', NULL, NULL),
(22, '2018-07-03 21:00:00', 'Colombia', 1, 1, 'England', 'Round of 16', 'England win on penalties (3 - 4)', '', 'Spartak Stadium', NULL, NULL),
(23, '2018-07-06 17:00:00', 'Uruguay', 0, 2, 'France', 'Quarter-finals', NULL, '', 'Nizhny Novgorod Stadium', NULL, NULL),
(24, '2018-07-06 21:00:00', 'Brazil', 1, 2, 'Belgium', 'Quarter-finals', NULL, '', 'Kazan Arena', NULL, NULL),
(25, '2018-07-07 18:00:00', 'Sweden', 0, 2, 'England', 'Quarter-finals', NULL, '', 'Samara Arena', NULL, NULL),
(26, '2018-07-07 21:00:00', 'Russia', 2, 2, 'Croatia', 'Quarter-finals', 'Croatia win on penalties (3 - 4)', '', 'Fisht Stadium', NULL, NULL),
(27, '2018-07-10 21:00:00', 'France', 1, 0, 'Belgium', 'Semi-finals', NULL, '', 'Saint Petersburg Stadium', NULL, NULL),
(28, '2018-07-11 21:00:00', 'Croatia', 2, 1, 'England', 'Semi-finals', NULL, '', 'Luzhniki Stadium', NULL, NULL),
(29, '2018-07-14 17:00:00', 'Belgium', 2, 0, 'England', 'Play-off for third place', NULL, '', 'Saint Petersburg Stadium', NULL, NULL),
(31, '2018-07-15 18:00:00', 'France', 4, 2, 'Croatia', 'Final', NULL, 'Antoine Griezmann', 'Luzhniki Stadium', NULL, NULL),
(32, '2018-06-19 15:00:00', 'Colombia', 1, 2, 'Japan', 'Group H', NULL, 'Yuya OSAKO', 'Mordovia Arena', NULL, NULL),
(33, '2018-06-19 18:00:00', 'Poland', 1, 2, 'Senegal', 'Group H', NULL, 'Mbaye NIANG', 'Spartak Stadium', NULL, NULL),
(34, '2018-06-19 21:00:00', 'Russia', 3, 1, 'Egypt', 'Group A', NULL, 'Denis CHERYSHEV', 'Saint Petersburg Stadium', NULL, NULL),
(35, '2018-06-20 15:00:00', 'Portugal', 1, 0, 'Morocco', 'Group B', NULL, 'CRISTIANO RONALDO', 'Luzhniki Stadium', NULL, NULL),
(36, '2018-06-20 18:00:00', 'Uruguay', 1, 0, 'Saudi Arabia', 'Group A', NULL, 'Luis SUAREZ', 'Rostov Arena', NULL, NULL),
(37, '2018-06-20 21:00:00', 'Iran', 0, 1, 'Spain', 'Group B', NULL, 'Diego COSTA', 'Kazan Arena', NULL, NULL),
(38, '2018-06-21 16:00:00', 'Denmark', 1, 1, 'Australia', 'Group C', NULL, 'Christian ERIKSEN', 'Samara Arena', NULL, NULL),
(39, '2018-06-21 20:00:00', 'France', 1, 0, 'Peru', 'Group C', NULL, 'Kylian MBAPPE', 'Ekaterinburg Arena', NULL, NULL),
(40, '2018-06-21 21:00:00', 'Argentina', 0, 3, 'Croatia', 'Group D', NULL, 'Luka MODRIC', 'Nizhny Novgorod Stadium', NULL, NULL),
(41, '2018-06-22 15:00:00', 'Brazil', 2, 0, 'Costa Rica', 'Group E', NULL, 'PHILIPPE COUTINHO', 'Saint Petersburg Stadium', NULL, NULL),
(42, '2018-06-22 18:00:00', 'Nigeria', 2, 0, 'Iceland', 'Group D', NULL, 'Ahmed MUSA', 'Volgograd Stadium', NULL, NULL),
(43, '2018-06-22 20:00:00', 'Serbia', 1, 2, 'Switzerland', 'Group E', NULL, 'Xherdan SHAQIRI', 'Kaliningrad Stadium', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_07_25_133046_create_teams_table', 1),
(4, '2018_07_25_133858_create_stadium_table', 1),
(5, '2018_07_25_135426_create_awards_table', 1),
(6, '2018_07_25_143750_create_players_table', 1),
(7, '2018_07_25_144454_create_matches_table', 1),
(8, '2018_07_25_144933_create_points_table', 1),
(9, '2018_07_27_145238_add_coatch_about_to_teams', 2),
(10, '2018_07_27_162121_create_videos_table', 3),
(11, '2018_07_28_134733_create_posts_table', 4),
(12, '2018_07_28_135026_create_comments_table', 5),
(13, '2018_07_28_195941_add_img_to_users_table', 6),
(14, '2018_07_28_202710_remove_img_from_comments_table', 7),
(15, '2018_07_29_172116_add_column_to_players_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_role` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_number` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `birth_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `match_played` int(11) NOT NULL,
  `minutes_played` int(11) NOT NULL,
  `goals_scored` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `name`, `img`, `team_name`, `p_role`, `p_number`, `age`, `height`, `birth_date`, `created_at`, `updated_at`, `match_played`, `minutes_played`, `goals_scored`) VALUES
(1, 'Nahuel GUZMAN', 'nahuelGuzman.png', 'Argentina', 'Goalkeeper', 1, 32, 192, '1986-02-10 00:00:00', NULL, NULL, 4, 0, 0),
(2, 'Franco ARMANI', 'Francoarmani.png', 'Argentina', 'Goalkeeper', 12, 31, 189, '1986-09-16 00:00:00', NULL, NULL, 2, 180, 0),
(3, 'Wilfredo CABALLERO', 'wilfredocaballero.png', 'Argentina', 'Goalkeeper', 23, 36, 186, '1981-09-28 00:00:00', NULL, NULL, 2, 180, 0),
(4, 'Gabriel MERCADO', 'Gabriel MERCADO.png', 'Argentina', 'Defender', 2, 31, 181, '1987-03-18 00:00:00', NULL, NULL, 3, 270, 1),
(5, 'Nicolas TAGLIAFICO', 'Nicolas TAGLIAFICO.png', 'Argentina', 'Defender', 3, 25, 169, '1992-08-31 00:00:00', NULL, NULL, 4, 350, 0),
(6, 'Lionel MESSI', 'Lionel MESSI.png', 'Argentina', 'Forward', 10, 31, 170, '1987-06-24 00:00:00', NULL, NULL, 4, 360, 1),
(7, 'Javier MASCHERANO', 'Javier MASCHERANO.png', 'Argentina', 'Defender', 14, 34, 174, '1984-06-08 00:00:00', NULL, NULL, 4, 360, 0),
(8, 'Angel DI MARIA', 'AngelDIMARIA.png', 'Argentina', 'Midfielder', 11, 30, 178, '1988-02-14 00:00:00', NULL, NULL, 3, 237, 1),
(9, 'MARCELO', 'marcelo.png', 'Brazil', 'Defender', 12, 30, 174, '1988-05-12 00:00:00', NULL, NULL, 4, 280, 0),
(10, 'NEYMAR', 'NEYMAR.png', 'Brazil', 'Forward', 10, 26, 175, '1992-02-05 00:00:00', NULL, NULL, 5, 450, 2),
(11, 'THIAGO SILVA', 'THIAGOSILVA.png', 'Brazil', 'Defender', 2, 33, 183, '1984-09-22 00:00:00', NULL, NULL, 5, 450, 1),
(12, 'ALISSON', 'ALISSON.png', 'Brazil', 'Goalkeeper', 1, 25, 193, '1992-10-02 00:00:00', NULL, NULL, 5, 450, 0),
(13, 'PAULINHO', 'PAULINHO.png', 'Brazil', 'Midfielder', 15, 30, 181, '1988-07-25 00:00:00', NULL, NULL, 5, 354, 1),
(14, 'FERNANDINHO', 'FERNANDINHO.png', 'Brazil', 'Midfielder', 17, 33, 179, '1985-05-04 00:00:00', NULL, NULL, 5, 155, 0),
(15, 'FRED', 'FRED.png', 'Brazil', 'Midfielder', 18, 25, 169, '1993-03-05 00:00:00', NULL, NULL, 0, 0, 0),
(16, 'ROBERTO FIRMINO', 'ROBERTOFIRMINO.png', 'Brazil', 'Forward', 20, 25, 181, '1991-10-02 00:00:00', NULL, NULL, 4, 82, 1),
(17, 'Mathew RYAN', 'MathewRYAN.png', 'Australia', 'Goalkeeper', 1, 26, 184, '1992-04-08 00:00:00', NULL, NULL, 3, 270, 0),
(18, 'Mark MILLIGAN', 'MarkMILLIGAN.png', 'Australia', 'Defender', 5, 32, 178, '1985-08-04 00:00:00', NULL, NULL, 3, 270, 0),
(19, 'Matthew JURMAN', 'MatthewJURMAN.png', 'Australia', 'Defender', 6, 28, 190, '1989-12-08 00:00:00', NULL, NULL, 0, 0, 0),
(20, 'Aziz BEHICH', 'AzizBEHICH.png', 'Australia', 'Defender', 16, 27, 170, '1990-12-16 00:00:00', NULL, NULL, 3, 270, 0),
(21, 'Mile JEDINAK', 'MileJEDINAK.png', 'Australia', 'Midfielder', 15, 33, 188, '1984-07-03 00:00:00', NULL, NULL, 3, 270, 2),
(22, 'Mathew LECKIE', 'MathewLECKIE.png', 'Australia', 'Forward', 7, 27, 181, '1991-02-04 00:00:00', NULL, NULL, 3, 270, 0),
(23, 'Tom ROGIC', 'TomROGIC.png', 'Australia', 'Midfielder', 23, 25, 189, '1992-12-16 00:00:00', NULL, NULL, 3, 226, 0),
(24, 'Tomi JURIC', 'TomiJURIC.png', 'Australia', 'Forward', 9, 27, 190, '1991-07-22 00:00:00', NULL, NULL, 3, 94, 0),
(25, 'Thibaut COURTOIS', 'ThibautCOURTOIS.png', 'Belgium', 'Goalkeeper', 1, 26, 199, '1992-05-11 00:00:00', NULL, NULL, 7, 630, 0),
(26, 'Toby ALDERWEIRELD', 'TobyALDERWEIRELD.png', 'Belgium', 'Defender', 2, 29, 186, '1989-03-02 00:00:00', NULL, NULL, 6, 540, 0),
(27, 'Vincent KOMPANY', 'VincentKOMPANY.png', 'Belgium', 'Defender', 4, 32, 190, '1986-04-10 00:00:00', NULL, NULL, 5, 337, 0),
(28, 'Jan VERTONGHEN', 'JanVERTONGHEN.png', 'Belgium', 'Defender', 5, 31, 189, '1987-04-24 00:00:00', NULL, NULL, 6, 540, 1),
(29, 'Hugo LLORIS', 'HugoLLORIS.png', 'France', 'Goalkeeper', 1, 31, 188, '1986-12-26 00:00:00', NULL, NULL, 6, 540, 0),
(30, 'Benjamin PAVARD', 'BenjaminPAVARD.png', 'France', 'Defender', 2, 22, 186, '1996-03-28 00:00:00', NULL, NULL, 6, 540, 1),
(31, 'Samuel UMTITI', 'SamuelUMTITI.png', 'France', 'Defender', 5, 24, 183, '1993-11-14 00:00:00', NULL, NULL, 6, 540, 1),
(32, 'Adil RAMI', 'AdilRAMI.png', 'France', 'Defender', 17, 32, 190, '1985-12-27 00:00:00', NULL, NULL, 5, 540, 1),
(33, 'Paul POGBA', 'PaulPOGBA.png', 'France', 'Midfielder', 6, 25, 191, '1993-03-15 00:00:00', NULL, NULL, 6, 539, 1),
(34, 'Kylian MBAPPE', 'KylianMBAPPE.png', 'France', 'Forward', 10, 19, 178, '1998-12-20 00:00:00', NULL, NULL, 7, 534, 4),
(35, 'Olivier GIROUD', 'OlivierGIROUD.png', 'France', 'Forward', 9, 31, 193, '1986-10-30 00:00:00', NULL, NULL, 7, 546, 0),
(36, 'Antoine GRIEZMANN', 'AntoineGRIEZMANN.png', 'France', 'Forward', 7, 27, 174, '1991-03-21 00:00:00', NULL, NULL, 7, 570, 4),
(37, 'RUI PATRICIO', 'RUIPATRICIO.png', 'Portugal', 'Goalkeeper', 1, 30, 189, '1988-02-15 00:00:00', NULL, NULL, 4, 360, 0),
(38, 'CRISTIANO RONALDO', 'CRISTIANORONALDO.png', 'Portugal', 'Forward', 7, 33, 185, '1985-02-05 00:00:00', NULL, NULL, 4, 360, 4),
(39, 'Luka MODRIC', 'LukaMODRIC.png', 'Croatia', 'Midfielder', 10, 32, 172, '1985-09-09 00:00:00', NULL, NULL, 7, 694, 2),
(40, 'Harry KANE', 'HarryKANE.png', 'England', 'Forward', 9, 25, 188, '1993-07-28 00:00:00', NULL, NULL, 6, 573, 6),
(41, 'Igor AKINFEEV', 'IgorAKINFEEV.png', 'Russia', 'Goalkeeper', 1, 32, 185, '1986-04-08 00:00:00', NULL, NULL, 5, 510, 0),
(42, 'Ilya KUTEPOV', 'IlyaKUTEPOV.png', 'Russia', 'Defender', 3, 25, 190, '1993-07-29 00:00:00', NULL, NULL, 5, 510, 0),
(43, 'Fedor KUDRIASHOV', 'FedorKUDRIASHOV.png', 'Russia', 'Defender', 13, 31, 187, '1987-04-05 00:00:00', NULL, NULL, 4, 335, 0),
(44, 'Denis CHERYSHEV', 'DenisCHERYSHEV.png', 'Russia', 'Midfielder', 6, 27, 173, '1990-12-26 00:00:00', NULL, NULL, 5, 304, 4);

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MP` int(11) NOT NULL,
  `W` int(11) NOT NULL,
  `D` int(11) NOT NULL,
  `L` int(11) NOT NULL,
  `GF` int(11) NOT NULL,
  `GA` int(11) NOT NULL,
  `GD` int(11) NOT NULL,
  `PTS` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `points`
--

INSERT INTO `points` (`id`, `group_name`, `team_name`, `MP`, `W`, `D`, `L`, `GF`, `GA`, `GD`, `PTS`, `created_at`, `updated_at`) VALUES
(65, 'A', 'Uruguay', 3, 3, 0, 0, 5, 0, 5, 9, NULL, NULL),
(66, 'A', 'Russia', 3, 2, 0, 1, 8, 4, 4, 6, NULL, NULL),
(67, 'A', 'Saudi Arabia', 3, 1, 0, 2, 2, 7, -5, 3, NULL, NULL),
(68, 'A', 'Egypt', 3, 0, 0, 3, 2, 6, -4, 0, NULL, NULL),
(69, 'B', 'Spain', 3, 1, 2, 0, 6, 5, 1, 5, NULL, NULL),
(70, 'B', 'Portugal', 3, 1, 2, 0, 5, 4, 1, 5, NULL, NULL),
(71, 'B', 'Iran', 3, 1, 1, 1, 2, 2, 0, 4, NULL, NULL),
(72, 'B', 'Morocco', 3, 0, 1, 2, 2, 4, -2, 1, NULL, NULL),
(73, 'C', 'France', 3, 2, 1, 0, 3, 1, 2, 7, NULL, NULL),
(74, 'C', 'Denmark', 3, 1, 2, 0, 2, 1, 1, 5, NULL, NULL),
(75, 'C', 'Peru', 3, 1, 0, 2, 2, 2, 0, 3, NULL, NULL),
(76, 'C', 'Australia', 3, 0, 1, 2, 2, 5, -3, 1, NULL, NULL),
(77, 'D', 'Croatia', 3, 3, 0, 0, 7, 1, 6, 9, NULL, NULL),
(78, 'D', 'Argentina', 3, 1, 1, 1, 3, 5, -2, 4, NULL, NULL),
(79, 'D', 'Nigeria', 3, 1, 0, 2, 3, 4, -1, 3, NULL, NULL),
(80, 'D', 'Iceland', 3, 0, 1, 2, 2, 5, -3, 1, NULL, NULL),
(81, 'E', 'Brazil', 3, 2, 1, 0, 5, 1, 4, 7, NULL, NULL),
(82, 'E', 'Switzerland', 3, 1, 2, 0, 5, 4, 1, 5, NULL, NULL),
(83, 'E', 'Serbia', 3, 1, 0, 2, 2, 4, -2, 3, NULL, NULL),
(84, 'E', 'Costa Rica', 3, 0, 1, 2, 2, 5, -3, 1, NULL, NULL),
(85, 'F', 'Sweden', 3, 2, 0, 1, 5, 2, 3, 6, NULL, NULL),
(86, 'F', 'Mexico', 3, 2, 0, 1, 3, 4, -1, 6, NULL, NULL),
(87, 'F', 'Korea Republic', 3, 1, 0, 2, 3, 3, 0, 3, NULL, NULL),
(88, 'F', 'Germany', 3, 1, 0, 2, 2, 4, -2, 3, NULL, NULL),
(89, 'G', 'Belgium', 3, 3, 0, 0, 9, 2, 7, 9, NULL, NULL),
(90, 'G', 'England', 3, 2, 0, 1, 8, 3, 5, 6, NULL, NULL),
(91, 'G', 'Tunisia', 3, 1, 0, 2, 5, 8, -3, 3, NULL, NULL),
(92, 'G', 'Panama', 3, 0, 0, 3, 2, 11, -9, 0, NULL, NULL),
(93, 'H', 'Colombia', 3, 2, 0, 1, 5, 2, 3, 6, NULL, NULL),
(94, 'H', 'Japan', 3, 1, 1, 1, 4, 4, 0, 4, NULL, NULL),
(95, 'H', 'Senegal', 3, 1, 1, 1, 4, 4, 0, 4, NULL, NULL),
(96, 'H', 'Poland', 3, 1, 0, 2, 2, 5, -3, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `featured_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `featured_img`, `author`, `date`, `title`, `description`, `video`, `created_at`, `updated_at`) VALUES
(1, 'ldibzeaerxkyco.jpg', '2018 FIFA WORLD CUP™', '2018-07-27 12:00:00', 'Cherchesov extends contract with Russia', '<p>Russia head coach Stanislav Cherchesov has signed a new contract with 2018 FIFA World Cup™ hosts Russia, which could see him lead the team until 2022.<br><br>\r\n\r\nFollowing the hosts\' run to the quarter-finals, where they were knocked out in the quarter-finals to eventual finalists Croatia after a narrow 4-3 penalty shootout defeat, Cherchesov has been given an extension to his contract by the Russian Football Association.<br><br>\r\n\r\nThe agreement is for Cherchesov to coach the national team for two more years, but it will be extended for a further two more years if the team succeeds in qualifying for UEFA EURO 2020.<br><br>\r\n\r\n“I\'m happy to continue working with Russia,\" Cherchesov said on the Russian Football Union\'s official website. \"We set the bar quite high in terms of results, but we will try to keep this up. I understand the responsibility and will continue to work with dignity.\"<br></p>\r\n<blockquote>\r\nCherchesov was recently announced as a nominee for The Best FIFA Men\'s Coach Award 2018 alongside Zlatko Dalic, Roberto Martinez, Didier Deschamps, Pep Guardiola\r\n</blockquote>\r\n<p>The FIFA Fan Fest™ took Russia by storm. Following the exhilarating final of the 2018 FIFA World Cup Russia™ that saw France take the title, FIFA can confirm that the Russian edition of the FIFA Fan Fest welcomed 7.7 million visitors. This compares to 5.2 million fans at the 2014 edition.</p>', 'https://www.youtube.com/embed/1txggDnibNQ', NULL, NULL),
(2, 'skwftbfdavp7umm6ymc.jpg', '2018 FIFA WORLD CUP™ ', '2018-07-19 00:00:00', '7.7 million football fans visit FIFA Fan Fest during Russia 2018', '<p>The FIFA Fan Fest™ took Russia by storm. Following the exhilarating final of the 2018 FIFA World Cup Russia™ that saw France take the title, FIFA can confirm that the Russian edition of the FIFA Fan Fest welcomed 7.7 million visitors. This compares to 5.2 million fans at the 2014 edition.<br><br>\r\n\r\nEvery matchday tens of thousands of Russian and international football fans opted for the FIFA Fan Fest locations as their venues of choice. They watched a total of 917 hours of live football and enjoyed an exciting music and cultural entertainment programme featuring 646 bands playing 323 hours of live music, all free of charge.</p><br>\r\n<blockquote>\r\n“The close collaboration between FIFA, the LOC, the Host Cities and our Commercial Affiliates made this project possible,” said FIFA’s Chief Commercial Officer, Philippe Le Floc’h. “The FIFA Fan Fests offered a free, safe and highly entertaining space to the 7.7 million local and international fans that came to watch matches in those spectacular locations.”\r\n</blockquote><br>\r\n<p>The highest day’s attendance was 25 June, the day Uruguay played Host Country Russia, when 499,000 fans attended 11 venues. The Host City of Moscow achieved the best attendance with a staggering number of 1,887,200 visitors. For the 2014 FIFA World Cup™ in Brazil, top venue Rio de Janeiro had 937,330 visitors in total.\r\n<br><br>\r\nThe FIFA Fan Fest has been part of the Official Programme of the FIFA World Cup since the 2006 edition in Germany. It featured again at the 2010 and 2014 editions in South Africa and Brazil, and has definitely been one of the highlights for fans in Russia.</p>', 'https://www.youtube.com/embed/iLraMPtHvbE', NULL, NULL),
(3, 'aplkrhpfnseaeb3nxbtz.jpg', 'FIFA.COM', '2018-07-19 10:00:00', 'How the world watched Russia 2018', 'FRANCE: People gather in the fan zone to watch the Russia 2018 Final between France and Croatia\r\n19 Jul 2018\r\n<br><br>\r\nTOPSHOT - People gather on the fan zone to watch the Russia 2018 World Cup final football match between France and Croatia, on the Champ de Mars in Paris on July 15, 2018. / AFP / JACQUES DEMARTHON', NULL, NULL, NULL),
(4, 'whrsrpkumf3v5e3txewn.jpg', 'FIFA.com', '2018-07-28 12:00:00', 'Osorio and Mexico part company', 'Juan Carlos Osorio has stepped down as coach of Mexico, having guided the CONCACAF side to the Round of 16 at the 2018 FIFA World Cup Russia™, after almost three years in the role.<br><br>\r\n\r\nAfter his contract ended following the tournament, Osorio leaves having won 33 of his 52 games at the helm. The Colombian tactician saw El Tri\'s tournament end at the hands of Brazil, with a 2-0 defeat seeing them exit for the seventh-successive time at the last 16. This followed wins over Germany - a first in Mexico\'s history - and Korea Republic to escape the group stage.<br><br>\r\n\r\n\"I would like to send my sincere thanks to the Mexican fans, to the Mexican Football Federation, to the employees of the Centro de Alto Rendimiento, and especially to the players, with whom I had the privilege of working and sharing during my job as technical director of the Mexican national team, a position I held with commitment, passion and pride,\" Osorio said in a statement. \"On behalf of myself and my coaching staff, many thanks to everyone for this unique and unparalleled professional and life experience.\"', 'https://www.youtube.com/embed/6BSeFs40QOI', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stadiums`
--

CREATE TABLE `stadiums` (
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opening` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stadiums`
--

INSERT INTO `stadiums` (`name`, `city`, `capacity`, `opening`, `picture`, `description`, `created_at`, `updated_at`) VALUES
('Ekaterinburg Arena', 'Ekaterinburg', ' 45,000 seats', '1957', 'ekaterinburgarena.jpg', 'The Ekaterinburg Arena, then still called Central Stadium, was built between 1953 and 1957. The stadium was initially a multi-sports arena, also hosting athletics and ice skating events.<br><br>\r\n\r\nCentral Stadium, with a capacity of 27,000, remained largely unchanged in the next decades until plans were made in the mid 2000s to extensively redevelop the stadium. Works started in 2007, and, after multiple delays, were completed in 2011, giving the stadium an extensive make-over, but keeping the athletics track and sticking with a similar capacity as before.<br><br>\r\n\r\nRound the same time, Russia got awarded the 2018 World Cup, and soon after Yekaterinburg was shortlisted as one of the host cities for the tournament, which got confirmed in 2012.<br><br>\r\n\r\nUnfortunately, the recently renovated Central Stadium did not meet FIFA standards, and thus new redevelopment plans had to be made. The protected external facade would have to be preserved, but otherwise the entire interior had to get rebuilt, boosting capacity to 45,000 seats.<br><br>', NULL, NULL),
('Fisht Stadium', 'Sochi', '48,000 seats', '2013', 'fisht.jpg', 'Fisht Olympic Stadium was built to serve as the centrepiece venue of the 2014 Sochi Winter Olympics. During the Olympics, it hosted both the opening and closing ceremony.<br><br>\r\n\r\nThe stadium lacked a purpose following the Games, but was selected as one of the playing venues of the 2018 World Cup. For this, the closed roof had to be opened up, and additional seating was placed to boost capacity with a little over 6,000 seats. Works were completed in late 2016.<br><br>\r\n\r\nDuring the 2018 World Cup, Fisht Olympic Stadium will host four first round group games, one round of 16 match, and one quarter-final.<br><br>\r\n\r\nFisht Olympic Stadium is also one of the playing venues of the 2017 Confederations Cup, including one of the two semi-finals.<br><br>', NULL, NULL),
('Kaliningrad Stadium', 'Kaliningrad', '35,212 seats', '2018', 'kaliningrad.jpg', 'Kaliningrad Stadium, also known as the Arena Baltika, is a newly opened stadium in the city of Kaliningrad. It was built to be one of the playing venues of the 2018 World Cup and the new home of FC Baltika, who previously played at the modest Baltika Stadium.<br><br>\r\n\r\nConstruction of Kaliningrad Stadium started in September 2015, making it the last Russia World Cup to get under way. Delays had plagued the project, caused by financial difficulties and the bankruptcy of the company responsible for the design.\r\n<br><br>\r\nInitial plans had aimed for a capacity of 45,000 and a retractable roof, but these had to get scaled back to a simpler design with 35,000 seats, of which 10,000 will be removed after the World Cup.<br><br>\r\n\r\nKaliningrad Stadium eventually opened on 11 April 2018 with a league match between FC Baltika and Krylia Sovetov (1-0).<br><br>\r\n\r\nDuring the World Cup, Kaliningrad Stadium is scheduled to host four first round group matches.', NULL, NULL),
('Kazan Arena', 'Kazan', '45,000 seats ', '2013', 'kazan.jpg', 'The Kazan Arena was built to provide Rubin with a modern home, to serve as the main venue of the 2013 Summer Universiade, and to be one of the playing venues of the 2018 World Cup.<br><br>\r\n\r\nConstruction of the stadium started in May 2010 and was completed in early 2013. The Kazan Arena first opened for the opening ceremony of the 27th Summer Universiade, and eleven days later also hosted the closing ceremony.<br><br>\r\n\r\nFurther improvement works were performed after the Universiade and subsequent pitch problems meant that the first football match wasn’t played until 26 May 2014 when Russia and Slovakia squared off in a friendly.<br><br>\r\n\r\nIn 2015, the stadium hosted the FINA World Aquatics Championships, for which the football pitch was replaced by two swimming pools.<br><br>\r\n\r\nThe Kazan Arena has furthermore been selected as one of the playing venues of the 2018 World Cup, during which it will host four first round group games, one round of 16 games, and one quarter-final.<br><br>\r\n\r\nThe arena is also one of the four playing venues of the 2017 Confederations Cup.', NULL, NULL),
('Luzhniki Stadium', 'Moscow', '80,000 seats', '1956', 'luzhniki.jpg', 'Luzhniki Stadium, initially called Central Lenin Stadium, was built between 1955 and 1956. It was the result of the ambition of the Soviet leadership to upgrade the country’s sports facilities after the Soviet Union had tasted its first post-war successes at the 1952 Olympics.<br><br>\r\n\r\nWorks on Luzhniki Olympic Complex started in 1954 and construction of its centrepiece stadium, also called the Grand Sports Arena, in 1955. The stadium got finished in just 450 days and officially opened on 31 July 1956.<br><br>\r\n\r\nLuzhniki Stadium served as the centrepiece stadium of the 1980 Olympics, hosting the opening and closing ceremonies, athletics events, football finals, and equestrian programme.<br><br>\r\n\r\nIn 1982, a stadium disaster took place at the stadium during a second round UEFA Cup match between FC Spartak and Dutch side HFC Haarlem. In the dying seconds of the match, people started rushing for the exits to make it to the metro before the rest of the crowd. When someone fell on the icy staircases, chaos ensued, and the resulting crush and domino effect killed 66 people.<br><br>\r\n\r\nUntil the 1990s, the roofless stadium could hold just over 100,000 spectators. In 1996, the stadium got extensively renovated, which included the construction of a roof over the stands and the refurbishment of the seating areas, which resulted in a decrease of capacity.<br><br>', NULL, NULL),
('Mordovia Arena', 'Saransk', '45,000 seats', '2018', 'mordovia-arena.jpg', 'The Mordovia Arena, also known as Saransk Stadium and Stadion Yubileyny, is the recently opened new home of Mordovia Saransk and one of the playing venues of the 2018 World Cup.<br><br>\r\n\r\nThe stadium was first proposed in early 2010 before the World Cup had got awarded to Russia. Following various redesigns first building works began in late 2011, and soon after Saransk got picked as one of the host cities of the World Cup.<br><br>\r\n\r\nHowever, works progressed slowly, and with the first structures of the lower tier barely up in 2012, the project stalled due to a lack of funding. Little activity was recorded in the next two years until works were picked up again in late 2014.<br><br>\r\n\r\nFolowing some further delays, the Mordovia Arena opened on 21 April 2018 with a league match between Mordovia and Zenith Ishevsk (0-0), albeit at a reduced capacity. The first full-capacity match, the third at the stadium, was played on 16 May.<br><br>\r\n\r\nThe Mordovia Arena will have a capacity of 45,000 seats for the World Cup, which will be brought down to 28,000 seats after the World Cup by removing the upper tier and turning it into a walking concourse.<br><br>\r\n\r\nDuring the World Cup, the Mordovia Arena will host four first round group matches.', NULL, NULL),
('Nizhny Novgorod Stadium', 'Nizhny Novgorod', '45,000 seats', '2018', 'nizhny.jpg', 'Nizhny Novgorod Stadium is a recently opened new stadium in the city of Nizhny Novgorod that will be one of the playing venues of the 2018 World Cup. It furthermore replaced Lokomotiv Stadium as the home of FC Olimpiyets.<br><br>\r\n\r\nNizhny Novgorod Stadium was part of the Russian bid to host the 2018 World Cup, and got confirmed in 2012 as one of the 12 playing venues. Construction of the stadium started in early 2015 and was completed three years later in 2018.<br><br>\r\n\r\nThe stadium officially opened on 15 April 2018 with a league match between Olimpiyets and Zenith II.<br><br>\r\n\r\nNizhny Novgorod Stadium’s design has been inspired by the nature of the Volga region, and consists of a semi-transparent facade that can be lit up at night.<br><br>\r\n\r\nDuring the World Cup, Nizhny Novgorod Stadium is scheduled to host four first round group matches, one round of 16 match, and one quarter-final.', NULL, NULL),
('Rostov Arena', 'Rostov-on-Don', '45,000 seats', '2018', 'rostov.jpg', 'The Rostov Arena is a recently opened new stadium in the city of Rostov-on-Don that was built for the 2018 World Cup and will become the new home of FC Rostov.<br><br>\r\n\r\nPlans for the new stadium became concrete when Russia got awarded the 2018 World Cup and Rostov-on-Don selected as a host city. The final design was chosen in December 2012 when Populous got selected as the architect.<br><br>\r\n\r\nFirst ground preparation works started in 2013, but it took until early 2015 for actual foundation works to start. The stadium was expected to be completed in 2017, but the opening got delayed to 2018. It officially opened on 15 April 2018 with a league match between Rostov and Khabarovsk.<br><br>\r\n\r\nAfter the World Cup, the stadium will be scaled down to a capacity of 25,000.<br><br>\r\n\r\nThe design of the stadium is inspired by the ancient mounts of earth, Kurgans, that can be found in the region.', NULL, NULL),
('Saint Petersburg Stadium', 'Saint Petersburg', '67,000 seats', '2017', 'saint-petersburg.jpg', 'Saint Petersburg Stadium, also referred to as Zenit Arena, Krestovsky Stadium, and Piter Arena, is the recently opened new stadium of FC Zenit. It got built at the site of the former Kirov Stadium.<br><br>\r\n\r\nPlanning for the new stadium began late 2005, and first construction works started by the end of 2008. The stadium was initially planned to be completed in 2009, but works were hampered by a series of delays, including a redesign to comply with FIFA requirements and fraud investigations.<br><br>\r\n\r\nSaint Petersburg Stadium was initially to be funded by Russian gas firm Gazprom, however after they pulled out the project was taken over by the St. Petersburg city government. Works finally sped up in 2016 and the stadium was completed in April 2017, however overall costs had soared past $1 billion, which made it one of the most expensive stadiums ever built.<br><br>\r\n\r\nThe first official match at Saint Petersburg Stadium was played on 22 April 2017 when Zenit hosted Ural for a league match (2-0).<br><br>\r\n\r\nThe stadium has been designed by Japanese architecture firm Kisho Kurokawa and resembles the form of a spaceship with the roof held up by four masts. It has some similarities with that of the Japanese Toyota Stadium, which was designed by the same firm.<br><br>\r\n\r\nSaint Petersburg Stadium is going to be one of the playing venues of the 2018 World Cup in Russia, during which it will host four first round group matches, a quarter final, a semi final, and the match for third place. It also hosted four matches during the 2017 Confederations Cup, including the final.<br><br>', NULL, NULL),
('Samara Arena', 'Samara', '45,000 seats', '2018', 'samara.jpg', 'The Cosmos Arena, also known as Samara Arena or Samara Stadium, is the recently opened new home of Krylia Sovetov, replacing Metallurg Stadium. The stadium was built to serve as one of the playing venues of the 2018 World Cup.<br><br>\r\n\r\nFirst plans for the new stadium were made around 2010, which became concrete when in 2012 the city of Samara got selected as one of the host cities of the World Cup. Works started in the middle of 2014, and following a small delay were completed in early 2018.<br><br>\r\n\r\nThe Cosmos Arena opened on 28 April 2018 with a league match between Krylia Sovetov and Fakel Voronezh, though it was still one of three test matches at limited capacity.<br><br>\r\n\r\nThe most characteristic aspect of the Cosmos Arena is its 65.5 metres high dome roof, which is made up out of 32 panels. The arena boasts just under 45,000 seats, which are divided over two tiers.<br><br>\r\n\r\nThe Cosmos Arena was initially planned to be built on the tip of a peninsula where the Samara and Volga rivers meet, however was moved to a site north of the city due to a lack of infrastructure.<br><br>\r\n\r\nDuring the World Cup, the Cosmos Arena is scheduled to host four first round group matches, one round of 16 match, and one quarter-final.', NULL, NULL),
('Spartak Stadium', 'Moscow', '42,000 seats', '2014', 'spartak.jpg', 'The Otkritie Arena is the recently opened new home of Spartak Moscow. In its history, Spartak had never owned a proper stadium, using various stadiums around Moscow instead, and ultimately playing at Luzhniki Stadium.<br><br>\r\n\r\nThe club had been looking to build a new stadium from as early as the mid 1990s, but early plans failed to materialise. The project of the Otkritie Arena became concrete in 2005 after the club acquired a site at the Tushino Airfield grounds in the far north-west of Moscow.<br><br>\r\n\r\nFew progress was made in the following years, however the financial crisis in 2008 led to significantly reduced construction costs, which in turn made getting funding easier. Construction of the stadium finally started in July 2010.<br><br>\r\n\r\nInitial plans went for a stadium with about 35,000 seats, but this was later revised upwards to 42,000 with an eye on the 2018 World Cup. The Otkritie Arena got subsequently confirmed as the second Moscow playing venue besides Luzhniki Stadium, beating Dynamo’s VTB Arena for the spot.<br><br>\r\n\r\nIn February 2013, Spartak announced a naming rights deal with local bank Otkritie, resulting in the name Otkritie Arena. The stadium officially opened on 5 September 2014 with a friendly between Spartak and Red Star (1-1).<br><br>\r\n\r\nThe Otkritie Arena was selected as one of the playing venues of the 2017 Confederations Cup, hosting three first round group matches and the match for third place.', NULL, NULL),
('Volgograd Stadium', 'Volgograd', '45,000 seats', '2018', 'volgograd.jpg', 'The Volgograd Arena is the recently opened new stadium in the city of Volgograd in southern Russia. It got built with the purpose of serving as one of the playing venues of the 2018 World Cup, and has become the new home of Rotor Volgograd.<br><br>\r\n\r\nThe stadium got built at the site of the former Central Stadium, which used to be Volgograd’s principal stadium. Demolition of the old stadium started in late 2014, and construction of the new arena got going in the spring of 2015.<br><br>\r\n\r\nThe Volgograd Arena has a capacity of 45,000 seats divided over two tiers. The cabled roof and meshed exterior are the standout features of the arena. After the World Cup, capacity will be reduced to 35,000 seats.<br><br>\r\n\r\nDuring the World Cup, the Volgograd Arena will host four first round group games.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `team_name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coach_name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coach_about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`team_name`, `coach_name`, `coach_about`, `country`, `code`, `featured_img`, `created_at`, `updated_at`) VALUES
('Argentina', 'Jorge Sampaoli', 'After injury ended his playing career at the age of 19, Jorge Sampaoli turned to coaching and accumulated extensive experience managing clubs throughout South America (in Argentina, Chile, Ecuador and Peru), before a brief spell in Spain with Sevilla.', 'Argentina', 'arg', 'arg.jpg', NULL, NULL),
('Australia', 'Bert van Marwijk', 'On 24 January 2018, Bert Van Marwijk was named coach of Australia for the 2018 World Cup. He is the third Dutchman to manage Australia at the global showpiece, following Guus Hiddink in 2006 and Pim Verbeek in 2010.', 'Australia', 'aus', 'aus.jpg', NULL, NULL),
('Belgium', 'Roberto Martínez', 'Under the Roberto Martinez\'s tutelage, the Red Devils became the first UEFA nation to qualify for Russia 2018, and did so with an unbeaten record.', 'Belgium', 'bel', 'bel.jpg', NULL, NULL),
('Brazil', ' Tite', 'Following a playing career that was prematurely ended by a serious knee injury, Tite has spent nearly all his managerial career in Brazil, aside from two brief sojourns in the United Arab Emirates.', 'Brazil', 'bra', 'bra.jpg', NULL, NULL),
('Colombia', 'Jose Pekerman', 'Pekerman oversaw Argentina at the 2006 World Cup, resigning after they exited at the quarter-finals. He was named head coach of Colombia in 2012 and steered them to the 2014 World Cup, where _Los Cafeteros_ produced their best performance to date, reaching the last eight.', 'Colombia', 'col', 'col.jpg', NULL, NULL),
('Costa Rica', 'Oscar Ramirez', 'Ex-midfielder Oscar Ramirez won a total of eight league titles playing for homeland clubs Alajuelense and Saprissa and was a member of the Costa Rican squad that made its World Cup bow in 1990', 'Costa Rica', 'crc', 'crc.jpg', NULL, NULL),
('Croatia', 'Zlatko Dalic', 'This former defensive midfielder played for Hajduk Split, Velez Mostar and Varteks Varazdin, among other teams. He began his coaching career with Varteks and simultaneously served as assistant coach of the Croatian U-21 team', 'Croatia', 'cro', 'cro.jpg', NULL, NULL),
('Denmark', 'Age Hareide', 'As a coach, Age Hareide has won leagues title in three countries (Sweden, Norway and Denmark) and oversaw the Norwegian national team for nearly five years between 2004 and 2008.', 'Denmark', 'den', 'den.jpg', NULL, NULL),
('Egypt', 'Hector Cuper', 'In March 2015, Cuper was appointed head coach of Egypt, subsequently leading the Pharaohs to the final of the CAF Africa Cup of Nations 2017 and later securing their qualification for the global showpiece after a 28-year absence.', 'Egypt', 'egy', 'egy.jpg', NULL, NULL),
('England', 'Gareth Southgate', 'Previously a central defender with a long career in the English top flight at Crystal Palace, Aston Villa and Middlesbrough, Gareth Southgate racked up 57 appearances and two goals with the England national team between 1995 and 2004.', 'England', 'eng', 'eng.jpg', NULL, NULL),
('France', 'Didier Deschamps', 'Deschamps cut his coaching teeth with Monaco, leading them to the Champions League final in 2004 and subsequently managed two of his former clubs, taking Juventus back up to Serie A and Marseille to the title after an 18-year wait. He was appointed coach of the French national side after EURO 2012, replacing Laurent Blanc.', 'France', 'fra', 'fra.jpg', NULL, NULL),
('Germany', 'Joachim Low', 'In 2004 Joachim Low became assistant to then Germany coach Jurgen Klinsmann, before taking over himself following a third-place finish in the 2006 global showpiece. Under Low’s stewardship, the team won the World Cup in 2014, after coming third in 2010, and lifted the FIFA Confederations Cup in 2017.', 'Germany', 'ger', 'ger.jpg', NULL, NULL),
('Iceland', 'Heimir Hallgrímsson', 'As a player in Iceland, Hallgrimsson also found time to coach both men’s and women’s teams. In 2011 he was appointed assistant to then Iceland coach Lars Lagerback and two years later became joint manager alongside the Swede, before jointly guiding his native team to a historic quarter-final finish at UEFA EURO 2016.', 'Iceland', 'isl', 'isl.jpg', NULL, NULL),
('Iran', 'Carlos Queiroz', 'Since April 2011, Queiroz has been calling the shots for IR Iran, whom he guided to the 2014 World Cup and the following year\'s AFC Asian Cup.', 'Iran', 'irn', 'irn.jpg', NULL, NULL),
('Japan', 'Vahid Halilhodzic', 'This former midfielder made 12 national team appearances between 1977 and 1978, when he netted his only international goal against Malaysia. After hanging up his boots, Nishino became a coach with Japan\'s national youth teams.', 'Japan', 'jpn', 'jpn.jpg', NULL, NULL),
('Korea Republic', 'Shin Tae-yong', 'Shin Taeyong has led Korea Republic to the final of the continental U-23 championship, the quarter-finals of the Men’s Olympic Tournament Rio 2016 and the Round of 16 of the 2017 U-20 World Cup. In June 2017, Shin was chosen to replace Uli Stielike at the helm of the senior national side.', 'South Korea', 'kor', 'kor.jpg', NULL, NULL),
('Mexico', 'Juan Carlos Osorio', 'After a brief playing career spent in Colombia, and a stint in Brazil with Internacional, Juan Carlos Osorio began working as an assistant coach in the United States and then joined the backroom staff at Manchester City for several years. He has been at the helm of Mexico since 2015.', 'Mexico', 'mex', 'mex.jpg', NULL, NULL),
('Morocco', 'Herve Renard', 'He has previously been the manager of the Zambian national team, with whom he won the 2012 Africa Cup of Nations; he also won the competition in 2015 Africa Cup of Nations with the Ivory Coast, becoming the first coach to win two Africa Cup of Nations with different countries.', 'Morocco', 'mar', 'mar.jpg', NULL, NULL),
('Nigeria', 'Gernot Rohr', 'Gernot Rohr began his playing career with Bayern Munich, Waldhof Mannheim and Kickers Offenbach in his native Germany, before relocating to Bordeaux in 1977, where he won three league titles and two national cups.', 'Nigeria', 'nga', 'nga.jpg', NULL, NULL),
('Panama', 'Hernan Dario Gomez', 'A midfielder with Independiente Medellin and Atletico Nacional, Hernan Gomez started coaching at the latter club as an assistant and joined the technical staff of the Colombian national side.', 'Panama', 'pan', 'pan.jpg', NULL, NULL),
('Peru', 'Ricardo Gareca', 'Ricardo Gareca took over Peru in March 2015, and he promptly guided them to the semi-finals of the Copa America that same year and then the World Cup in Russia after a 36 year-absence.', 'Peru', 'per', 'per.jpg', NULL, NULL),
('Poland', 'Adam Nawalka', 'Adam Nawalka has accumulated coaching experience with different teams, first as an assistant and later as head coach. He has had two managerial stints with the national side, initially as assistant to Leo Beenhakker in 2007-08 and as head coach since 2013.', 'Poland', 'pol', 'pol.jpg', NULL, NULL),
('Portugal', 'Fernando Santos', 'Fernando Santos played in defence for Estoril and Maritimo. He began his coaching career at Estoril and gained further experience in Portugal and Greece.', 'Portugal', 'por', 'por.jpg', NULL, NULL),
('Russia', 'Stanislav Cherchesov', 'Formerly a goalkeeper who served as Rinat Dasaev’s understudy at Spartak Moscow, Stanislav Cherchesov won four national titles with the Muscovite club before heading first for Germany with Dynamo Dresden and then Austria, where he won three league titles with Tirol Innsbruck.', 'Russia', 'rus', 'rus.jpg', NULL, NULL),
('Saudi Arabia', 'Juan Antonio Pizzi', 'Argentina-born but a naturalised Spaniard, Juan Antonio Pizzi scored over 200 goals during a playing career that spanned Argentina, Mexico, Portugal and Spain, where he played for Tenerife, Valencia, Villareal and Barcelona. Wearing the Spain jersey, Pizzi scored eight goals in 22 appearances.', 'Saudi Arabia', 'ksa', 'ksa.jpg', NULL, NULL),
('Senegal', 'Aliou CISSE', 'Defensive midfielder Cisse cut his teeth in the game in France, making his name in Ligue 1 with Lille, Sedan, Paris Saint-Germain and Montpellier. After the 2002 FIFA World Cup, Cisse moved to the English Premier League, first with Birmingham City and then Portsmouth, before returning to France and closing out his career with Sedan and Nimes.', 'Senegal', 'sen', 'sen.jpg', NULL, NULL),
('Serbia', 'Mladen Krstajic', 'This former defender divided his playing career between Partizan Belgrade, Werder Bremen and Schalke, winning five league titles on home soil and one in Germany with Werder.', 'Serbia', 'srb', 'srb.jpg', NULL, NULL),
('Spain', 'Fernando Hierro', 'The Malaga-born coach took charge of Spain when Julen Lopetegui was sacked by the Spanish Football Association (RFEF) after news of his appointment by Real Madrid was announced two days before the start of the World Cup.', 'Spain', 'esp', 'esp.jpg', NULL, NULL),
('Sweden', 'Janne Andersson', 'In the Swedish top flight, Janne Andersson managed Halmstad and Norrkoping, clinching the title with the latter team in 2015 after a 26-year wait. He took the reins of Sweden after EURO 2016 and qualified for Russia by edging Italy in a play-off.', 'Sweden', 'swe', 'swe.jpg', NULL, NULL),
('Switzerland', 'Vladimir Petkovic', 'Vladimir Petkovic started his career in Yugoslavia, where he was a member of the Partizan Belgrade squad that won the national league title in 1985.', 'Switzerland', 'sui', 'sui.jpg', NULL, NULL),
('Tunisia', 'Nabil Maaloul', 'Maaloul enjoyed notable success on returning to coach Esperance Tunis - who he featured for as a player - winning league, cup and CAF Champions League titles. He also guided Kuwait to the 2015 Asian Cup and, in two different stints, coached his home nation Tunisia; the latest assignment started in April 2017 and has brought qualification for Russia 2018.', 'Tunisia', 'tun', 'tun.jpg', NULL, NULL),
('Uruguay', 'Oscar Tabarez', 'After a spell in charge of Uruguay for a two-year spell that included the Copa America 1989 and the 1990 World Cup, Oscar Tabarez was reappointed as coach of _La Celeste_ in 2006 and took part in four Copa Americas, winning the 2011 edition, as well as two World Cups (2010 and 2014, finishing fourth in the former), one Confederations Cup (2013) and the Men’s Olympic Football Tournament London 2012.', 'Uruguay', 'uru', 'uru.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `img`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Raghib', '', 'vcshahriyer@gmail.com', '$2y$10$1aoAvx1WGDBWrh6aZjB/COFDJoXljHhRncJcr7XxLu6wUBvpnnaj.', 'iU44Sf2RrOebnQHFjpsR0ZPzkgBK9H4ukpsL1jmzChuteO8AwrMkszQL1Z51', '2018-07-27 12:52:09', '2018-07-27 12:52:09'),
(2, 'Sohag', 'sohag.jpg', 'sohag@gmail.com', '$2y$10$cBFdC6D9y8WyGWKO2h.pBOHTIbVF7l3Yu4pUG6rdyJLkTyyHS/GUa', 'ey25DIxhcKsgYdt7BPbkuFA59StTTjROOOxC8Bz2y2FagSeTPyR6ql6mgPcE', '2018-07-28 10:54:33', '2018-07-28 10:54:33'),
(3, 'Rana', 'ava-2.jpg', 'rana@gmail.com', '$2y$10$oYHZ6BrLqrKfQWeQH5gtE.HDSsaSkI29aOfGDiGkD5IoXpaXrQzOW', 'A4ZA2CdAOnzRae5e44MIXE6PqF6Fyl5jbWGMmxWPxRdoRYlqV6xuVzZGWbez', '2018-07-28 13:45:43', '2018-07-28 13:45:43'),
(4, 'Riniyad Mahady', 'riniyad.jpg', 'riniyad@gmail.com', '$2y$10$MwLF/qVn0iftPCe7oKlHw.Fwas3K.JOMbxKehmt7NT/4/Twbis7Ce', 'Q2olTbHmaWLkqXuEXWcj0X9XTf7XfrNRWq2rv9bZKmZwwCi8g8jqYQQi878l', '2018-07-28 14:19:45', '2018-07-28 14:19:45');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'LIONEL MESSI - HYUNDAI GOAL OF THE TOURNAMENT - NOMINEE', 'https://www.youtube.com/embed/RWgJ4KKn1vM', NULL, NULL),
(2, 'TOP 10 GOALS - 2018 FIFA WORLD CUP RUSSIA (EXCLUSIVE)', 'https://www.youtube.com/embed/Vw34wMAqWzc', NULL, NULL),
(3, 'Toni KROOS - HYUNDAI GOAL OF THE TOURNAMENT - NOMINEE', 'https://www.youtube.com/embed/hDMuhgabjbo', NULL, NULL),
(4, 'Philippe COUTINHO - HYUNDAI GOAL OF THE TOURNAMENT - NOMINEE', 'https://www.youtube.com/embed/7a32-AKVqGA', NULL, NULL),
(5, 'Luka MODRIC - HYUNDAI GOAL OF THE TOURNAMENT - NOMINEE', 'https://www.youtube.com/embed/h59FWlvfi5s', NULL, NULL),
(6, 'Cristiano RONALDO - HYUNDAI GOAL OF THE TOURNAMENT - NOMINEE', 'https://www.youtube.com/embed/1EmAwblXnIY', NULL, NULL),
(7, 'Angel DI MARIA - HYUNDAI GOAL OF THE TOURNAMENT - NOMINEE', 'https://www.youtube.com/embed/5r_vK4NRV-I', NULL, NULL),
(8, 'Adnan JANUZAJ - HYUNDAI GOAL OF THE TOURNAMENT - NOMINEE', 'https://www.youtube.com/embed/TUFavXMGKSE', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `awards_team_name_foreign` (`team_name`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_email_foreign` (`email`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`match_id`),
  ADD KEY `matches_team1_foreign` (`team1`),
  ADD KEY `matches_team2_foreign` (`team2`),
  ADD KEY `matches_stadium_name_foreign` (`stadium_name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD KEY `players_team_name_foreign` (`team_name`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `points_team_name_foreign` (`team_name`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stadiums`
--
ALTER TABLE `stadiums`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`team_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `match_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `awards`
--
ALTER TABLE `awards`
  ADD CONSTRAINT `awards_team_name_foreign` FOREIGN KEY (`team_name`) REFERENCES `teams` (`team_name`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_email_foreign` FOREIGN KEY (`email`) REFERENCES `users` (`email`),
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Constraints for table `matches`
--
ALTER TABLE `matches`
  ADD CONSTRAINT `matches_stadium_name_foreign` FOREIGN KEY (`stadium_name`) REFERENCES `stadiums` (`name`),
  ADD CONSTRAINT `matches_team1_foreign` FOREIGN KEY (`team1`) REFERENCES `teams` (`team_name`),
  ADD CONSTRAINT `matches_team2_foreign` FOREIGN KEY (`team2`) REFERENCES `teams` (`team_name`);

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_team_name_foreign` FOREIGN KEY (`team_name`) REFERENCES `teams` (`team_name`);

--
-- Constraints for table `points`
--
ALTER TABLE `points`
  ADD CONSTRAINT `points_team_name_foreign` FOREIGN KEY (`team_name`) REFERENCES `teams` (`team_name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
