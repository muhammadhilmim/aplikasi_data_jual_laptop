-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 07 Apr 2022 pada 07.52
-- Versi Server: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laptop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `laptop`
--

CREATE TABLE `laptop` (
  `id` int(11) NOT NULL,
  `harga` varchar(150) NOT NULL,
  `stok` int(50) NOT NULL,
  `foto` varchar(500) NOT NULL,
  `merk` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `laptop`
--

INSERT INTO `laptop` (`id`, `harga`, `stok`, `foto`, `merk`) VALUES
(2, '6.999.000', 5, 'aspire.jpg', 'aspire'),
(3, '6.999.000', 5, 'asus2.jpg', 'asus'),
(4, '7.000.000', 5, 'asus3.jpg', 'asus'),
(5, '7.000.000', 5, 'infinix.jpg', 'infinix'),
(6, '7.000.000', 5, 'lenovo.jpg', 'lenovo'),
(7, '7.000.000', 5, 'redmi.jpg', 'redmi'),
(15, '6.999.000', 5, 'Laptop-ASUS-Terbaik1.jpg', 'Asus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_hp` varchar(14) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id`, `username`, `nama`, `no_hp`, `password`, `level`) VALUES
(5, 'hilmi', 'muhammad hilmi', '093624254', '827ccb0eea8a706c4c34a16891f84e7b', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `tanggal` date NOT NULL,
  `id` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `pegawai` varchar(40) NOT NULL,
  `jenis_laptop` text NOT NULL,
  `banyaknya` varchar(50) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `foto` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`tanggal`, `id`, `nama`, `pegawai`, `jenis_laptop`, `banyaknya`, `jumlah`, `foto`) VALUES
('2021-11-01', 1, 'hikari', 'hilmi', 'asus', '1', '6.999.000', 'asus1.jpg'),
('2022-04-11', 2, 'Falhan Husnaeni', 'hilmi', 'asus', '1', '6.999.000', 'asus2.jpg'),
('2022-04-11', 3, 'kudus', 'hilmi', 'asus', '1', '7.000.000', 'asus3.jpg'),
('2022-04-05', 4, 'stella', 'hilmi', 'infinix', '1', '7.000.000', 'infinix.jpg'),
('2022-04-05', 5, 'high', 'hilmi', 'lenovo', '1', '7.000.000', 'lenovo.jpg'),
('2022-04-04', 6, 'foul', 'hilmi', 'redmi', '1', '7.000.000', 'redmi.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `laptop`
--
ALTER TABLE `laptop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `laptop`
--
ALTER TABLE `laptop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
