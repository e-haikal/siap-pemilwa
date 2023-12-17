-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2023 at 11:52 AM
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
(13, 'Farista - Panji', '1', 'kandidat-11.png'),
(14, 'Billy - Guntur', '2', 'kandidat-21.png');

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
(1, 'Ade Febrian', 'Laki-Laki', '20.11.3793', 'ee11cbb19052e40b07aac0ca060c23ee'),
(2, 'Anas Fikri Hanif', 'Laki-Laki', '20.11.3743', 'ee11cbb19052e40b07aac0ca060c23ee'),
(3, 'Andi Muhammad Ichsan Jalaluddin', 'Laki-Laki', '20.83.0545', 'ee11cbb19052e40b07aac0ca060c23ee'),
(4, 'Arifin Yunianta', 'Laki-Laki', '20.11.3763', 'ee11cbb19052e40b07aac0ca060c23ee'),
(5, 'Dian Prasetya', 'Laki-Laki', '21.83.0712', 'ee11cbb19052e40b07aac0ca060c23ee'),
(6, 'Dimas Fajar Nugroho', 'Laki-Laki', '20.11.3398', 'ee11cbb19052e40b07aac0ca060c23ee'),
(7, 'Eldiva Tegar Imananda', 'Laki-Laki', '20.83.0474', 'ee11cbb19052e40b07aac0ca060c23ee'),
(8, 'Ema Devani Putri', 'Perempuan', '20.11.3663', 'ee11cbb19052e40b07aac0ca060c23ee'),
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
(69, 'Asman Haikal', 'Laki-Laki', '23.22.2510', 'ee11cbb19052e40b07aac0ca060c23ee'),
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
(140, 'Wibisono Wijaya', 'Laki-Laki', '21.82.1153', 'ee11cbb19052e40b07aac0ca060c23ee');

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
(11, 'Haikal', 'haikal', 'a847b53f9999fc735ca2b6f1419c93d0');

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
(254, 13, 1, '2023-12-17 15:26:49'),
(255, 13, 2, '2023-12-17 15:28:06'),
(256, 14, 3, '2023-12-17 15:28:28');

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
  MODIFY `id_kandidat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pemilih`
--
ALTER TABLE `pemilih`
  MODIFY `id_pemilih` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pilih`
--
ALTER TABLE `pilih`
  MODIFY `id_pilih` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pilih`
--
ALTER TABLE `pilih`
  ADD CONSTRAINT `PILIH - KANDIDAT` FOREIGN KEY (`id_kandidat`) REFERENCES `kandidat` (`id_kandidat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `PILIH - PEMILIH` FOREIGN KEY (`id_pemilih`) REFERENCES `pemilih` (`id_pemilih`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
