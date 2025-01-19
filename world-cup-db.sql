-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 07, 2023 at 03:17 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `world-cup`
--

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
CREATE TABLE IF NOT EXISTS `players` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `team_id` int DEFAULT NULL,
  `position` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `height` float DEFAULT NULL,
  `weight` int DEFAULT NULL,
  `image` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=879 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `name`, `team_id`, `position`, `height`, `weight`, `image`, `age`) VALUES
(1, 'Ruben Odom (C)', 14, 'First-five', 1.74, 87, 'ruben_odom.png', 29),
(2, 'Ignacius Maleby (C)', 12, 'Center', 1.95, 135, 'ignacius_maleby.png', 24),
(3, 'Farr Lamartine (C)', 15, 'Loosehead-Prop', 1.74, 97, 'farr_lamartine.png', 34),
(5, 'Eldin Issakov', 14, 'Flanker(7)', 1.84, 86, 'eldin_issakov.png', 26),
(6, 'Mordy Linskey (C)', 11, 'Flanker(7)', 1.91, 119, 'mordy_linskey.png', 36),
(7, 'Nestor Duffield', 11, 'Tighthead-Prop', 1.87, 128, 'nestor_duffield.png', 21),
(8, 'Horatio Pirouet (C)', 1, 'Hooker', 1.94, 113, 'horatio_pirouet.png', 28),
(9, 'Rowan Southwood', 18, 'Flanker(7)', 2.01, 121, 'rowan_southwood.png', 24),
(10, 'Roman Huckfield (C)', 17, 'Wing', 1.9, 126, 'roman_huckfield.png', 22),
(11, 'Joel Guerri', 18, 'Lock', 2, 92, 'joel_guerri.png', 21),
(12, 'Base Hunnywell', 12, 'Flanker(7)', 1.74, 126, 'base_hunnywell.png', 36),
(13, 'Addy Tonnesen ', 20, 'Hooker', 1.99, 140, 'addy_tonnesen.png', 35),
(14, 'Mannie Buddleigh', 11, 'Center', 1.95, 95, 'mannie_buddleigh.png', 20),
(15, 'Lindsay Studman', 1, 'Flanker(6)', 1.78, 124, 'lindsay_studman.png', 35),
(16, 'Raleigh Normanville', 17, 'Second-five', 2, 104, 'raleigh_normanville.png', 31),
(17, 'Titus Vasiltsov', 17, 'Flanker(8)', 1.97, 131, 'titus_vasiltsov.png', 29),
(18, 'Ashlin Lassetter', 17, 'Fullback', 1.74, 110, 'ashlin_lassetter.png', 30),
(19, 'Quinton Summerfield', 20, 'First-five', 1.74, 108, 'quinton_summerfield.png', 36),
(20, 'Nikos Mohamed', 18, 'Loosehead-Prop', 1.92, 99, 'nikos_mohamed.png', 31),
(21, 'Aldo Nowlan (C)', 16, 'Tighthead-Prop', 1.87, 133, 'aldo_nowlan.png', 26),
(22, 'Nikos Grahl', 20, 'Halfback', 1.95, 93, 'nikos_grahl.png', 22),
(23, 'Alley Hartigan', 14, 'Hooker', 1.87, 135, 'alley_hartigan.png', 23),
(24, 'Rakuhei Yamashita', 12, 'Wing', 2.01, 110, 'rakuhei_yamashita.png', 33),
(25, 'Vidovic Parks', 1, 'Second-five', 1.82, 134, 'vidovic_parks.png', 22),
(26, 'Leonard Olesen', 11, 'Center', 1.79, 100, 'leonard_olesen.png', 36),
(27, 'Hirsch McCahey', 16, 'First-five', 1.81, 98, 'hirsch_mccahey.png', 30),
(28, 'Richard Mingus', 17, 'Fullback', 1.91, 126, 'richard_mingus.png', 30),
(29, 'Esdras Stranger', 15, 'Second-five', 1.83, 132, 'esdras_stranger.png', 35),
(30, 'Nahum Bowmer', 11, 'Center', 1.8, 133, 'nahum_bowmer.png', 36),
(31, 'Merry Fullom', 14, 'Fullback', 1.72, 88, 'merry_fullom.png', 31),
(32, 'Stanislas Zanioletti (C)', 20, 'Flanker(7)', 1.93, 98, 'stanislas_zanioletti.png', 23),
(33, 'Joaquin Derrington', 15, 'Flanker(7)', 1.79, 91, 'joaquin_derrington.png', 37),
(34, 'Craig Winwood', 18, 'Center', 1.78, 93, 'craig_winwood.png', 38),
(35, 'Palm Inkles', 1, 'Fullback', 1.92, 110, 'palm_inkles.png', 26),
(36, 'Matthiew Dillinton', 11, 'Halfback', 1.95, 123, 'matthiew_dillinton.png', 32),
(37, 'Noland Hext', 17, 'Halfback', 1.85, 130, 'noland_hext.png', 25),
(38, 'Richmond Seegar', 14, 'Tighthead-Prop', 1.92, 115, 'richmond_seegar.png', 25),
(39, 'Conney Hulett', 1, 'Halfback', 1.7, 97, 'conney_hulett.png', 26),
(40, 'Braden Yearn', 20, 'Center', 1.74, 130, 'braden_yearn.png', 31),
(41, 'Ermanno Sottell', 12, 'Flanker(6)', 1.87, 114, 'ermanno_sottell.png', 28),
(42, 'Alaric Quarlis', 17, 'Halfback', 1.81, 138, 'alaric_quarlis.png', 30),
(43, 'Lorens Totaro', 16, 'Second-five', 1.84, 93, 'lorens_totaro.png', 20),
(44, 'Jaime Loughhead (C)', 9, 'Lock', 1.97, 132, 'jaime_loughhead.png', 31),
(45, 'Willi Attow', 1, 'Tighthead-Prop', 1.77, 133, 'willi_attow.png', 28),
(46, 'Tremain Hallgarth', 11, 'Flanker(7)', 1.75, 89, 'tremain_hallgarth.png', 21),
(47, 'Abey Bowne', 17, 'Fullback', 1.85, 117, 'abey_bowne.png', 38),
(48, 'Shaun Pay', 15, 'Flanker(8)', 2.01, 115, 'shaun_pay.png', 34),
(49, 'Bob McFade', 15, 'First-five', 1.75, 135, 'bob_mcfade.png', 27),
(50, 'Clim Gooday', 17, 'Tighthead-Prop', 1.76, 119, 'clim_gooday.png', 32),
(51, 'Jud Phlipon', 9, 'Flanker(7)', 1.99, 101, 'jud_phlipon.png', 23),
(52, 'Atsushi Sakate', 12, 'Lock', 2.03, 107, 'atsushi_sakate.png', 36),
(53, 'Marmaduke Padwick', 11, 'Wing', 1.81, 96, 'marmaduke_padwick.png', 36),
(54, 'Ware Wicks', 14, 'Flanker(6)', 2, 107, 'ware_wicks.png', 36),
(55, 'Krishna Sawdon', 15, 'Wing', 1.78, 96, 'krishna_sawdon.png', 21),
(56, 'Demetris Blinckhorne', 14, 'Flanker(8)', 1.88, 98, 'demetris_blinckhorne.png', 32),
(57, 'Shane Widdecombe', 9, 'Wing', 1.81, 95, 'shane_widdecombe.png', 29),
(58, 'Reg Archambault', 14, 'Flanker(6)', 1.87, 120, 'reg_archambault.png', 29),
(59, 'Abram Zanolli', 20, 'Fullback', 1.89, 90, 'abram_zanolli.png', 37),
(60, 'Yukio Morikawa', 12, 'Loosehead-Prop', 1.73, 85, 'yukio_morikawa.png', 28),
(61, 'Mar Dongall', 9, 'Hooker', 1.72, 111, 'mar_dongall.png', 24),
(62, 'Elia Gehring', 18, 'Second-five', 1.78, 107, 'elia_gehring.png', 27),
(63, 'Adolph Wark', 15, 'Center', 1.96, 90, 'adolph_wark.png', 33),
(64, 'Colver Venners', 15, 'Flanker(8)', 1.99, 99, 'colver_venners.png', 28),
(65, 'Takayasu Tsuji', 12, 'Hooker', 1.78, 116, 'takayasu_tsuji.png', 38),
(66, 'Inglis Olczak', 20, 'Lock', 1.88, 105, 'inglis_olczak.png', 35),
(67, 'Francklin Edgerley', 11, 'Center', 1.94, 101, 'francklin_edgerley.png', 31),
(68, 'York Estabrook', 11, 'Halfback', 1.92, 136, 'york_estabrook.png', 25),
(69, 'Isaac Pleace', 9, 'Flanker(8)', 1.81, 94, 'isaac_pleace.png', 25),
(70, 'Kev Cleal', 1, 'Center', 1.83, 128, 'kev_cleal.png', 26),
(71, 'Etienne Simnell', 18, 'Tighthead-Prop', 2, 88, 'etienne_simnell.png', 24),
(72, 'Amby Mohamed', 20, 'Tighthead-Prop', 2.01, 112, 'amby_mohamed.png', 38),
(73, 'Prinz Habergham', 1, 'Hooker', 1.88, 120, 'prinz_habergham.png', 29),
(74, 'Arvie Bartoszewski', 15, 'Tighthead-Prop', 2, 112, 'arvie_bartoszewski.png', 22),
(75, 'Ambros Dare', 17, 'Loosehead-Prop', 1.89, 106, 'ambros_dare.png', 23),
(76, 'Taber Manssuer', 9, 'Fullback', 1.94, 89, 'taber_manssuer.png', 20),
(77, 'Shepperd Blatherwick', 17, 'Flanker(6)', 1.74, 137, 'shepperd_blatherwick.png', 38),
(78, 'Nathanial Hylands', 9, 'Center', 1.71, 97, 'nathanial_hylands.png', 22),
(79, 'Haskell Casebourne', 11, 'Wing', 1.76, 96, 'haskell_casebourne.png', 31),
(80, 'Ephrayim Veare', 17, 'Wing', 1.99, 104, 'ephrayim_veare.png', 30),
(81, 'Jae Thwaites', 16, 'First-five', 1.92, 114, 'jae_thwaites.png', 30),
(82, 'Bearnard Gerdes', 17, 'Tighthead-Prop', 1.94, 115, 'bearnard_gerdes.png', 21),
(83, 'Thorvald Kelleher', 17, 'Center', 1.82, 95, 'thorvald_kelleher.png', 21),
(84, 'Yehudi Lesslie', 17, 'Halfback', 1.77, 100, 'yehudi_lesslie.png', 35),
(85, 'Yanaton Glasscock', 14, 'Wing', 1.83, 124, 'yanaton_glasscock.png', 20),
(86, 'Mycah Alelsandrowicz', 18, 'First-five', 1.92, 92, 'mycah_alelsandrowicz.png', 28),
(87, 'Ivan Hathaway', 16, 'Center', 1.82, 138, 'ivan_hathaway.png', 28),
(88, 'Ollie Dalby', 17, 'Flanker(8)', 1.87, 88, 'ollie_dalby.png', 20),
(89, 'Orlando Melton', 9, 'First-five', 1.71, 138, 'orlando_melton.png', 34),
(90, 'Thaddeus Walisiak', 14, 'Flanker(7)', 1.99, 130, 'thaddeus_walisiak.png', 22),
(91, 'Tomkin Bulpitt', 15, 'First-five', 1.95, 129, 'tomkin_bulpitt.png', 32),
(92, 'Rowan Lacrouts', 16, 'Loosehead-Prop', 1.9, 87, 'rowan_lacrouts.png', 30),
(93, 'Abeu Sebring', 1, 'Second-five', 1.75, 93, 'abeu_sebring.png', 26),
(94, 'Sander Letchmore', 18, 'Flanker(6)', 1.8, 93, 'sander_letchmore.png', 21),
(95, 'Isadore Winder', 9, 'Center', 1.93, 110, 'isadore_winder.png', 25),
(96, 'Mayor Sharratt', 9, 'Lock', 1.99, 102, 'mayor_sharratt.png', 20),
(97, 'Homerus Meeny', 11, 'Fullback', 1.83, 127, 'homerus_meeny.png', 20),
(98, 'Ingelbert Threadgould', 1, 'Halfback', 1.99, 122, 'ingelbert_threadgould.png', 37),
(99, 'Mendie Bellini', 11, 'Halfback', 1.78, 99, 'mendie_bellini.png', 33),
(100, 'Jessey Copeman', 20, 'Flanker(6)', 1.85, 98, 'jessey_copeman.png', 23),
(101, 'Saul Gayton', 12, 'Flanker(7)', 1.74, 114, 'saul_gayton.png', 37),
(102, 'Hoyt Jensen', 17, 'Flanker(8)', 2, 100, 'hoyt_jensen.png', 33),
(103, 'Jason Cassell', 17, 'First-five', 2.01, 108, 'jason_cassell.png', 38),
(104, 'Bartolemo Tarbox', 15, 'Halfback', 1.94, 97, 'bartolemo_tarbox.png', 37),
(105, 'Cleon Dudman', 11, 'Fullback', 2, 94, 'cleon_dudman.png', 29),
(106, 'Der Markey', 15, 'Halfback', 1.93, 88, 'der_markey.png', 23),
(107, 'Thorn Fateley', 1, 'Fullback', 1.89, 96, 'thorn_fateley.png', 23),
(108, 'Teodoro Fruchter', 20, 'Wing', 1.99, 109, 'teodoro_fruchter.png', 22),
(109, 'Maurizio Hothersall', 14, 'Hooker', 1.99, 117, 'maurizio_hothersall.png', 30),
(110, 'Chauncey Bowcock', 1, 'Second-five', 1.71, 132, 'chauncey_bowcock.png', 35),
(111, 'Bartolomeo Keaves', 16, 'Halfback', 1.82, 129, 'bartolomeo_keaves.png', 25),
(112, 'Corby Penfold', 14, 'Tighthead-Prop', 1.92, 101, 'corby_penfold.png', 26),
(113, 'Thornie Oldham', 14, 'Center', 1.82, 112, 'thornie_oldham.png', 32),
(114, 'Nev Been', 14, 'Flanker(6)', 1.96, 124, 'nev_been.png', 28),
(115, 'Randi Brunning', 9, 'First-five', 1.85, 128, 'randi_brunning.png', 21),
(116, 'Gerry Agutter', 14, 'Hooker', 1.9, 87, 'gerry_agutter.png', 29),
(117, 'Sebastiano Condit', 15, 'Halfback', 1.93, 107, 'sebastiano_condit.png', 32),
(118, 'Dudley Bloxholm', 15, 'Tighthead-Prop', 1.86, 128, 'dudley_bloxholm.png', 38),
(119, 'Eamon Jasper', 16, 'Flanker(7)', 1.74, 134, 'eamon_jasper.png', 26),
(120, 'Jarrett Wathell', 11, 'First-five', 2.01, 127, 'jarrett_wathell.png', 23),
(121, 'Eamon Jasper', 9, 'Flanker(6)', 1.83, 136, 'eamon_jasper.png', 33),
(122, 'Isidor Dovidian', 18, 'Center', 1.8, 103, 'isidor_dovidian.png', 37),
(123, 'Washington Philipps', 20, 'Flanker(8)', 1.72, 106, 'washington_philipps.png', 22),
(124, 'Jordan Paten', 11, 'Tighthead-Prop', 1.74, 126, 'jordan_paten.png', 29),
(125, 'Jesus Wyllie', 16, 'Tighthead-Prop', 2.02, 103, 'jesus_wyllie.png', 24),
(126, 'Benjamen Whittaker', 16, 'Halfback', 1.78, 106, 'benjamen_whittaker.png', 36),
(127, 'Fabian Phethean', 11, 'Second-five', 1.86, 97, 'fabian_phethean.png', 24),
(128, 'Brendis Remirez', 11, 'Lock', 1.96, 127, 'brendis_remirez.png', 38),
(131, 'Jamal Lamyman', 9, 'Loosehead-Prop', 1.71, 108, 'jamal_lamyman.png', 35),
(132, 'Ryuji Noguchi', 12, 'First-five', 1.71, 116, 'ryuji_noguchi.png', 26),
(133, 'Cesare MacIlory', 18, 'Lock', 1.87, 89, 'cesare_macilory.png', 25),
(134, 'Dwight Anscott', 15, 'Fullback', 1.76, 102, 'dwight_anscott.png', 38),
(135, 'Dave Risley', 15, 'Lock', 2, 136, 'dave_risley.png', 32),
(139, 'Ambrosius Creser', 14, 'Flanker(6)', 1.83, 119, 'ambrosius_creser.png', 32),
(140, 'Marmaduke Padwick', 9, 'Second-five', 1.77, 87, 'marmaduke_padwick.png', 30),
(141, 'Evelyn Swin', 1, 'Flanker(6)', 1.85, 103, 'evelyn_swin.png', 37),
(142, 'Saul Eynald', 18, 'Center', 1.76, 121, 'saul_eynald.png', 38),
(143, 'Fielding Parsonson', 20, 'Halfback', 1.97, 98, 'fielding_parsonson.png', 31),
(144, 'Harwilll Sammes', 15, 'Flanker(6)', 1.71, 139, 'harwilll_sammes.png', 34),
(145, 'Gifford Storr', 18, 'First-five', 1.97, 90, 'gifford_storr.png', 28),
(146, 'Monte Howden', 14, 'Second-five', 1.79, 110, 'monte_howden.png', 25),
(148, 'Hermie Ziebart', 1, 'Flanker(6)', 1.9, 118, 'hermie_ziebart.png', 36),
(149, 'Reese Gabb', 16, 'Second-five', 1.72, 131, 'reese_gabb.png', 34),
(151, 'Sheffy Revelle', 18, 'Flanker(6)', 1.86, 85, 'sheffy_revelle.png', 30),
(152, 'Cobby Holttom', 1, 'Halfback', 1.9, 111, 'cobby_holttom.png', 33),
(154, 'Faulua Makisi', 12, 'Second-five', 1.81, 140, 'faulua_makisi.png', 24),
(155, 'Taylor Jacketts', 16, 'Tighthead-Prop', 1.98, 102, 'taylor_jacketts.png', 31),
(156, 'Adolph Wark.png', 9, 'Flanker(7)', 1.86, 126, 'adolph_wark.png', 20),
(157, 'Delmer Lubman', 1, 'Flanker(7)', 1.95, 140, 'delmer_lubman.png', 23),
(158, 'Wilburt Mitchiner', 14, 'Center', 1.86, 117, 'wilburt_mitchiner.png', 33),
(159, 'Masato Furukawa', 12, 'Wing', 1.86, 96, 'masato_furukawa.png', 23),
(160, 'Sal Lathaye', 12, 'Second-five', 1.95, 121, 'sal_lathaye.png', 34),
(161, 'Craig Winwood', 9, 'Fullback', 1.84, 94, 'craig_winwood.png', 27),
(162, 'Donavon Lark', 16, 'Hooker', 1.73, 104, 'donavon_lark.png', 27),
(168, 'Normand Gerant', 1, 'Flanker(6)', 1.83, 89, 'normand_gerant.png', 31),
(171, 'Gale Sproson', 1, 'Loosehead-Prop', 1.8, 132, 'gale_sproson.png', 28),
(172, 'Schuyler Vanyushin', 20, 'Second-five', 1.93, 125, 'schuyler_vanyushin.png', 31),
(173, 'Kinny Haggard', 1, 'First-five', 1.88, 116, 'kinny_haggard.png', 37),
(175, 'Faulkner Aldritt', 20, 'First-five', 1.95, 108, 'faulkner_aldritt.png', 20),
(177, 'Craggie Bullard', 1, 'Center', 1.89, 96, 'craggie_bullard.png', 25),
(178, 'Gill Ronisch', 1, 'Lock', 1.71, 93, 'gill_ronisch.png', 20),
(179, 'Shay Hebblethwaite', 1, 'Center', 1.87, 137, 'shay_hebblethwaite.png', 34),
(180, 'Vlad Guerrazzi', 18, 'First-five', 1.95, 126, 'vlad_guerrazzi.png', 25),
(181, 'Travis Brumhead', 1, 'Hooker', 1.84, 128, 'travis_brumhead.png', 25),
(185, 'Zebulen Smithin', 20, 'Lock', 1.74, 139, 'zebulen_smithin.png', 22),
(189, 'Giraud Ferguson', 16, 'Loosehead-Prop', 1.96, 125, 'giraud_ferguson.png', 30),
(191, 'Yusuke Kajimura', 12, 'Hooker', 1.8, 99, 'yusuke_kajimura.png', 30),
(192, 'Yusuke Kizu', 12, 'Tighthead-Prop', 1.72, 127, 'yusuke_kizu.png', 28),
(193, 'Harv Crichley', 20, 'Hooker', 1.76, 99, 'harv_crichley.png', 37),
(194, 'Meredeth Muckley', 18, 'Second-five', 1.92, 104, 'meredeth_muckley.png', 22),
(197, 'Stanford Bend', 9, 'Flanker(8)', 1.76, 101, 'stanford_bend.png', 37),
(198, 'Gustave Mattiazzi', 16, 'Flanker(7)', 1.93, 87, 'gustave_mattiazzi.png', 30),
(200, 'Skipper McGaughey', 16, 'Loosehead-Prop', 1.78, 136, 'skipper_mcgaughey.png', 27),
(201, 'Theobald Shackleton', 16, 'First-five', 2, 101, 'theobald_shackleton.png', 32),
(202, 'Del McCarron', 9, 'Second-five', 1.95, 135, 'del_mccarron.png', 27),
(203, 'Sal Lathaye', 12, 'Flanker(6)', 1.88, 94, 'sal_lathaye.png', 37),
(204, 'Derick Koppes', 20, 'Loosehead-Prop', 1.9, 97, 'derick_koppes.png', 31),
(205, 'Ev Scholte', 1, 'Center', 1.72, 134, 'ev_scholte.png', 29),
(207, 'Shogo Nakanoh', 12, 'Second-five', 1.82, 109, 'shogo_nakano.png', 37),
(208, 'Jules Janic', 18, 'Wing', 1.92, 132, 'jules_janic.png', 37),
(211, 'Thomas Marcombe', 1, 'Second-five', 1.89, 118, 'thomas_marcombe.png', 36),
(214, 'Osmund Hue', 9, 'Hooker', 1.92, 105, 'osmund_hue.png', 27),
(215, 'Daiki Nakajima', 12, 'Halfback', 1.98, 95, 'daiki_nakajima.png', 27),
(216, 'Myles Elfe', 18, 'Second-five', 1.81, 92, 'myles_elfe.png', 37),
(222, 'Elsworth Glancey', 16, 'Halfback', 1.97, 118, 'elsworth_glancey.png', 32),
(228, 'Ignacius Maleby', 12, 'Center', 1.95, 132, 'ignacius_maleby.png', 27),
(234, 'Kenyon Pattini', 18, 'Flanker(6)', 1.77, 104, 'kenyon_pattini.png', 36),
(240, 'Brook Turfrey', 1, 'Second-five', 1.72, 132, 'brook_turfrey.png', 37),
(241, 'Robb Bush', 9, 'Loosehead-Prop', 1.96, 92, 'robb_bush.png', 23),
(261, 'Saleem Dabels', 1, 'Tighthead-Prop', 1.97, 100, 'saleem_dabels.png', 34),
(361, 'Shaun Dodamead', 9, 'Tighthead-Prop', 2.01, 85, 'shaun_dodamead.png', 30),
(363, 'Benedict Blaby', 17, 'Hooker', 1.93, 113, 'benedict_blaby.png', 29),
(392, 'Hershel Delgadillo', 9, 'First-five', 1.91, 99, 'hershel_delgadillo.png', 27),
(420, 'Yorgos Gutman', 9, 'Lock', 1.71, 85, 'yorgos_gutman.png', 23),
(425, 'Buddy Liddington', 1, 'First-five', 1.8, 101, 'buddy_liddington.png', 20),
(427, 'Ruben Odom (C)', 3, 'First-five', 1.74, 87, 'ruben_odom.png', 29),
(428, 'Ignacius Maleby (C)', 7, 'Center', 1.9, 136, 'ignacius_maleby.png', 23),
(429, 'Farr Lamartine (C)', 2, 'Loosehead-Prop', 1.74, 97, 'farr_lamartine.png', 34),
(430, 'Igor Pinnock', 2, 'Lock', 1.91, 116, 'igor_pinnock.png', 36),
(431, 'Eldin Issakov', 3, 'Flanker(7)', 1.84, 86, 'eldin_issakov.png', 26),
(432, 'Mordy Linskey (C)', 4, 'Flanker(7)', 1.91, 119, 'mordy_linskey.png', 36),
(433, 'Nestor Duffield', 4, 'Tighthead-Prop', 1.87, 128, 'nestor_duffield.png', 21),
(434, 'Horatio Pirouet (C)', 6, 'Hooker', 1.94, 113, 'horatio_pirouet.png', 28),
(435, 'Rowan Southwood (C)', 5, 'Flanker(7)', 2.01, 121, 'rowan_southwood.png', 24),
(436, 'Roman Huckfield (C)', 8, 'Wing', 1.9, 126, 'roman_huckfield.png', 22),
(437, 'Joel Guerri', 5, 'Lock', 2, 92, 'joel_guerri.png', 21),
(438, 'Base Hunnywell', 7, 'Flanker(7)', 1.74, 126, 'base_hunnywell.png', 36),
(439, 'Addy Tonnesen (C)', 13, 'Hooker', 1.99, 140, 'addy_tonnesen.png', 35),
(440, 'Mannie Buddleigh', 4, 'Center', 1.95, 95, 'mannie_buddleigh.png', 20),
(441, 'Lindsay Studman', 6, 'Flanker(6)', 1.78, 124, 'lindsay_studman.png', 35),
(442, 'Raleigh Normanville', 8, 'Second-five', 2, 104, 'raleigh_normanville.png', 31),
(443, 'Titus Vasiltsov', 8, 'Flanker(8)', 1.97, 131, 'titus_vasiltsov.png', 29),
(444, 'Ashlin Lassetter', 8, 'Fullback', 1.74, 110, 'ashlin_lassetter.png', 30),
(445, 'Quinton Summerfield', 13, 'First-five', 1.74, 108, 'quinton_summerfield.png', 36),
(446, 'Nikos Mohamed', 5, 'Loosehead-Prop', 1.92, 99, 'nikos_mohamed.png', 31),
(447, 'Aldo Nowlan (C)', 10, 'Tighthead-Prop', 1.87, 133, 'aldo_nowlan.png', 26),
(448, 'Nikos Grahl', 13, 'Halfback', 1.95, 93, 'nikos_grahl.png', 22),
(449, 'Alley Hartigan', 3, 'Hooker', 1.87, 135, 'alley_hartigan.png', 23),
(450, 'Evelin Ruane', 7, 'Wing', 2.01, 110, 'evelin_ruane.png', 33),
(451, 'Vidovic Parks', 6, 'Second-five', 1.82, 134, 'vidovic_parks.png', 22),
(452, 'Leonard Olesen', 4, 'Center', 1.79, 100, 'leonard_olesen.png', 36),
(453, 'Hirsch McCahey', 10, 'First-five', 1.81, 98, 'hirsch_mccahey.png', 30),
(454, 'Richard Mingus', 8, 'Fullback', 1.91, 126, 'richard_mingus.png', 30),
(455, 'Esdras Stranger', 2, 'Second-five', 1.83, 132, 'esdras_stranger.png', 35),
(457, 'Merry Fullom', 3, 'Fullback', 1.72, 88, 'merry_fullom.png', 31),
(458, 'Stanislas Zanioletti', 13, 'Flanker(7)', 1.93, 98, 'stanislas_zanioletti.png', 23),
(459, 'Joaquin Derrington', 2, 'Flanker(7)', 1.79, 91, 'joaquin_derrington.png', 37),
(460, 'Craig Winwood', 5, 'Center', 1.78, 93, 'craig_winwood.png', 38),
(461, 'Palm Inkles', 6, 'Fullback', 1.92, 110, 'palm_inkles.png', 26),
(462, 'Matthiew Dillinton', 4, 'Halfback', 1.95, 123, 'matthiew_dillinton.png', 32),
(463, 'Noland Hext', 8, 'Halfback', 1.85, 130, 'noland_hext.png', 25),
(464, 'Jefferson Baddiley', 13, 'Flanker(7)', 1.92, 134, 'jefferson_baddiley.png', 37),
(465, 'Richmond Seegar', 3, 'Tighthead-Prop', 1.92, 115, 'richmond_seegar.png', 25),
(467, 'Braden Yearn', 13, 'Center', 1.74, 130, 'braden_yearn.png', 31),
(468, 'Ermanno Sottell', 7, 'Flanker(6)', 1.87, 114, 'ermanno_sottell.png', 28),
(469, 'Alaric Quarlis', 8, 'Halfback', 1.81, 138, 'alaric_quarlis.png', 30),
(470, 'Lorens Totaro', 10, 'Second-five', 1.84, 93, 'lorens_totaro.png', 20),
(472, 'Willi Attow', 6, 'Tighthead-Prop', 1.77, 133, 'willi_attow.png', 28),
(473, 'Tremain Hallgarth', 4, 'Flanker(7)', 1.75, 89, 'tremain_hallgarth.png', 21),
(474, 'Abey Bowne', 8, 'Fullback', 1.85, 117, 'abey_bowne.png', 38),
(475, 'Shaun Pay', 2, 'Flanker(8)', 2.01, 115, 'shaun_pay.png', 34),
(476, 'Bob McFade', 2, 'First-five', 1.75, 135, 'bob_mcfade.png', 27),
(477, 'Clim Gooday', 8, 'Tighthead-Prop', 1.76, 119, 'clim_gooday.png', 32),
(479, 'Ingram Fernan', 7, 'Lock', 1.93, 107, 'ingram_fernan.png', 36),
(480, 'Marmaduke Padwick', 4, 'Wing', 1.81, 96, 'marmaduke_padwick.png', 36),
(481, 'Ware Wicks', 3, 'Flanker(6)', 2, 107, 'ware_wicks.png', 36),
(482, 'Krishna Sawdon', 2, 'Wing', 1.78, 96, 'krishna_sawdon.png', 21),
(483, 'Demetris Blinckhorne', 3, 'Flanker(8)', 1.88, 98, 'demetris_blinckhorne.png', 32),
(485, 'Reg Archambault', 3, 'Flanker(6)', 1.87, 120, 'reg_archambault.png', 29),
(486, 'Lazar Brookshaw', 4, 'Loosehead-Prop', 1.74, 118, 'lazar_brookshaw.png', 21),
(487, 'Abram Zanolli', 13, 'Fullback', 1.89, 90, 'abram_zanolli.png', 37),
(488, 'Maurie Spellman', 7, 'Loosehead-Prop', 1.73, 85, 'maurie_spellman.png', 28),
(490, 'Elia Gehring', 5, 'Second-five', 1.78, 107, 'elia_gehring.png', 27),
(491, 'Adolph Wark', 2, 'Center', 1.96, 90, 'adolph_wark.png', 33),
(492, 'Colver Venners', 2, 'Flanker(8)', 1.99, 99, 'colver_venners.png', 28),
(493, 'Roarke Whymark', 7, 'Hooker', 1.78, 116, 'roarke_whymark.png', 38),
(494, 'Inglis Olczak', 13, 'Lock', 1.88, 105, 'inglis_olczak.png', 35),
(495, 'Francklin Edgerley', 4, 'Center', 1.94, 101, 'francklin_edgerley.png', 31),
(496, 'York Estabrook', 4, 'Halfback', 1.92, 136, 'york_estabrook.png', 25),
(498, 'Kev Cleal', 6, 'Center', 1.83, 128, 'kev_cleal.png', 26),
(499, 'Etienne Simnell', 5, 'Tighthead-Prop', 2, 88, 'etienne_simnell.png', 24),
(500, 'Amby Mohamed', 13, 'Tighthead-Prop', 2.01, 112, 'amby_mohamed.png', 38),
(501, 'Prinz Habergham', 6, 'Hooker', 1.88, 120, 'prinz_habergham.png', 29),
(502, 'Arvie Bartoszewski', 2, 'Tighthead-Prop', 2, 112, 'arvie_bartoszewski.png', 22),
(503, 'Ambros Dare', 8, 'Loosehead-Prop', 1.89, 106, 'ambros_dare.png', 23),
(505, 'Shepperd Blatherwick', 8, 'Flanker(6)', 1.74, 137, 'shepperd_blatherwick.png', 38),
(507, 'Haskell Casebourne', 4, 'Wing', 1.76, 96, 'haskell_casebourne.png', 31),
(508, 'Ephrayim Veare', 8, 'Wing', 1.99, 104, 'ephrayim_veare.png', 30),
(509, 'Jae Thwaites', 10, 'First-five', 1.92, 114, 'jae_thwaites.png', 30),
(510, 'Bearnard Gerdes', 8, 'Tighthead-Prop', 1.94, 115, 'bearnard_gerdes.png', 21),
(511, 'Thorvald Kelleher', 8, 'Center', 1.82, 95, 'thorvald_kelleher.png', 21),
(513, 'Yanaton Glasscock', 3, 'Wing', 1.83, 124, 'yanaton_glasscock.png', 20),
(514, 'Mycah Alelsandrowicz', 5, 'First-five', 1.92, 92, 'mycah_alelsandrowicz.png', 28),
(515, 'Ivan Hathaway', 10, 'Center', 1.82, 138, 'ivan_hathaway.png', 28),
(516, 'Ollie Dalby', 8, 'Flanker(8)', 1.87, 88, 'ollie_dalby.png', 20),
(518, 'Thaddeus Walisiak', 3, 'Flanker(7)', 1.99, 130, 'thaddeus_walisiak.png', 22),
(519, 'Tomkin Bulpitt', 2, 'First-five', 1.95, 129, 'tomkin_bulpitt.png', 32),
(520, 'Rowan Lacrouts', 10, 'Loosehead-Prop', 1.9, 87, 'rowan_lacrouts.png', 30),
(521, 'Abeu Sebring', 6, 'Second-five', 1.75, 93, 'abeu_sebring.png', 26),
(522, 'Sander Letchmore', 5, 'Flanker(6)', 1.8, 93, 'sander_letchmore.png', 21),
(525, 'Homerus Meeny', 4, 'Fullback', 1.83, 127, 'homerus_meeny.png', 20),
(526, 'Ingelbert Threadgould', 6, 'Halfback', 1.99, 122, 'ingelbert_threadgould.png', 37),
(527, 'Mendie Bellini', 4, 'Halfback', 1.78, 99, 'mendie_bellini.png', 33),
(528, 'Jessey Copeman', 13, 'Flanker(6)', 1.85, 98, 'jessey_copeman.png', 23),
(529, 'Saul Gayton', 7, 'Flanker(7)', 1.74, 114, 'saul_gayton.png', 37),
(530, 'Hoyt Jensen', 8, 'Flanker(8)', 2, 100, 'hoyt_jensen.png', 33),
(531, 'Jason Cassell', 8, 'First-five', 2.01, 108, 'jason_cassell.png', 38),
(532, 'Bartolemo Tarbox', 2, 'Halfback', 1.94, 97, 'bartolemo_tarbox.png', 37),
(533, 'Cleon Dudman', 4, 'Fullback', 2, 94, 'cleon_dudman.png', 29),
(534, 'Der Markey', 2, 'Halfback', 1.93, 88, 'der_markey.png', 23),
(535, 'Thorn Fateley', 6, 'Fullback', 1.89, 96, 'thorn_fateley.png', 23),
(536, 'Teodoro Fruchter', 13, 'Wing', 1.99, 109, 'teodoro_fruchter.png', 22),
(537, 'Maurizio Hothersall', 3, 'Hooker', 1.99, 117, 'maurizio_hothersall.png', 30),
(538, 'Chauncey Bowcock', 6, 'Second-five', 1.71, 132, 'chauncey_bowcock.png', 35),
(539, 'Bartolomeo Keaves', 10, 'Halfback', 1.82, 129, 'bartolomeo_keaves.png', 25),
(540, 'Corby Penfold', 3, 'Tighthead-Prop', 1.92, 101, 'corby_penfold.png', 26),
(541, 'Thornie Oldham', 3, 'Center', 1.82, 112, 'thornie_oldham.png', 32),
(542, 'Nev Been', 3, 'Flanker(6)', 1.96, 124, 'nev_been.png', 28),
(544, 'Gerry Agutter', 3, 'Hooker', 1.9, 87, 'gerry_agutter.png', 29),
(545, 'Sebastiano Condit', 2, 'Halfback', 1.93, 107, 'sebastiano_condit.png', 32),
(546, 'Dudley Bloxholm', 2, 'Tighthead-Prop', 1.86, 128, 'dudley_bloxholm.png', 38),
(547, 'Eamon Jasper', 10, 'Flanker(7)', 1.74, 134, 'eamon_jasper.png', 26),
(548, 'Jarrett Wathell', 4, 'First-five', 2.01, 127, 'jarrett_wathell.png', 23),
(550, 'Isidor Dovidian', 5, 'Center', 1.8, 103, 'isidor_dovidian.png', 37),
(551, 'Washington Philipps', 13, 'Flanker(8)', 1.72, 106, 'washington_philipps.png', 22),
(552, 'Jordan Paten', 4, 'Tighthead-Prop', 1.74, 126, 'jordan_paten.png', 29),
(553, 'Jesus Wyllie', 10, 'Tighthead-Prop', 2.02, 103, 'jesus_wyllie.png', 24),
(554, 'Benjamen Whittaker', 10, 'Halfback', 1.78, 106, 'benjamen_whittaker.png', 36),
(555, 'Fabian Phethean', 4, 'Second-five', 1.86, 97, 'fabian_phethean.png', 24),
(560, 'Cory Kitchingman', 7, 'First-five', 1.71, 116, 'cory_kitchingman.png', 26),
(561, 'Cesare MacIlory', 5, 'Lock', 1.87, 89, 'cesare_macilory.png', 25),
(562, 'Dwight Anscott', 2, 'Fullback', 1.76, 102, 'dwight_anscott.png', 38),
(563, 'Dave Risley', 2, 'Lock', 2, 136, 'dave_risley.png', 32),
(567, 'Ambrosius Creser', 3, 'Flanker(6)', 1.83, 119, 'ambrosius_creser.png', 32),
(569, 'Evelyn Swin', 6, 'Flanker(6)', 1.85, 103, 'evelyn_swin.png', 37),
(570, 'Saul Eynald', 5, 'Center', 1.76, 121, 'saul_eynald.png', 38),
(571, 'Fielding Parsonson', 13, 'Halfback', 1.97, 98, 'fielding_parsonson.png', 31),
(572, 'Harwilll Sammes', 2, 'Flanker(6)', 1.71, 139, 'harwilll_sammes.png', 34),
(573, 'Gifford Storr', 5, 'First-five', 1.97, 90, 'gifford_storr.png', 28),
(574, 'Monte Howden', 3, 'Second-five', 1.79, 110, 'monte_howden.png', 25),
(576, 'Hermie Ziebart', 6, 'Flanker(6)', 1.9, 118, 'hermie_ziebart.png', 36),
(577, 'Reese Gabb', 10, 'Second-five', 1.72, 131, 'reese_gabb.png', 34),
(579, 'Sheffy Revelle', 5, 'Flanker(6)', 1.86, 85, 'sheffy_revelle.png', 30),
(580, 'Cobby Holttom', 6, 'Halfback', 1.9, 111, 'cobby_holttom.png', 33),
(582, 'Cleve Cocks', 7, 'Second-five', 1.81, 140, 'cleve_cocks.png', 24),
(583, 'Taylor Jacketts', 10, 'Tighthead-Prop', 1.98, 102, 'taylor_jacketts.png', 31),
(585, 'Delmer Lubman', 6, 'Flanker(7)', 1.95, 140, 'delmer_lubman.png', 23),
(586, 'Wilburt Mitchiner', 3, 'Center', 1.86, 117, 'wilburt_mitchiner.png', 33),
(587, 'Claus Burrow', 7, 'Wing', 1.86, 96, 'claus_burrow.png', 23),
(588, 'Beale Varlow', 7, 'Second-five', 1.95, 121, 'beale_varlow.png', 34),
(590, 'Donavon Lark', 10, 'Hooker', 1.73, 104, 'donavon_lark.png', 27),
(596, 'Normand Gerant', 6, 'Flanker(6)', 1.83, 89, 'normand_gerant.png', 31),
(599, 'Gale Sproson', 6, 'Loosehead-Prop', 1.8, 132, 'gale_sproson.png', 28),
(600, 'Schuyler Vanyushin', 13, 'Second-five', 1.93, 125, 'schuyler_vanyushin.png', 31),
(603, 'Faulkner Aldritt', 13, 'First-five', 1.95, 108, 'faulkner_aldritt.png', 20),
(608, 'Vlad Guerrazzi', 5, 'First-five', 1.95, 126, 'vlad_guerrazzi.png', 25),
(613, 'Zebulen Smithin', 13, 'Lock', 1.74, 139, 'zebulen_smithin.png', 22),
(617, 'Giraud Ferguson', 10, 'Loosehead-Prop', 1.96, 125, 'giraud_ferguson.png', 30),
(619, 'Lyle Gisby', 7, 'Hooker', 1.8, 99, 'lyle_gisby.png', 30),
(620, 'Augusto Mation', 7, 'Tighthead-Prop', 1.72, 127, 'augusto_mation.png', 28),
(621, 'Harv Crichley', 13, 'Hooker', 1.76, 99, 'harv_crichley.png', 37),
(622, 'Meredeth Muckley', 5, 'Second-five', 1.92, 104, 'meredeth_muckley.png', 22),
(626, 'Gustave Mattiazzi', 10, 'Flanker(7)', 1.93, 87, 'gustave_mattiazzi.png', 30),
(628, 'Skipper McGaughey', 10, 'Loosehead-Prop', 1.78, 136, 'skipper_mcgaughey.png', 27),
(629, 'Theobald Shackleton', 10, 'First-five', 2, 101, 'theobald_shackleton.png', 32),
(631, 'Sal Lathaye', 7, 'Flanker(6)', 1.88, 94, 'sal_lathaye.png', 37),
(635, 'Hugues Mattusevich', 7, 'Second-five', 1.82, 109, 'hugues_mattusevich.png', 37),
(636, 'Jules Janic', 5, 'Wing', 1.92, 132, 'jules_janic.png', 37),
(643, 'Reed McKeachie', 7, 'Halfback', 1.98, 95, 'reed_mckeachie.png', 27),
(644, 'Myles Elfe', 5, 'Second-five', 1.81, 92, 'myles_elfe.png', 37),
(650, 'Elsworth Glancey', 10, 'Halfback', 1.97, 118, 'elsworth_glancey.png', 32),
(656, 'Sigfried Wikey', 7, 'Center', 1.95, 132, 'sigfried_wikey.png', 27),
(662, 'Kenyon Pattini', 5, 'Flanker(6)', 1.77, 104, 'kenyon_pattini.png', 36),
(839, 'Ruben Odom (C)', 19, 'First-five', 1.74, 87, 'ruben_odom.png', 29),
(840, 'Eldin Issakov', 19, 'Flanker(7)', 1.84, 86, 'eldin_issakov.png', 26),
(842, 'Alley Hartigan', 19, 'Hooker', 1.87, 135, 'alley_hartigan.png', 23),
(844, 'Merry Fullom', 19, 'Fullback', 1.72, 88, 'merry_fullom.png', 31),
(846, 'Richmond Seegar', 19, 'Tighthead-Prop', 1.92, 115, 'richmond_seegar.png', 25),
(848, 'Ware Wicks', 19, 'Flanker(6)', 2, 107, 'ware_wicks.png', 36),
(850, 'Demetris Blinckhorne', 19, 'Flanker(8)', 1.88, 98, 'demetris_blinckhorne.png', 32),
(852, 'Reg Archambault', 19, 'Flanker(6)', 1.87, 120, 'reg_archambault.png', 29),
(854, 'Yanaton Glasscock', 19, 'Wing', 1.83, 124, 'yanaton_glasscock.png', 20),
(856, 'Thaddeus Walisiak', 19, 'Flanker(7)', 1.99, 130, 'thaddeus_walisiak.png', 22),
(858, 'Maurizio Hothersall', 19, 'Hooker', 1.99, 117, 'maurizio_hothersall.png', 30),
(860, 'Corby Penfold', 19, 'Tighthead-Prop', 1.92, 101, 'corby_penfold.png', 26),
(862, 'Thornie Oldham', 19, 'Center', 1.82, 112, 'thornie_oldham.png', 32),
(864, 'Nev Been', 19, 'Flanker(6)', 1.96, 124, 'nev_been.png', 28),
(866, 'Gerry Agutter', 19, 'Hooker', 1.9, 87, 'gerry_agutter.png', 29),
(868, 'Ambrosius Creser', 19, 'Flanker(6)', 1.83, 119, 'ambrosius_creser.png', 32),
(870, 'Monte Howden', 19, 'Second-five', 1.79, 110, 'monte_howden.png', 25),
(872, 'Wilburt Mitchiner', 19, 'Center', 1.86, 117, 'wilburt_mitchiner.png', 33);

-- --------------------------------------------------------

--
-- Stand-in structure for view `players_teams_vw`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `players_teams_vw`;
CREATE TABLE IF NOT EXISTS `players_teams_vw` (
`age` int
,`coach` varchar(255)
,`colour` varchar(255)
,`ground_image` varchar(255)
,`height` float
,`id` int
,`image` mediumtext
,`location` varchar(255)
,`logo` varchar(255)
,`name` mediumtext
,`position` mediumtext
,`team` varchar(255)
,`team_id` int
,`weight` int
);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
CREATE TABLE IF NOT EXISTS `teams` (
  `id` int NOT NULL AUTO_INCREMENT,
  `team` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ground_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coach` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colour` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `team`, `location`, `ground_image`, `coach`, `logo`, `colour`) VALUES
(1, 'Argentina', 'Jose Amalfitani', 'stadium_sky.png', 'Michael Cheika', 'aqua_logo.png', 'blue'),
(2, 'Wales', 'Stadium Australia', 'stadium_red.png', 'Dan McKellar', 'red_logo.png', 'red'),
(3, 'Chile', 'Various', 'stadium_red.png', 'Pablo Lemoine', 'red_logo.png', 'yellow'),
(4, 'England', 'Twickenem', 'stadium_white.png', 'Steve Borthwick', 'white_logo.png', 'lime'),
(5, 'Ireland', 'Landsdown Road', 'stadium_green.png', 'Joe Schmidt', 'green_logo.png', 'green'),
(6, 'Fiji', 'ANZ National Stadium', 'stadium_white.png', 'John McKee', 'white_logo.png', 'grey'),
(7, 'France', 'Stade de France', 'stadium_blue.png', 'Jacques Brunel', 'blue_logo.png', 'purple'),
(8, 'Italy', 'Stadio Olimpico', 'stadium_blue.png', 'Conor O\'Shea', 'blue_logo.png', 'aqua'),
(9, 'New Zealand', 'Eden Park', 'stadium_black.png', 'Ian Foster', 'black_logo.png', 'black'),
(10, 'Namibia', 'Hage Geingob Rugby Stadium', 'stadium_blue.png', 'David Wessels', 'blue_logo.png', 'orange'),
(11, 'Tonga', 'Tonga Nation Stadium', 'stadium_red.png', 'Toutai Kefu', 'red_logo.png', 'red'),
(12, 'Japan', 'Chichibunomiya Stadium', 'stadium_red.png', 'Jamie Joseph', 'red_logo.png', 'red'),
(13, 'South Africa', 'Pretoria', 'stadium_green.png', 'Rassie Erasmus', 'green_logo.png', 'green'),
(14, 'Portugal', 'Various', 'stadium_red.png', 'Patrice Lagisquet', 'red_logo.png', 'red'),
(15, 'Samoa', 'Apia Park', 'stadium_blue.png', 'Steve Jackson', 'blue_logo.png', 'blue'),
(16, 'Scotland', 'Murrayfield Stadium', 'stadium_blue.png', 'Gregor Townsend', 'darkblue_logo.png', 'darkblue'),
(17, 'Australia', 'Sydney Football Stadium', 'stadium_yellow.png', 'Eddie Jones', 'yellow_logo.png', 'yellow'),
(18, 'Uruquay', 'Estadio Charrua', 'stadium_sky.png', 'Esteban Meneses', 'sky_logo.png', 'sky'),
(19, 'Georgia', 'Mikheil Meskhi Stadium', 'stadium_brown.png', 'Milton Haig', 'brown_logo.png', 'brown'),
(20, 'Romainia', 'Stadionul Arcul de Triumf', 'stadium_white.png', 'Eugen Apjok', 'white_logo.png', 'white');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `role` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `token` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `expiry_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure for view `players_teams_vw`
--
DROP TABLE IF EXISTS `players_teams_vw`;

DROP VIEW IF EXISTS `players_teams_vw`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `players_teams_vw`  AS SELECT `players`.`id` AS `id`, `players`.`name` AS `name`, `players`.`team_id` AS `team_id`, `players`.`position` AS `position`, `players`.`height` AS `height`, `players`.`weight` AS `weight`, `players`.`image` AS `image`, `players`.`age` AS `age`, `teams`.`team` AS `team`, `teams`.`location` AS `location`, `teams`.`ground_image` AS `ground_image`, `teams`.`coach` AS `coach`, `teams`.`logo` AS `logo`, `teams`.`colour` AS `colour` FROM (`players` join `teams` on((`players`.`team_id` = `teams`.`id`)))  ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
