-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jul 2022 pada 08.33
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mesincuci`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_gejala`
--

CREATE TABLE `tb_gejala` (
  `id_gejala` int(11) NOT NULL,
  `kd_gejala` varchar(128) NOT NULL,
  `gejala` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_gejala`
--

INSERT INTO `tb_gejala` (`id_gejala`, `kd_gejala`, `gejala`) VALUES
(1, 'G01', 'Knop pembuangan air saat diputar tidak normal dan air tidak mau keluar saat setelah mencuci\r'),
(2, 'G02', 'Pencuci berputar lemah jika diisi pakaian tidak berputar dan suara berdengung \r'),
(3, 'G03', 'Pengering berputar lemah jika diisi pakaian tidak berputar dan suara berdengung \r'),
(4, 'G04', 'Suara Pencuci Kasar atau Berisik \r'),
(5, 'G05', 'Timer Pencuci atau Pengering tidak bisa diputar atau keras \r'),
(6, 'G06', 'Air Bocor dari bawah tabung pengering\r'),
(7, 'G07', 'Air Bocor dari bawah Tabung Pencuci\r'),
(8, 'G08', 'Air Mengalir lewat selang Pembuangan saat mencuci padahal tidak memutar knop selector (pembuangan)\r'),
(9, 'G09', 'Motor pencuci hidup normal tetapi Pulsator tidak berputar\r'),
(10, 'G10', 'Pencuci berputar normal tetapi selip saat pakaian dimasukkan dan tidak bersuara dengung\r'),
(11, 'G11', 'Pintu pengering dibuka tapi pengering tetap tidak mati\r'),
(12, 'G12', 'Tabung pengering berputar tidak span atau tidak rata dan suara berisik\r'),
(13, 'G13', 'Pencuci mati total\r'),
(14, 'G14', 'Pengering mati total\r'),
(15, 'G15', 'Air bocor dari samping selang pembuangan\r'),
(16, 'G16', 'Knop sudah diputar tetapi air tidak mau keluar saat setelah selesai mencuci\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_hipotesa`
--

CREATE TABLE `tb_hipotesa` (
  `id_hipotesa` int(11) NOT NULL,
  `id_kerusakan_hipotesa` int(11) NOT NULL,
  `id_gejala_hipotesa` int(11) NOT NULL,
  `kode_hipotesa` varchar(10) NOT NULL,
  `nilai_hipotesa` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_hipotesa`
--

INSERT INTO `tb_hipotesa` (`id_hipotesa`, `id_kerusakan_hipotesa`, `id_gejala_hipotesa`, `kode_hipotesa`, `nilai_hipotesa`) VALUES
(1, 1, 1, 'H001', 0.1),
(2, 1, 2, 'H002', 0.8),
(3, 1, 3, 'H003', 0.1),
(4, 1, 4, 'H004', 0.1),
(5, 1, 5, 'H005', 0.1),
(6, 1, 6, 'H006', 0.1),
(7, 1, 7, 'H007', 0.1),
(8, 1, 8, 'H008', 0.1),
(9, 1, 9, 'H009', 0.1),
(10, 1, 10, 'H010', 0.1),
(11, 1, 11, 'H011', 0.1),
(12, 1, 12, 'H012', 0.1),
(13, 1, 13, 'H013', 1),
(14, 1, 14, 'H014', 0.1),
(15, 1, 15, 'H015', 0.1),
(16, 1, 16, 'H016', 0.1),
(17, 2, 1, 'H017', 0.1),
(18, 2, 2, 'H018', 0.1),
(19, 2, 3, 'H019', 0.8),
(20, 2, 4, 'H020', 0.1),
(21, 2, 5, 'H021', 0.1),
(22, 2, 6, 'H022', 0.1),
(23, 2, 7, 'H023', 0.1),
(24, 2, 8, 'H024', 0.1),
(25, 2, 9, 'H025', 0.1),
(26, 2, 10, 'H026', 0.1),
(27, 2, 11, 'H027', 0.1),
(28, 2, 12, 'H028', 0.1),
(29, 2, 13, 'H029', 0.1),
(30, 2, 14, 'H030', 1),
(31, 2, 15, 'H031', 0.1),
(32, 2, 16, 'H032', 0.1),
(33, 3, 1, 'H033', 0.1),
(34, 3, 2, 'H034', 1),
(35, 3, 3, 'H035', 0.1),
(36, 3, 4, 'H036', 0.1),
(37, 3, 5, 'H037', 0.1),
(38, 3, 6, 'H038', 0.1),
(39, 3, 7, 'H039', 0.1),
(40, 3, 8, 'H040', 0.1),
(41, 3, 9, 'H041', 0.1),
(42, 3, 10, 'H042', 0.1),
(43, 3, 11, 'H043', 0.1),
(44, 3, 12, 'H044', 0.1),
(45, 3, 13, 'H045', 0.1),
(46, 3, 14, 'H046', 0.1),
(47, 3, 15, 'H047', 0.1),
(48, 3, 16, 'H048', 0.1),
(49, 4, 1, 'H049', 0.1),
(50, 4, 2, 'H050', 0.1),
(51, 4, 3, 'H051', 1),
(52, 4, 4, 'H052', 0.1),
(53, 4, 5, 'H053', 0.1),
(54, 4, 6, 'H054', 0.1),
(55, 4, 7, 'H055', 0.1),
(56, 4, 8, 'H056', 0.1),
(57, 4, 9, 'H057', 0.1),
(58, 4, 10, 'H058', 0.1),
(59, 4, 11, 'H059', 0.1),
(60, 4, 12, 'H060', 0.1),
(61, 4, 13, 'H061', 0.1),
(62, 4, 14, 'H062', 0.1),
(63, 4, 15, 'H063', 0.1),
(64, 4, 16, 'H064', 0.1),
(65, 5, 1, 'H065', 0.1),
(66, 5, 2, 'H066', 0.1),
(67, 5, 3, 'H067', 0.1),
(68, 5, 4, 'H068', 1),
(69, 5, 5, 'H069', 0.1),
(70, 5, 6, 'H070', 0.1),
(71, 5, 7, 'H071', 1),
(72, 5, 8, 'H072', 0.1),
(73, 5, 9, 'H073', 0.1),
(74, 5, 10, 'H074', 0.1),
(75, 5, 11, 'H075', 0.1),
(76, 5, 12, 'H076', 0.1),
(77, 5, 13, 'H077', 0.1),
(78, 5, 14, 'H078', 0.1),
(79, 5, 15, 'H079', 0.1),
(80, 5, 16, 'H080', 0.1),
(81, 6, 1, 'H081', 0.1),
(82, 6, 2, 'H082', 0.1),
(83, 6, 3, 'H083', 0.1),
(84, 6, 4, 'H084', 0.1),
(85, 6, 5, 'H085', 0.1),
(86, 6, 6, 'H086', 1),
(87, 6, 7, 'H087', 0.1),
(88, 6, 8, 'H088', 0.1),
(89, 6, 9, 'H089', 0.1),
(90, 6, 10, 'H090', 0.1),
(91, 6, 11, 'H091', 0.1),
(92, 6, 12, 'H092', 0.1),
(93, 6, 13, 'H093', 0.1),
(94, 6, 14, 'H094', 0.1),
(95, 6, 15, 'H095', 0.1),
(96, 6, 16, 'H096', 0.1),
(97, 7, 1, 'H097', 0.1),
(98, 7, 2, 'H098', 0.1),
(99, 7, 3, 'H099', 0.1),
(100, 7, 4, 'H100', 0.1),
(101, 7, 5, 'H101', 0.1),
(102, 7, 6, 'H102', 0.1),
(103, 7, 7, 'H103', 0.1),
(104, 7, 8, 'H104', 0.1),
(105, 7, 9, 'H105', 0.1),
(106, 7, 10, 'H106', 1),
(107, 7, 11, 'H107', 0.1),
(108, 7, 12, 'H108', 0.1),
(109, 7, 13, 'H109', 0.1),
(110, 7, 14, 'H110', 0.1),
(111, 7, 15, 'H111', 0.1),
(112, 7, 16, 'H112', 0.1),
(113, 8, 1, 'H113', 0.1),
(114, 8, 2, 'H114', 0.1),
(115, 8, 3, 'H115', 0.1),
(116, 8, 4, 'H116', 0.1),
(117, 8, 5, 'H117', 0.1),
(118, 8, 6, 'H118', 0.1),
(119, 8, 7, 'H119', 0.1),
(120, 8, 8, 'H120', 0.1),
(121, 8, 9, 'H121', 0.1),
(122, 8, 10, 'H122', 0.1),
(123, 8, 11, 'H123', 0.1),
(124, 8, 12, 'H124', 0.1),
(125, 8, 13, 'H125', 1),
(126, 8, 14, 'H126', 1),
(127, 8, 15, 'H127', 0.1),
(128, 8, 16, 'H128', 0.1),
(129, 9, 1, 'H129', 0.1),
(130, 9, 2, 'H130', 0.1),
(131, 9, 3, 'H131', 0.1),
(132, 9, 4, 'H132', 0.1),
(133, 9, 5, 'H133', 0.1),
(134, 9, 6, 'H134', 0.1),
(135, 9, 7, 'H135', 0.1),
(136, 9, 8, 'H136', 0.1),
(137, 9, 9, 'H137', 1),
(138, 9, 10, 'H138', 0.1),
(139, 9, 11, 'H139', 0.1),
(140, 9, 12, 'H140', 0.1),
(141, 9, 13, 'H141', 0.1),
(142, 9, 14, 'H142', 0.1),
(143, 9, 15, 'H143', 0.1),
(144, 9, 16, 'H144', 0.1),
(145, 10, 1, 'H145', 0.1),
(146, 10, 2, 'H146', 0.1),
(147, 10, 3, 'H147', 0.1),
(148, 10, 4, 'H148', 0.1),
(149, 10, 5, 'H149', 0.1),
(150, 10, 6, 'H150', 0.1),
(151, 10, 7, 'H151', 0.1),
(152, 10, 8, 'H152', 0.1),
(153, 10, 9, 'H153', 0.1),
(154, 10, 10, 'H154', 0.1),
(155, 10, 11, 'H155', 1),
(156, 10, 12, 'H156', 0.1),
(157, 10, 13, 'H157', 0.1),
(158, 10, 14, 'H158', 0.1),
(159, 10, 15, 'H159', 0.1),
(160, 10, 16, 'H160', 0.1),
(161, 11, 1, 'H161', 0.1),
(162, 11, 2, 'H162', 0.1),
(163, 11, 3, 'H163', 0.1),
(164, 11, 4, 'H164', 0.1),
(165, 11, 5, 'H165', 1),
(166, 11, 6, 'H166', 0.1),
(167, 11, 7, 'H167', 0.1),
(168, 11, 8, 'H168', 0.1),
(169, 11, 9, 'H169', 0.1),
(170, 11, 10, 'H170', 0.1),
(171, 11, 11, 'H171', 0.1),
(172, 11, 12, 'H172', 0.1),
(173, 11, 13, 'H173', 0.1),
(174, 11, 14, 'H174', 0.1),
(175, 11, 15, 'H175', 0.1),
(176, 11, 16, 'H176', 0.1),
(177, 12, 1, 'H177', 0.1),
(178, 12, 2, 'H178', 0.1),
(179, 12, 3, 'H179', 0.1),
(180, 12, 4, 'H180', 0.1),
(181, 12, 5, 'H181', 0.1),
(182, 12, 6, 'H182', 0.1),
(183, 12, 7, 'H183', 0.1),
(184, 12, 8, 'H184', 0.1),
(185, 12, 9, 'H185', 0.1),
(186, 12, 10, 'H186', 0.1),
(187, 12, 11, 'H187', 0.1),
(188, 12, 12, 'H188', 0.1),
(189, 12, 13, 'H189', 0.1),
(190, 12, 14, 'H190', 0.1),
(191, 12, 15, 'H191', 1),
(192, 12, 16, 'H192', 0.1),
(193, 13, 1, 'H193', 0.1),
(194, 13, 2, 'H194', 0.1),
(195, 13, 3, 'H195', 0.1),
(196, 13, 4, 'H196', 0.1),
(197, 13, 5, 'H197', 0.6),
(198, 13, 6, 'H198', 0.1),
(199, 13, 7, 'H199', 0.1),
(200, 13, 8, 'H200', 0.1),
(201, 13, 9, 'H201', 0.1),
(202, 13, 10, 'H202', 0.1),
(203, 13, 11, 'H203', 0.1),
(204, 13, 12, 'H204', 0.1),
(205, 13, 13, 'H205', 0.1),
(206, 13, 14, 'H206', 1),
(207, 13, 15, 'H207', 0.1),
(208, 13, 16, 'H208', 0.1),
(209, 14, 1, 'H209', 0.1),
(210, 14, 2, 'H210', 0.1),
(211, 14, 3, 'H211', 0.1),
(212, 14, 4, 'H212', 0.1),
(213, 14, 5, 'H213', 0.6),
(214, 14, 6, 'H214', 0.1),
(215, 14, 7, 'H215', 0.1),
(216, 14, 8, 'H216', 0.1),
(217, 14, 9, 'H217', 0.1),
(218, 14, 10, 'H218', 0.1),
(219, 14, 11, 'H219', 0.1),
(220, 14, 12, 'H220', 0.1),
(221, 14, 13, 'H221', 1),
(222, 14, 14, 'H222', 0.1),
(223, 14, 15, 'H223', 0.1),
(224, 14, 16, 'H224', 0.1),
(225, 15, 1, 'H225', 1),
(226, 15, 2, 'H226', 0.1),
(227, 15, 3, 'H227', 0.1),
(228, 15, 4, 'H228', 0.1),
(229, 15, 5, 'H229', 0.1),
(230, 15, 6, 'H230', 0.1),
(231, 15, 7, 'H231', 0.1),
(232, 15, 8, 'H232', 0.1),
(233, 15, 9, 'H233', 0.1),
(234, 15, 10, 'H234', 0.1),
(235, 15, 11, 'H235', 0.1),
(236, 15, 12, 'H236', 0.1),
(237, 15, 13, 'H237', 0.1),
(238, 15, 14, 'H238', 0.1),
(239, 15, 15, 'H239', 0.1),
(240, 15, 16, 'H240', 0.1),
(241, 16, 1, 'H241', 0.1),
(242, 16, 2, 'H242', 0.1),
(243, 16, 3, 'H243', 0.1),
(244, 16, 4, 'H244', 0.1),
(245, 16, 5, 'H245', 0.1),
(246, 16, 6, 'H246', 0.1),
(247, 16, 7, 'H247', 0.1),
(248, 16, 8, 'H248', 1),
(249, 16, 9, 'H249', 0.1),
(250, 16, 10, 'H250', 0.1),
(251, 16, 11, 'H251', 0.1),
(252, 16, 12, 'H252', 0.1),
(253, 16, 13, 'H253', 0.1),
(254, 16, 14, 'H254', 0.1),
(255, 16, 15, 'H255', 0.1),
(256, 16, 16, 'H256', 1),
(257, 17, 1, 'H257', 0.1),
(258, 17, 2, 'H258', 0.1),
(259, 17, 3, 'H259', 0.1),
(260, 17, 4, 'H260', 0.1),
(261, 17, 5, 'H261', 0.1),
(262, 17, 6, 'H262', 0.1),
(263, 17, 7, 'H263', 0.1),
(264, 17, 8, 'H264', 0.1),
(265, 17, 9, 'H265', 0.1),
(266, 17, 10, 'H266', 0.1),
(267, 17, 11, 'H267', 0.1),
(268, 17, 12, 'H268', 1),
(269, 17, 13, 'H269', 0.1),
(270, 17, 14, 'H270', 0.1),
(271, 17, 15, 'H271', 0.1),
(272, 17, 16, 'H272', 0.1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kerusakan`
--

CREATE TABLE `tb_kerusakan` (
  `id_kerusakan` int(11) NOT NULL,
  `kd_kerusakan` varchar(128) NOT NULL,
  `kerusakan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kerusakan`
--

INSERT INTO `tb_kerusakan` (`id_kerusakan`, `kd_kerusakan`, `kerusakan`) VALUES
(1, 'K01', 'Motor Pencuci\r'),
(2, 'K02', 'Motor Pengering\r'),
(3, 'K03', 'Kapasitor pencuci\r'),
(4, 'K04', 'Kapasitor Pengering'),
(5, 'K05', 'Gearbox'),
(6, 'K06', 'Seal Pengering'),
(7, 'K07', 'V-Belt'),
(8, 'K08', 'Kabel Power'),
(9, 'K09', 'Pulsator\r'),
(10, 'K10', 'Switch pintu pengering\r'),
(11, 'K11', 'Knop\r'),
(12, 'K12', 'Selang pembuangan\r'),
(13, 'K13', 'Timer Pengering\r'),
(14, 'K14', 'Timer Pencuci\r'),
(15, 'K15', 'Selector\r'),
(16, 'K16', 'Karet pembuangan\r'),
(17, 'K17', 'Pully');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_konsultasi`
--

CREATE TABLE `tb_konsultasi` (
  `id_konsultasi` int(11) NOT NULL,
  `id_user_konsultasi` int(11) NOT NULL,
  `hasil_konsultasi` int(11) NOT NULL,
  `tanggal_konsultasi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pilihan_user`
--

CREATE TABLE `tb_pilihan_user` (
  `id_pilihan_user` int(11) NOT NULL,
  `id_gejala` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pilihan_user`
--

INSERT INTO `tb_pilihan_user` (`id_pilihan_user`, `id_gejala`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `nama` varchar(256) NOT NULL,
  `password` varchar(128) NOT NULL,
  `view_password` varchar(128) NOT NULL,
  `level` varchar(10) NOT NULL,
  `image` varchar(256) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `email`, `nama`, `password`, `view_password`, `level`, `image`, `created_at`) VALUES
(1, 'rizkiw8778@gmail.com', 'Rizki Widya Pratama', '$2y$10$thVkGU4GXF5dY4oxbgy5BOVWHzmDDOGEz5DKEPH6nOkBd9fxozT4O', 'AxenNet123', 'user', 'default.jpg', '2022-07-16 18:46:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_hitung`
--

CREATE TABLE `tmp_hitung` (
  `id_hitung` int(11) NOT NULL,
  `id_kerusakan_hitung` int(11) NOT NULL,
  `id_gejala_hitung` int(11) NOT NULL,
  `nilai_hitung` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_random`
--

CREATE TABLE `tmp_random` (
  `id_random` int(11) NOT NULL,
  `id_konsultasi` int(11) NOT NULL,
  `id_gejala_random` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tmp_random`
--

INSERT INTO `tmp_random` (`id_random`, `id_konsultasi`, `id_gejala_random`) VALUES
(1, 0, 1),
(2, 0, 2),
(3, 0, 3),
(4, 0, 4),
(5, 0, 5),
(6, 0, 6),
(7, 0, 7),
(8, 0, 8),
(9, 0, 9),
(10, 0, 10),
(11, 0, 11),
(12, 0, 12),
(13, 0, 13),
(14, 0, 14),
(15, 0, 15),
(16, 0, 16);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_gejala`
--
ALTER TABLE `tb_gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indeks untuk tabel `tb_hipotesa`
--
ALTER TABLE `tb_hipotesa`
  ADD PRIMARY KEY (`id_hipotesa`);

--
-- Indeks untuk tabel `tb_kerusakan`
--
ALTER TABLE `tb_kerusakan`
  ADD PRIMARY KEY (`id_kerusakan`);

--
-- Indeks untuk tabel `tb_konsultasi`
--
ALTER TABLE `tb_konsultasi`
  ADD PRIMARY KEY (`id_konsultasi`);

--
-- Indeks untuk tabel `tb_pilihan_user`
--
ALTER TABLE `tb_pilihan_user`
  ADD PRIMARY KEY (`id_pilihan_user`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `tmp_hitung`
--
ALTER TABLE `tmp_hitung`
  ADD PRIMARY KEY (`id_hitung`);

--
-- Indeks untuk tabel `tmp_random`
--
ALTER TABLE `tmp_random`
  ADD PRIMARY KEY (`id_random`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_gejala`
--
ALTER TABLE `tb_gejala`
  MODIFY `id_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tb_hipotesa`
--
ALTER TABLE `tb_hipotesa`
  MODIFY `id_hipotesa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=512;

--
-- AUTO_INCREMENT untuk tabel `tb_kerusakan`
--
ALTER TABLE `tb_kerusakan`
  MODIFY `id_kerusakan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tb_konsultasi`
--
ALTER TABLE `tb_konsultasi`
  MODIFY `id_konsultasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_pilihan_user`
--
ALTER TABLE `tb_pilihan_user`
  MODIFY `id_pilihan_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tmp_hitung`
--
ALTER TABLE `tmp_hitung`
  MODIFY `id_hitung` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tmp_random`
--
ALTER TABLE `tmp_random`
  MODIFY `id_random` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
