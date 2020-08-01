-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Agu 2020 pada 18.24
-- Versi server: 10.1.35-MariaDB
-- Versi PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `money_manager`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `gaji`
--

DROP TABLE IF EXISTS `gaji`;
CREATE TABLE `gaji` (
  `id` int(11) NOT NULL,
  `id_user` varchar(200) NOT NULL,
  `gaji` varchar(50) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `keterangan` text,
  `id_pemilik` varchar(200) NOT NULL,
  `bulan` varchar(10) NOT NULL,
  `id_proyek` int(11) NOT NULL,
  `file_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `khas_history`
--

DROP TABLE IF EXISTS `khas_history`;
CREATE TABLE `khas_history` (
  `id` int(11) NOT NULL,
  `id_user` varchar(200) NOT NULL,
  `id_pemodal` varchar(200) DEFAULT NULL,
  `saldo_awal` varchar(50) DEFAULT NULL,
  `saldo_masuk` varchar(50) DEFAULT NULL,
  `saldo_total` varchar(50) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `keterangan` text,
  `jenis` enum('transaksi','gaji','pekerjaan','piutang') NOT NULL DEFAULT 'transaksi',
  `id_proyek` int(20) NOT NULL DEFAULT '0',
  `id_gaji` int(20) NOT NULL DEFAULT '0',
  `id_transaksi` varchar(20) DEFAULT NULL,
  `file_name` text,
  `admin` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `khas_history`
--

INSERT INTO `khas_history` (`id`, `id_user`, `id_pemodal`, `saldo_awal`, `saldo_masuk`, `saldo_total`, `created_date`, `keterangan`, `jenis`, `id_proyek`, `id_gaji`, `id_transaksi`, `file_name`, `admin`) VALUES
(11, 'ac9960381c44458194840df45f1565d9', '4b9b81d4f34646e09aed4a6e62ac3dfb', '0', '50000', '50000', '2020-03-22 07:50:28', 'Menambahkan Saldo', 'transaksi', 0, 0, NULL, NULL, 0),
(16, 'b20d7e17fbc640ea970b5b3603c2e928', '4b9b81d4f34646e09aed4a6e62ac3dfb', '0', '500000', '500000', '2020-03-22 18:52:02', 'Menambahkan Saldo', 'transaksi', 0, 0, NULL, NULL, 0),
(17, '3a695c9f7bab409fb9654e86e5981201', '4b9b81d4f34646e09aed4a6e62ac3dfb', '0', '1000000', '1000000', '2020-03-23 10:17:16', 'Menambahkan Saldo', 'transaksi', 0, 0, NULL, NULL, 0),
(18, '426b584444f94e5f803e1d6524716cd1', '4b9b81d4f34646e09aed4a6e62ac3dfb', '0', '497950', '497950', '2020-03-23 10:22:11', 'Menambahkan Saldo', 'transaksi', 0, 0, NULL, NULL, 0),
(19, '4b9b81d4f34646e09aed4a6e62ac3dfb', '4b9b81d4f34646e09aed4a6e62ac3dfb', '502050', '0', '502050', '2020-03-23 10:33:08', 'Tidak ada catatan', 'pekerjaan', 4, 0, NULL, NULL, 0),
(20, '426b584444f94e5f803e1d6524716cd1', '4b9b81d4f34646e09aed4a6e62ac3dfb', '497950', '250000', '747950', '2020-03-23 10:37:55', 'Menambahkan Saldo', 'transaksi', 0, 0, NULL, 'IMG_20200323_103746065.jpg', 0),
(21, '426b584444f94e5f803e1d6524716cd1', '4b9b81d4f34646e09aed4a6e62ac3dfb', '747950', '2250000', '2997950', '2020-03-23 10:38:10', 'Menambahkan Saldo', 'transaksi', 0, 0, NULL, 'IMG_20200323_103803356.jpg', 0),
(22, '4b9b81d4f34646e09aed4a6e62ac3dfb', '4b9b81d4f34646e09aed4a6e62ac3dfb', '-1997950', '4000000', '2002050', '2020-03-23 10:38:38', 'Menambahkan Saldo', 'transaksi', 0, 0, NULL, NULL, 0),
(23, '4b9b81d4f34646e09aed4a6e62ac3dfb', '4b9b81d4f34646e09aed4a6e62ac3dfb', '2002050', '120000000', '-117997950', '2020-03-23 18:01:51', 'Menambahkan Nilai Pekerjaan', 'pekerjaan', 4, 0, NULL, NULL, 0),
(24, '4b9b81d4f34646e09aed4a6e62ac3dfb', '4b9b81d4f34646e09aed4a6e62ac3dfb', '-117997950', '120000000', '2002050', '2020-03-23 18:02:22', 'Mengurangi Nilai Pekerjaan', 'pekerjaan', 4, 0, NULL, NULL, 0),
(25, '4b9b81d4f34646e09aed4a6e62ac3dfb', '4b9b81d4f34646e09aed4a6e62ac3dfb', '2002050', '0', '2002050', '2020-03-24 14:57:54', 'Tidak ada catatan', 'pekerjaan', 5, 0, NULL, NULL, 0),
(26, '4b9b81d4f34646e09aed4a6e62ac3dfb', '4b9b81d4f34646e09aed4a6e62ac3dfb', '2002050', '0', '2002050', '2020-03-24 14:58:43', 'Tidak ada catatan', 'pekerjaan', 6, 0, NULL, NULL, 0),
(27, '4b9b81d4f34646e09aed4a6e62ac3dfb', '4b9b81d4f34646e09aed4a6e62ac3dfb', '2002050', '0', '2002050', '2020-03-24 14:59:22', 'Tidak ada catatan', 'pekerjaan', 7, 0, NULL, NULL, 0),
(28, '426b584444f94e5f803e1d6524716cd1', '4b9b81d4f34646e09aed4a6e62ac3dfb', '8950', '1000000', '1008950', '2020-03-26 09:52:30', 'Menambahkan Saldo', 'transaksi', 0, 0, NULL, 'IMG_20200326_095227223.jpg', 0),
(29, '4b9b81d4f34646e09aed4a6e62ac3dfb', '4b9b81d4f34646e09aed4a6e62ac3dfb', '1002050', '0', '1002050', '2020-03-26 18:20:08', 'Tidak ada catatan', 'pekerjaan', 8, 0, NULL, NULL, 0),
(30, '4b9b81d4f34646e09aed4a6e62ac3dfb', '4b9b81d4f34646e09aed4a6e62ac3dfb', '1002050', '0', '1002050', '2020-03-26 18:20:33', 'Tidak ada catatan', 'pekerjaan', 9, 0, NULL, NULL, 0),
(31, '4b9b81d4f34646e09aed4a6e62ac3dfb', '4b9b81d4f34646e09aed4a6e62ac3dfb', '1002050', '5000000', '6002050', '2020-03-28 14:31:16', 'Menambahkan Saldo', 'transaksi', 0, 0, NULL, NULL, 0),
(32, '426b584444f94e5f803e1d6524716cd1', '4b9b81d4f34646e09aed4a6e62ac3dfb', '43950', '5000000', '5043950', '2020-03-28 14:31:54', 'Menambahkan Saldo', 'transaksi', 0, 0, NULL, 'IMG_20200328_143150058.jpg', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `khas_proyek`
--

DROP TABLE IF EXISTS `khas_proyek`;
CREATE TABLE `khas_proyek` (
  `id` int(11) NOT NULL,
  `id_proyek` varchar(20) NOT NULL,
  `id_pemodal` varchar(200) NOT NULL,
  `saldo_awal` varchar(50) NOT NULL,
  `saldo_masuk` varchar(50) NOT NULL,
  `saldo_akhir` varchar(50) NOT NULL,
  `jenis` enum('pengurangan','penambahan') NOT NULL DEFAULT 'penambahan',
  `keterangan` text,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `khas_proyek`
--

INSERT INTO `khas_proyek` (`id`, `id_proyek`, `id_pemodal`, `saldo_awal`, `saldo_masuk`, `saldo_akhir`, `jenis`, `keterangan`, `created_date`) VALUES
(5, '4', '4b9b81d4f34646e09aed4a6e62ac3dfb', '0', '0', '0', 'penambahan', 'Tidak ada catatan', '2020-03-23 10:33:08'),
(6, '4', '4b9b81d4f34646e09aed4a6e62ac3dfb', '0', '120000000', '120000000', 'penambahan', 'Tidak ada catatan', '2020-03-23 18:01:51'),
(7, '4', '4b9b81d4f34646e09aed4a6e62ac3dfb', '120000000', '120000000', '0', 'penambahan', 'Tidak ada catatan', '2020-03-23 18:02:22'),
(8, '5', '4b9b81d4f34646e09aed4a6e62ac3dfb', '0', '0', '0', 'penambahan', 'Tidak ada catatan', '2020-03-24 14:57:54'),
(9, '6', '4b9b81d4f34646e09aed4a6e62ac3dfb', '0', '0', '0', 'penambahan', 'Tidak ada catatan', '2020-03-24 14:58:43'),
(10, '7', '4b9b81d4f34646e09aed4a6e62ac3dfb', '0', '0', '0', 'penambahan', 'Tidak ada catatan', '2020-03-24 14:59:22'),
(11, '8', '4b9b81d4f34646e09aed4a6e62ac3dfb', '0', '0', '0', 'penambahan', 'Tidak ada catatan', '2020-03-26 18:20:08'),
(12, '9', '4b9b81d4f34646e09aed4a6e62ac3dfb', '0', '0', '0', 'penambahan', 'Tidak ada catatan', '2020-03-26 18:20:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pdf`
--

DROP TABLE IF EXISTS `pdf`;
CREATE TABLE `pdf` (
  `id` int(11) NOT NULL,
  `file_name` text,
  `id_user` varchar(200) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nama_laporan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pdf`
--

INSERT INTO `pdf` (`id`, `file_name`, `id_user`, `created_date`, `nama_laporan`) VALUES
(59, 'uploads/laporan/laporan - perumahan gresik - 01082020.pdf', '4b9b81d4f34646e09aed4a6e62ac3dfb', '2020-08-01 22:27:13', 'laporan - perumahan gresik - 01082020.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `proyek`
--

DROP TABLE IF EXISTS `proyek`;
CREATE TABLE `proyek` (
  `id` int(11) NOT NULL,
  `nama_proyek` varchar(200) NOT NULL,
  `modal` varchar(50) NOT NULL,
  `modal_awal` varchar(50) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `keterangan` text,
  `tgl_mulai` text,
  `tgl_selesai` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `proyek`
--

INSERT INTO `proyek` (`id`, `nama_proyek`, `modal`, `modal_awal`, `created_date`, `keterangan`, `tgl_mulai`, `tgl_selesai`) VALUES
(4, 'perumahan gresik', '0', '0', '2020-03-23 10:33:08', 'Tidak ada catatan', 'Kamis, 23 Januari 2020', 'Selasa, 23 Juni 2020'),
(5, 'lain lain', '0', '0', '2020-03-24 14:57:54', 'Tidak ada catatan', 'Selasa, 24 Maret 2020', 'Kamis, 31 Desember 2020'),
(6, 'penawaran', '0', '0', '2020-03-24 14:58:43', 'Tidak ada catatan', 'Selasa, 24 Maret 2020', 'Kamis, 31 Desember 2020'),
(7, 'keperluan dinas', '0', '0', '2020-03-24 14:59:22', 'Tidak ada catatan', 'Selasa, 24 Maret 2020', 'Kamis, 31 Desember 2020'),
(8, 'kantor 1', '0', '0', '2020-03-26 18:20:08', 'Tidak ada catatan', 'Kamis, 26 Maret 2020', 'Kamis, 31 Desember 2020'),
(9, 'kantor 2', '0', '0', '2020-03-26 18:20:33', 'Tidak ada catatan', 'Kamis, 26 Maret 2020', 'Kamis, 31 Desember 2020');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

DROP TABLE IF EXISTS `transaksi`;
CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `id_user` varchar(200) NOT NULL,
  `id_proyek` varchar(50) NOT NULL,
  `keterangan` text,
  `dana` varchar(50) DEFAULT NULL,
  `jenis` enum('khas','utang') NOT NULL DEFAULT 'khas',
  `nama_transaksi` varchar(200) DEFAULT NULL,
  `current_saldo` varchar(50) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `file_name` text,
  `status` enum('lunas','belum lunas') NOT NULL DEFAULT 'lunas'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `id_user`, `id_proyek`, `keterangan`, `dana`, `jenis`, `nama_transaksi`, `current_saldo`, `created_date`, `file_name`, `status`) VALUES
(14, '426b584444f94e5f803e1d6524716cd1', '4', 'dulosit dan bendrat', '135000', 'khas', 'bahan bangunan', '2997950', '2020-03-23 16:55:05', 'IMG_20200323_165205619.jpg', 'lunas'),
(15, '426b584444f94e5f803e1d6524716cd1', '4', 'e tol', '100000', 'khas', 'e tol', '2862950', '2020-03-23 16:56:59', 'IMG_20200323_165537026.jpg', 'lunas'),
(16, '426b584444f94e5f803e1d6524716cd1', '4', 'pertalit', '150000', 'khas', 'bbm', '2762950', '2020-03-23 16:58:02', 'IMG_20200323_165729972.jpg', 'lunas'),
(17, '426b584444f94e5f803e1d6524716cd1', '4', '1 rit', '1500000', 'khas', 'pasir', '2612950', '2020-03-23 16:59:31', 'IMG_20200323_165847344.jpg', 'lunas'),
(18, '426b584444f94e5f803e1d6524716cd1', '4', 'untuk 1 minggu', '55000', 'khas', 'gula 30 rb dan kopi 25 rb', '1112950', '2020-03-23 17:01:53', 'IMG_20200323_165948719.jpg', 'lunas'),
(19, '426b584444f94e5f803e1d6524716cd1', '4', ' isi ulang', '15000', 'khas', ' galon 3 ', '1057950', '2020-03-23 17:03:25', 'IMG_20200323_170216477.jpg', 'lunas'),
(20, '426b584444f94e5f803e1d6524716cd1', '4', 'sehari', '30000', 'khas', 'makan', '1042950', '2020-03-23 18:56:47', 'IMG_20200323_185607006.jpg', 'lunas'),
(21, '426b584444f94e5f803e1d6524716cd1', '4', 'paku 2 kg', '40000', 'khas', 'bahan bangunan', '1012950', '2020-03-24 07:30:04', 'IMG_20200324_072850537.jpg', 'lunas'),
(22, '426b584444f94e5f803e1d6524716cd1', '4', 'bata 1 rbu paralon 1 dan sok 2', '750000', 'khas', 'bahan bangunan', '972950', '2020-03-24 13:11:27', 'IMG_20200324_131037009.jpg', 'lunas'),
(23, '426b584444f94e5f803e1d6524716cd1', '4', 'sehari', '30000', 'khas', 'makan ', '222950', '2020-03-24 18:50:56', 'IMG_20200324_184947624.jpg', 'lunas'),
(24, '426b584444f94e5f803e1d6524716cd1', '4', 'semen 3 biji', '144000', 'khas', 'bahan bangunan', '192950', '2020-03-25 07:36:17', 'IMG_20200325_073539221.jpg', 'lunas'),
(25, '426b584444f94e5f803e1d6524716cd1', '4', 'isi ulang 2 galon', '10000', 'khas', 'galon', '48950', '2020-03-25 16:16:39', 'IMG_20200325_161501784.jpg', 'lunas'),
(26, '426b584444f94e5f803e1d6524716cd1', '4', 'sehari', '30000', 'khas', 'makan', '38950', '2020-03-25 18:26:55', 'IMG_20200325_182540615.jpg', 'lunas'),
(27, '426b584444f94e5f803e1d6524716cd1', '4', 'bata merah seribu dan semen 5', '890000', 'khas', 'bahan bangunan ', '1008950', '2020-03-26 15:26:11', 'IMG_20200326_152519968.jpg', 'lunas'),
(28, '426b584444f94e5f803e1d6524716cd1', '4', 'sehari', '30000', 'khas', 'makan', '118950', '2020-03-26 23:37:39', 'IMG_20200326_233709776.jpg', 'lunas'),
(29, '426b584444f94e5f803e1d6524716cd1', '4', 'isi ulang 3 biji yg 1 di tinggal di lokasi', '15000', 'khas', 'galon', '88950', '2020-03-27 16:07:52', 'IMG_20200327_160605924.jpg', 'lunas'),
(30, '426b584444f94e5f803e1d6524716cd1', '4', 'sehari', '30000', 'khas', 'makan', '73950', '2020-03-27 19:08:08', 'IMG_20200327_190727492.jpg', 'lunas'),
(31, '426b584444f94e5f803e1d6524716cd1', '4', 'gaji pekerja', '4920000', 'khas', 'bandeng', '5043950', '2020-03-28 19:24:18', 'IMG_20200328_192339277.jpg', 'lunas'),
(32, '426b584444f94e5f803e1d6524716cd1', '4', 'pertalite', '75000', 'khas', 'bbm', '123950', '2020-03-28 19:25:49', 'IMG_20200328_192517126.jpg', 'lunas'),
(33, '426b584444f94e5f803e1d6524716cd1', '4', 'sehari', '30000', 'khas', 'makan', '48950', '2020-03-28 19:28:09', 'IMG_20200328_192634103.jpg', 'lunas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(200) NOT NULL,
  `foto` varchar(300) DEFAULT NULL,
  `nama` varchar(500) DEFAULT NULL,
  `nomer` varchar(20) DEFAULT NULL,
  `username` varchar(500) NOT NULL,
  `password` varchar(200) NOT NULL,
  `saldo` varchar(50) DEFAULT '0',
  `role` int(11) NOT NULL DEFAULT '0',
  `device_token` text,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `foto`, `nama`, `nomer`, `username`, `password`, `saldo`, `role`, `device_token`, `is_active`, `created_date`, `is_admin`) VALUES
('3a695c9f7bab409fb9654e86e5981201', 'thumbnail.png', 'nasir', NULL, 'nasir64', '$2y$12$Jco09I4Vdih.p8grLDjkgOYv/NT6TKd4yz6p5l25FmDytNJ9/4GD6', '1000000', 3, NULL, 1, '2020-03-23 10:17:16', 0),
('426b584444f94e5f803e1d6524716cd1', 'thumbnail.png', 'teguh', NULL, 'teguh11', '$2y$12$UfarrK3I.P3W/X2kEKEXD.IaJ5zZYS6woj7uUOa8nktijYNemOpLO', '18950', 1, 'ch_37VoFQMKGifde2ThDlJ:APA91bFsJBuHGtkWB2c419gn3dfF20bnatxECPHhLTjyYxdXCiQQ5vo4S2wU32hFhKSljLiAoC1ajniW0sQPOV7BdWqHSzsamb-2NCKfpLENhiB2S-uXx963Eu8NQmEhACHT6Eq6imsk', 1, '2020-03-23 10:22:11', 0),
('4b9b81d4f34646e09aed4a6e62ac3dfb', NULL, 'Super Admin', NULL, 'admin123', '$2y$12$HhSqkLb37U.hoMv0/lVHees8AqSZ.Eu4lTuq/UsX8mRLVbm8MDeNC', '1002050', 2, 'cjRkbxjXSeu6FI39HT_jA1:APA91bEp-pI5rD8C9DzsP3RItik6-U4XulywUJY0Kqk7Khf9VxRBwqPBDzIW-CmuJYlyI0-H46meHgNChnmEBlfCvDG7mcXAJJBwSRqYGrqEadjnuqwmAZk2IV7G413roZcxIhLpMYvz', 1, '2020-03-16 08:10:28', 1),
('ac9960381c44458194840df45f1565d9', 'thumbnail.png', 'bon', NULL, 'bon36', '$2y$12$hbWYwr9MYhOk/7cm.BE83ev0Sm4t4GlILEYV95O3XIxuSlrYlhPzi', '50000', 0, 'cjRkbxjXSeu6FI39HT_jA1:APA91bFXWHRWsZw6L6h-R4BarG291uhcJA8UAmQpgNMxS09wTnA8OGz-zwjm-Fx5ohpADrEoTM57_eotn062vvA74QQVpban5RaY7dhUWSEYu8G1TKJI8Gca429XOpHv2zn9AldkZTwV', 0, '2020-03-22 07:50:28', 0),
('b20d7e17fbc640ea970b5b3603c2e928', 'thumbnail.png', 'agus', NULL, 'agus56', '$2y$12$thp8ubIOtHrf0WDkzpGdaO/YXUh3a12WG3X3wEz6CAusDI6FVOoWS', '500000', 0, NULL, 0, '2020-03-22 18:52:02', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `gaji`
--
ALTER TABLE `gaji`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `khas_history`
--
ALTER TABLE `khas_history`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `khas_proyek`
--
ALTER TABLE `khas_proyek`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pdf`
--
ALTER TABLE `pdf`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `proyek`
--
ALTER TABLE `proyek`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `gaji`
--
ALTER TABLE `gaji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `khas_history`
--
ALTER TABLE `khas_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `khas_proyek`
--
ALTER TABLE `khas_proyek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `pdf`
--
ALTER TABLE `pdf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT untuk tabel `proyek`
--
ALTER TABLE `proyek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
