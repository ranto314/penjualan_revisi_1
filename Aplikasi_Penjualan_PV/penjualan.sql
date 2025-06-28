-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2025 at 11:15 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kd_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `jenis_barang` varchar(50) NOT NULL,
  `harga_beli` int(20) NOT NULL,
  `harga_jual` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kd_barang`, `nama_barang`, `jenis_barang`, `harga_beli`, `harga_jual`) VALUES
('B0001', 'Kopiko', 'Makanan', 7000, 10000),
('B0002', 'Air Galon', 'Minuman', 6000, 7000),
('B0003', 'Ultramilk', 'Minuman', 5000, 10000),
('B0004', 'IndoMie', 'Makanan', 5000, 7000),
('B0005', 'Baygon', 'Minuman', 10000, 20000),
('B0006', 'Coca-Cola', 'Minuman', 3000, 5000),
('B0007', 'Aqua', 'Minuman', 3000, 5000),
('B0008', 'Roti Matahari', 'Makanan', 5000, 7000),
('B0009', 'Roti Roma Kelapa', 'Makanan', 7000, 11500),
('B1001', 'Nasi Goreng', 'Makanan', 6000, 10000),
('B1002', 'Zugut', 'Makanan', 6000, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `isi`
--

CREATE TABLE `isi` (
  `id_nota` varchar(10) NOT NULL,
  `kdbrg` varchar(10) NOT NULL,
  `harga_b` int(20) NOT NULL,
  `harga_j` int(20) NOT NULL,
  `qty` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `isi`
--

INSERT INTO `isi` (`id_nota`, `kdbrg`, `harga_b`, `harga_j`, `qty`) VALUES
('IN0001', 'B0005', 10000, 20000, 12),
('IN0002', 'B0001', 10000, 20000, 12),
('IN0003', 'B0001', 10000, 20000, 12),
('IN0004', 'B0002', 5000, 7000, 19),
('IN0005', 'B0003', 5000, 10000, 13),
('IN0005', 'B0005', 10000, 20000, 12),
('IN0005', 'B0003', 5000, 10000, 1),
('IN0006', 'B0004', 5000, 7000, 2),
('IN0007', 'B0003', 5000, 10000, 1),
('IN0008', 'B0004', 5000, 7000, 12),
('IN0008', 'B0001', 10000, 20000, 11),
('IN0009', 'B0001', 10000, 20000, 1),
('IN0009', 'B0005', 10000, 20000, 10),
('IN0010', 'B0004', 5000, 7000, 12),
('IN0010', 'B0003', 5000, 10000, 1),
('IN0011', 'B0004', 5000, 7000, 12),
('IN0011', 'B0005', 10000, 20000, 1),
('IN0012', 'B0003', 5000, 10000, 1),
('IN0012', 'B0001', 10000, 20000, 1),
('IN0012', 'B0002', 5000, 7000, 1),
('IN0012', 'B0003', 5000, 10000, 1),
('IN0012', 'B0004', 5000, 7000, 2),
('IN0013', 'B0001', 7000, 10000, 1),
('IN0013', 'B0002', 5000, 7000, 2),
('IN0013', 'B0003', 5000, 10000, 2),
('IN0013', 'B0006', 3000, 5000, 1),
('IN0014', 'B0009', 7000, 11500, 8),
('IN0014', 'B1001', 6000, 10000, 2),
('IN0014', 'B0008', 5000, 7000, 3),
('IN0014', 'B0006', 3000, 5000, 1),
('IN0015', 'B1001', 6000, 10000, 2),
('IN0015', 'B0006', 3000, 5000, 3),
('IN0016', 'B0009', 7000, 11500, 1),
('IN0016', 'B1001', 6000, 10000, 3),
('IN0016', 'B0006', 3000, 5000, 2),
('IN0016', 'B0008', 5000, 7000, 1),
('IN0017', 'B1002', 6000, 10000, 11),
('IN0018', 'B0002', 6000, 7000, 2),
('IN0019', 'B0004', 5000, 7000, 1),
('IN0020', 'B0007', 3000, 5000, 11),
('IN0020', 'B0001', 7000, 10000, 1),
('IN0021', 'B0006', 3000, 5000, 1),
('IN0021', 'B1001', 6000, 10000, 1),
('IN0022', 'B0004', 5000, 7000, 4);

-- --------------------------------------------------------

--
-- Table structure for table `kasir`
--

CREATE TABLE `kasir` (
  `id_kasir` varchar(5) NOT NULL,
  `nama_kasir` varchar(50) NOT NULL,
  `jenis_kelamin_k` varchar(12) NOT NULL,
  `no_telp_k` varchar(12) NOT NULL,
  `alamat_k` text NOT NULL,
  `agama` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kasir`
--

INSERT INTO `kasir` (`id_kasir`, `nama_kasir`, `jenis_kelamin_k`, `no_telp_k`, `alamat_k`, `agama`, `password`) VALUES
('K0000', 'Dinda', 'Perempuan', '082276122343', 'Kristen', 'Medan', '000000'),
('K0001', 'Agus', 'Perempuan', '833322223333', 'Islam', 'Jakarta', '111111'),
('K0002', 'Peri', 'Perempuan', '082212347689', 'Tidak Diketahui', 'Siambaton Pahae', '222222'),
('K0003', 'Ucok Ranto', 'Laki-Laki', '082276122343', 'Tidak Diketahui', 'Dolok Sanggul', '333333'),
('K0004', 'Berto', 'Laki-Laki', '0826', 'Khatolik', 'Pakkat', '444444'),
('K0005', 'Supri', 'Laki-Laki', '089912234576', 'Tidak Diketahui', 'Siambaton Pahae', '555555'),
('K0006', 'Ranto', 'Laki-Laki', '833322223333', 'Parajaran', 'Tidak Diketahui', '666666'),
('K0007', 'Yanto', 'Laki-Laki', '833322223333', 'Sipele Begu', 'Tidak Diketahui', '666666');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `id_nota` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  `id_pelanggan` varchar(12) NOT NULL,
  `id_kasir` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`id_nota`, `tanggal`, `id_pelanggan`, `id_kasir`) VALUES
('IN0001', '2025-06-18', 'P0001', 'K0001'),
('IN0002', '2025-06-18', 'P0001', 'K0001'),
('IN0003', '2025-06-18', 'P0001', 'K0001'),
('IN0004', '2025-06-18', 'P0002', 'K0004'),
('IN0005', '2025-06-19', 'P0003', 'K0003'),
('IN0006', '2025-06-19', 'P0004', 'K0001'),
('IN0007', '2025-06-19', 'P0001', 'K0001'),
('IN0008', '2025-06-19', 'P0002', 'K0001'),
('IN0009', '2025-06-19', 'P0004', 'K0001'),
('IN0010', '2025-06-19', 'P0004', 'K0006'),
('IN0011', '2025-06-19', 'P0005', 'K0001'),
('IN0012', '2025-06-19', 'P0001', 'K0001'),
('IN0013', '2025-06-20', 'P0004', 'K0001'),
('IN0014', '2025-06-20', 'P0007', 'K0006'),
('IN0015', '2025-06-20', 'P0002', 'K0006'),
('IN0016', '2025-06-21', 'P0007', 'K0000'),
('IN0017', '2025-06-22', 'P0007', 'K0001'),
('IN0018', '2025-06-22', 'P0007', 'K0000'),
('IN0019', '2025-06-22', 'P0007', 'K0000'),
('IN0020', '2025-06-22', 'P0003', 'K0001'),
('IN0021', '2025-06-22', 'P0006', 'K0000'),
('IN0022', '2025-06-22', 'P0001', 'K0000');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` varchar(5) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `jenis_kelamin_p` varchar(20) NOT NULL,
  `no_telp_p` varchar(15) NOT NULL,
  `alamat_pelanggan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `jenis_kelamin_p`, `no_telp_p`, `alamat_pelanggan`) VALUES
('P0001', 'Ucok', 'Laki-Laki', '0822', 'Parajaran'),
('P0002', 'Ranto', 'Laki-Laki', '0821', 'Pakkat'),
('P0003', 'Dinda', 'Perempuan', '0823', 'Pakkat'),
('P0004', 'Kasturi', 'Laki-Laki', '0821', 'Parajaran'),
('P0005', 'Tinambunan', 'Laki-Laki', '0822', 'Parlilitan'),
('P0006', 'Sihotang', 'Perempuan', '0823', 'Pakkat'),
('P0007', 'Kevin', 'Laki-Laki', '0822', 'Siamabaton Julu');

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `id_kasir` varchar(5) NOT NULL,
  `password` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indexes for table `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`id_kasir`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`id_kasir`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
