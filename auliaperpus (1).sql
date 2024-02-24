-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Feb 2024 pada 14.30
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auliaperpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_buku`
--

CREATE TABLE `t_buku` (
  `bukuID` int(11) NOT NULL,
  `sampul_buku` varchar(255) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `kategoriID` int(11) NOT NULL,
  `penulis` varchar(255) DEFAULT NULL,
  `penerbit` varchar(255) DEFAULT NULL,
  `tahunTerbit` int(11) DEFAULT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_buku`
--

INSERT INTO `t_buku` (`bukuID`, `sampul_buku`, `judul`, `kategoriID`, `penulis`, `penerbit`, `tahunTerbit`, `deskripsi`, `stok`) VALUES
(1, 'Ayat ayat cinta.jpg', 'Ayat Ayat Cinta         ', 1, 'Habiburrahman El Shirazy', 'Pustaka', 2003, 'Novel ini menceritakan tentang kisah cinta berlatar belakang Islam nan religius. Cerita Ayat Ayat Cinta bermula dari kehidupan Fahri bin Abdullah Shiddig. Fahri adalah seorang pelajar dari Indonesia yang berusaha mengejar gelar master di Al-Azhar, Mesir. ', 9),
(5, 'Sistem-Pemerintahan-Indonesia.png', 'Sistem Pemerintahan Indonesia ', 4, 'Saldi Isra', 'Pustaka', 2018, 'Buku ini membahas pergulatan perkembangan sistem pemerintahan Indonesia sejak awal kemerdekaan hingga pasca perubahan Undang-Undang Dasar tahun 1945. Sebagai buah dari reformasi konstitusi (constitutional reform) 1999-2002. Pembahasan di sekitar proses pe', 16),
(6, 'malin kundang.jpg', 'Malin Kundang   ', 5, 'Moch Isnaeni', 'Elex Media Komputindo', 2017, 'Dongeng ini bercerita tentang seorang anak yang durhaka kepada ibunya dan akhirnya dihukum menjadi batu karena kesombongannya.', 19),
(7, 'promaise.jpg', 'Promaise  ', 2, 'Dwitasari', 'Loveable', 2016, 'Orang tua Rahman tidak menyukai Aji  dan memintanya untuk menyudahi pertemanan mereka', 17),
(8, 'imajinasi.jpg', 'Hanya Imajinasi   ', 6, 'Naomi Lesmanana Putri', 'Gramedia Pustaka', 2017, 'Berceritakan tentang kisah cinta, persahabatan dan permasalahan yang terjadi dilingkungan sekolah.', 7),
(9, 'atlas.jpeg', 'Atlas    ', 4, 'Paramukti Wibowo & Rinaldy Saputro', 'Anak Hebat Indonesia', 2021, 'Buku ini disusun berdasarkan data terbaru perkembangan geografis Indonesia dan Dunia.', 32),
(10, 'beijing.jpg', 'Assalamualaikum Beijing ', 1, 'Asma Nadia', 'Noura Publishing', 2013, 'Dewa dan Ra adalah busur dan anak panah. Keduanya memiliki bidikan yang sama, sebuah titik bernama istana cinta. Tapi arah angin mengubah Dewa. Sebagai busur, dia memilih sasarannya sendiri dan membiarkan anak panah melesat tanpa daya. Sebagai laki-laki p', 6),
(11, '98114_f.jpg', 'Hutan Cahaya ', 5, 'Jumi Haryani & Ratih Cahaya', 'Gema Insani', 2016, 'Hutan ini berada sangat jauh dari keramaian. Terletak di garis Khatulistiwa, membuat hutan ini selalu terkena pancaran sinar matahari. Oleh sebab itulah, hutan ini selalu terang dan penuh cahaya sehingga diberi nama Hutan Cahaya.', 28),
(12, 'ski.jpg', 'Sejarah Kebudayaan Islam  ', 4, 'Dr Ading Kusdiana M.Ag', 'Pustaka', 2013, 'Buku ini melukiskan perjalanan islam sebagai agama dan sumber nilai yang menormatifkan kehidupan sosial masyarakat sehingga membentuk kebudayaan dengan khas secara religius. ', 14),
(13, 'bio.jpg', 'Biografi BJ. Habibi ', 7, 'A Makmur Makka', 'THC Mandiri', 2012, 'Biography of Bacharuddin Jusuf Habibie, the third Indonesian president.', 30),
(14, 'bio2.jpg', 'Biografi Soekarno  ', 7, 'Anom Wahani Wicaksana', 'C Klik Media', 2018, 'Buku ini merangkum perjalanan hidup Sukarno mulai sejak masih kecil hingga wafat dan berupaya menetapkan Sukarno sebagai manusia yang lengkap. Selain itu, buku ini ditulis dengan bahasa yang mudah dipahami dan cara cerita yang menarik. Dramatisasinya memb', 17),
(15, 'dongeng.jpg', 'Smart Big Book 365 Dongeng Pengantar Tidur ', 5, 'Fitri Nurul Aulia & Dian Joshua', 'CikalAksara', 2019, 'Jika kamu senang membaca atau diceritakan cerita dongeng, buku ini patut kamu miliki. Di dalamnya terdapat kumpulan 365 dongeng mulai dari dunia kerajaan, para kurcaci, fabel hewan, dan dongeng-dongeng ajaib nan seru lainnya. Buku ini siap menemani kamu b', 25);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kategoribuku`
--

CREATE TABLE `t_kategoribuku` (
  `kategoriID` int(11) NOT NULL,
  `namaKategori` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_kategoribuku`
--

INSERT INTO `t_kategoribuku` (`kategoriID`, `namaKategori`) VALUES
(1, 'Novel'),
(2, 'Fiksi'),
(4, 'Non Fiksi'),
(5, 'Dongeng'),
(6, 'Cerpen'),
(7, 'Biografi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kategoribuku_relasi`
--

CREATE TABLE `t_kategoribuku_relasi` (
  `kategoriBukuRelasiID` int(11) NOT NULL,
  `bukuID` int(11) DEFAULT NULL,
  `kategoriID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_peminjaman`
--

CREATE TABLE `t_peminjaman` (
  `peminjamanID` int(11) NOT NULL,
  `KodePinjam` char(10) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `bukuID` int(11) DEFAULT NULL,
  `Jumlah` int(11) NOT NULL,
  `tgl_peminjaman` date DEFAULT NULL,
  `tgl_pengembalian` date DEFAULT NULL,
  `statusPeminjaman` enum('dipinjam','dikembalikan') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_peminjaman`
--

INSERT INTO `t_peminjaman` (`peminjamanID`, `KodePinjam`, `userID`, `bukuID`, `Jumlah`, `tgl_peminjaman`, `tgl_pengembalian`, `statusPeminjaman`) VALUES
(13, 'PA003', 20, 1, 4, '2024-02-12', '2024-02-19', 'dikembalikan'),
(15, 'PA004', 21, 9, 2, '2024-02-11', '2024-02-18', 'dipinjam'),
(16, 'PA005', 21, 6, 1, '2024-02-20', '2024-02-27', 'dikembalikan'),
(17, 'PA006', 23, 7, 1, '2024-02-11', '2024-02-18', 'dipinjam');

--
-- Trigger `t_peminjaman`
--
DELIMITER $$
CREATE TRIGGER `kembali_stok` AFTER UPDATE ON `t_peminjaman` FOR EACH ROW BEGIN
UPDATE t_buku SET stok=stok-new.Jumlah
WHERE bukuID= old.bukuID;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tambah_stok` AFTER INSERT ON `t_peminjaman` FOR EACH ROW BEGIN
UPDATE t_buku set stok = stok-new.Jumlah
WHERE bukuID = new.bukuID;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_ulasanbuku`
--

CREATE TABLE `t_ulasanbuku` (
  `ulasanID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `bukuID` int(11) DEFAULT NULL,
  `ulasan` text DEFAULT NULL,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_ulasanbuku`
--

INSERT INTO `t_ulasanbuku` (`ulasanID`, `userID`, `bukuID`, `ulasan`, `rating`) VALUES
(1, 1, 1, 'Menarik, bisa dipahami bahsa arabnya', 5),
(2, 1, 1, 'Menarik, bisa dipahami bahsa arabnya', 5),
(5, 21, 1, 'membuat saya mengerti arti cinta', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_user`
--

CREATE TABLE `t_user` (
  `userID` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telp` varchar(14) DEFAULT NULL,
  `namaLengkap` varchar(150) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `level` enum('admin','petugas','peminjam') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_user`
--

INSERT INTO `t_user` (`userID`, `username`, `password`, `email`, `telp`, `namaLengkap`, `alamat`, `level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@email.com', NULL, 'administrator', 'admin', 'admin'),
(2, 'Petugas ', 'afb91ef692fd08c445e8cb1bab2ccf9c', 'petugas@gmail.com', '08316794305', 'Petugas1', 'Kalisari Timur', 'petugas'),
(20, 'adnex', '614913bc360cdfd1c56758cb87eb9e8f', 'dinaginding@gmail.com', ' 08882046541', 'Aulia Dina', 'Galanggang', 'peminjam'),
(21, 'andini', 'b3e0d57ba78cbdc6fcba9c7a467e8fad', 'andini@gmail.com', ' 083456789039', 'Andini Regina Utami', 'Firdaus', 'peminjam'),
(22, 'roby', 'c5c5a17bbf5d31171d022fb123416d1a', 'roby@gmail.com', ' 083456789039', 'Roby', 'dungus purna', 'peminjam'),
(23, 'zaidan', 'ec3e003f9fe5260e3973ebf4bfaf7ef2', 'zaidan@gmail.com', ' 081234567890', 'Zaidan', 'Ciroyom', 'peminjam');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `t_buku`
--
ALTER TABLE `t_buku`
  ADD PRIMARY KEY (`bukuID`);

--
-- Indeks untuk tabel `t_kategoribuku`
--
ALTER TABLE `t_kategoribuku`
  ADD PRIMARY KEY (`kategoriID`);

--
-- Indeks untuk tabel `t_kategoribuku_relasi`
--
ALTER TABLE `t_kategoribuku_relasi`
  ADD PRIMARY KEY (`kategoriBukuRelasiID`),
  ADD KEY `bukuID` (`bukuID`),
  ADD KEY `kategoriID` (`kategoriID`);

--
-- Indeks untuk tabel `t_peminjaman`
--
ALTER TABLE `t_peminjaman`
  ADD PRIMARY KEY (`peminjamanID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `bukuID` (`bukuID`);

--
-- Indeks untuk tabel `t_ulasanbuku`
--
ALTER TABLE `t_ulasanbuku`
  ADD PRIMARY KEY (`ulasanID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `bukuID` (`bukuID`);

--
-- Indeks untuk tabel `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `t_buku`
--
ALTER TABLE `t_buku`
  MODIFY `bukuID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `t_kategoribuku`
--
ALTER TABLE `t_kategoribuku`
  MODIFY `kategoriID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `t_kategoribuku_relasi`
--
ALTER TABLE `t_kategoribuku_relasi`
  MODIFY `kategoriBukuRelasiID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `t_peminjaman`
--
ALTER TABLE `t_peminjaman`
  MODIFY `peminjamanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `t_ulasanbuku`
--
ALTER TABLE `t_ulasanbuku`
  MODIFY `ulasanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `t_user`
--
ALTER TABLE `t_user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `t_kategoribuku_relasi`
--
ALTER TABLE `t_kategoribuku_relasi`
  ADD CONSTRAINT `t_kategoribuku_relasi_ibfk_1` FOREIGN KEY (`bukuID`) REFERENCES `t_buku` (`bukuID`),
  ADD CONSTRAINT `t_kategoribuku_relasi_ibfk_2` FOREIGN KEY (`kategoriID`) REFERENCES `t_kategoribuku` (`kategoriID`);

--
-- Ketidakleluasaan untuk tabel `t_peminjaman`
--
ALTER TABLE `t_peminjaman`
  ADD CONSTRAINT `t_peminjaman_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `t_user` (`userID`),
  ADD CONSTRAINT `t_peminjaman_ibfk_2` FOREIGN KEY (`bukuID`) REFERENCES `t_buku` (`bukuID`);

--
-- Ketidakleluasaan untuk tabel `t_ulasanbuku`
--
ALTER TABLE `t_ulasanbuku`
  ADD CONSTRAINT `t_ulasanbuku_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `t_user` (`userID`),
  ADD CONSTRAINT `t_ulasanbuku_ibfk_2` FOREIGN KEY (`bukuID`) REFERENCES `t_buku` (`bukuID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
