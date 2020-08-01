-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Mar 2020 pada 00.29
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

CREATE TABLE `gaji` (
  `id` int(11) NOT NULL,
  `id_user` varchar(200) NOT NULL,
  `gaji` varchar(50) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `keterangan` text,
  `id_pemilik` varchar(200) NOT NULL,
  `bulan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `khas_history`
--

CREATE TABLE `khas_history` (
  `id` int(11) NOT NULL,
  `id_user` varchar(200) NOT NULL,
  `id_pemodal` varchar(200) NOT NULL,
  `saldo_awal` varchar(50) NOT NULL,
  `saldo_masuk` varchar(50) NOT NULL,
  `saldo_total` varchar(50) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pdf`
--

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
(56, 'uploads/laporan - Binar Wanandi - 06032020.pdf', 'a48524be21c94d52b1338dd01b73b08a', '2020-03-06 06:24:39', 'laporan - Binar Wanandi - 06032020');

-- --------------------------------------------------------

--
-- Struktur dari tabel `proyek`
--

CREATE TABLE `proyek` (
  `id` int(11) NOT NULL,
  `nama_proyek` varchar(200) NOT NULL,
  `modal` varchar(50) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `id_user` varchar(200) NOT NULL,
  `id_proyek` varchar(50) NOT NULL,
  `keterangan` text,
  `dana` varchar(50) NOT NULL,
  `jenis` enum('khas','bon') NOT NULL,
  `nama_transaksi` varchar(200) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

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
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `foto`, `nama`, `nomer`, `username`, `password`, `saldo`, `role`, `device_token`, `is_active`, `created_date`) VALUES
('a48524be21c94d52b1338dd01b73b08a', 'thumbnail.png', 'admin kece', '085655082415', 'admin123', '$2y$12$BF2KnaD6Add0AQCvC9Eb8OvMMuJVG5RCNS/ltpk5tLwm4Wya85c4C', '37582446', 2, 'cwUVej-0Q4-HhjOVRN-E_5:APA91bFGvJfB-xv3ExfG25EHabZpb--n39VMdc3zmATsqFbOaR-asyKEbXbZ4BG9f6UyNcPVlMBUtdoDEG7RRSEtnbw_-P2HtxWkeZIF4JZCWybFS0VlfuDXBjYJ4natEFZIlqi3Dq0X', 1, '0000-00-00 00:00:00');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pdf`
--
ALTER TABLE `pdf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `proyek`
--
ALTER TABLE `proyek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
