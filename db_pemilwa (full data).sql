-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2023 at 01:27 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pemilwa`
--

-- --------------------------------------------------------

--
-- Table structure for table `kandidat`
--

CREATE TABLE `kandidat` (
  `id_kandidat` int(11) NOT NULL,
  `nama_kandidat` varchar(120) DEFAULT NULL,
  `nomor_kandidat` varchar(10) DEFAULT NULL,
  `foto_kandidat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kandidat`
--

INSERT INTO `kandidat` (`id_kandidat`, `nama_kandidat`, `nomor_kandidat`, `foto_kandidat`) VALUES
(13, 'Farista - Panji', '1', '1.png'),
(14, 'Billy - Guntur', '2', '2.png');

-- --------------------------------------------------------

--
-- Table structure for table `pemilih`
--

CREATE TABLE `pemilih` (
  `id_pemilih` int(11) NOT NULL,
  `nama_pemilih` varchar(120) DEFAULT NULL,
  `jk_pemilih` varchar(30) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pemilih`
--

INSERT INTO `pemilih` (`id_pemilih`, `nama_pemilih`, `jk_pemilih`, `username`, `password`) VALUES
(1, 'Basrian Burhan Utomo', 'laki-laki', 'basrian', 'ee11cbb19052e40b07aac0ca060c23ee'),
(2, 'Aulia Putri Firdhausya', 'perempuan', 'aulia', 'ee11cbb19052e40b07aac0ca060c23ee'),
(3, 'Yofran', 'laki-laki', 'yofran', 'ee11cbb19052e40b07aac0ca060c23ee'),
(4, 'DEWI AYU MURTININGSIH', 'perempuan', 'dewi', 'ee11cbb19052e40b07aac0ca060c23ee'),
(5, 'MUHAMMAD RISDIANSYAH', 'laki-laki', 'muhammad', 'ee11cbb19052e40b07aac0ca060c23ee'),
(6, 'SYIFA SALSABILA', 'perempuan', 'syifa', 'ee11cbb19052e40b07aac0ca060c23ee'),
(7, 'MUHAMMAD DAFFA ARDIANSYAH', 'laki-laki', 'muhammad1', 'ee11cbb19052e40b07aac0ca060c23ee'),
(8, 'DAMAR ADI NUGROHO', 'laki-laki', 'damar', 'ee11cbb19052e40b07aac0ca060c23ee'),
(9, 'Ganti Ananda', 'laki-laki', 'ganti', 'ee11cbb19052e40b07aac0ca060c23ee'),
(10, 'Bima Batara Indra Sakti Laudy', 'laki-laki', 'bima', 'ee11cbb19052e40b07aac0ca060c23ee'),
(11, 'GERI MAPAN SINAMBELA', 'laki-laki', 'geri', 'ee11cbb19052e40b07aac0ca060c23ee'),
(12, 'Yunita Ture', 'perempuan', 'yunita', 'ee11cbb19052e40b07aac0ca060c23ee'),
(13, 'RIFKI TRIWIJAYA', 'laki-laki', 'rifki', 'ee11cbb19052e40b07aac0ca060c23ee'),
(14, 'RAGIL FRANSISKO OLA HAYON', 'laki-laki', 'ragil', 'ee11cbb19052e40b07aac0ca060c23ee'),
(15, 'NIKSON BARNABAS ALEANDRO BAAY', 'laki-laki', 'nikson', 'ee11cbb19052e40b07aac0ca060c23ee'),
(16, 'RAHARDYANDRA NAUFAL EFFENDY PRATAMA', 'laki-laki', 'rahardyandra', 'ee11cbb19052e40b07aac0ca060c23ee'),
(17, 'ALFINA NUR HALIZA', 'perempuan', 'alfina', 'ee11cbb19052e40b07aac0ca060c23ee'),
(18, 'ALICA MARSA MALIHAH WIDIGDO', 'perempuan', 'alica', 'ee11cbb19052e40b07aac0ca060c23ee'),
(19, 'FAUZI IKHSAN NOVANTO', 'laki-laki', 'fauzi', 'ee11cbb19052e40b07aac0ca060c23ee'),
(20, 'ABIDAH RAHMI', 'perempuan', 'abidah', 'ee11cbb19052e40b07aac0ca060c23ee'),
(21, 'Wahyu Adi Giantoro', 'laki-laki', 'wahyu', 'ee11cbb19052e40b07aac0ca060c23ee'),
(22, 'ADI NUGROHO', 'laki-laki', 'adi', 'ee11cbb19052e40b07aac0ca060c23ee'),
(23, 'AGUSTINUS LAUIS LUNG', 'laki-laki', 'agustinus', 'ee11cbb19052e40b07aac0ca060c23ee'),
(24, 'AHMAD ALDIYANTO', 'laki-laki', 'ahmad', 'ee11cbb19052e40b07aac0ca060c23ee'),
(25, 'ALAM MISBAKHU RIZQON', 'laki-laki', 'alam', 'ee11cbb19052e40b07aac0ca060c23ee'),
(26, 'ALDI SOFIAN AHMAD', 'laki-laki', 'aldi', 'ee11cbb19052e40b07aac0ca060c23ee'),
(27, 'Alfandi Wicaksono', 'laki-laki', 'alfandi', 'ee11cbb19052e40b07aac0ca060c23ee'),
(28, 'ALWAYS MUHAMMAD REZA YUDA PRATAMA', 'laki-laki', 'always', 'ee11cbb19052e40b07aac0ca060c23ee'),
(29, 'EFFIE AMALIA', 'perempuan', 'effie', 'ee11cbb19052e40b07aac0ca060c23ee'),
(30, 'AMRULLAH AGUNG PRASETYA', 'laki-laki', 'amrullah', 'ee11cbb19052e40b07aac0ca060c23ee'),
(31, 'APRIAN KHAERUL', 'laki-laki', 'aprian', 'ee11cbb19052e40b07aac0ca060c23ee'),
(32, 'Muh Arief Refadilla', 'laki-laki', 'arief', 'ee11cbb19052e40b07aac0ca060c23ee'),
(33, 'ARIF ZAELANI', 'laki-laki', 'arif', 'ee11cbb19052e40b07aac0ca060c23ee'),
(34, 'ASTHIVIA OKTANDA AMITABA', 'laki-laki', 'asthivia', 'ee11cbb19052e40b07aac0ca060c23ee'),
(35, 'Muhammad Asyrov Illahi', 'laki-laki', 'muhammad', 'ee11cbb19052e40b07aac0ca060c23ee'),
(36, 'AULIA NOER HIQMAH', 'perempuan', 'aulia', 'ee11cbb19052e40b07aac0ca060c23ee'),
(37, 'BAGUS EKO NUGROHO', 'laki-laki', 'bagus', 'ee11cbb19052e40b07aac0ca060c23ee'),
(38, 'candra meyhuda ifnu', 'laki-laki', 'candra', 'ee11cbb19052e40b07aac0ca060c23ee'),
(39, 'Gerald Dzulfiqar', 'laki-laki', 'gerald', 'ee11cbb19052e40b07aac0ca060c23ee'),
(40, 'Faiq Muztaba', 'laki-laki', 'faiq', 'ee11cbb19052e40b07aac0ca060c23ee'),
(41, 'FANGGI ANDRIAN', 'laki-laki', 'fanggi', 'ee11cbb19052e40b07aac0ca060c23ee'),
(42, 'Farrel Faustilla', 'laki-laki', 'farrel', 'ee11cbb19052e40b07aac0ca060c23ee'),
(43, 'Ammar Fayyadh Mujahid', 'laki-laki', 'ammar', 'ee11cbb19052e40b07aac0ca060c23ee'),
(44, 'GIDEON EKA KURNIAWAN', 'laki-laki', 'gideon', 'ee11cbb19052e40b07aac0ca060c23ee'),
(45, 'GILANG ARYA TAMA', 'laki-laki', 'gilang', 'ee11cbb19052e40b07aac0ca060c23ee'),
(46, 'Muhammad Hammam', 'laki-laki', 'muhammad', 'ee11cbb19052e40b07aac0ca060c23ee'),
(47, 'MUHAMMAD NATIVE MUTTAQIEN KURNIADI', 'laki-laki', 'muhammad', 'ee11cbb19052e40b07aac0ca060c23ee'),
(48, 'NAJMAH NUR WAFIYAH', 'perempuan', 'najmah', 'ee11cbb19052e40b07aac0ca060c23ee'),
(49, 'Indrati Nur Aisyah Wuryantari', 'perempuan', 'indrati', 'ee11cbb19052e40b07aac0ca060c23ee'),
(50, 'NURI HERY PRATAMA', 'laki-laki', 'nuri', 'ee11cbb19052e40b07aac0ca060c23ee'),
(51, 'QADAR SADLY SAPUTRA', 'laki-laki', 'qadar', 'ee11cbb19052e40b07aac0ca060c23ee'),
(52, 'Radinka Syahputra', 'laki-laki', 'radinka', 'ee11cbb19052e40b07aac0ca060c23ee'),
(53, 'Ragil Haryo Sadewo', 'laki-laki', 'ragil', 'ee11cbb19052e40b07aac0ca060c23ee'),
(54, 'Ray Febrian Tomasila', 'laki-laki', 'ray', 'ee11cbb19052e40b07aac0ca060c23ee'),
(55, 'Rifqi ikbar wahyono', 'laki-laki', 'rifqi', 'ee11cbb19052e40b07aac0ca060c23ee'),
(56, 'RIO RADITYA BAGAS INDRAJATI', 'laki-laki', 'rio', 'ee11cbb19052e40b07aac0ca060c23ee'),
(57, 'Sulton Bani Laju', 'laki-laki', 'sulton', 'ee11cbb19052e40b07aac0ca060c23ee'),
(58, 'SUTRISNO', 'laki-laki', 'sutrisno', 'ee11cbb19052e40b07aac0ca060c23ee'),
(59, 'WAKHID PRAMADYA PUTRA', 'laki-laki', 'wakhid', 'ee11cbb19052e40b07aac0ca060c23ee'),
(60, 'WIRA PRADINA RESTI', 'laki-laki', 'wira', 'ee11cbb19052e40b07aac0ca060c23ee'),
(61, 'ZAIDAN RAFIF SYAUQI', 'laki-laki', 'zaidan', 'ee11cbb19052e40b07aac0ca060c23ee'),
(62, 'VIRNA SENTIA', 'perempuan', 'virna', 'ee11cbb19052e40b07aac0ca060c23ee'),
(63, 'Wahyu Muhammad Arby', 'laki-laki', 'wahyu', 'ee11cbb19052e40b07aac0ca060c23ee'),
(64, 'ZAKKA LAZUARDI ZULKARNAIN', 'laki-laki', 'zakka', 'ee11cbb19052e40b07aac0ca060c23ee'),
(65, 'MUHAMMAD AMIKATUZZAIN', 'laki-laki', 'muhammad', 'ee11cbb19052e40b07aac0ca060c23ee'),
(66, 'SHINDY NANDITA RAY', 'perempuan', 'shindy', 'ee11cbb19052e40b07aac0ca060c23ee'),
(67, 'FIQI BAINA ASHHAB', 'laki-laki', 'fiqi', 'ee11cbb19052e40b07aac0ca060c23ee'),
(68, 'ZULAFAN FADHLAN WIDADI', 'laki-laki', 'zulafan', 'ee11cbb19052e40b07aac0ca060c23ee'),
(69, 'IVANALIE GRETZA CRISANEA', 'perempuan', 'ivanalie', 'ee11cbb19052e40b07aac0ca060c23ee'),
(70, 'Aditama Suryaprayoga', 'laki-laki', 'aditama', 'ee11cbb19052e40b07aac0ca060c23ee'),
(71, 'DZAKY HAMID AL AZIZ', 'laki-laki', 'dzaky', 'ee11cbb19052e40b07aac0ca060c23ee'),
(72, 'AFRIAN DICKY PRASETYA', 'laki-laki', 'afrian', 'ee11cbb19052e40b07aac0ca060c23ee'),
(73, 'Tanujaya Chandra Setyawan', 'laki-laki', 'tanujaya', 'ee11cbb19052e40b07aac0ca060c23ee'),
(74, 'Alya Wahyuning Syahbani', 'perempuan', 'alya', 'ee11cbb19052e40b07aac0ca060c23ee'),
(75, 'Rizka Amelia Sari', 'perempuan', 'rizka', 'ee11cbb19052e40b07aac0ca060c23ee'),
(76, 'Adit Musafa', 'laki-laki', 'aditmusafa', 'ee11cbb19052e40b07aac0ca060c23ee'),
(77, 'Rivaldo Fajar Ramadhan', 'laki-laki', 'rivaldo', 'ee11cbb19052e40b07aac0ca060c23ee'),
(78, 'Reiza_2569', 'laki-laki', 'reiza_2569', 'ee11cbb19052e40b07aac0ca060c23ee'),
(79, 'Rangga Viarta', 'laki-laki', 'rangga', 'ee11cbb19052e40b07aac0ca060c23ee'),
(80, 'ABDUL HAJATUN RAMADHANI', 'perempuan', 'abdulhajatun', 'ee11cbb19052e40b07aac0ca060c23ee'),
(81, 'Anggi Nur Khasnah', 'perempuan', 'anggi', 'ee11cbb19052e40b07aac0ca060c23ee'),
(82, 'TERRY ADAM YUDISTIRA SULISTIONO', 'laki-laki', 'terryadam', 'ee11cbb19052e40b07aac0ca060c23ee'),
(83, 'MICHAEL TINO', 'laki-laki', 'michaeltino', 'ee11cbb19052e40b07aac0ca060c23ee'),
(84, 'VALENSI SURYA PERMANA', 'laki-laki', 'valensi', 'ee11cbb19052e40b07aac0ca060c23ee'),
(85, 'ABIMANYU PRIMARENDRA', 'laki-laki', 'abimanyu', 'ee11cbb19052e40b07aac0ca060c23ee'),
(86, 'ACHMAD LUHUR RAYYA AL IRKHAS', 'laki-laki', 'achmadluhur', 'ee11cbb19052e40b07aac0ca060c23ee'),
(87, 'ADHIKA DWIKI SEPTIAN', 'laki-laki', 'adhika', 'ee11cbb19052e40b07aac0ca060c23ee'),
(88, 'ALFIAN RAMADHAN', 'laki-laki', 'alfian', 'ee11cbb19052e40b07aac0ca060c23ee'),
(89, 'ALIFA MURTIYANTO', 'laki-laki', 'alifa', 'ee11cbb19052e40b07aac0ca060c23ee'),
(90, 'Lukman Hakim Aljihadu', 'laki-laki', 'lukmanhakim', 'ee11cbb19052e40b07aac0ca060c23ee'),
(91, 'Muchamad Sanaya Almatin', 'laki-laki', 'sanaya', 'ee11cbb19052e40b07aac0ca060c23ee'),
(92, 'Bintang Kresna A', 'laki-laki', 'bintang', 'ee11cbb19052e40b07aac0ca060c23ee'),
(93, 'ELISABETH', 'perempuan', 'elisabeth', 'ee11cbb19052e40b07aac0ca060c23ee'),
(94, 'NAJWA FAUZIATUN NISA', 'perempuan', 'najwa', 'ee11cbb19052e40b07aac0ca060c23ee'),
(95, 'Wahyu Ferdiansyah', 'laki-laki', 'wahyuf', 'ee11cbb19052e40b07aac0ca060c23ee'),
(96, 'Septia Fajar Isnaini', 'perempuan', 'septia', 'ee11cbb19052e40b07aac0ca060c23ee'),
(97, 'Kamilaturrahmah MD', 'perempuan', 'kamilaturrahmah', 'ee11cbb19052e40b07aac0ca060c23ee'),
(98, 'LATIF ARDIANSYAH', 'laki-laki', 'latif', 'ee11cbb19052e40b07aac0ca060c23ee'),
(99, 'LILIANA PUTRI APARICIO', 'perempuan', 'liliana', 'ee11cbb19052e40b07aac0ca060c23ee'),
(100, 'MAHBUB FAISAL RACHMAN', 'laki-laki', 'mahbub', 'ee11cbb19052e40b07aac0ca060c23ee'),
(101, 'Marta Herlinda', 'perempuan', 'marta', 'ee11cbb19052e40b07aac0ca060c23ee'),
(102, 'MARVELIN GARETH HENDARGA', 'laki-laki', 'marvelin', 'ee11cbb19052e40b07aac0ca060c23ee'),
(103, 'Michel', 'laki-laki', 'michel', 'ee11cbb19052e40b07aac0ca060c23ee'),
(104, 'MIFTA AULIA', 'perempuan', 'mifta', 'ee11cbb19052e40b07aac0ca060c23ee'),
(105, 'MUHAMAD PATIH HIDAYAT', 'laki-laki', 'muhammadpatih', 'ee11cbb19052e40b07aac0ca060c23ee'),
(106, 'Nanda', 'laki-laki', 'nanda', 'ee11cbb19052e40b07aac0ca060c23ee'),
(107, 'EFRIZAL RAHMAT NAUFAL', 'laki-laki', 'efrizal', 'ee11cbb19052e40b07aac0ca060c23ee'),
(108, 'HESTI NAWANG WULAN', 'perempuan', 'hesti', 'ee11cbb19052e40b07aac0ca060c23ee'),
(109, 'Fiki Pratama', 'laki-laki', 'fiki', 'ee11cbb19052e40b07aac0ca060c23ee'),
(110, 'YULVIANI PUTERI PUSPITA SARI', 'perempuan', 'yulviani', 'ee11cbb19052e40b07aac0ca060c23ee'),
(111, 'BAHTIAR RAHMAN', 'laki-laki', 'bahtiar', 'ee11cbb19052e40b07aac0ca060c23ee'),
(112, 'REALINO PRIMANDA PRASANO', 'laki-laki', 'realino', 'ee11cbb19052e40b07aac0ca060c23ee'),
(113, 'Reyhan Allofadieka', 'laki-laki', 'reyhan', 'ee11cbb19052e40b07aac0ca060c23ee'),
(114, 'Sabib Prastio', 'laki-laki', 'sabib', 'ee11cbb19052e40b07aac0ca060c23ee'),
(115, 'FAIZ MUHAMMAD SYAFNI RAKHMAN', 'laki-laki', 'faiz', 'ee11cbb19052e40b07aac0ca060c23ee'),
(116, 'Tasya Eklesya Suboong', 'perempuan', 'tasya', 'ee11cbb19052e40b07aac0ca060c23ee'),
(117, 'Dirna Akira', 'Perempuan', 'dirna', 'ee11cbb19052e40b07aac0ca060c23ee'),
(118, 'User', 'Laki-Laki', 'user', 'ee11cbb19052e40b07aac0ca060c23ee');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(120) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`) VALUES
(4, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(10, 'haikal', 'haikal', 'a847b53f9999fc735ca2b6f1419c93d0');

-- --------------------------------------------------------

--
-- Table structure for table `pilih`
--

CREATE TABLE `pilih` (
  `id_pilih` int(11) NOT NULL,
  `id_kandidat` int(11) DEFAULT NULL,
  `id_pemilih` int(11) DEFAULT NULL,
  `tgl_rekam` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pilih`
--

INSERT INTO `pilih` (`id_pilih`, `id_kandidat`, `id_pemilih`, `tgl_rekam`) VALUES
(236, 14, 1, '2023-12-10 20:21:40'),
(237, 13, 2, '2023-12-10 20:22:30'),
(238, 13, 3, '2023-12-10 20:23:09'),
(239, 13, 4, '2023-12-10 20:23:37'),
(240, 13, 5, '2023-12-10 20:23:56'),
(241, 14, 6, '2023-12-10 20:24:16'),
(242, 13, 7, '2023-12-10 20:25:14'),
(243, 14, 8, '2023-12-10 20:25:31'),
(244, 13, 9, '2023-12-10 20:25:50'),
(245, 14, 10, '2023-12-10 20:26:07'),
(246, 13, 11, '2023-12-10 20:26:33'),
(247, 14, 12, '2023-12-10 20:27:00'),
(248, 13, 13, '2023-12-10 20:27:15'),
(249, 13, 14, '2023-12-11 06:36:05'),
(250, 13, 15, '2023-12-11 07:25:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kandidat`
--
ALTER TABLE `kandidat`
  ADD PRIMARY KEY (`id_kandidat`);

--
-- Indexes for table `pemilih`
--
ALTER TABLE `pemilih`
  ADD PRIMARY KEY (`id_pemilih`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `pilih`
--
ALTER TABLE `pilih`
  ADD PRIMARY KEY (`id_pilih`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kandidat`
--
ALTER TABLE `kandidat`
  MODIFY `id_kandidat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pemilih`
--
ALTER TABLE `pemilih`
  MODIFY `id_pemilih` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pilih`
--
ALTER TABLE `pilih`
  MODIFY `id_pilih` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
