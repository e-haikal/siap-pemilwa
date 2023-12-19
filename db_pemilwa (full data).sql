-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 18, 2023 at 08:09 PM
-- Server version: 10.6.16-MariaDB-cll-lve
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u1704798_db_pemilwa`
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
(1, 'Farista - Panji', '1', 'kandidat-11.png'),
(2, 'Billy - Guntur', '2', 'kandidat-21.png');

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
(156, 'FAUZI IKHSAN NOVANTO', 'Laki-Laki', '23.22.2525', 'ee11cbb19052e40b07aac0ca060c23ee'),
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
(188, 'ZAIDAN RAFIF SYAUQI', 'Laki-Laki', '22.12.2731', 'ee11cbb19052e40b07aac0ca060c23ee');

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
(1, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'Haikal', 'haikal', 'a847b53f9999fc735ca2b6f1419c93d0');

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
(256, 14, 3, '2023-12-17 15:28:28'),
(257, 14, 4, '2023-12-17 22:23:31'),
(258, 14, 5, '2023-12-17 22:25:03'),
(259, 13, 6, '2023-12-17 22:27:33'),
(260, 14, 7, '2023-12-17 22:27:59'),
(261, 14, 8, '2023-12-17 22:28:15'),
(262, 14, 9, '2023-12-17 22:28:26'),
(263, 13, 10, '2023-12-17 22:29:55'),
(264, 13, 11, '2023-12-17 22:41:49'),
(265, 13, 12, '2023-12-17 22:44:51'),
(266, 14, 13, '2023-12-17 23:48:07'),
(267, 14, 14, '2023-12-17 23:48:23'),
(268, 13, 15, '2023-12-17 23:48:50'),
(269, 13, 16, '2023-12-17 23:49:05'),
(270, 13, 17, '2023-12-17 23:49:20'),
(271, 14, 19, '2023-12-17 23:49:47'),
(272, 13, 20, '2023-12-17 23:50:00'),
(273, 13, 21, '2023-12-17 23:50:14'),
(274, 14, 22, '2023-12-17 23:50:28'),
(275, 13, 23, '2023-12-17 23:50:39'),
(276, 13, 24, '2023-12-17 23:52:13'),
(277, 13, 25, '2023-12-17 23:53:10'),
(278, 14, 26, '2023-12-17 23:53:25'),
(279, 14, 27, '2023-12-17 23:53:42'),
(280, 14, 28, '2023-12-17 23:54:36'),
(281, 13, 29, '2023-12-17 23:56:11'),
(282, 14, 30, '2023-12-17 23:56:23'),
(283, 14, 31, '2023-12-17 23:56:37'),
(284, 14, 32, '2023-12-17 23:57:10'),
(285, 14, 33, '2023-12-17 23:57:23'),
(286, 14, 34, '2023-12-17 23:57:43'),
(287, 14, 35, '2023-12-17 23:58:02'),
(288, 13, 36, '2023-12-17 23:58:20'),
(289, 14, 37, '2023-12-17 23:59:24'),
(290, 14, 38, '2023-12-18 00:00:02'),
(291, 14, 39, '2023-12-18 00:01:52'),
(292, 14, 40, '2023-12-18 00:02:13'),
(293, 14, 41, '2023-12-18 00:02:27'),
(294, 13, 42, '2023-12-18 00:02:52'),
(295, 14, 43, '2023-12-18 00:03:06'),
(296, 14, 44, '2023-12-18 00:03:21'),
(297, 14, 45, '2023-12-18 00:03:42'),
(298, 14, 46, '2023-12-18 00:03:57'),
(299, 14, 47, '2023-12-18 00:04:40'),
(300, 13, 48, '2023-12-18 00:05:33'),
(301, 14, 50, '2023-12-18 00:06:20'),
(302, 13, 49, '2023-12-18 00:08:51'),
(303, 14, 51, '2023-12-18 00:09:58'),
(304, 14, 52, '2023-12-18 00:10:20'),
(305, 13, 53, '2023-12-18 00:10:31'),
(306, 13, 54, '2023-12-18 00:10:41'),
(307, 14, 55, '2023-12-18 00:10:53'),
(308, 13, 56, '2023-12-18 00:12:52'),
(309, 13, 57, '2023-12-18 00:13:02'),
(310, 13, 58, '2023-12-18 00:13:14'),
(311, 14, 59, '2023-12-18 00:13:27'),
(312, 14, 60, '2023-12-18 00:13:37'),
(313, 13, 61, '2023-12-18 00:13:51'),
(314, 13, 62, '2023-12-18 00:14:02'),
(315, 13, 63, '2023-12-18 00:14:17'),
(316, 14, 64, '2023-12-18 00:14:34'),
(317, 14, 65, '2023-12-18 00:14:56'),
(318, 14, 66, '2023-12-18 00:15:35'),
(319, 13, 67, '2023-12-18 00:15:45'),
(320, 14, 68, '2023-12-18 00:15:59'),
(321, 13, 71, '2023-12-18 00:16:31'),
(322, 14, 72, '2023-12-18 00:16:44'),
(323, 13, 73, '2023-12-18 00:16:57'),
(324, 13, 74, '2023-12-18 00:17:13'),
(325, 13, 75, '2023-12-18 00:17:59'),
(326, 13, 76, '2023-12-18 00:45:47'),
(327, 13, 77, '2023-12-18 00:46:06'),
(328, 14, 78, '2023-12-18 00:46:26'),
(329, 13, 79, '2023-12-18 00:46:39'),
(330, 13, 80, '2023-12-18 00:46:58'),
(331, 13, 81, '2023-12-18 00:47:12'),
(332, 13, 82, '2023-12-18 00:47:23'),
(333, 14, 83, '2023-12-18 00:47:35'),
(334, 14, 84, '2023-12-18 00:47:54'),
(335, 13, 85, '2023-12-18 00:48:06'),
(336, 14, 86, '2023-12-18 00:48:22'),
(337, 14, 87, '2023-12-18 00:48:32'),
(338, 14, 88, '2023-12-18 00:48:49'),
(339, 13, 89, '2023-12-18 00:49:02'),
(340, 13, 90, '2023-12-18 00:51:16'),
(341, 14, 91, '2023-12-18 00:52:54'),
(342, 14, 92, '2023-12-18 00:53:04'),
(343, 13, 93, '2023-12-18 00:54:20'),
(344, 13, 95, '2023-12-18 00:58:05'),
(345, 13, 94, '2023-12-18 00:58:16'),
(346, 13, 96, '2023-12-18 14:55:30');

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
  MODIFY `id_pemilih` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pilih`
--
ALTER TABLE `pilih`
  MODIFY `id_pilih` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=347;

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
