-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Des 2020 pada 13.35
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electronic_rental`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `nama`, `harga`) VALUES
(1, 'Monitor', 40000),
(2, 'CPU', 20000),
(5, 'Mouse', 15000),
(6, 'Headphone', 60000),
(7, 'Keyboard', 30000),
(8, 'Speaker', 23000),
(9, 'Kursi', 12000),
(10, 'Laptop', 100000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `tempat` varchar(120) NOT NULL,
  `tanggal` date NOT NULL,
  `jk` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id`, `nik`, `nama`, `tempat`, `tanggal`, `jk`) VALUES
(1, '1000130998222', 'Member 1', 'Bandung', '2020-12-02', 'Pria'),
(2, '1000130998222', 'Member 2', 'Bandung', '2020-12-02', 'Wanita'),
(3, '1000130998222', 'Member 3', 'Bandung', '2020-12-02', 'Pria'),
(4, '1000130998222', 'Member 4', 'Bandung', '2020-12-02', 'Wanita'),
(6, '1000130998224', 'Member 5', 'Solo', '2020-12-12', 'Pria'),
(7, '24242424', 'Member 6', 'Nusa Tenggara', '2020-01-19', 'Wanita');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `durasi` int(11) NOT NULL,
  `pinjam` date NOT NULL,
  `kembali` date NOT NULL,
  `biaya` int(11) NOT NULL,
  `dp` int(11) NOT NULL,
  `status_pinjam` int(11) NOT NULL,
  `status_bayar` int(11) NOT NULL,
  `status_dp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `id_barang`, `id_member`, `durasi`, `pinjam`, `kembali`, `biaya`, `dp`, `status_pinjam`, `status_bayar`, `status_dp`) VALUES
(1, 1, 1, 1, '2020-12-15', '2020-12-16', 200000, 20000, 1, 0, 1),
(2, 3, 1, 3, '2020-03-12', '2020-03-15', 1500003, 150000, 0, 0, 1),
(3, 2, 1, 6, '2020-03-05', '2020-03-11', 720000, 72000, 1, 0, 1),
(5, 2, 1, 6, '2020-03-05', '2020-03-11', 120000, 12000, 1, 0, 1),
(6, 1, 6, 3, '2020-12-15', '2020-12-18', 120000, 12000, 1, 0, 1),
(7, 1, 6, 4, '2020-03-14', '2020-03-18', 160000, 16000, 0, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `uname` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `uname`, `password`, `role`) VALUES
(1, 'admin', 'admin', 1),
(2, 'petugas', 'petugas', 0),
(4, 'petugas 2', 'abcd', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_member` (`id_member`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
