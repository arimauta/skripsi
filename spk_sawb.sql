-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Nov 2023 pada 05.01
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk_sawb`
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
(1, 'Belum', 2002, '3276', 'ANANDA SITI SARAH', 'Wanita', 'Belum Bekerja', 'ananda784@gmail.com', '0812314342323', 'Depok'),
(2, 'Sudah', 1976, '3276', 'ASHABUR ROZI', 'Pria', 'Pegawai Swasta', 'dashabur@gmail.com', '087656372384', 'Depok'),
(3, 'Sudah', 1975, '3276', 'KHOLILAH', 'Wanita', 'Pegawai Swasta', 'liza@gmail.com', '085123434281', 'Depok'),
(4, 'Belum', 2006, '3276', 'MUHAMMAD DINUL HAQQI', 'Pria', 'Pelajar / Mahasiswa', 'dinul23@gmail.com', '081232323498', 'Depok'),
(5, 'Belum', 2005, '3276', 'MUHAMMAD ZAQI RAMADHANI', 'Pria', 'Pelajar / Mahasiswa', 'zaqise12@gmail.com', '087283432912', 'Depok'),
(6, 'Sudah', 1975, '3276', 'IDA MUZDALIPA', 'Wanita', 'Pegawai Swasta', 'idare_@gmail.com', '0856738912', 'Depok'),
(7, 'Sudah', 1961, '3276', 'ABDULLAH', 'Pria', 'Pelajar / Mahasiswa', 'abdullah12@gmail.com', '0897623217127', 'Depok'),
(8, 'Sudah', 1970, '3276', 'MUBADAMAH', 'Pria', 'Pegawai Swasta', 'muba12_@gmail.com', '08921827821', 'Depok'),
(9, 'Belum', 2006, '3276', 'SITI MUTMAINNAH', 'Wanita', 'Pelajar / Mahasiswa', 'sitikeys12@gmail.com', '088910282827', 'Depok'),
(10, 'Sudah', 1973, '3276', 'NURHASANAH JAMIL', 'Wanita', 'Belum Bekerja', 'julvi@gmail.com', '08191018221', 'Depok'),
(11, 'Belum', 2005, '3276', 'DELITA HAFIDAH', 'Wanita', 'Pelajar / Mahasiswa', 'delitaksa2@gmail.com', '088711927813', 'Depok'),
(12, 'Belum', 1998, '3276', 'ABDURRAFI', 'Pria', 'Belum Bekerja', 'abdullc27@gmail.com', '08891822822', 'Depok'),
(13, 'Belum', 2009, '3276', 'NAUFAL RAMADHAN', 'Pria', 'Pelajar / Mahasiswa', 'naufalkksw12@gmail.com', '085029292898', 'Depok'),
(14, 'Belum', 2004, '3276', 'FAIZ TRI SAPUTRA', 'Pria', 'Pelajar / Mahasiswa', 'faizken12@gmail.com', '085701729292', 'Depok'),
(15, 'Sudah', 1974, '3276', 'MARDANI', 'Pria', 'Pegawai Swasta', 'mardani12@gmail.com', '0818292732', 'Depok'),
(16, 'Belum', 2004, '3276', 'RIAN ABDU APRILIANA', 'Wanita', 'pegawainegri', 'riandjja34@gmail.com', '088709191827', 'Depok'),
(17, 'Sudah', 1979, '3276', 'SRI HADI MULYANI', 'Wanita', 'Pegawai Swasta', 'srioken32@gmail.com', '08819012398', 'Depok'),
(18, 'Sudah', 1999, '3276', 'NAHRAWI', 'Pria', 'pegawaiswasta', 'nahrawi89@gmail.com', '0818277382919', 'Depok'),
(19, 'Belum', 2009, '3276', 'ADINDA VALERIANA', 'Wanita', 'pelajar/mahasiswa', 'adinda_@gmail.com', '085198272819', 'Depok'),
(20, 'Sudah', 1991, '3276', 'NINIK SUGIARTI', 'Pria', 'pegawainegri', 'niniksugiarti89@gmail.com', '0899986281', 'Depok'),
(21, 'Sudah', 1959, '3276', 'MUJI HARTUTI', 'Wanita', 'pegawaiswasta', 'muji2@gmail.com', '081829288291', 'Depok'),
(22, 'Sudah', 1955, '3276', 'ABDULLOH', 'Pria', 'pegawainegri', 'abdullah25@gmail.com', '085829283931', 'Depok'),
(23, 'Sudah', 1988, '3276', 'SRI WULANDARI', 'Wanita', 'pegawaiswasta', 'srisuwarti1@gmail.com', '088018792872', 'Depok'),
(24, 'Belum', 2005, '3276', 'MUHAMMAD NIZAAR', 'Pria', 'pelajar/mahasiswa', 'abizarrayan23@gmail.com', '08889198178262', 'Depok'),
(25, 'Sudah', 1968, '3276', 'SUMANTRI', 'Wanita', 'Belum Bekerja', 'sumatri34@gmail.com', '0857292827281', 'Depok'),
(579, 'Sudah', 2001, '123', 'pak abc', 'Pria', 'pegawaiswasta', 'a@gmail.com', '8689809', 'pamulang'),
(580, 'Belum', 2001, '1213', 'aaaaa', 'Pria', 'belumbekerja', 'a@gmail.com', '85860', 'petir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `nilai` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `id_alternatif`, `nilai`) VALUES
(1, 1, '0.83333333333333'),
(2, 2, '0.85666666666667'),
(3, 3, '0.84333333333333'),
(4, 4, '0.52333333333333'),
(5, 5, '0.79'),
(6, 6, '0.62333333333333'),
(7, 7, '0.95333333333333'),
(8, 8, '0.96666666666667'),
(9, 9, '0.5'),
(10, 10, '0.75333333333333'),
(11, 11, '0.47333333333333'),
(12, 12, '0.72'),
(13, 13, '0.41'),
(14, 14, '0.52333333333333'),
(15, 15, '0.89'),
(16, 16, '0.64'),
(17, 17, '0.94'),
(18, 18, '0.65666666666667'),
(19, 19, '0.64'),
(20, 20, '0.97'),
(21, 21, '0.97'),
(22, 22, '0.97'),
(23, 23, '0.90666666666667'),
(24, 24, '0.41'),
(25, 25, '0.79'),
(26, 579, '0.55333333333333'),
(27, 580, '0.79333333333333');

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
(1, 'Keturunan', 'C1', '0.45'),
(2, 'Usia', 'C2', '0.25'),
(3, 'Berat Badan', 'C3', '0.15'),
(4, 'Pola Makan', 'C4', '0.1'),
(5, 'Riwayat Penyakit Lainnya', 'C5', '0.05');

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
(1, 1, 1, 3),
(2, 1, 2, 15),
(3, 1, 3, 182),
(4, 1, 4, 4),
(5, 1, 5, 13),
(6, 2, 2, 10),
(7, 2, 3, 5),
(8, 2, 4, 4),
(9, 2, 5, 8),
(10, 3, 1, 3),
(11, 3, 2, 10),
(12, 3, 3, 14),
(13, 3, 4, 7),
(14, 3, 5, 2),
(15, 4, 1, 1),
(16, 4, 2, 10),
(17, 4, 3, 5),
(18, 4, 4, 4),
(19, 4, 5, 13),
(20, 5, 1, 3),
(21, 5, 2, 15),
(22, 5, 3, 5),
(23, 5, 4, 4),
(24, 5, 5, 2),
(25, 6, 2, 15),
(296, 6, 3, 5),
(297, 6, 4, 4),
(298, 6, 5, 13),
(300, 7, 2, 6),
(301, 7, 3, 9),
(302, 7, 4, 7),
(304, 8, 1, 3),
(305, 8, 2, 6),
(306, 8, 3, 182),
(307, 8, 4, 4),
(308, 8, 5, 8),
(309, 9, 1, 1),
(310, 9, 2, 15),
(311, 9, 3, 182),
(312, 9, 4, 12),
(313, 9, 5, 13),
(314, 10, 1, 11),
(315, 10, 2, 6),
(316, 10, 3, 9),
(317, 10, 4, 4),
(318, 10, 5, 13),
(319, 2, 1, 3),
(320, 6, 1, 11),
(321, 7, 1, 3),
(322, 7, 5, 2),
(323, 11, 1, 1),
(324, 11, 2, 15),
(325, 11, 3, 5),
(326, 11, 4, 4),
(327, 11, 5, 13),
(328, 12, 1, 11),
(329, 12, 2, 10),
(330, 12, 3, 9),
(331, 12, 4, 4),
(332, 12, 5, 2),
(333, 13, 1, 1),
(334, 13, 2, 15),
(335, 13, 3, 14),
(336, 13, 4, 12),
(337, 13, 5, 13),
(338, 14, 1, 1),
(339, 14, 2, 15),
(340, 14, 3, 5),
(341, 14, 4, 7),
(342, 14, 5, 2),
(343, 15, 1, 3),
(344, 15, 2, 6),
(345, 15, 3, 5),
(346, 15, 4, 4),
(347, 15, 5, 2),
(348, 17, 1, 3),
(349, 17, 2, 6),
(350, 17, 3, 5),
(351, 17, 4, 7),
(352, 17, 5, 8),
(353, 16, 1, 11),
(354, 16, 2, 15),
(355, 16, 3, 5),
(356, 16, 4, 4),
(357, 16, 5, 2),
(358, 18, 1, 11),
(359, 18, 2, 10),
(360, 18, 3, 5),
(361, 18, 4, 12),
(362, 18, 5, 2),
(363, 19, 1, 11),
(364, 19, 2, 15),
(365, 19, 3, 5),
(366, 19, 4, 4),
(367, 19, 5, 2),
(368, 20, 1, 3),
(369, 20, 2, 6),
(370, 20, 3, 9),
(371, 20, 4, 7),
(372, 20, 5, 8),
(373, 21, 1, 3),
(374, 21, 2, 6),
(375, 21, 3, 9),
(376, 21, 4, 7),
(377, 21, 5, 8),
(378, 22, 1, 3),
(379, 22, 2, 6),
(380, 22, 3, 9),
(381, 22, 4, 7),
(382, 22, 5, 8),
(383, 23, 1, 3),
(384, 23, 2, 6),
(385, 23, 3, 5),
(386, 23, 4, 4),
(387, 23, 5, 8),
(388, 24, 1, 1),
(389, 24, 2, 15),
(390, 24, 3, 14),
(391, 24, 4, 12),
(392, 24, 5, 13),
(393, 25, 1, 11),
(394, 25, 2, 6),
(395, 25, 3, 5),
(396, 25, 4, 7),
(397, 25, 5, 8),
(398, 579, 1, 1),
(399, 579, 2, 10),
(400, 579, 3, 9),
(401, 579, 4, 4),
(402, 579, 5, 13),
(403, 580, 1, 3),
(404, 580, 2, 10),
(405, 580, 3, 14),
(406, 580, 4, 4),
(407, 580, 5, 13);

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
(1, 1, 'Tidak ada', '1'),
(2, 5, 'Sedang menderita penyakit selain tekanan darah tinggi(hipertensi) serta kolesterol dari ayah atau ibu', '2'),
(3, 1, 'Ayah dan Ibu', '3'),
(4, 4, '3 kali sehari', '2'),
(5, 3, '31 - 45 kg', '3'),
(6, 2, '> 45', '5'),
(7, 4, '> 3 kali sehari', '3'),
(8, 5, 'Sedang menderita penyakit tekanan darah tinggi(hipertensi) serta kolesterol ayah dan ibu', '3'),
(9, 3, '45 - 63 kg', '4'),
(10, 2, '31 - 45', '4'),
(11, 1, 'Ayah atau Ibu', '2'),
(12, 4, '< 3 kali sehari', '1'),
(13, 5, 'Tidak sedang menderita penyakit lain', '1'),
(14, 3, '21 - 30 kg', '2'),
(15, 2, '27 - 30', '3'),
(179, 2, '0 - 15', '1'),
(180, 2, '16 - 26', '2'),
(181, 3, '10 - 20 kg', '1'),
(182, 3, '> 64 kg', '5');

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
(1, 1, 'Arief Maulana Thamrin', 'ariefmt123@gmail.com', 'Admin', '81dc9bdb52d04dc20036dbd8313ed055'),
(8, 2, 'Arief Maulana Thamrin', 'Arief123@gmail.com', 'User', '202cb962ac59075b964b07152d234b70');

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
  MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=581;

--
-- AUTO_INCREMENT untuk tabel `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id_penilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=408;

--
-- AUTO_INCREMENT untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  MODIFY `id_sub_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
