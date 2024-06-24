-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2024 at 01:30 PM
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
  `foto_kandidat` text DEFAULT NULL,
  `visi_misi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kandidat`
--

INSERT INTO `kandidat` (`id_kandidat`, `nama_kandidat`, `nomor_kandidat`, `foto_kandidat`, `visi_misi`) VALUES
(1, 'Farista Nur Fazri Yuni & Panji Revolusioner Saputra', '1', 'kandidat-1.png', '<h2>Visi</h2>\r\n<p>Menjadikan BEM KM Universitas AMIKOM Yogyakarta yang berintegritas, transformatif dan inovatif, sebagai wadah pengembangan diri seluruh Mahasiswa Universitas AMIKOM Yogyakarta dalam mengenal politik kampus.</p>\r\n\r\n<h2>Misi</h2>\r\n<ol>\r\n  <li>Optimalisasi peran BEM KM Universitas AMIKOM Yogyakarta terhadap Unit Kegiatan Mahasiswa dan Badan Semi Otonom lewat pemahaman terhadap birokrasi kampus.</li>\r\n  <li>Menjadikan advokasi sebagai garda terdepan BEM KM Universitas AMIKOM Yogyakarta dalam menampung aspirasi mahasiswa.</li>\r\n  <li>Bekerjasama dengan lembaga kampus dalam mencegah dan menuntaskan kasus kekerasan seksual.</li>\r\n  <li>Berkoordinasi dengan seluruh organisasi yang ada di Universitas AMIKOM Yogyakarta demi terciptanya sinergitas.</li>\r\n</ol>\r\n\r\n<p>Sumber: Instagram / @pemilwaamikom\r\n'),
(2, 'Billy Silalahi & Guntur Ardani Putra', '2', 'kandidat-2.png', '<h2>Visi</h2>\r\n<p>Mewujudkan LM Universitas AMIKOM Yogyakarta serta mahasiswa yang berdaya saing bersama untuk memberikan kontribusi nyata. #RuangCita Untuk AMIKOM dan INDONESIA</p>\r\n\r\n<h2>Misi</h2>\r\n<ol>\r\n  <li>#RuangCita BEM KM AMIKOM sebagai sahabat karib untuk memaksimalkan pelayanan dan aktivitas yang berkaitan dengan civitas akademika.</li>\r\n  <li>#RuangCita BEM KM AMIKOM sebagai katalisator untuk menciptakan ekosistem kinerja yang efektif seiring perkembangan zaman dalam lingkungan LM Universitas AMIKOM Yogyakarta.</li>\r\n  <li>#RuangCita BEM KM AMIKOM untuk turut hadir sebagai instrumen pergerakan mahasiswa dalam memperjuangkan sosial politik demi kesejahteraan mahasiswa maupun masyarakat.</li>\r\n  <li>#RuangCita BEM KM AMIKOM untuk menjadi mitra pembangunan sumber daya manusia Indonesia yang unggul.</li>\r\n</ol>\r\n<p>Sumber: Instagram / @pemilwaamikom');

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
-- password = user
INSERT INTO `pemilih` (`id_pemilih`, `nama_pemilih`, `jk_pemilih`, `username`, `password`) VALUES
(1, 'Ade Febriani', 'Laki-Laki', '20.11.3793', 'ee11cbb19052e40b07aac0ca060c23ee'),
(2, 'Anas Fikri Hanif', 'Laki-Laki', '20.11.3743', 'ee11cbb19052e40b07aac0ca060c23ee'),
(3, 'Andi Muhammad Ichsan Jalaluddin', 'Laki-Laki', '20.83.0545', 'ee11cbb19052e40b07aac0ca060c23ee'),
(4, 'Arifin Yunianta', 'Laki-Laki', '20.11.3763', 'ee11cbb19052e40b07aac0ca060c23ee'),
(5, 'Dian Prasetya', 'Laki-Laki', '21.83.0712', 'ee11cbb19052e40b07aac0ca060c23ee'),
(6, 'Dimas Fajar Nugroho', 'Laki-Laki', '20.11.3398', 'ee11cbb19052e40b07aac0ca060c23ee'),
(7, 'Eldiva Tegar Imananda', 'Laki-Laki', '20.83.0474', 'ee11cbb19052e40b07aac0ca060c23ee'),
(9, 'Indra Bagas Pratama', 'Laki-Laki', '22.83.0859', 'ee11cbb19052e40b07aac0ca060c23ee'),
(10, 'Jhingga Mahadhni', 'Laki-Laki', '21.83.0742', 'ee11cbb19052e40b07aac0ca060c23ee'),
(11, 'Ken Diani Mutia Sari', 'Perempuan', '20.11.3736', 'ee11cbb19052e40b07aac0ca060c23ee'),
(12, 'Krisna Aditya Pratama', 'Laki-Laki', '20.11.3648', 'ee11cbb19052e40b07aac0ca060c23ee'),
(13, 'Ma\'mur Zaky Nurrokhman', 'Laki-Laki', '20.11.3791', 'ee11cbb19052e40b07aac0ca060c23ee'),
(14, 'Mahesa Putra Bascoro Cahyo Ramadhan', 'Laki-Laki', '19.11.2900', 'ee11cbb19052e40b07aac0ca060c23ee'),
(15, 'Muhammad Dava Ramadhana', 'Laki-Laki', '21.83.0597', 'ee11cbb19052e40b07aac0ca060c23ee'),
(16, 'Muhammad Mufti Ashshiddiqi', 'Laki-Laki', '20.11.3386', 'ee11cbb19052e40b07aac0ca060c23ee'),
(17, 'Ravenusa Arjuna Kristiary', 'Laki-Laki', '20.11.3623', 'ee11cbb19052e40b07aac0ca060c23ee'),
(18, 'Rendra Baskoro Tuharea', 'Laki-Laki', '20.11.3683', 'ee11cbb19052e40b07aac0ca060c23ee'),
(19, 'Ridha Nurrachmat', 'Laki-Laki', '22.83.0857', 'ee11cbb19052e40b07aac0ca060c23ee'),
(20, 'Rina Setiani', 'Perempuan', '20.83.0533', 'ee11cbb19052e40b07aac0ca060c23ee'),
(21, 'Risang Bhisma Prabancana Putra', 'Laki-Laki', '20.11.3400', 'ee11cbb19052e40b07aac0ca060c23ee'),
(22, 'Senli Yusdiantoro', 'Laki-Laki', '20.11.3367', 'ee11cbb19052e40b07aac0ca060c23ee'),
(23, 'Achmad Dwi Agung Riyanto', 'Laki-Laki', '19.82.0566', 'ee11cbb19052e40b07aac0ca060c23ee'),
(24, 'Adinda Putri Nabilla Fernanda', 'Perempuan', '20.60.0115', 'ee11cbb19052e40b07aac0ca060c23ee'),
(25, 'Ahmad Bagas Irawan', 'Laki-Laki', '19.82.0580', 'ee11cbb19052e40b07aac0ca060c23ee'),
(26, 'Dimas Maulana R', 'Laki-Laki', '19.82.0686', 'ee11cbb19052e40b07aac0ca060c23ee'),
(27, 'Eddymas Pandu Prasetyo', 'Laki-Laki', '19.82.0821', 'ee11cbb19052e40b07aac0ca060c23ee'),
(28, 'Fairuzia Naufalnur Theananda', 'Perempuan', '19.82.0651', 'ee11cbb19052e40b07aac0ca060c23ee'),
(29, 'Fairyz Bintang Putra', 'Laki-Laki', '19.82.0715', 'ee11cbb19052e40b07aac0ca060c23ee'),
(30, 'Gracia Cecilia Olga', 'Perempuan', '22.60.0146', 'ee11cbb19052e40b07aac0ca060c23ee'),
(31, 'Lintang Sekar Langit', 'Perempuan', '19.82.0597', 'ee11cbb19052e40b07aac0ca060c23ee'),
(32, 'Mikhael Aji Prasaka', 'Laki-Laki', '18.12.0960', 'ee11cbb19052e40b07aac0ca060c23ee'),
(33, 'Mokh. Farid Al Ikhsan', 'Laki-Laki', '19.82.0626', 'ee11cbb19052e40b07aac0ca060c23ee'),
(34, 'Muhammad Haikkal Firman Arista', 'Laki-Laki', '22.82.1518', 'ee11cbb19052e40b07aac0ca060c23ee'),
(35, 'Pandu Wiratama Cakra Nugraha', 'Laki-Laki', '19.60.0063', 'ee11cbb19052e40b07aac0ca060c23ee'),
(36, 'Purwandito Pangestu', 'Laki-Laki', '19.82.0541', 'ee11cbb19052e40b07aac0ca060c23ee'),
(37, 'Rafi Ardiansyah', 'Laki-Laki', '19.82.0798', 'ee11cbb19052e40b07aac0ca060c23ee'),
(38, 'Ramandito Lutesendra Hatmanda', 'Laki-Laki', '22.82.1523', 'ee11cbb19052e40b07aac0ca060c23ee'),
(39, 'Thoriq Daffa Fakhrurrozi', 'Laki-Laki', '19.82.0810', 'ee11cbb19052e40b07aac0ca060c23ee'),
(40, 'Yohan Arif Satria', 'Laki-Laki', '20.84.0273', 'ee11cbb19052e40b07aac0ca060c23ee'),
(41, 'Abraham Nemangkawi Sinaga', 'Laki-Laki', '21.61.0217', 'ee11cbb19052e40b07aac0ca060c23ee'),
(42, 'Agil Pamungkas', 'Laki-Laki', '21.92.0396', 'ee11cbb19052e40b07aac0ca060c23ee'),
(43, 'Anggista Oktavia Praneswara', 'Perempuan', '20.11.3690', 'ee11cbb19052e40b07aac0ca060c23ee'),
(44, 'Aziz Setiawan', 'Laki-Laki', '21.01.4716', 'ee11cbb19052e40b07aac0ca060c23ee'),
(45, 'Chamdan Chaqul Mukti', 'Laki-Laki', '20.11.3713', 'ee11cbb19052e40b07aac0ca060c23ee'),
(46, 'CHANDRA ZOFA', 'Laki-Laki', '20.62.0164', 'ee11cbb19052e40b07aac0ca060c23ee'),
(47, 'Farhan Fathurroziq', 'Laki-Laki', '21.61.0213', 'ee11cbb19052e40b07aac0ca060c23ee'),
(48, 'Fauzan Baehaqi', 'Laki-Laki', '20.11.3727', 'ee11cbb19052e40b07aac0ca060c23ee'),
(49, 'Firman Almadhani Kurniawan', 'Laki-Laki', '20.11.3631', 'ee11cbb19052e40b07aac0ca060c23ee'),
(50, 'Gabriel Galang Restu Aji', 'Laki-Laki', '21.61.0222', 'ee11cbb19052e40b07aac0ca060c23ee'),
(51, 'Herly Chahya Putra', 'Laki-Laki', '21.01.4658', 'ee11cbb19052e40b07aac0ca060c23ee'),
(52, 'Herman Dwi Yulianto', 'Laki-Laki', '20.11.3731', 'ee11cbb19052e40b07aac0ca060c23ee'),
(53, 'Hilmi Arkaan Nurcahyo', 'Laki-Laki', '20.12.1813', 'ee11cbb19052e40b07aac0ca060c23ee'),
(54, 'I Putu Artoya', 'Laki-Laki', '20.12.1593', 'ee11cbb19052e40b07aac0ca060c23ee'),
(55, 'Mohammad Fathur Nur Kholis', 'Laki-Laki', '20.11.3730', 'ee11cbb19052e40b07aac0ca060c23ee'),
(56, 'Muhamad Ridho Budikusuma', 'Laki-Laki', '20.12.1609', 'ee11cbb19052e40b07aac0ca060c23ee'),
(57, 'Muhammad Fajar Ash Shiddiq', 'Laki-Laki', '21.61.0208', 'ee11cbb19052e40b07aac0ca060c23ee'),
(58, 'Petrus Padji Goran Lewogete', 'Laki-Laki', '21.61.0207', 'ee11cbb19052e40b07aac0ca060c23ee'),
(59, 'Rizqy Resha Prameswara', 'Laki-Laki', '21.61.0224', 'ee11cbb19052e40b07aac0ca060c23ee'),
(60, 'Septa Firdaus Adinata', 'Laki-Laki', '21.61.0219', 'ee11cbb19052e40b07aac0ca060c23ee'),
(61, 'Sindiani Kusumawardhani', 'Perempuan', '20.02.0603', 'ee11cbb19052e40b07aac0ca060c23ee'),
(62, 'Wahyu Aprilliandhika', 'Laki-Laki', '21.11.3869', 'ee11cbb19052e40b07aac0ca060c23ee'),
(63, 'Yanuar Ardhi Pratama', 'Laki-Laki', '21.01.4683', 'ee11cbb19052e40b07aac0ca060c23ee'),
(64, 'Adham Faraitodi', 'Laki-Laki', '21.12.2203', 'ee11cbb19052e40b07aac0ca060c23ee'),
(65, 'Adrian Wahyu Prasetya', 'Laki-Laki', '21.12.2202', 'ee11cbb19052e40b07aac0ca060c23ee'),
(66, 'Ahmad Almachzumi Rais Rasyiid', 'Laki-Laki', '21.12.2121', 'ee11cbb19052e40b07aac0ca060c23ee'),
(67, 'Ahmad Faqih Hidayat', 'Laki-Laki', '20.11.3603', 'ee11cbb19052e40b07aac0ca060c23ee'),
(68, 'Alfian Nur Hidayat', 'Laki-Laki', '20.02.0578', 'ee11cbb19052e40b07aac0ca060c23ee'),
(70, 'Candra Zofariansyah', 'Laki-Laki', '20.62.0164', 'ee11cbb19052e40b07aac0ca060c23ee'),
(71, 'Dava Akbar Maulana', 'Laki-Laki', '21.12.1998', 'ee11cbb19052e40b07aac0ca060c23ee'),
(72, 'David Diamanta', 'Laki-Laki', '20.12.1540', 'ee11cbb19052e40b07aac0ca060c23ee'),
(73, 'Deni Wijaya', 'Laki-Laki', '21.11.4511', 'ee11cbb19052e40b07aac0ca060c23ee'),
(74, 'Dhina Bastari Rochim', 'Laki-Laki', '21.12.2132', 'ee11cbb19052e40b07aac0ca060c23ee'),
(75, 'Difa Ayu Hespitasari', 'Perempuan', '21.12.2175', 'ee11cbb19052e40b07aac0ca060c23ee'),
(76, 'Dimas Rio Ikbar Fadholi', 'Laki-Laki', '20.11.3548', 'ee11cbb19052e40b07aac0ca060c23ee'),
(77, 'Ferry Febriansyah', 'Laki-Laki', '21.12.2249', 'ee11cbb19052e40b07aac0ca060c23ee'),
(78, 'Fikri Haris Saiful Wahab', 'Laki-Laki', '21.12.2040', 'ee11cbb19052e40b07aac0ca060c23ee'),
(79, 'Fikri Ikhsan Saputra', 'Laki-Laki', '21.12.2024', 'ee11cbb19052e40b07aac0ca060c23ee'),
(80, 'Gilang Ardhi Saputra', 'Laki-Laki', '21.11.4247', 'ee11cbb19052e40b07aac0ca060c23ee'),
(81, 'Hanny Olivia', 'Perempuan', '21.12.2005', 'ee11cbb19052e40b07aac0ca060c23ee'),
(82, 'Ibrahim Aji Fajar Romadhon', 'Laki-Laki', '21.12.2201', 'ee11cbb19052e40b07aac0ca060c23ee'),
(83, 'Ika Purwanti', 'Perempuan', '21.12.2138', 'ee11cbb19052e40b07aac0ca060c23ee'),
(84, 'Imel', 'Perempuan', '21.12.2182', 'ee11cbb19052e40b07aac0ca060c23ee'),
(85, 'Innaka Kubro Dani Istono', 'Laki-Laki', '20.62.0178', 'ee11cbb19052e40b07aac0ca060c23ee'),
(86, 'Malik Fajar', 'Laki-Laki', '21.12.1845', 'ee11cbb19052e40b07aac0ca060c23ee'),
(87, 'Megan Alvira Putri', 'Perempuan', '21.95.0330', 'ee11cbb19052e40b07aac0ca060c23ee'),
(88, 'Meisha Afifah Putri', 'Perempuan', '20.02.0592', 'ee11cbb19052e40b07aac0ca060c23ee'),
(89, 'Mitaful Yudha Pratama', 'Laki-Laki', '22.21.1567', 'ee11cbb19052e40b07aac0ca060c23ee'),
(90, 'Mufidatul Ngazizah', 'Perempuan', '21.83.0740', 'ee11cbb19052e40b07aac0ca060c23ee'),
(91, 'Muh Zaki Choiruddin', 'Laki-Laki', '20.01.4551', 'ee11cbb19052e40b07aac0ca060c23ee'),
(92, 'Muhammad Ammar Afif', 'Laki-Laki', '21.11.3927', 'ee11cbb19052e40b07aac0ca060c23ee'),
(93, 'Muhammad Ardho Mihada', 'Laki-Laki', '21.12.2045', 'ee11cbb19052e40b07aac0ca060c23ee'),
(94, 'Muhammad Mas\'ud Mahfudz Darmawan', 'Laki-Laki', '20.11.3502', 'ee11cbb19052e40b07aac0ca060c23ee'),
(95, 'Muhammad Rosyid Farachi', 'Laki-Laki', '20.62.0174', 'ee11cbb19052e40b07aac0ca060c23ee'),
(96, 'Nabilla Shalma Fajarani', 'Perempuan', '21.12.2152', 'ee11cbb19052e40b07aac0ca060c23ee'),
(97, 'Rifqi Padi Siliwangi', 'Laki-Laki', '19.12.1026', 'ee11cbb19052e40b07aac0ca060c23ee'),
(98, 'Rizky Oktafian Nur Muhammad', 'Laki-Laki', '20.01.4553', 'ee11cbb19052e40b07aac0ca060c23ee'),
(99, 'Rusdi Alamsyah', 'Laki-Laki', '20.11.3510', 'ee11cbb19052e40b07aac0ca060c23ee'),
(100, 'Suryo Anggito', 'Laki-Laki', '19.01.4356', 'ee11cbb19052e40b07aac0ca060c23ee'),
(101, 'Zulfa Fakaha', 'Laki-Laki', '21.11.4337', 'ee11cbb19052e40b07aac0ca060c23ee'),
(102, 'Bq Anisa Putrin Meilia', 'Perempuan', '22.86.0276', 'ee11cbb19052e40b07aac0ca060c23ee'),
(103, 'Muhammad Sigit Nugroho', 'Laki-Laki', '20.11.3329', 'ee11cbb19052e40b07aac0ca060c23ee'),
(104, 'Rangga Ramadhan', 'Laki-Laki', '20.83.0549', 'ee11cbb19052e40b07aac0ca060c23ee'),
(105, 'Achmad Muhaimin', 'Laki-Laki', '21.12.1870', 'ee11cbb19052e40b07aac0ca060c23ee'),
(106, 'Achmad Noor Seta', 'Laki-Laki', '21.12.1956', 'ee11cbb19052e40b07aac0ca060c23ee'),
(107, 'Arlin Sulistyo Priambodo', 'Laki-Laki', '21.12.2018', 'ee11cbb19052e40b07aac0ca060c23ee'),
(108, 'Daffa Pasya Al-Ghifary', 'Laki-Laki', '20.62.0176', 'ee11cbb19052e40b07aac0ca060c23ee'),
(109, 'Dennis Leonard', 'Laki-Laki', '21.12.1984', 'ee11cbb19052e40b07aac0ca060c23ee'),
(110, 'Diffran Nur Cahyo', 'Laki-Laki', '22.52.1254', 'ee11cbb19052e40b07aac0ca060c23ee'),
(111, 'Dimas Ibnu Ariyoso', 'Laki-Laki', '21.12.2163', 'ee11cbb19052e40b07aac0ca060c23ee'),
(112, 'Fintas Yulianti', 'Perempuan', '20.12.1803', 'ee11cbb19052e40b07aac0ca060c23ee'),
(113, 'Muhammad Rusdi Rahman', 'Laki-Laki', '22.51.1253', 'ee11cbb19052e40b07aac0ca060c23ee'),
(114, 'Niza Aidha Wardhani', 'Perempuan', '21.02.0711', 'ee11cbb19052e40b07aac0ca060c23ee'),
(115, 'Nurul Azizah', 'Perempuan', '21.02.0676', 'ee11cbb19052e40b07aac0ca060c23ee'),
(116, 'Queen Latifa Nafia', 'Perempuan', '21.12.1983', 'ee11cbb19052e40b07aac0ca060c23ee'),
(117, 'Rizki Darmawan', 'Laki-Laki', '21.12.2010', 'ee11cbb19052e40b07aac0ca060c23ee'),
(118, 'Rully Rizqullah Wirasti', 'Laki-Laki', '20.62.0167', 'ee11cbb19052e40b07aac0ca060c23ee'),
(119, 'Salma Khoirun nisa', 'Perempuan', '20.82.0860', 'ee11cbb19052e40b07aac0ca060c23ee'),
(120, 'Urai Filah Fadha', 'Perempuan', '21.12.2004', 'ee11cbb19052e40b07aac0ca060c23ee'),
(121, 'Vicky Hermansyah', 'Laki-Laki', '20.82.0856', 'ee11cbb19052e40b07aac0ca060c23ee'),
(122, 'Wahyu Nusantara', 'Laki-Laki', '20.82.0865', 'ee11cbb19052e40b07aac0ca060c23ee'),
(123, 'Yogatama Adiguna', 'Laki-Laki', '20.82.0876', 'ee11cbb19052e40b07aac0ca060c23ee'),
(124, 'Yuditiya Astri Kanira', 'Perempuan', '21.12.1910', 'ee11cbb19052e40b07aac0ca060c23ee'),
(125, 'Bambang Sugeng Marsudianto', 'Laki-Laki', '20.11.3732', 'ee11cbb19052e40b07aac0ca060c23ee'),
(126, 'Mashdarul Mawahib', 'Laki-Laki', '20.11.3699', 'ee11cbb19052e40b07aac0ca060c23ee'),
(127, 'Agies Sulthan Thoriq', 'Laki-Laki', '21.82.1143', 'ee11cbb19052e40b07aac0ca060c23ee'),
(128, 'Agustinus Arya Carlo Paninggih', 'Laki-Laki', '21.82.1129', 'ee11cbb19052e40b07aac0ca060c23ee'),
(129, 'Bondan Danang Prasetyo', 'Laki-Laki', '21.82.1140', 'ee11cbb19052e40b07aac0ca060c23ee'),
(130, 'Davinta Belladona Febrinasari', 'Perempuan', '20.60.0090', 'ee11cbb19052e40b07aac0ca060c23ee'),
(131, 'Farras Naufal', 'Laki-Laki', '21.82.1108', 'ee11cbb19052e40b07aac0ca060c23ee'),
(132, 'Fauzan Al Irsyadul Ikhbaad', 'Laki-Laki', '20.82.0991', 'ee11cbb19052e40b07aac0ca060c23ee'),
(133, 'Fikri Ediputra Cahyanto', 'Laki-Laki', '20.82.0840', 'ee11cbb19052e40b07aac0ca060c23ee'),
(134, 'M.Nur Rosyid Adi Saputra', 'Laki-Laki', '21.82.1127', 'ee11cbb19052e40b07aac0ca060c23ee'),
(135, 'Muh. Alex Saputra', 'Laki-Laki', '20.11.3567', 'ee11cbb19052e40b07aac0ca060c23ee'),
(136, 'Muhammad Nur Rosyid Adi Saputra', 'Laki-Laki', '21.82.1127', 'ee11cbb19052e40b07aac0ca060c23ee'),
(137, 'Tasliha Hilmina', 'Perempuan', '20.85.0123', 'ee11cbb19052e40b07aac0ca060c23ee'),
(138, 'Tegar Putra Brataditama', 'Laki-Laki', '21.82.1148', 'ee11cbb19052e40b07aac0ca060c23ee'),
(139, 'Tria Indah Lestari', 'Perempuan', '21.82.1080', 'ee11cbb19052e40b07aac0ca060c23ee'),
(140, 'Wibisono Wijaya', 'Laki-Laki', '21.82.1153', 'ee11cbb19052e40b07aac0ca060c23ee'),
(141, 'Yofran', 'Laki-Laki', '22.12.2677', 'ee11cbb19052e40b07aac0ca060c23ee'),
(142, 'DEWI AYU MURTININGSIH', 'Perempuan', '22.12.2696', 'ee11cbb19052e40b07aac0ca060c23ee'),
(143, 'MUHAMMAD RISDIANSYAH', 'Laki-Laki', '22.12.2709', 'ee11cbb19052e40b07aac0ca060c23ee'),
(144, 'SYIFA SALSABILA', 'Perempuan', '22.12.2719', 'ee11cbb19052e40b07aac0ca060c23ee'),
(145, 'MUHAMMAD DAFFA ARDIANSYAH', 'Laki-Laki', '22.12.2722', 'ee11cbb19052e40b07aac0ca060c23ee'),
(146, 'DAMAR ADI NUGROHO', 'Laki-Laki', '22.12.2730', 'ee11cbb19052e40b07aac0ca060c23ee'),
(147, 'Ananda Bima Batara Indra Sakti Laudy', 'Laki-Laki', '22.12.2684', 'ee11cbb19052e40b07aac0ca060c23ee'),
(148, 'GERI MAPAN SINAMBELA', 'Laki-Laki', '22.12.2715', 'ee11cbb19052e40b07aac0ca060c23ee'),
(149, 'Yunita Ture', 'Perempuan', '22.12.2703', 'ee11cbb19052e40b07aac0ca060c23ee'),
(150, 'RIFKI TRIWIJAYA', 'Laki-Laki', '22.12.2695', 'ee11cbb19052e40b07aac0ca060c23ee'),
(151, 'RAGIL FRANSISKO OLA HAYON', 'Laki-Laki', '22.12.2720', 'ee11cbb19052e40b07aac0ca060c23ee'),
(152, 'NIKSON BARNABAS ALEANDRO BAAY', 'Laki-Laki', '22.12.2728', 'ee11cbb19052e40b07aac0ca060c23ee'),
(153, 'RAHARDYANDRA NAUFAL EFFENDY PRATAMA', 'Laki-Laki', '23.22.2514', 'ee11cbb19052e40b07aac0ca060c23ee'),
(154, 'ALFINA NUR HALIZA', 'Perempuan', '23.22.2517', 'ee11cbb19052e40b07aac0ca060c23ee'),
(155, 'ALICA MARSA MALIHAH WIDIGDO', 'Perempuan', '23.22.2524', 'ee11cbb19052e40b07aac0ca060c23ee'),
(157, 'ABIDAH RAHMI', 'Perempuan', '22.12.2682', 'ee11cbb19052e40b07aac0ca060c23ee'),
(158, 'Wahyu Adi Giantoro', 'Laki-Laki', '22.12.2712', 'ee11cbb19052e40b07aac0ca060c23ee'),
(159, 'ADI NUGROHO', 'Laki-Laki', '22.12.2710', 'ee11cbb19052e40b07aac0ca060c23ee'),
(160, 'AGUSTINUS LAUIS LUNG', 'Laki-Laki', '22.12.2718', 'ee11cbb19052e40b07aac0ca060c23ee'),
(161, 'AHMAD ALDIYANTO', 'Laki-Laki', '22.12.2726', 'ee11cbb19052e40b07aac0ca060c23ee'),
(162, 'ALAM MISBAKHU RIZQON', 'Laki-Laki', '22.12.2675', 'ee11cbb19052e40b07aac0ca060c23ee'),
(163, 'ALDI SOFIAN AHMAD', 'Laki-Laki', '22.12.2707', 'ee11cbb19052e40b07aac0ca060c23ee'),
(164, 'Alfandi Wicaksono', 'Laki-Laki', '22.12.2683', 'ee11cbb19052e40b07aac0ca060c23ee'),
(165, 'ALWAYS MUHAMMAD REZA YUDA PRATAMA', 'Laki-Laki', '22.12.2702', 'ee11cbb19052e40b07aac0ca060c23ee'),
(166, 'EFFIE AMALIA', 'Perempuan', '22.12.2689', 'ee11cbb19052e40b07aac0ca060c23ee'),
(167, 'AMRULLAH AGUNG PRASETYA', 'Laki-Laki', '22.12.2706', 'ee11cbb19052e40b07aac0ca060c23ee'),
(168, 'APRIAN KHAERUL', 'Laki-Laki', '22.12.2713', 'ee11cbb19052e40b07aac0ca060c23ee'),
(169, 'ARIF ZAELANI', 'Laki-Laki', '22.12.2681', 'ee11cbb19052e40b07aac0ca060c23ee'),
(170, 'ASTHIVIA OKTANDA AMITABA', 'Laki-Laki', '22.12.2724', 'ee11cbb19052e40b07aac0ca060c23ee'),
(171, 'Muh Arief Refadilla', 'Laki-Laki', '23.22.2526', 'ee11cbb19052e40b07aac0ca060c23ee'),
(172, 'ARYA TAMA GILANG', 'Laki-Laki', '22.12.2680', 'ee11cbb19052e40b07aac0ca060c23ee'),
(173, 'Muhammad Hammam', 'Laki-Laki', '22.12.1503', 'ee11cbb19052e40b07aac0ca060c23ee'),
(174, 'MUHAMMAD NATIVE MUTTAQIEN KURNIADI', 'Laki-Laki', '22.12.2732', 'ee11cbb19052e40b07aac0ca060c23ee'),
(175, 'NAJMAH NUR WAFIYAH', 'Perempuan', '22.12.2688', 'ee11cbb19052e40b07aac0ca060c23ee'),
(176, 'Indrati Nur Aisyah Wuryantari', 'Perempuan', '22.12.2723', 'ee11cbb19052e40b07aac0ca060c23ee'),
(177, 'NURI HERY PRATAMA', 'Laki-Laki', '22.12.2701', 'ee11cbb19052e40b07aac0ca060c23ee'),
(178, 'QADAR SADLY SAPUTRA', 'Laki-Laki', '22.12.2690', 'ee11cbb19052e40b07aac0ca060c23ee'),
(179, 'Radinka Syahputra', 'Laki-Laki', '22.12.2674', 'ee11cbb19052e40b07aac0ca060c23ee'),
(180, 'Ragil Haryo Sadewo', 'Laki-Laki', '22.12.2686', 'ee11cbb19052e40b07aac0ca060c23ee'),
(181, 'Ray Febrian Tomasila', 'Laki-Laki', '22.12.2691', 'ee11cbb19052e40b07aac0ca060c23ee'),
(182, 'Rifqi Ikbar Wahyono', 'Laki-Laki', '22.12.2714', 'ee11cbb19052e40b07aac0ca060c23ee'),
(183, 'RIO RADITYA BAGAS INDRAJATI', 'Laki-Laki', '22.12.2705', 'ee11cbb19052e40b07aac0ca060c23ee'),
(184, 'Sulton Bani Laju', 'Laki-Laki', '22.12.2700', 'ee11cbb19052e40b07aac0ca060c23ee'),
(185, 'SUTRISNO', 'Laki-Laki', '22.12.2679', 'ee11cbb19052e40b07aac0ca060c23ee'),
(186, 'WAKHID PRAMADYA PUTRA', 'Laki-Laki', '22.12.2698', 'ee11cbb19052e40b07aac0ca060c23ee'),
(187, 'WIRA PRADINA RESTI', 'Laki-Laki', '22.12.2687', 'ee11cbb19052e40b07aac0ca060c23ee'),
(188, 'ZAIDAN RAFIF SYAUQI', 'Laki-Laki', '22.12.2731', 'ee11cbb19052e40b07aac0ca060c23ee'),
(192, 'Adi Wijaya', 'Laki-Laki', '23.22.2518', 'ee11cbb19052e40b07aac0ca060c23ee'),
(193, 'Anika', 'Perempuan', '23.22.2600', 'ee11cbb19052e40b07aac0ca060c23ee'),
(194, 'Ahmad', 'Laki-Laki', '23.22.2552', 'ee11cbb19052e40b07aac0ca060c23ee'),
(195, 'FAUZI IKHSAN NOVANTO', 'Laki-Laki', '23.22.2525', 'ee11cbb19052e40b07aac0ca060c23ee'),
(196, 'ASMAN HAIKAL', 'Laki-Laki', '23.22.2510', 'ee11cbb19052e40b07aac0ca060c23ee');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tanggal_posting` date NOT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `judul`, `isi`, `tanggal_posting`, `gambar`) VALUES
(24, 'Panduan Penggunaan Siap Pemilwa', '<p>Siap Pemilwa adalah platform online yang dirancang untuk memfasilitasi pemilihan Presiden dan Wakil Presiden Mahasiswa (Presma & Wapresma) secara efisien dan transparan. Panduan ini akan menjelaskan cara menggunakan Siap Pemilwa baik sebagai pemilih (mahasiswa) maupun administrator.</p>\r\n\r\n<h2>A. Untuk Mahasiswa (Pemilih)</h2>\r\n\r\n<ol>\r\n  <li>\r\n    <b>Akses Siap Pemilwa:</b><br>\r\n    Buka browser web dan kunjungi website Siap Pemilwa di alamat berikut:\r\n    <br>\r\n    <a href=\"https://siappemilwa.tuntasdigital.com\">https://siappemilwa.tuntasdigital.com</a>\r\n  </li>\r\n  <li>\r\n    <b>Pelajari Informasi Pemilihan:</b>\r\n    <ul>\r\n      <li><b>Hero Image:</b> Informasi singkat tentang Siap Pemilwa dan tombol untuk memulai pemilihan.</li>\r\n      <li><b>Cara Memilih:</b> Panduan langkah demi langkah tentang cara memberikan suara.</li>\r\n      <li><b>Daftar Kandidat:</b> Profil singkat setiap pasangan calon Presma & Wapresma, termasuk foto dan tombol untuk melihat visi misi mereka.</li>\r\n      <li><b>Testimoni:</b> Ulasan dari mahasiswa lain yang telah menggunakan Siap Pemilwa.</li>\r\n      <li><b>Pengumuman:</b> Informasi penting terkait pemilihan.</li>\r\n      <li><b>FAQ:</b> Jawaban atas pertanyaan umum seputar Siap Pemilwa.</li>\r\n    </ul>\r\n  </li>\r\n  <li>\r\n    <b>Masuk (Login):</b><br>\r\n    Klik tombol <b>\"Mulai Memilih\"</b> dan masukkan NIM/NPM serta password akun mahasiswa Anda.\r\n  </li>\r\n  <li>\r\n    <b>Pilih Kandidat:</b><br>\r\n    Setelah masuk, Anda akan melihat daftar kandidat. Klik tombol <b>\"Pilih\"</b> pada kandidat pilihan Anda.\r\n  </li>\r\n  <li>\r\n    <b>Konfirmasi Pilihan Anda:</b><br>\r\n    Akan muncul jendela pop-up untuk konfirmasi. Klik <b>\"Ya\"</b> jika sudah yakin.\r\n  </li>\r\n  <li>\r\n    <b>Selesai:</b><br>\r\n    Setelah berhasil memilih, Anda akan menerima pesan konfirmasi. Anda dapat melihat statistik sementara hasil pemilihan di Dashboard atau keluar (logout) dari akun Anda.\r\n  </li>\r\n</ol>\r\n\r\n<h2>B. Untuk Administrator</h2>\r\n\r\n<ol>\r\n  <li>\r\n    <b>Akses Siap Pemilwa:</b><br>\r\n    Kunjungi website Siap Pemilwa dan klik tautan \"Apakah Anda Administrator? Klik di sini\" di halaman login.\r\n  </li>\r\n  <li>\r\n    <b>Masuk (Login):</b><br>\r\n    Masukkan username dan password administrator yang telah diberikan.\r\n  </li>\r\n  <li>\r\n    <b>Dashboard Administrator:</b>\r\n    <ul>\r\n      <li><b>Melihat Statistik:</b> Melihat statistik sementara hasil pemilihan.</li>\r\n      <li><b>Kelola Data:</b> Mengelola data petugas, kandidat, pemilih, dan pengumuman (membuat, membaca, memperbarui, menghapus).</li>\r\n      <li><b>Membuat Laporan:</b> Membuat laporan mengenai petugas, kandidat, status pemilih, dan hasil suara, serta mencetaknya jika diperlukan.</li>\r\n    </ul>\r\n  </li>\r\n  <li>\r\n    <b>Logout:</b><br>\r\n    Klik ikon \"Logout\" di bagian atas halaman untuk keluar dari akun administrator.\r\n  </li>\r\n</ol>\r\n\r\n<h3>Catatan Penting:</h3>\r\n\r\n<ul>\r\n  <li><b>Satu Akun, Satu Suara:</b> Setiap mahasiswa hanya dapat memilih satu kali.</li>\r\n  <li><b>Kerahasiaan:</b> Siap Pemilwa menjamin kerahasiaan pilihan Anda.</li>\r\n  <li><b>Bantuan:</b> Jika mengalami masalah, hubungi administrator Siap Pemilwa.</li>\r\n</ul>\r\n', '2024-06-24', '518186a22db549be9ef284f4a6f8c270.png'),
(25, 'Open Beta Tester: Jadilah Pengguna Awal Siap Pemilwa dan Menangkan Hadiah Menarik!', '<p>Halo Mahasiswa/i!</p>\r\n\r\n<p>Kami dengan bangga mengumumkan kesempatan eksklusif bagi kalian untuk menjadi bagian dari pengembangan Siap Pemilwa, platform pemilihan Presma & Wapresma online terbaru. Kami mengajak kalian untuk bergabung sebagai beta tester dan memberikan masukan berharga untuk menyempurnakan Siap Pemilwa sebelum peluncuran resminya.</p>\r\n\r\n<h2>Apa yang Akan Kamu Lakukan?</h2>\r\n\r\n<p>Sebagai beta tester, kamu akan:</p>\r\n<ul>\r\n    <li><b>Menjelajahi:</b> Mencoba semua fitur Siap Pemilwa, mulai dari melihat profil kandidat hingga memberikan suara.</li>\r\n    <li><b>Memberi Masukan:</b> Mengisi formulir pengujian dan evaluasi untuk menyampaikan pendapat, saran, dan pengalamanmu menggunakan Siap Pemilwa.</li>\r\n    <li><b>Berkontribusi:</b> Membantu kami mengidentifikasi masalah, meningkatkan kinerja, dan memastikan Siap Pemilwa siap digunakan oleh seluruh mahasiswa.</li>\r\n</ul>\r\n\r\n<h2>Apa yang Akan Kamu Dapatkan?</h2>\r\n\r\n<p>Selain kesempatan untuk berkontribusi dalam pengembangan Siap Pemilwa, beta tester terpilih juga berkesempatan memenangkan hadiah menarik, seperti:</p>\r\n<ul>\r\n    <li><span class=\"highlight\">Pulsa:</span> Penuhi kebutuhan internetmu dengan voucher pulsa gratis.</li>\r\n    <li><span class=\"highlight\">Kredit:</span> Namamu akan dicantumkan sebagai kontributor dalam launching resmi Siap Pemilwa.</li>\r\n</ul>\r\n\r\n<h2>Bagaimana Cara Bergabung?</h2>\r\n\r\n<ol>\r\n    <li>Isi formulir pendaftaran beta tester di <a href=\"ungu.in/siap-pemilwa-beta\">Siap Pemilwa Beta</a> (pastikan untuk mencantumkan informasi kontak yang valid).</li>\r\n    <li>Tunggu konfirmasi dari tim Siap Pemilwa. Kami akan memilih <b>30 beta tester</b> berdasarkan kriteria tertentu.</li>\r\n    <li>Jika terpilih, kamu akan menerima email berisi instruksi lebih lanjut dan tautan ke formulir pengujian dan evaluasi.</li>\r\n</ol>\r\n\r\n<h3>Periode Beta Tester:</h3>\r\n\r\n<p>10 Juni - 10 Juli 2024</p>\r\n\r\n<p>Jangan lewatkan kesempatan ini untuk menjadi bagian dari Siap Pemilwa dan menangkan hadiah menarik! Bergabunglah sekarang dan kontribusi suara untuk masa depan pemilihan Presma & Wapresma!</p>\r\n\r\n<p>Salam,</p>\r\n<p>Tim Siap Pemilwa</p>', '2024-06-24', 'c6877db4a87ae6056e77f62a453f49ed.png'),
(26, 'Siap Pemilwa: Revolusi Pemilihan Mahasiswa di Era Digital', '<p>Pemilihan Umum Mahasiswa (Pemilwa) merupakan momen penting dalam kehidupan kampus. Ia adalah saat di mana mahasiswa menentukan arah kepemimpinan dan masa depan kampus mereka. Namun, proses Pemilwa tradisional seringkali dihadapkan pada berbagai tantangan, mulai dari antrian panjang hingga potensi kecurangan.</p>\r\n\r\n<p><b>Siap Pemilwa</b> hadir sebagai solusi inovatif untuk mengatasi tantangan tersebut. Platform ini membawa Pemilwa ke era digital, menawarkan berbagai keunggulan yang tak tertandingi oleh sistem tradisional:</p>\r\n\r\n<h3>1. Efisiensi dan Kemudahan:</h3>\r\n\r\n<p>Lupakan antrian panjang dan kertas suara yang merepotkan. Dengan Siap Pemilwa, mahasiswa dapat memberikan suara mereka dari mana saja dan kapan saja hanya dengan beberapa klik. Proses pemilihan menjadi lebih cepat, mudah, dan nyaman.</p>\r\n\r\n<h3>2. Transparansi dan Akuntabilitas:</h3>\r\n\r\n<p>Siap Pemilwa dibangun dengan prinsip transparansi. Setiap suara tercatat secara digital dan dapat diaudit untuk memastikan keakuratan hasil pemilihan. Ini menghilangkan potensi kecurangan dan meningkatkan kepercayaan mahasiswa terhadap proses Pemilwa.</p>\r\n\r\n<h3>3. Partisipasi yang Lebih Tinggi:</h3>\r\n\r\n<p>Kemudahan akses dan kenyamanan Siap Pemilwa mendorong lebih banyak mahasiswa untuk berpartisipasi dalam Pemilwa. Hal ini menghasilkan representasi yang lebih baik dari suara mahasiswa dan legitimasi yang lebih kuat bagi pemimpin terpilih.</p>\r\n\r\n<h3>4. Ramah Lingkungan:</h3>\r\n\r\n<p>Dengan mengurangi penggunaan kertas, Siap Pemilwa berkontribusi pada upaya pelestarian lingkungan. Ini sejalan dengan nilai-nilai keberlanjutan yang semakin penting bagi generasi muda.</p>\r\n\r\n<h3>5. Fitur-fitur Canggih:</h3>\r\n\r\n<p>Siap Pemilwa tidak hanya sekadar platform voting. Ia dilengkapi dengan berbagai fitur canggih, seperti profil kandidat yang lengkap, data <i>realtime</i>, dan <i>reporting</i>. Ini menciptakan pengalaman Pemilwa yang lebih informatif dan interaktif bagi mahasiswa.</p>\r\n\r\n<p>Siap Pemilwa bukan hanya sekadar platform, tetapi juga sebuah gerakan untuk memodernisasi Pemilwa dan meningkatkan partisipasi mahasiswa dalam proses demokrasi di kampus. Dengan keunggulan dan nilai-nilai yang dibawanya, Siap Pemilwa siap menjadi standar baru dalam Pemilwa di Indonesia.</p>', '2024-06-24', '0061a130bd58d23bd17652ae815b822e.png');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--
-- password = tuntas
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
(1, 'admin', 'admin', 'd36ada70da69ba45e204aab691ebffca'),
(14, 'haikal', 'haikal', 'd36ada70da69ba45e204aab691ebffca');

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
(1, 1, 1, '2023-12-17 15:26:49'),
(2, 1, 2, '2023-12-17 15:28:06'),
(3, 2, 3, '2023-12-17 15:28:28'),
(4, 2, 4, '2023-12-17 22:23:31'),
(5, 2, 5, '2023-12-17 22:25:03'),
(6, 1, 6, '2023-12-17 22:27:33'),
(7, 2, 7, '2023-12-17 22:27:59'),
(8, 2, 8, '2023-12-17 22:28:15'),
(9, 2, 9, '2023-12-17 22:28:26'),
(10, 1, 10, '2023-12-17 22:29:55'),
(11, 1, 11, '2023-12-17 22:41:49'),
(12, 1, 12, '2023-12-17 22:44:51'),
(13, 2, 13, '2023-12-17 23:48:07'),
(14, 2, 14, '2023-12-17 23:48:23'),
(15, 1, 15, '2023-12-17 23:48:50'),
(16, 1, 16, '2023-12-17 23:49:05'),
(17, 1, 17, '2023-12-17 23:49:20'),
(18, 2, 18, '2023-12-17 23:49:47'),
(19, 1, 19, '2023-12-17 23:50:00'),
(20, 1, 20, '2023-12-17 23:50:14'),
(21, 2, 21, '2023-12-17 23:50:28'),
(22, 1, 22, '2023-12-17 23:50:39'),
(23, 1, 23, '2023-12-17 23:52:13'),
(24, 1, 24, '2023-12-17 23:53:10'),
(25, 2, 25, '2023-12-17 23:53:25'),
(26, 2, 26, '2023-12-17 23:53:42'),
(27, 2, 27, '2023-12-17 23:54:36'),
(28, 1, 28, '2023-12-17 23:56:11'),
(29, 2, 29, '2023-12-17 23:56:23'),
(30, 2, 30, '2023-12-17 23:56:37'),
(31, 2, 31, '2023-12-17 23:57:10'),
(32, 2, 32, '2023-12-17 23:57:23'),
(33, 2, 33, '2023-12-17 23:57:43'),
(34, 2, 34, '2023-12-17 23:58:02'),
(35, 1, 35, '2023-12-17 23:58:20'),
(36, 2, 36, '2023-12-17 23:59:24'),
(37, 2, 37, '2023-12-18 00:00:02'),
(38, 2, 38, '2023-12-18 00:01:52'),
(39, 2, 39, '2023-12-18 00:02:13'),
(40, 2, 40, '2023-12-18 00:02:27'),
(41, 1, 41, '2023-12-18 00:02:52'),
(42, 2, 42, '2023-12-18 00:03:06'),
(43, 2, 43, '2023-12-18 00:03:21'),
(44, 2, 44, '2023-12-18 00:03:42'),
(45, 2, 45, '2023-12-18 00:03:57'),
(46, 2, 46, '2023-12-18 00:04:40'),
(47, 1, 47, '2023-12-18 00:05:33'),
(48, 2, 48, '2023-12-18 00:06:20'),
(49, 1, 49, '2023-12-18 00:08:51'),
(50, 2, 50, '2023-12-18 00:09:58'),
(51, 2, 51, '2023-12-18 00:10:20'),
(52, 1, 52, '2023-12-18 00:10:31'),
(53, 1, 53, '2023-12-18 00:10:41'),
(54, 2, 54, '2023-12-18 00:10:53'),
(55, 1, 55, '2023-12-18 00:12:52'),
(56, 1, 56, '2023-12-18 00:13:02'),
(57, 1, 57, '2023-12-18 00:13:14'),
(58, 2, 58, '2023-12-18 00:13:27'),
(59, 2, 59, '2023-12-18 00:13:37'),
(60, 1, 60, '2023-12-18 00:13:51'),
(61, 1, 61, '2023-12-18 00:14:02'),
(62, 1, 62, '2023-12-18 00:14:17'),
(63, 2, 63, '2023-12-18 00:14:34'),
(64, 2, 64, '2023-12-18 00:14:56'),
(65, 2, 65, '2023-12-18 00:15:35'),
(66, 1, 66, '2023-12-18 00:15:45'),
(67, 2, 67, '2023-12-18 00:15:59'),
(68, 1, 68, '2023-12-18 00:16:31'),
(70, 1, 70, '2023-12-18 00:16:57'),
(71, 1, 71, '2023-12-18 00:17:13'),
(72, 1, 72, '2023-12-18 00:17:59'),
(73, 1, 73, '2023-12-18 00:45:47'),
(74, 1, 74, '2023-12-18 00:46:06'),
(75, 2, 75, '2023-12-18 00:46:26'),
(76, 1, 76, '2023-12-18 00:46:39'),
(77, 1, 77, '2023-12-18 00:46:58'),
(78, 1, 78, '2023-12-18 00:47:12'),
(79, 1, 79, '2023-12-18 00:47:23'),
(80, 2, 80, '2023-12-18 00:47:35'),
(81, 2, 81, '2023-12-18 00:47:54'),
(82, 1, 82, '2023-12-18 00:48:06'),
(83, 2, 83, '2023-12-18 00:48:22'),
(84, 2, 84, '2023-12-18 00:48:32'),
(85, 2, 85, '2023-12-18 00:48:49'),
(86, 1, 86, '2023-12-18 00:49:02'),
(87, 1, 87, '2023-12-18 00:51:16'),
(88, 2, 88, '2023-12-18 00:52:54'),
(89, 2, 89, '2023-12-18 00:53:04'),
(90, 1, 90, '2023-12-18 00:54:20'),
(91, 1, 91, '2023-12-18 00:58:05'),
(92, 1, 92, '2023-12-18 00:58:16'),
(93, 1, 93, '2023-12-18 14:55:30'),
(94, 1, 94, '2023-12-20 08:26:33'),
(95, 1, 95, '2023-12-20 08:41:55'),
(97, 2, 96, '2024-06-18 07:45:21'),
(98, 2, 97, '2024-06-18 21:50:23'),
(99, 2, 194, '2024-06-21 18:07:02'),
(100, 27, 69, '2024-06-21 19:55:27'),
(101, 2, 156, '2024-06-23 21:58:48');

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
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `pilih`
--
ALTER TABLE `pilih`
  ADD PRIMARY KEY (`id_pilih`),
  ADD KEY `PILIH - KANDIDAT` (`id_kandidat`),
  ADD KEY `PILIH - PEMILIH` (`id_pemilih`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kandidat`
--
ALTER TABLE `kandidat`
  MODIFY `id_kandidat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `pemilih`
--
ALTER TABLE `pemilih`
  MODIFY `id_pemilih` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pilih`
--
ALTER TABLE `pilih`
  MODIFY `id_pilih` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
