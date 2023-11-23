-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jun 2023 pada 18.29
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk_saw`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int(11) NOT NULL,
  `keterangan` varchar(20) NOT NULL,
  `tahun` int(11) NOT NULL,
  `nik` varchar(30) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `departemen` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_telp` varchar(50) NOT NULL,
  `alamat` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `keterangan`, `tahun`, `nik`, `nama`, `jenis_kelamin`, `departemen`, `email`, `no_telp`, `alamat`) VALUES
(52, 'Sudah', 2019, '1907411010', 'Anik', 'Pria', 'Belum Bekerja', 'ridwanwan784@gmail.com', '081231434232', 'Kp. Rawa Aren Jl. Makam Pahlawan Rt/04 Rw/ 01'),
(53, 'Sudah', 2020, '1907411001', 'Pradito', 'Pria', 'Pegawai Swasta', 'dendifazar0@gmail.com', '0876563723', 'Jl. Garut'),
(54, 'Belum', 2020, '1907411003', 'Ratna', 'Wanita', 'Pelajar / Mahasiswa', 'liza@gmail.com', '08612343422', 'Depok Jaya'),
(55, 'Sudah', 2018, '1907411002', 'Suprapti', 'Pria', 'Pegawai Swasta', 'ilyas@gmail.com', '0812323234', 'Bekasi Jaya'),
(56, 'Sudah', 2019, '1907411004', 'Jono', 'Pria', 'Pegawai Negri', 'ilham@gmail.com', '087283432', 'Bogor'),
(57, 'Sudah', 2019, '1907411005', 'Suroyo', 'Wanita', 'Belum Bekerja', 'rere@gmail.com', '0872323212', 'Bogor Jaya'),
(58, 'Sudah', 2020, '1907411007', 'Adam', 'Pria', 'Belum Bekerja', 'roki@gmail.com', '0987623217127', 'Bandung'),
(59, 'Sudah', 2020, '1907411008', 'Doni', 'Wanita', 'Pelajar / Mahasiswa', 'oki@gmail.com', '098765623', 'Bandung'),
(60, 'Sudah', 2021, '1907411009', 'Rahmat', 'Wanita', 'Pegawai Negri', 'keysia@gmail.com', '098763243', 'Bekasi'),
(61, 'Sudah', 2022, '1907411015', 'Setyowati', 'Pria', 'Belum Bekerja', 'julvi@gmail.com', '08123453232', 'Bekasi Timur'),
(62, 'Sudah', 2019, '010183082824', 'Felicia', 'Wanita', 'Belum Bekerja', 'felicia@gmail.com', '423809489302', 'Kp.Putat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `nilai` float(10,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `id_alternatif`, `nilai`) VALUES
(1, 52, 0.2778),
(2, 53, 0.4723),
(3, 54, 0.3611),
(4, 55, 0.3056),
(5, 56, 0.5556),
(6, 57, 0.1945),
(7, 58, 0.4445),
(8, 59, 0.5001),
(9, 60, 0.3889),
(10, 61, 0.5278),
(11, 62, 0.3889);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `kode_kriteria` varchar(100) NOT NULL,
  `bobot` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `keterangan`, `kode_kriteria`, `bobot`) VALUES
(24, 'Keturunan', 'C1', '0.1667'),
(25, 'Usia', 'C2', '0.2778'),
(26, 'Berat Badan', 'C3', '0.1667'),
(27, 'Pola Makan', 'C4', '0.2222'),
(28, 'Riwayat Penyakit Lainnya', 'C5', '0.1667');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilaian`
--

CREATE TABLE `penilaian` (
  `id_penilaian` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `penilaian`
--

INSERT INTO `penilaian` (`id_penilaian`, `id_alternatif`, `id_kriteria`, `nilai`) VALUES
(269, 52, 24, 163),
(270, 52, 25, 177),
(271, 52, 26, 166),
(272, 52, 27, 164),
(273, 52, 28, 175),
(275, 53, 25, 172),
(276, 53, 26, 171),
(277, 53, 27, 174),
(278, 53, 28, 175),
(279, 54, 24, 156),
(280, 54, 25, 172),
(281, 54, 26, 166),
(282, 54, 27, 169),
(283, 54, 28, 175),
(284, 55, 24, 156),
(285, 55, 25, 172),
(286, 55, 26, 171),
(287, 55, 27, 174),
(288, 55, 28, 175),
(289, 56, 24, 163),
(290, 56, 25, 177),
(291, 56, 26, 166),
(292, 56, 27, 169),
(293, 56, 28, 170),
(295, 57, 25, 177),
(296, 57, 26, 166),
(297, 57, 27, 164),
(298, 57, 28, 175),
(300, 58, 25, 167),
(301, 58, 26, 171),
(302, 58, 27, 174),
(304, 59, 24, 163),
(305, 59, 25, 177),
(306, 59, 26, 171),
(307, 59, 27, 174),
(308, 59, 28, 170),
(309, 60, 24, 156),
(310, 60, 25, 177),
(311, 60, 26, 166),
(312, 60, 27, 169),
(313, 60, 28, 170),
(314, 61, 24, 156),
(315, 61, 25, 172),
(316, 61, 26, 171),
(317, 61, 27, 169),
(318, 61, 28, 175),
(319, 53, 24, 163),
(320, 57, 24, 173),
(321, 58, 24, 156),
(322, 58, 28, 175),
(323, 62, 24, 156),
(324, 62, 25, 167),
(325, 62, 26, 166),
(326, 62, 27, 164),
(327, 62, 28, 175);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_kriteria`
--

CREATE TABLE `sub_kriteria` (
  `id_sub_kriteria` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `nilai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`id_sub_kriteria`, `id_kriteria`, `deskripsi`, `nilai`) VALUES
(156, 24, 'Tidak ada', '1'),
(160, 28, 'Sedang menderita penyakit selain tekanan darah tinggi(hipertensi) atau kolesterol', '2'),
(163, 24, 'Ayah dan Ibu', '3'),
(164, 27, '3 kali sehari', '2'),
(166, 26, '31 - 45', '2'),
(167, 25, '> 45', '3'),
(169, 27, '> 3 kali sehari', '3'),
(170, 28, 'Sedang menderita penyakit tekanan darah tinggi(hipertensi) atau kolesterol', '3'),
(171, 26, '> 45', '3'),
(172, 25, '31 - 45', '2'),
(173, 24, 'Ayah atau Ibu', '2'),
(174, 27, '< 3 kali sehari', '1'),
(175, 28, 'Tidak sedang menderita penyakit lain', '1'),
(176, 26, '0 - 30', '1'),
(177, 25, '0 - 30', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `id_user_level`, `nama`, `email`, `username`, `password`) VALUES
(1, 1, 'Billy Nur Faizi', 'billysea27@gmail.com', 'Billy', '81dc9bdb52d04dc20036dbd8313ed055'),
(7, 2, 'User', 'user@gmail.com', 'user', 'ee11cbb19052e40b07aac0ca060c23ee');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_level`
--

CREATE TABLE `user_level` (
  `id_user_level` int(11) NOT NULL,
  `user_level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user_level`
--

INSERT INTO `user_level` (`id_user_level`, `user_level`) VALUES
(1, 'Administrator'),
(2, 'User');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indeks untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`),
  ADD KEY `id_alternatif` (`id_alternatif`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id_penilaian`),
  ADD KEY `id_alternatif` (`id_alternatif`),
  ADD KEY `id_kriteria` (`id_kriteria`),
  ADD KEY `nilai` (`nilai`);

--
-- Indeks untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD PRIMARY KEY (`id_sub_kriteria`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_user_level` (`id_user_level`);

--
-- Indeks untuk tabel `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`id_user_level`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT untuk tabel `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id_penilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=328;

--
-- AUTO_INCREMENT untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  MODIFY `id_sub_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `user_level`
--
ALTER TABLE `user_level`
  MODIFY `id_user_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD CONSTRAINT `hasil_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD CONSTRAINT `penilaian_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaian_ibfk_2` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaian_ibfk_3` FOREIGN KEY (`nilai`) REFERENCES `sub_kriteria` (`id_sub_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD CONSTRAINT `sub_kriteria_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_user_level`) REFERENCES `user_level` (`id_user_level`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
