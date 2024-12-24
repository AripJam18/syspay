-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Des 2024 pada 09.12
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `syspay`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'admin', '$2y$10$FDcmOrUfQ2IPq3Gs1EgvM.XebrbARut4bWihJ/f13daRBgxDwTSKi', 'Mutiara', 'Raihatuha', 'user1.png', '2018-04-30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `allowances`
--

CREATE TABLE `allowances` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `allowances`
--

INSERT INTO `allowances` (`id`, `description`, `type`, `amount`) VALUES
(1, 'Meal', 'per_day', 20000),
(2, 'Transportation', 'per_day', 30000),
(3, 'Attendace', 'per_day', 5500),
(4, 'Technical Skill', 'fixed_amount', 200000),
(5, 'Language Skill', 'fixed_amount', 150000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time_in` time NOT NULL,
  `status` int(1) NOT NULL,
  `time_out` time NOT NULL,
  `num_hr` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `attendance`
--

INSERT INTO `attendance` (`id`, `employee_id`, `date`, `time_in`, `status`, `time_out`, `num_hr`) VALUES
(13, 1, '2024-11-25', '08:00:00', 1, '17:00:00', 8),
(14, 1, '2024-11-26', '08:00:00', 1, '17:00:00', 8),
(15, 1, '2024-11-27', '08:00:00', 1, '17:00:00', 8),
(16, 1, '2024-11-28', '08:00:00', 1, '17:00:00', 8),
(17, 1, '2024-11-29', '08:00:00', 1, '17:00:00', 8),
(18, 1, '2024-12-02', '08:00:00', 1, '17:00:00', 8),
(74, 1, '2024-12-03', '08:00:00', 1, '17:00:00', 8),
(75, 1, '2024-12-04', '08:00:00', 1, '17:00:00', 8),
(76, 1, '2024-12-05', '08:00:00', 1, '17:00:00', 8),
(77, 1, '2024-12-06', '08:00:00', 1, '17:00:00', 8),
(78, 1, '2024-12-09', '08:00:00', 1, '17:00:00', 8),
(79, 1, '2024-12-10', '08:30:00', 1, '17:00:00', 7.3),
(80, 1, '2024-12-11', '08:00:00', 1, '17:00:00', 8),
(81, 1, '2024-12-12', '08:00:00', 1, '17:00:00', 8),
(83, 1, '2024-12-13', '08:00:00', 1, '18:00:00', 9),
(84, 1, '2024-12-16', '08:00:00', 1, '17:00:00', 8),
(85, 1, '2024-12-17', '09:00:00', 1, '18:00:00', 8),
(86, 1, '2024-12-18', '08:00:00', 1, '17:00:00', 8),
(87, 1, '2024-12-19', '08:00:00', 1, '17:00:00', 8),
(88, 1, '2024-12-20', '08:00:00', 1, '17:00:00', 8),
(89, 1, '2024-12-23', '08:00:00', 1, '17:00:00', 8),
(90, 1, '2024-12-20', '08:00:00', 1, '17:00:00', 8),
(91, 1, '2024-12-23', '08:00:00', 1, '17:00:00', 8),
(92, 1, '2024-12-24', '08:00:00', 1, '17:00:00', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cashadvance`
--

CREATE TABLE `cashadvance` (
  `id` int(11) NOT NULL,
  `date_advance` date NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cashadvance`
--

INSERT INTO `cashadvance` (`id`, `date_advance`, `employee_id`, `amount`) VALUES
(2, '2024-12-02', '1', 1500000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `deductions`
--

CREATE TABLE `deductions` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `percentage` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `deductions`
--

INSERT INTO `deductions` (`id`, `description`, `type`, `percentage`) VALUES
(1, 'BPJS Kesehatan', 'percentage', 1),
(2, 'BPJS TK-JHT', 'percentage', 2),
(3, 'BPJS TK-JP', 'percentage', 1),
(4, 'PPH21', 'percentage', 1),
(5, ' Work Absence Deduction', 'percentage', 4.454);

-- --------------------------------------------------------

--
-- Struktur dari tabel `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `birthdate` date NOT NULL,
  `placeofbirth` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `religion` varchar(50) NOT NULL,
  `citizenship` varchar(100) NOT NULL,
  `blood_type` varchar(10) NOT NULL,
  `marital_status` varchar(50) NOT NULL,
  `tax_status` varchar(3) NOT NULL,
  `id_number` varchar(20) NOT NULL,
  `tax_number` varchar(50) NOT NULL,
  `bpjs_number` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(100) NOT NULL,
  `zipcode` varchar(20) NOT NULL,
  `phone_number` varchar(100) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `bank_account` varchar(50) NOT NULL,
  `position_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `basic_salary` int(11) NOT NULL,
  `skill_allowance_type` varchar(50) DEFAULT NULL,
  `join_date` date NOT NULL,
  `resign_date` date DEFAULT NULL,
  `height` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `employees`
--

INSERT INTO `employees` (`id`, `employee_id`, `firstname`, `lastname`, `birthdate`, `placeofbirth`, `gender`, `religion`, `citizenship`, `blood_type`, `marital_status`, `tax_status`, `id_number`, `tax_number`, `bpjs_number`, `address`, `city`, `zipcode`, `phone_number`, `email_address`, `bank_account`, `position_id`, `schedule_id`, `basic_salary`, `skill_allowance_type`, `join_date`, `resign_date`, `height`, `weight`, `photo`, `created_on`, `created_by`) VALUES
(1, '190078', 'Arip', 'Jamaludin', '1994-10-10', 'Sumedang', 'Male', 'Islam', 'Indonesia', '0', 'Married', 'K2', '3200121', '3210011', '3201120', 'Cikarang Pusat, Kabupaten Bekasi', 'Bekasi', '17812', '087888767970', 'aripjamaludin94@gmail.com', '133002450', 1, 2, 8500000, 'Technical Skill', '2020-10-10', '0000-00-00', 165, 45, 'user.png', '2018-04-28', 'admin'),
(10, '240080', 'Roy', 'Gunawan', '1995-10-10', 'Bekasi', 'Male', 'Islam', 'Indonesia', 'AB', 'Single', 'TK', '3200121', '3210011', '3201120', 'Cikarang Pusat, Bekasi', 'Bekasi', '17811', '085788052001', 'roygunawan@gmail.com', '133002450', 5, 1, 10500000, 'Language Skill', '2024-01-10', '0000-00-00', 177, 77, '', '2024-12-24', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gender`
--

CREATE TABLE `gender` (
  `id` int(11) NOT NULL,
  `gender_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gender`
--

INSERT INTO `gender` (`id`, `gender_name`) VALUES
(1, 'Male'),
(2, 'Female');

-- --------------------------------------------------------

--
-- Struktur dari tabel `overtime`
--

CREATE TABLE `overtime` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `hours` double NOT NULL,
  `rate` double NOT NULL,
  `date_overtime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `overtime`
--

INSERT INTO `overtime` (`id`, `employee_id`, `hours`, `rate`, `date_overtime`) VALUES
(1, '1', 2, 1, '2024-12-10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `overtimerates`
--

CREATE TABLE `overtimerates` (
  `rate_id` int(11) NOT NULL,
  `rate_type` varchar(50) NOT NULL,
  `multiplier` decimal(5,2) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `overtimerates`
--

INSERT INTO `overtimerates` (`rate_id`, `rate_type`, `multiplier`, `description`) VALUES
(1, 'The First Hour', '1.50', 'Lembur jam pertama'),
(2, 'The Next Hour', '2.00', 'Lembur jam berikutnya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `description` varchar(150) NOT NULL,
  `group_level` int(11) NOT NULL,
  `job_level` int(11) NOT NULL,
  `position_allowance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `position`
--

INSERT INTO `position` (`id`, `description`, `group_level`, `job_level`, `position_allowance`) VALUES
(1, 'Programmer Staff', 2, 1, 1500000),
(2, 'Accounting Staff', 2, 2, 0),
(3, 'Operator', 1, 1, 0),
(4, 'Leader', 2, 1, 500),
(5, 'Supervisor', 2, 2, 1000000),
(6, 'Head Section', 3, 1, 2000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `schedule_name` varchar(20) NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL,
  `max_time_in` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `schedules`
--

INSERT INTO `schedules` (`id`, `schedule_name`, `time_in`, `time_out`, `max_time_in`) VALUES
(1, 'Shift 0', '08:00:00', '17:00:00', '08:03:00'),
(2, 'Shift 1', '07:00:00', '16:00:00', '07:03:00'),
(3, 'Shift 2', '16:00:00', '24:00:00', '16:03:00'),
(4, 'Shift 3', '00:00:00', '08:00:00', '00:03:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `allowances`
--
ALTER TABLE `allowances`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cashadvance`
--
ALTER TABLE `cashadvance`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `deductions`
--
ALTER TABLE `deductions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `overtime`
--
ALTER TABLE `overtime`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `overtimerates`
--
ALTER TABLE `overtimerates`
  ADD PRIMARY KEY (`rate_id`);

--
-- Indeks untuk tabel `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `allowances`
--
ALTER TABLE `allowances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT untuk tabel `cashadvance`
--
ALTER TABLE `cashadvance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `deductions`
--
ALTER TABLE `deductions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `overtime`
--
ALTER TABLE `overtime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `overtimerates`
--
ALTER TABLE `overtimerates`
  MODIFY `rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `position`
--
ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
