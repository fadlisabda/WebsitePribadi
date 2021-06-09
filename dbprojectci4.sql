-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2021 at 03:20 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbprojectci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_activation_attempts`
--

INSERT INTO `auth_activation_attempts` (`id`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '04a0953e6fd772bbc820d5a0062642a8', '2021-05-20 09:49:53');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'fadlisabda3@gmail.com', 1, '2021-05-20 00:25:42', 1),
(2, '::1', 'fadlisabda3@gmail.com', 11, '2021-05-20 09:50:24', 1),
(3, '::1', 'fadlisabda3@gmail.com', 11, '2021-05-20 10:00:00', 1),
(4, '::1', 'fadlisabda3@gmail.com', 11, '2021-05-22 03:05:10', 1),
(5, '::1', 'fadlisabda3@gmail.com', 11, '2021-05-24 05:05:18', 1),
(6, '::1', 'fadlisabda3@gmail.com', 11, '2021-05-25 09:45:27', 1),
(7, '::1', 'fadlisabda3@gmail.com', 11, '2021-05-28 06:09:09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, '7 in 1 Pemrograman Web untuk Pemula', '7-in-1-pemrograman-web-untuk-pemula', 'Rohi Abdulloh', 'Elex Media Komputindo ', 'webbook.jpg', NULL, '2021-05-10 00:38:48'),
(2, 'HTML 5 DASAR DASAR PENGEMBANGAN UNTUK APLIKASI BERBASIS WEB', 'HTML-5-DASAR-DASAR-PENGEMBANGAN-UNTUK-APLIKASI-BERBASIS-WEB', 'BETHA SIDIK', 'INFORMATIKA', 'webbook2.jpg', NULL, NULL),
(5, 'Algoritma Pemrograman dan Struktur Data Menggunakan C++', 'algoritma-pemrograman-dan-struktur-data-menggunakan-c', 'Cipta Ramadhani, S.T., M.Eng', 'Andi', 'bukuc.jpg', '2021-05-06 10:50:50', '2021-05-06 10:50:50'),
(20, 'Buku JAVA, Referensi Lengkap untuk Programer+cd - R.H. Sianipar', 'buku-java-referensi-lengkap-untuk-programercd-rh-sianipar', 'R.H. Sianipar', 'penerbit andi', '1621321233_75891dcf39fb6feb16e3.jpg', '2021-05-18 02:00:33', '2021-05-18 02:00:33'),
(22, 'Buku Tuntunan Praktis: Belajar Database Menggunakan MySQL, Edisi Revis - Abdul Kadir', 'buku-tuntunan-praktis-belajar-database-menggunakan-mysql-edisi-revis-abdul-kadir', 'Abdul Kadir', 'Penerbit Andi', '1621321774_0f5b977fd3caeaa6da01.jpg', '2021-05-18 02:09:34', '2021-05-18 02:09:34');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `nama`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Ghaliyati Suartini', 'dipa14@yahoo.co.id', '2021-05-16 03:13:32', '2021-05-16 03:13:32'),
(2, 'Halim Prabu Sihotang', 'vpuspita@susanti.net', '2021-05-16 03:13:33', '2021-05-16 03:13:33'),
(3, 'Jatmiko Permadi', 'hairyanto.melani@laksmiwati.in', '2021-05-16 03:13:33', '2021-05-16 03:13:33'),
(4, 'Salwa Anggraini', 'nrima.laksmiwati@yahoo.co.id', '2021-05-16 03:13:33', '2021-05-16 03:13:33'),
(5, 'Tasnim Firmansyah', 'ywijaya@gmail.co.id', '2021-05-16 03:13:34', '2021-05-16 03:13:34'),
(6, 'Ganda Pradana', 'eli04@gmail.co.id', '2021-05-16 03:13:34', '2021-05-16 03:13:34'),
(7, 'Novi Diah Novitasari M.Farm', 'digdaya.suwarno@yuniar.co.id', '2021-05-16 03:13:34', '2021-05-16 03:13:34'),
(8, 'Jaeman Sinaga', 'upik.nuraini@yahoo.com', '2021-05-16 03:13:35', '2021-05-16 03:13:35'),
(9, 'Cengkir Suryono S.Ked', 'zulaika.karya@wibowo.in', '2021-05-16 03:13:35', '2021-05-16 03:13:35'),
(10, 'Vanesa Raina Pratiwi S.Pt', 'salman00@hutagalung.co.id', '2021-05-16 03:13:35', '2021-05-16 03:13:35'),
(11, 'Langgeng Jailani', 'baktiono92@winarsih.go.id', '2021-05-16 03:13:36', '2021-05-16 03:13:36'),
(12, 'Fitriani Fujiati', 'usyi.nasyiah@gmail.co.id', '2021-05-16 03:13:36', '2021-05-16 03:13:36'),
(13, 'Kalim Prakasa', 'zulkarnain.salsabila@gmail.co.id', '2021-05-16 03:13:36', '2021-05-16 03:13:36'),
(14, 'Kasiyah Purnawati', 'puspasari.raditya@gmail.com', '2021-05-16 03:13:36', '2021-05-16 03:13:36'),
(15, 'Waluyo Dodo Putra', 'rajata.sadina@gmail.com', '2021-05-16 03:13:36', '2021-05-16 03:13:36'),
(16, 'Lili Fujiati', 'prayoga.pertiwi@gmail.com', '2021-05-16 03:13:37', '2021-05-16 03:13:37'),
(17, 'Asman Gatra Sirait S.I.Kom', 'usamah.talia@mandala.desa.id', '2021-05-16 03:13:39', '2021-05-16 03:13:39'),
(18, 'Diah Nurdiyanti S.Sos', 'farida.dagel@gmail.co.id', '2021-05-16 03:13:39', '2021-05-16 03:13:39'),
(19, 'Tantri Laksita', 'lmegantara@lailasari.or.id', '2021-05-16 03:13:40', '2021-05-16 03:13:40'),
(20, 'Eli Astuti', 'daliman.wastuti@pradana.in', '2021-05-16 03:13:40', '2021-05-16 03:13:40'),
(21, 'Hasna Patricia Melani', 'smustofa@gmail.co.id', '2021-05-16 03:13:40', '2021-05-16 03:13:40'),
(22, 'Lanjar Lazuardi', 'ujanuar@wastuti.go.id', '2021-05-16 03:13:40', '2021-05-16 03:13:40'),
(23, 'Malika Zulaika', 'lasmanto44@gmail.com', '2021-05-16 03:13:41', '2021-05-16 03:13:41'),
(24, 'Soleh Prasasta', 'aprayoga@kusmawati.web.id', '2021-05-16 03:13:41', '2021-05-16 03:13:41'),
(25, 'Oman Budiman S.Psi', 'halima.wibisono@gmail.co.id', '2021-05-16 03:13:42', '2021-05-16 03:13:42'),
(26, 'Faizah Diah Wijayanti', 'dalima72@gmail.com', '2021-05-16 03:13:42', '2021-05-16 03:13:42'),
(27, 'Zelda Namaga', 'karna.laksmiwati@gmail.co.id', '2021-05-16 03:13:42', '2021-05-16 03:13:42'),
(28, 'Nurul Agustina', 'vera.safitri@salahudin.org', '2021-05-16 03:13:42', '2021-05-16 03:13:42'),
(29, 'Kasiyah Riyanti S.T.', 'kasiyah66@namaga.desa.id', '2021-05-16 03:13:42', '2021-05-16 03:13:42'),
(30, 'Yulia Lala Wijayanti S.Sos', 'sari87@yahoo.co.id', '2021-05-16 03:13:42', '2021-05-16 03:13:42'),
(31, 'Kezia Rahmawati', 'jindra90@haryanto.or.id', '2021-05-16 03:13:43', '2021-05-16 03:13:43'),
(32, 'Maimunah Ami Nasyidah', 'haryanti.dadap@gmail.co.id', '2021-05-16 03:13:43', '2021-05-16 03:13:43'),
(33, 'Calista Yuliarti', 'ghani.mandasari@yahoo.co.id', '2021-05-16 03:13:43', '2021-05-16 03:13:43'),
(34, 'Sakura Yuniar M.Kom.', 'septi.winarsih@yahoo.com', '2021-05-16 03:13:43', '2021-05-16 03:13:43'),
(35, 'Vero Rajasa', 'umaya.sinaga@irawan.desa.id', '2021-05-16 03:13:43', '2021-05-16 03:13:43'),
(36, 'Emas Hakim', 'wdongoran@oktaviani.co', '2021-05-16 03:13:43', '2021-05-16 03:13:43'),
(37, 'Nova Palastri', 'sarah.lazuardi@gmail.co.id', '2021-05-16 03:13:43', '2021-05-16 03:13:43'),
(38, 'Cakrabirawa Siregar', 'syahrini.lestari@lailasari.net', '2021-05-16 03:13:43', '2021-05-16 03:13:43'),
(39, 'Slamet Wage Tampubolon S.Gz', 'halim.kuswandari@ramadan.sch.id', '2021-05-16 03:13:43', '2021-05-16 03:13:43'),
(40, 'Danang Rajata', 'manullang.harja@nurdiyanti.web.id', '2021-05-16 03:13:43', '2021-05-16 03:13:43'),
(41, 'Puji Laksmiwati', 'saptono.jane@gmail.com', '2021-05-16 03:13:43', '2021-05-16 03:13:43'),
(42, 'Dipa Irwan Rajata', 'dartono.suartini@sitorus.co.id', '2021-05-16 03:13:44', '2021-05-16 03:13:44'),
(43, 'Ana Kuswandari', 'wastuti.reza@yahoo.co.id', '2021-05-16 03:13:44', '2021-05-16 03:13:44'),
(44, 'Labuh Dabukke', 'harjaya14@gmail.co.id', '2021-05-16 03:13:44', '2021-05-16 03:13:44'),
(45, 'Padma Restu Purwanti', 'pratiwi.kadir@yahoo.co.id', '2021-05-16 03:13:44', '2021-05-16 03:13:44'),
(46, 'Ilyas Daru Maheswara', 'saragih.faizah@gmail.co.id', '2021-05-16 03:13:44', '2021-05-16 03:13:44'),
(47, 'Akarsana Budiman', 'pardi.prakasa@prasetya.my.id', '2021-05-16 03:13:44', '2021-05-16 03:13:44'),
(48, 'Umay Empluk Winarno', 'endah.haryanti@gmail.com', '2021-05-16 03:13:44', '2021-05-16 03:13:44'),
(49, 'Rina Samiah Farida', 'vanesa48@gmail.com', '2021-05-16 03:13:44', '2021-05-16 03:13:44'),
(50, 'Cayadi Narpati S.E.', 'kuswoyo.saka@yahoo.com', '2021-05-16 03:13:44', '2021-05-16 03:13:44'),
(51, 'Ibrani Joko Siregar', 'sakura76@hartati.asia', '2021-05-16 03:13:44', '2021-05-16 03:13:44'),
(52, 'Jaiman Kenzie Prasasta', 'winarsih.farah@yahoo.com', '2021-05-16 03:13:45', '2021-05-16 03:13:45'),
(53, 'Taufik Pradipta', 'ida92@yahoo.co.id', '2021-05-16 03:13:45', '2021-05-16 03:13:45'),
(54, 'Balidin Siregar', 'lpradipta@sitompul.co.id', '2021-05-16 03:13:45', '2021-05-16 03:13:45'),
(55, 'Violet Usamah', 'santoso.gara@widodo.co', '2021-05-16 03:13:45', '2021-05-16 03:13:45'),
(56, 'Raina Halimah S.Farm', 'zulaika.laras@wastuti.go.id', '2021-05-16 03:13:45', '2021-05-16 03:13:45'),
(57, 'Tina Winarsih', 'viman27@mahendra.co.id', '2021-05-16 03:13:45', '2021-05-16 03:13:45'),
(58, 'Simon Tamba', 'vera.hidayanto@laksmiwati.mil.id', '2021-05-16 03:13:45', '2021-05-16 03:13:45'),
(59, 'Keisha Amalia Pratiwi', 'teguh.hutagalung@yahoo.com', '2021-05-16 03:13:45', '2021-05-16 03:13:45'),
(60, 'Juli Kiandra Utami S.Farm', 'zalindra72@siregar.mil.id', '2021-05-16 03:13:45', '2021-05-16 03:13:45'),
(61, 'Nrima Pradipta', 'tami.rajasa@hastuti.web.id', '2021-05-16 03:13:45', '2021-05-16 03:13:45'),
(62, 'Agus Utama', 'kayun.prakasa@yahoo.com', '2021-05-16 03:13:45', '2021-05-16 03:13:45'),
(63, 'Taswir Siregar', 'najwa.mangunsong@utama.sch.id', '2021-05-16 03:13:45', '2021-05-16 03:13:45'),
(64, 'Umi Uli Nasyiah M.Farm', 'karma29@mahendra.my.id', '2021-05-16 03:13:46', '2021-05-16 03:13:46'),
(65, 'Ganep Sirait', 'calista55@hartati.net', '2021-05-16 03:13:46', '2021-05-16 03:13:46'),
(66, 'Galih Saputra M.TI.', 'ayu.wacana@fujiati.desa.id', '2021-05-16 03:13:46', '2021-05-16 03:13:46'),
(67, 'Radit Latupono S.Ked', 'xrahayu@yahoo.co.id', '2021-05-16 03:13:46', '2021-05-16 03:13:46'),
(68, 'Kani Wulandari S.Psi', 'cahya.hastuti@yahoo.com', '2021-05-16 03:13:46', '2021-05-16 03:13:46'),
(69, 'Karimah Nurdiyanti', 'juli99@aryani.desa.id', '2021-05-16 03:13:46', '2021-05-16 03:13:46'),
(70, 'Rosman Hakim S.E.I', 'elvin96@gmail.co.id', '2021-05-16 03:13:47', '2021-05-16 03:13:47'),
(71, 'Manah Wibowo', 'putri59@gmail.com', '2021-05-16 03:13:47', '2021-05-16 03:13:47'),
(72, 'Pia Wahyuni', 'rachel.mulyani@gmail.co.id', '2021-05-16 03:13:47', '2021-05-16 03:13:47'),
(73, 'Jane Prastuti', 'empluk.andriani@gmail.co.id', '2021-05-16 03:13:47', '2021-05-16 03:13:47'),
(74, 'Bancar Martani Simbolon', 'fmaulana@gmail.co.id', '2021-05-16 03:13:47', '2021-05-16 03:13:47'),
(75, 'Michelle Rahmi Hastuti', 'eriyanti@gmail.co.id', '2021-05-16 03:13:47', '2021-05-16 03:13:47'),
(76, 'Tania Tiara Hassanah', 'wulan.prastuti@maryadi.tv', '2021-05-16 03:13:48', '2021-05-16 03:13:48'),
(77, 'Oni Aryani', 'marbun.kambali@astuti.web.id', '2021-05-16 03:13:48', '2021-05-16 03:13:48'),
(78, 'Jessica Puspasari M.M.', 'jabal.haryanti@gmail.co.id', '2021-05-16 03:13:48', '2021-05-16 03:13:48'),
(79, 'Emas Maulana', 'kamaria85@gmail.com', '2021-05-16 03:13:48', '2021-05-16 03:13:48'),
(80, 'Artawan Firmansyah', 'riyanti.dina@jailani.sch.id', '2021-05-16 03:13:48', '2021-05-16 03:13:48'),
(81, 'Yunita Astuti', 'sihotang.julia@farida.biz', '2021-05-16 03:13:48', '2021-05-16 03:13:48'),
(82, 'Sabrina Palastri', 'harimurti.yolanda@saptono.ac.id', '2021-05-16 03:13:49', '2021-05-16 03:13:49'),
(83, 'Hani Suartini', 'mangunsong.warsa@mulyani.org', '2021-05-16 03:13:49', '2021-05-16 03:13:49'),
(84, 'Kanda Situmorang S.Pd', 'galih81@situmorang.go.id', '2021-05-16 03:13:49', '2021-05-16 03:13:49'),
(85, 'Julia Namaga', 'sirait.intan@budiyanto.desa.id', '2021-05-16 03:13:49', '2021-05-16 03:13:49'),
(86, 'Fitria Mandasari', 'cindy92@natsir.biz', '2021-05-16 03:13:49', '2021-05-16 03:13:49'),
(87, 'Uli Widiastuti', 'tmegantara@melani.biz.id', '2021-05-16 03:13:49', '2021-05-16 03:13:49'),
(88, 'Harsaya Dasa Mustofa', 'hmaryadi@gmail.com', '2021-05-16 03:13:49', '2021-05-16 03:13:49'),
(89, 'Darijan Nashiruddin', 'prasetya.wibisono@andriani.mil.id', '2021-05-16 03:13:49', '2021-05-16 03:13:49'),
(90, 'Violet Haryanti', 'lzulaika@uwais.desa.id', '2021-05-16 03:13:50', '2021-05-16 03:13:50'),
(91, 'Laila Septi Prastuti', 'widodo.tirta@oktaviani.tv', '2021-05-16 03:13:50', '2021-05-16 03:13:50'),
(92, 'Kuncara Hidayat', 'cengkal88@dabukke.my.id', '2021-05-16 03:13:50', '2021-05-16 03:13:50'),
(93, 'Drajat Salahudin S.Pd', 'cinthia88@thamrin.co.id', '2021-05-16 03:13:50', '2021-05-16 03:13:50'),
(94, 'Wage Adikara Prabowo', 'rahmawati.tami@suryono.co.id', '2021-05-16 03:13:50', '2021-05-16 03:13:50'),
(95, 'Dian Nasyiah', 'dimaz03@yahoo.co.id', '2021-05-16 03:13:50', '2021-05-16 03:13:50'),
(96, 'Eli Handayani', 'atmaja.purwanti@yolanda.net', '2021-05-16 03:13:50', '2021-05-16 03:13:50'),
(97, 'Luis Siregar', 'syahrini57@gmail.co.id', '2021-05-16 03:13:50', '2021-05-16 03:13:50'),
(98, 'Titin Tania Lestari', 'nprasetyo@yahoo.co.id', '2021-05-16 03:13:50', '2021-05-16 03:13:50'),
(99, 'Ani Utami', 'gilang.maryati@gmail.co.id', '2021-05-16 03:13:50', '2021-05-16 03:13:50'),
(100, 'Eli Nilam Oktaviani', 'karman.nuraini@gmail.com', '2021-05-16 03:13:51', '2021-05-16 03:13:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-05-16-063719', 'App\\Database\\Migrations\\Data', 'default', 'App', 1621149148, 1),
(2, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1621488291, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10, 'fadlisabda7@gmail.com', 'fadlisabdad', '$2y$10$980kPEs6IUUq4PB64vacB.gPCIny.abXBE0V8BAWpxIru3UQYkBfC', NULL, NULL, NULL, '3abc3b8bdc450795cacb5efa08448597', NULL, NULL, 0, 0, '2021-05-20 04:41:55', '2021-05-20 04:41:55', NULL),
(11, 'fadlisabda3@gmail.com', 'fadlisabda3', '$2y$10$bS5qG3K2o20qAXu3p/FyWOQVSYzGnGqfEEBQUM2UaSOrQ8XgxsUTi', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-05-20 09:43:52', '2021-05-20 09:49:58', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
