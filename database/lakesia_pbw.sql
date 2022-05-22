-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Bulan Mei 2022 pada 05.04
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lakesia_pbw`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `catatanlansia`
--

CREATE TABLE `catatanlansia` (
  `username_lan` varchar(255) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `catatanlansia`
--

INSERT INTO `catatanlansia` (`username_lan`, `isi`) VALUES
('srihariyati', 'jangan lupa minum obat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `catatanperawat`
--

CREATE TABLE `catatanperawat` (
  `username_per` varchar(255) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftarobat`
--

CREATE TABLE `daftarobat` (
  `username_lan` varchar(255) NOT NULL,
  `nama_lan` varchar(40) NOT NULL,
  `alamat_lan` varchar(40) NOT NULL,
  `nama_obat` text NOT NULL,
  `jadwal` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `daftarobat`
--

INSERT INTO `daftarobat` (`username_lan`, `nama_lan`, `alamat_lan`, `nama_obat`, `jadwal`) VALUES
('wwqw', 'weqwq', 'qweqwe', 'weqwewqeqw', '22112');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datalansia`
--

CREATE TABLE `datalansia` (
  `username_lan` varchar(20) NOT NULL,
  `password_lan` varchar(255) NOT NULL,
  `nama_lan` text NOT NULL,
  `nohp_lan` text NOT NULL,
  `alamat_lan` text NOT NULL,
  `tinggi` int(5) NOT NULL,
  `berat` int(5) NOT NULL,
  `tgllahir_lan` date NOT NULL,
  `jk_lan` text NOT NULL,
  `agama` text NOT NULL,
  `goldar` text NOT NULL,
  `id_lan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `datalansia`
--

INSERT INTO `datalansia` (`username_lan`, `password_lan`, `nama_lan`, `nohp_lan`, `alamat_lan`, `tinggi`, `berat`, `tgllahir_lan`, `jk_lan`, `agama`, `goldar`, `id_lan`) VALUES
('wwqw', '12', 'weqwq', 'weqwq', 'qweqwe', 12, 12, '2022-05-01', 'Laki-laki', 'Islam', 'B', 19);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dataperawat`
--

CREATE TABLE `dataperawat` (
  `username_per` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_per` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_per` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_per` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nohp_per` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_per` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgllahir_per` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk_per` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pos` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `dataperawat`
--

INSERT INTO `dataperawat` (`username_per`, `password_per`, `no_per`, `nama_per`, `nohp_per`, `alamat_per`, `tgllahir_per`, `jk_per`, `nama_pos`, `id`) VALUES
('Nabil', '1', '231232321312312', 'Teuku Nabil Muhammad Dhuha', '082164848070', 'Jl.T.Abdullah', '2022-05-02', 'Laki-laki', 'Baet', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayatcheckup`
--

CREATE TABLE `riwayatcheckup` (
  `username_lan` varchar(255) NOT NULL,
  `nama_lan` varchar(255) NOT NULL,
  `alamat_lan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `tekanandarah` text NOT NULL,
  `guladarah` text NOT NULL,
  `asamurat` text NOT NULL,
  `kolesterol` text NOT NULL,
  `nama_pemeriksa` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `riwayatcheckup`
--

INSERT INTO `riwayatcheckup` (`username_lan`, `nama_lan`, `alamat_lan`, `tanggal`, `tekanandarah`, `guladarah`, `asamurat`, `kolesterol`, `nama_pemeriksa`) VALUES
('wwqw', 'weqwq', 'qweqwe', '2022-05-22', '12', '12', '12', '12', 'Teuku Nabil Muhammad Dhuha');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `datalansia`
--
ALTER TABLE `datalansia`
  ADD PRIMARY KEY (`id_lan`),
  ADD UNIQUE KEY `username_lan` (`username_lan`);

--
-- Indeks untuk tabel `dataperawat`
--
ALTER TABLE `dataperawat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_perawat2_username_per_unique` (`username_per`),
  ADD UNIQUE KEY `data_perawat2_id_pegawai_unique` (`no_per`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `datalansia`
--
ALTER TABLE `datalansia`
  MODIFY `id_lan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `dataperawat`
--
ALTER TABLE `dataperawat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
