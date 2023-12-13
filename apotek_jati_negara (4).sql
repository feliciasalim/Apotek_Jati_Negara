-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2023 at 10:48 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotek_jati_negara`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `email`, `nama`, `password`) VALUES
(1, 'apotekjn@gmail.com', 'Admin', '$2y$10$lVztD5nsu/eztt1.u2HzNOc6cI3WFvExACfD8q3PDYxdWsNIf6ID.');

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `id_batch` varchar(20) NOT NULL,
  `id_produk` varchar(50) NOT NULL,
  `tgl_expired` date NOT NULL,
  `stok` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`id_batch`, `id_produk`, `tgl_expired`, `stok`, `harga_beli`, `harga_jual`) VALUES
('B00001', 'GMP001', '2030-10-07', 59, 3700, 4000),
('B00002', 'GMP002', '2030-10-09', 30, 2500, 3000),
('B00003', 'GMP003', '2030-10-02', 18, 6800, 7000),
('B00004', 'GMP004', '2030-10-03', 3, 25800, 26000),
('B00005', 'GMP005', '2030-10-07', 3, 22600, 23000),
('B00006', 'GMP006', '2030-10-03', 5, 31800, 32000),
('B00007', 'GMP007', '2030-10-08', 5, 49000, 51000),
('B00008', 'GMP008', '2030-10-11', 5, 70000, 72000),
('B00009', 'GMP009', '2030-10-06', 1, 104500, 105000),
('B00010', 'GMP010', '2030-10-09', 1, 27000, 27500),
('B00011', 'GMP011', '2030-10-09', 1, 25400, 26000),
('B00012', 'GMP012', '2030-10-08', 1, 35500, 36000),
('B00013', 'GMP013', '2030-10-05', 2, 25400, 26000),
('B00014', 'GMP014', '2030-10-08', 2, 27000, 28000),
('B00015', 'GMP015', '2030-10-07', 1, 21900, 22000),
('B00016', 'GMP016', '2030-10-08', 3, 38000, 40000),
('B00017', 'GMP017', '2030-10-09', 2, 29000, 30000),
('B00018', 'GMP018', '2030-10-07', 1, 27000, 27500),
('B00019', 'GMP019', '2030-10-05', 2, 28000, 30000),
('B00020', 'GMP020', '2030-10-08', 2, 34780, 35000),
('B00021', 'GMP021', '2030-10-07', 2, 119500, 120000),
('B00022', 'GMP022', '2030-10-09', 1, 109000, 110000),
('B00023', 'GMP023', '2030-10-06', 2, 49000, 50000),
('B00024', 'GMP024', '2030-10-09', 1, 44500, 44000),
('B00025', 'GMP025', '2030-10-08', 1, 71900, 72000),
('B00026', 'GMP026', '2030-10-05', 2, 90800, 91000),
('B00027', 'GMP027', '2030-10-07', 1, 27900, 28000),
('B00028', 'GMP028', '2030-10-08', 2, 23850, 24000),
('B00029', 'GMP029', '2030-10-01', 1, 54600, 55000),
('B00030', 'GMP030', '2030-10-11', 2, 52800, 53000),
('B00031', 'GMP031', '2030-10-09', 1, 86700, 88000),
('B00032', 'GMP032', '2030-10-11', 1, 17550, 17900),
('B00033', 'GMP033', '2030-10-08', 1, 24590, 25000),
('B00034', 'GMP034', '2030-10-02', 2, 22600, 23000),
('B00035', 'GMP035', '2030-10-07', 1, 67600, 68000),
('B00036', 'GMP036', '2030-10-07', 1, 47800, 48000),
('B00037', 'GMP037', '2030-10-09', 1, 43750, 44000),
('B00038', 'GMP038', '2030-10-02', 1, 74900, 75000),
('B00039', 'GMP039', '2030-10-01', 1, 24780, 25000),
('B00040', 'GMP040', '2030-10-05', 2, 34780, 35000),
('B00041', 'GMP041', '2030-10-03', 2, 24900, 26000),
('B00042', 'GMP042', '2030-10-08', 2, 39000, 40000),
('B00043', 'GMP043', '2030-10-09', 3, 59800, 60000),
('B00044', 'GMP044', '2030-10-08', 1, 54500, 55000),
('B00045', 'GMP045', '2030-10-03', 1, 26700, 27000),
('B00046', 'GMP046', '2030-10-06', 1, 29800, 30000),
('B00047', 'GMP047', '2030-10-08', 1, 43800, 44000),
('B00048', 'GMP048', '2030-10-08', 2, 30000, 32000),
('B00049', 'GMP049', '2030-10-09', 2, 48000, 50000),
('B00050', 'GMP050', '2030-10-07', 1, 34000, 35000),
('B00051', 'GMP051', '2030-10-08', 2, 19000, 20000),
('B00052', 'GMP052', '2030-10-08', 14, 16000, 18000),
('B00053', 'GMP053', '2030-10-07', 1, 70000, 71000),
('B00054', 'GMP054', '2030-10-07', 4, 32000, 33000),
('B00055', 'GMP055', '2030-10-09', 3, 6700, 7000),
('B00056', 'GMP056', '2030-10-08', 3, 6000, 6600),
('B00057', 'GMP057', '2030-10-09', 2, 11700, 12000),
('B00058', 'GMP058', '2030-10-03', 3, 14000, 15000),
('B00059', 'GMP059', '2030-10-08', 6, 44800, 45000),
('B00060', 'GMP060', '2030-10-06', 4, 20000, 20900),
('B00061', 'GMP061', '2030-10-02', 10, 6800, 7000),
('B00062', 'GMP062', '2030-10-09', 10, 3670, 4000),
('B00063', 'GMP063', '2030-10-06', 2, 14900, 15000),
('B00064', 'GMP064', '2030-10-09', 4, 11900, 12000),
('B00065', 'GMP065', '2030-10-03', 2, 6700, 7000),
('B00066', 'GMP066', '2030-10-07', 10, 40000, 42000),
('B00067', 'GMP067', '2030-10-08', 15, 3790, 4000),
('B00068', 'GMP068', '2030-10-05', 2, 40000, 41000),
('B00069', 'MAS001', '2030-10-07', 11, 14300, 15000),
('B00070', 'MAS002', '2030-10-08', 18, 4900, 5000),
('B00071', 'MAS003', '2030-10-09', 7, 3790, 4000),
('B00072', 'MAS004', '2030-10-09', 3, 140000, 143000),
('B00073', 'MAS005', '2030-10-06', 10, 4670, 5000),
('B00074', 'MAS006', '2030-10-08', 8, 30000, 33000),
('B00075', 'MAS007', '2030-10-07', 4, 10000, 12000),
('B00076', 'MAS008', '2030-10-03', 3, 113500, 115000),
('B00077', 'MAS009', '2030-10-09', 3, 49000, 52000),
('B00078', 'MAS010', '2030-10-10', 1, 67000, 70000),
('B00079', 'MAS011', '2030-10-02', 2, 68000, 70000),
('B00080', 'MAS012', '2030-10-09', 1, 74500, 75000),
('B00081', 'MAS013', '2030-10-08', 2, 22900, 23000),
('B00082', 'MAS014', '2030-10-01', 1, 13600, 14000),
('B00083', 'MAS015', '2030-10-08', 4, 6900, 7000),
('B00084', 'MAS016', '2030-10-06', 6, 7900, 8000),
('B00085', 'MAS017', '2030-10-06', 30, 15400, 16000),
('B00086', 'MAS018', '2030-10-07', 1, 14200, 15000),
('B00087', 'MAS019', '2030-10-09', 1, 34000, 35000),
('B00088', 'MAS020', '2030-10-09', 3, 9000, 10000),
('B00089', 'MAS021', '2030-10-07', 2, 70000, 72000),
('B00090', 'MAS022', '2030-10-07', 18, 41500, 42000),
('B00091', 'MAS023', '2030-10-09', 5, 9900, 10000),
('B00092', 'MAS024', '2030-10-07', 1, 29700, 30000),
('B00093', 'MAS025', '2030-10-09', 6, 2900, 3000),
('B00094', 'MAS026', '2030-10-08', 10, 9800, 10000),
('B00095', 'MAS027', '2030-10-08', 3, 14500, 15000),
('B00096', 'MAS028', '2030-10-07', 9, 5600, 6000),
('B00097', 'MAS029', '2030-10-08', 1, 28900, 29000),
('B00098', 'MAS030', '2030-10-09', 10, 2500, 3000),
('B00099', 'MAS031', '2030-10-09', 4, 27900, 28000),
('B00100', 'MAS032', '2030-10-10', 2, 28000, 30000),
('B00101', 'MAS033', '2030-10-09', 2, 26700, 27000),
('B00102', 'MAS034', '2030-10-08', 23, 2000, 2200),
('B00103', 'MAS035', '2030-10-03', 2, 18000, 20000),
('B00104', 'MAS036', '2030-10-07', 3, 20000, 21000),
('B00105', 'MAS037', '2030-10-09', 2, 20000, 22000),
('B00106', 'MAS038', '2030-10-09', 3, 71000, 72000),
('B00107', 'MAS039', '2030-10-08', 12, 16000, 17000),
('B00108', 'MAS040', '2030-10-09', 1, 80000, 82000),
('B00109', 'MAS041', '2030-10-07', 2, 20000, 21000),
('B00110', 'MAS042', '2030-10-07', 1, 64800, 65000),
('B00111', 'MAS043', '2030-10-05', 3, 43800, 45000),
('B00112', 'MAS044', '2030-10-08', 3, 19800, 20000),
('B00113', 'MAS045', '2030-10-08', 9, 38900, 40000),
('B00114', 'MAS046', '2030-10-08', 24, 5000, 5500),
('B00115', 'MAS047', '2030-10-09', 3, 14500, 15000),
('B00116', 'MAS048', '2030-10-06', 10, 6800, 7000),
('B00117', 'MAS049', '2030-10-10', 9, 4700, 5000),
('B00118', 'MAS050', '2030-10-07', 4, 10500, 11000),
('B00119', 'MAS051', '2030-10-06', 1, 14700, 148500),
('B00120', 'MAS052', '2030-10-08', 11, 12000, 13500),
('B00121', 'MAS053', '2030-10-10', 13, 12000, 13500),
('B00122', 'MAS054', '2030-10-11', 1, 13900, 15000),
('B00123', 'MAS055', '2030-10-06', 2, 28000, 30000),
('B00124', 'MAS056', '2030-10-09', 2, 25450, 26000),
('B00125', 'MAS057', '2030-10-03', 4, 1800, 2000),
('B00126', 'MAS058', '2030-10-07', 15, 9000, 10000),
('B00127', 'MAS059', '2030-10-08', 3, 22000, 23000),
('B00128', 'MAS060', '2030-10-06', 2, 17800, 18000),
('B00129', 'MAS061', '2030-10-07', 10, 3600, 4000),
('B00130', 'MAS062', '2030-10-05', 3, 200700, 203500),
('B00131', 'MAS063', '2030-10-08', 4, 9800, 10000),
('B00132', 'MAS064', '2030-10-07', 3, 15400, 16000),
('B00133', 'MAS065', '2030-10-01', 2, 18900, 20000),
('B00134', 'MAS066', '2030-10-09', 1, 48000, 50000),
('B00135', 'MAS067', '2030-10-09', 5, 7800, 8000),
('B00136', 'MAS068', '2030-10-07', 6, 3700, 4000),
('B00137', 'MAS069', '2030-10-06', 2, 37000, 39000),
('B00138', 'MAS070', '2030-10-02', 2, 27000, 27500),
('B00139', 'MAS071', '2030-10-08', 2, 88000, 90000),
('B00140', 'MAS072', '2030-10-06', 3, 74000, 75000),
('B00141', 'MAS073', '2030-10-06', 1, 42800, 43000),
('B00142', 'MAS074', '2030-10-06', 4, 92000, 93000),
('B00143', 'MAS075', '2030-10-09', 4, 43900, 44000),
('B00144', 'MAS076', '2030-10-09', 5, 2000, 2500),
('B00145', 'MAS077', '2030-10-09', 3, 44700, 45000),
('B00146', 'MAS078', '2030-10-08', 1, 11900, 12000),
('B00147', 'MAS079', '2030-10-09', 2, 7000, 73000),
('B00148', 'MAS080', '2030-10-05', 7, 5600, 6000),
('B00149', 'MAS081', '2030-10-09', 3, 27800, 28000),
('B00150', 'MAS082', '2030-10-07', 15, 10000, 12000),
('B00151', 'MAS083', '2030-10-08', 3, 72500, 73000),
('B00152', 'MAS084', '2030-10-10', 4, 8900, 10000),
('B00153', 'MAS085', '2030-10-07', 8, 9000, 10000),
('B00154', 'MAS086', '2030-10-04', 4, 4400, 5000),
('B00155', 'MAS087', '2030-10-12', 2, 4780, 5000),
('B00156', 'MAS088', '2030-10-10', 9, 61800, 62000),
('B00157', 'MAS089', '2030-10-05', 7, 3400, 3500),
('B00158', 'MAS090', '2030-10-01', 5, 4800, 5000),
('B00159', 'MAS091', '2030-10-10', 4, 65000, 70000),
('B00160', 'MAS092', '2030-10-10', 3, 10000, 17000),
('B00161', 'MAS093', '2030-10-07', 2, 98600, 100000),
('B00162', 'MAS094', '2030-10-12', 10, 4680, 5000),
('B00163', 'MAS095', '2030-10-05', 3, 18700, 19000),
('B00164', 'MAS096', '2030-10-11', 17, 2670, 3000),
('B00165', 'MAS097', '2030-10-05', 9, 10000, 11000),
('B00166', 'MAS098', '2023-04-11', 6, 38900, 40000),
('B00167', 'MAS099', '2030-10-02', 9, 22000, 23500),
('B00168', 'MAS100', '2030-10-09', 9, 2600, 3000),
('B00169', 'MAS101', '2030-10-04', 6, 14500, 15000),
('B00170', 'MAS102', '2030-10-09', 10, 7700, 8000),
('B00171', 'MAS103', '2030-10-10', 8, 12800, 13000),
('B00172', 'MAS104', '2030-10-12', 8, 10700, 11000),
('B00173', 'MAS105', '2030-10-10', 8, 4800, 5000),
('B00174', 'MAS106', '2030-10-08', 5, 24780, 25000),
('B00175', 'MAS107', '2030-10-04', 5, 2640, 3000),
('B00176', 'MAS108', '2030-10-07', 3, 3480, 3500),
('B00177', 'MAS109', '2030-10-05', 9, 1490, 1500),
('B00178', 'MAS110', '2030-10-04', 21, 3450, 4000),
('B00179', 'MAS111', '2030-10-09', 2, 79300, 80000),
('B00180', 'MAS112', '2030-10-05', 15, 40000, 41000),
('B00181', 'MAS113', '2030-10-05', 7, 23800, 24000),
('B00182', 'MAS114', '2030-10-03', 10, 1270, 1300),
('B00183', 'MAS115', '2030-10-01', 10, 1780, 2000),
('B00184', 'MAS116', '2030-10-01', 2, 9700, 10000),
('B00185', 'MAS117', '2030-10-04', 1, 144300, 145000),
('B00186', 'MAS118', '2030-10-02', 2, 19000, 20000),
('B00187', 'MAS119', '2030-10-05', 1, 25000, 27000),
('B00188', 'MAS120', '2030-10-07', 1, 65000, 70000),
('B00189', 'MAS121', '2030-10-09', 3, 42700, 43000),
('B00190', 'MAS122', '2030-10-09', 2, 64600, 65000),
('B00191', 'MAS123', '2030-10-05', 2, 49000, 50000),
('B00192', 'MAS124', '2030-10-04', 2, 76900, 77000),
('B00193', 'MAS125', '2030-10-08', 5, 13600, 14000),
('B00194', 'MAS126', '2030-10-09', 19, 1800, 2000),
('B00195', 'MAS127', '2030-10-09', 2, 4800, 5000),
('B00196', 'MAS128', '2030-10-07', 3, 74800, 75000),
('B00197', 'MAS129', '2030-10-12', 2, 48000, 51000),
('B00198', 'MAS130', '2030-10-09', 1, 27800, 28000),
('B00199', 'BSP001', '2030-10-02', 1, 75800, 76000),
('B00200', 'BSP002', '2030-10-09', 7, 18700, 19000),
('B00201', 'BSP003', '2030-10-04', 9, 39800, 40000),
('B00202', 'BSP004', '2030-10-11', 2, 164500, 165000),
('B00203', 'BSP005', '2030-10-01', 7, 20600, 21000),
('B00204', 'BSP006', '2030-10-01', 6, 26500, 27000),
('B00205', 'BSP007', '2030-10-08', 1, 30700, 310000),
('B00206', 'BSP008', '2030-10-10', 3, 87900, 88000),
('B00207', 'BSP009', '2030-10-07', 2, 120000, 130000),
('B00208', 'BSP010', '2030-10-06', 1, 42900, 43000),
('B00209', 'BSP011', '2030-10-03', 2, 20800, 21000),
('B00210', 'BSP012', '2030-10-09', 1, 15700, 16000),
('B00211', 'BSP013', '2030-10-10', 1, 88300, 89000),
('B00212', 'BSP014', '2030-10-09', 2, 48000, 49500),
('B00213', 'BSP015', '2030-10-11', 3, 11800, 12000),
('B00214', 'BSP016', '2030-10-05', 2, 22700, 23000),
('B00215', 'BSP017', '2030-10-01', 3, 64000, 65000),
('B00216', 'BSP018', '2030-10-01', 2, 31800, 32000),
('B00217', 'BSP019', '2030-10-04', 4, 12600, 13000),
('B00218', 'BSP020', '2030-10-12', 8, 17400, 18000),
('B00219', 'BSP021', '2030-10-01', 1, 16900, 17000),
('B00220', 'BSP022', '2030-10-09', 3, 48300, 49000),
('B00221', 'BSP023', '2030-10-08', 1, 44000, 49000),
('B00222', 'BSP024', '2030-10-10', 1, 170000, 175000),
('B00223', 'BSP025', '2030-10-12', 2, 15700, 16000),
('B00224', 'BSP026', '2030-10-01', 31, 2000, 2500),
('B00225', 'BSP027', '2030-10-05', 10, 1800, 2000),
('B00226', 'BSP028', '2030-10-07', 5, 13480, 14000),
('B00227', 'BSP029', '2030-10-08', 6, 40800, 41000),
('B00228', 'BSP030', '2030-10-06', 10, 28700, 29000),
('B00229', 'AMS001', '2030-10-06', 1, 36700, 38000),
('B00230', 'AMS002', '2030-10-09', 1, 22700, 23000),
('B00231', 'AMS003', '2030-10-03', 1, 34600, 35000),
('B00232', 'AMS004', '2030-10-01', 3, 17900, 18000),
('B00233', 'AMS005', '2030-10-04', 1, 38000, 40000),
('B00234', 'AMS006', '2030-10-07', 1, 35700, 36000),
('B00235', 'AMS007', '2030-10-01', 2, 39000, 40000),
('B00236', 'AMS008', '2030-10-08', 3, 6480, 6500),
('B00237', 'AMS009', '2030-10-08', 1, 42000, 42900),
('B00238', 'AMS010', '2030-10-02', 4, 5700, 6000),
('B00239', 'AMS011', '2030-10-05', 1, 38000, 40000),
('B00240', 'AMS012', '2030-10-05', 2, 25400, 26000),
('B00241', 'AMS013', '2030-10-02', 2, 10000, 12000),
('B00242', 'AMS014', '2030-10-11', 3, 28700, 29000),
('B00243', 'AMS015', '2030-10-09', 3, 50300, 51000),
('B00244', 'AMS016', '2030-10-04', 2, 38000, 40000),
('B00245', 'AMS017', '2030-10-10', 1, 62700, 63000),
('B00246', 'AMS018', '2030-10-09', 1, 24600, 25000),
('B00247', 'AMS019', '2030-10-06', 3, 84000, 85000),
('B00248', 'AMS020', '2030-10-05', 2, 24000, 26000),
('B00249', 'AMS021', '2030-10-12', 2, 22000, 24000),
('B00250', 'AMS022', '2030-10-09', 2, 42400, 43000),
('B00251', 'AMS023', '2030-10-09', 2, 24800, 25000),
('B00252', 'AMS024', '2030-10-03', 1, 38900, 39000),
('B00253', 'AMS025', '2030-10-09', 3, 107000, 108900),
('B00254', 'AMS026', '2030-10-03', 1, 67000, 70000),
('B00255', 'AMS027', '2030-10-09', 2, 55000, 57000),
('B00256', 'AMS028', '2030-10-05', 35, 1800, 2000),
('B00257', 'AMS029', '2030-10-07', 4, 9500, 10000),
('B00258', 'AMS030', '2030-10-03', 7, 7800, 8000),
('B00259', 'AMS031', '2030-10-03', 6, 54300, 55000),
('B00260', 'AMS032', '2030-10-01', 2, 64500, 65000),
('B00261', 'AMS033', '2030-10-08', 1, 27800, 28000),
('B00262', 'AMS034', '2030-10-04', 3, 28900, 30000),
('B00263', 'MA001', '2030-10-09', 2, 27800, 30000),
('B00264', 'MU001', '2030-10-09', 15, 10400, 12000),
('B00265', 'MU002', '2030-10-08', 9, 8000, 9000),
('B00266', 'MU003', '2030-10-01', 25, 16700, 17000),
('B00267', 'MU004', '2030-10-06', 12, 8700, 9000),
('B00268', 'MBS001', '2030-10-03', 1, 17800, 20000),
('B00269', 'MBS002', '2030-10-09', 2, 84700, 85000),
('B00270', 'MBS003', '2030-10-09', 2, 98000, 100000),
('B00271', 'MA12971774', '2033-12-30', 25, 5000, 6000);

-- --------------------------------------------------------

--
-- Table structure for table `detail_invoice_apotek`
--

CREATE TABLE `detail_invoice_apotek` (
  `id_detail_inv_apotek` varchar(25) NOT NULL,
  `no_pembelian` varchar(100) NOT NULL,
  `nama_produk` varchar(150) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_invoice_apotek`
--

INSERT INTO `detail_invoice_apotek` (`id_detail_inv_apotek`, `no_pembelian`, `nama_produk`, `harga_beli`, `qty`) VALUES
('DFTR-000001', 'FTR-000001', 'Amlodipine Tablet 10mg', 3700, 59),
('DFTR-000002', 'FTR-000001', 'Amlodipine Tablet 5 mg', 2500, 30),
('DFTR-000003', 'FTR-000001', 'Amoxicillin Tablet 500 mg', 6800, 18),
('DFTR-000004', 'FTR-000002', 'Benzolac CL gel 10 g', 36700, 1),
('DFTR-000005', 'FTR-000002', 'Benzolac Gel 5% - 5 g', 22700, 1),
('DFTR-000006', 'FTR-000002', 'Carmed Krim 10% - 40 g', 34600, 1);

-- --------------------------------------------------------

--
-- Table structure for table `detail_invoice_pelanggan`
--

CREATE TABLE `detail_invoice_pelanggan` (
  `id_detail_inv_pelanggan` int(11) NOT NULL,
  `no_invoice` varchar(50) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_invoice_pelanggan`
--

INSERT INTO `detail_invoice_pelanggan` (`id_detail_inv_pelanggan`, `no_invoice`, `nama_produk`, `harga_jual`, `qty`) VALUES
(1, 'INV-000001', 'Clobetasol Krim 10 gr', 18000, 2),
(2, 'INV-000001', 'Cooling 5 Mint Spray 15 ml', 40000, 1),
(3, 'INV-000001', 'Ketoconazole Krim 2% - 15 g', 6000, 1),
(4, 'INV-000002', 'Ketoconazole Krim 2% - 15 g', 6000, 1),
(5, 'INV-000002', 'Zambuk Oint 10GR', 41000, 1),
(6, 'INV-000003', 'Clobetasol Krim 10 gr', 18000, 1),
(7, 'INV-000003', 'Desolex N krim 10 g', 36000, 1),
(8, 'INV-000003', 'Zambuk Oint 10GR', 41000, 1),
(9, 'INV-000004', 'Ketoconazole Krim 2% - 15 g', 6000, 1),
(10, 'INV-000004', 'Cooling 5 Mint Spray 15 ml', 40000, 1),
(11, 'INV-000004', 'Clobetasol Krim 10 gr', 18000, 3),
(12, 'INV-000004', 'Panadol Kaplet 500 mg', 11000, 1),
(13, 'INV-000005', 'Cooling 5 Mint Spray 15 ml', 40000, 1),
(14, 'INV-000006', 'Cooling 5 Mint Spray 15 ml', 40000, 1),
(15, 'INV-000007', 'Carmed Krim 10% - 40 g', 35000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_apotek`
--

CREATE TABLE `invoice_apotek` (
  `no_pembelian` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `id_supplier` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoice_apotek`
--

INSERT INTO `invoice_apotek` (`no_pembelian`, `tanggal`, `id_supplier`) VALUES
('FTR-000001', '2023-12-01', 'GMP'),
('FTR-000002', '2023-10-31', 'AMS');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_pelanggan`
--

CREATE TABLE `invoice_pelanggan` (
  `no_invoice` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `jenis_pembayaran` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoice_pelanggan`
--

INSERT INTO `invoice_pelanggan` (`no_invoice`, `id_user`, `tanggal`, `jenis_pembayaran`) VALUES
('INV-000001', 1, '2023-12-09 14:18:17', 'Tunai'),
('INV-000002', 1, '2023-12-09 14:58:01', 'Tunai'),
('INV-000003', 1, '2023-12-09 15:09:06', 'Tunai'),
('INV-000004', 1, '2023-12-09 15:34:19', 'Tunai'),
('INV-000005', 4, '2023-12-11 18:26:09', 'Transfer Bank Mandiri'),
('INV-000006', 4, '2023-12-11 20:23:44', 'Transfer Bank Mandiri'),
('INV-000007', 4, '2023-12-11 21:05:17', 'Transfer Bank BCA');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_produk` varchar(50) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`id_keranjang`, `id_user`, `id_produk`, `qty`) VALUES
(44, 4, 'AMS003', 5);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` varchar(50) NOT NULL,
  `nama_produk` varchar(150) NOT NULL,
  `satuan_unit` varchar(5) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `id_supplier` varchar(5) NOT NULL,
  `kegunaan` text NOT NULL,
  `dosis` text NOT NULL,
  `status_produk` varchar(10) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `satuan_unit`, `kategori`, `id_supplier`, `kegunaan`, `dosis`, `status_produk`, `img`) VALUES
('AMS001', 'Benzolac CL gel 10 g', 'TUB', 'Obat keras', 'AMS', 'Untuk mengatasi masalah kulit berjerawat. Benzolac CL digunakan untuk kondisi jerawat yang lebih berat.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nOleskan gel 2 x sehari pada jerawat.', 'Ada', 'Benzolac CL gel_10 g.jpg'),
('AMS002', 'Benzolac Gel 5% - 5 g', 'TUB', 'Obat bebas terbatas', 'AMS', 'Untuk mengurangi peradangan, membunuh bakteri penyebab jerawat dan membuka pori-pori kulit yang tertutup.', 'Oleskan 2 kali sehari', 'Ada', 'Benzolac Gel 5 _5 g.jpg'),
('AMS003', 'Carmed Krim 10% - 40 g', 'TUB', 'Obat keras', 'AMS', 'Untuk mengobati masalah Hiperkeratosis, kekeringan pada iktiosis dan kondisi sejenis yang ditandai oleh kulit kering, kasar, dan bersisik.', 'Olekan 2 kali sehari', 'Ada', 'Carmed Krim 10_40 g.jpg'),
('AMS004', 'Clobetasol Krim 10 gr', 'TUB', 'Obat keras', 'AMS', 'Untuk mengobati penyakit gangguan kulit yang responsif terhadap kortikosteroid.', '1-2 kali sehari.', 'Ada', 'Clobetasol Krim_10 gr.jpeg'),
('AMS005', 'Cooling 5 Mint Spray 15 ml', 'BTL', 'Obat bebas', 'AMS', 'Untuk meredakan sakit tenggorokan, sariawan, dan mengurangi bau mulut.', 'Untuk setiap kali pemakaian, cukup disemprotkan 2-3 kali, semprotan dapat diulang tiap 3 jam sampai gejala reda.\n', 'Ada', 'Cooling_5 Mint Spray.jpeg'),
('AMS006', 'Desolex N krim 10 g', 'TUB', 'Obat keras', 'AMS', 'Untuk kelainan kulit yang disebabkan oleh alergi, radang dan gatal yang terinfeksi maupun yang cenderung terinfeksi seperti dermatitis, dermatitis atopik, dermatitis kontak dan berbagai jenis dermatitis yang lain, psoriasis, Kaligata (urtikaria), Pruritus ani, dan vulvae.', 'Oleskan 2-3 kali sehari', 'Ada', 'Desolex N krim-10 g.jpeg'),
('AMS007', 'Diclofenac diethylamine etercon 1% emulgel 50 gr', 'TUB', 'Obat bebas terbatas', 'AMS', 'Untuk mengobati peradangan akibat trauma tendon, ligamenta, otot dan sendi, misalnya: terkilir, keseleo dan memar.', 'Oleskan pada daerah yang membutuhkan', 'Ada', 'Diclofenac diethylamine.png'),
('AMS008', 'Disflatyl Tablet 40 mg', 'STP', 'Obat bebas', 'AMS', 'Untuk meredakan kembung dan rasa tidak nyaman diperut karena gas yang berlebihan.', 'Dewasa : 3 x sehari 2 tablet dikunyah sesudah makan dan sebelum tidur sesuai kebutuhan atau sesuai petunjuk dokter. \nmaksimal: 500 mg/24 jam dengan anjuran dan pengawasan dokter.', 'Ada', 'Disflatyl Tablet 40.jpeg'),
('AMS009', 'Efisol Tetes 10 ml', 'BTL', 'Obat bebas terbatas', 'AMS', 'Sebagai obat kumur dan oles untuk membantu mengatasi sariawan, bibir pecah-pecah, bau mulut dan gangguan rongga mulut lainnya.', 'Larutan 10-20 tetes dicampur air segelas 2-4 kali sehari. untuk sariawan: Oleskan tanpa diencerkan.\n', 'Ada', 'Efisol Tetes_10 ml.jpg'),
('AMS010', 'Ketoconazole Krim 2% - 15 g', 'TUB', 'Obat bebas terbatas', 'AMS', 'Untuk mengatasi infeksi pada kulit yang disebabkan oleh jamur seperti panu, kurap, kutu air.', 'Dewasa: Oleskan 1 sampai 2 kali per hari pada tempat yang infeksi. Durasi Pengobatan: P. Versikolor (2-3 minggu), T. Korporis (3-4 minggu), T. Pedis (4-6 minggu), T. Kruris (2-4 minggu), Infeksi ragi (2-3 minggu), Dermatitis Seboroik (2-4 minggu).\n', 'Ada', 'Ketoconazole Krim_15 g.jpg'),
('AMS011', 'Kloderma Krim 10 g', 'TUB', 'Obat keras', 'AMS', 'Untuk pengobatan jangka pendek hanya untuk kelainan kulit inflamasi hebat seperti eksim bandel yang tidak responsif terhadap kortikosteroid yang kurang kuat, psoriasis.', 'Gunakan pada daerah yang terinfeksi 1-2 kali sehari. Maksimum : 2 gram/hari.\n', 'Ada', 'KlodermaKrim 10 g.jpg'),
('AMS012', 'Kloderma Krim 5 g', 'TUB', 'Obat keras', 'AMS', 'Untuk pengobatan penyakit kulit yang resisten seperti psoriasis, eksim, lupus eritematosus, linchen planus, serta bentuk inflamasi dan gatal-gatal dari dermatoses yang responsif terhadap kortikosteroid.', 'Gunakan pada daerah yang terinfeksi 1-2 kali sehari. Maksimum : 2 gram/hari.\n', 'Ada', 'Kloderma Krim_5 g.jpeg'),
('AMS013', 'Levofloxacin Tablet 500 mg', 'STP', 'Obat keras', 'AMS', 'Untuk mengobati penyakit akibat infeksi bakteri, seperti pneumonia, sinusitis, prostatitis, konjungtivitis, infeksi saluran kemih, dan infeksi kulit.', 'Dewasa: PO Sinusitis bakteri akut 500 mg sekali sehari selama 10-14 hari. \nEksaserbasi bakteri akut bronkitis kronis; Pielonefritis 500 mg sehari sekali selama 7-10 hari. \nSistitis tanpa komplikasi 250 mg sehari sekali selama 3 hari. \nPneumonia yang didapat masyarakat; Infeksi kulit dan jaringan lunak yang rumit 500 mg sekali sehari atau penawaran selama 7-14 hari. \nInfeksi saluran kemih rumit 500 mg sekali sehari selama 7-14 hari.', 'Ada', 'Levofloxacin Tablet_500 mg.png'),
('AMS014', 'Mediklin Gel 15 g', 'TUB', 'Obat keras', 'AMS', 'Untuk mengobati jerawat yang parah pada orang dewasa dan anak-anak yang berusia minimal 12 tahun.', 'Oleskan gel 1-2 kali sehari.\n', 'Ada', 'Mediklin Gel_15 g.jpg'),
('AMS015', 'Mediklin TR Gel 15 g', 'TUB', 'Obat keras', 'AMS', 'Untuk pengobatab acne vulgaris yang disertai lesi inflamasi dan komedo tertutup dan terbuka.', 'Oleskan gel 1 x sehari menjelang tidur malam.\n', 'Ada', 'Mediklin TR Gel_15 g.jpg'),
('AMS016', 'Melanox Krim 15 g', 'TUB', 'Obat keras', 'AMS', 'Untuk mengatasi hiperpegmentasi, bintik-bintik hitam (freckles) dan noda-noda hitam (melasma). ', 'Oleskan pada kulit dengan bintik-bintik hitam dan noda hitam. hanya dipakai waktu malam hari sebelum tidur, setelah kulit dibersihkan dahulu dengan krem/lotion pembersih. Waktu siang hari pakailah sunblock cream pada wajah untuk mendapatkan hasil yang maksimal.\n', 'Ada', 'Melanox Krim_15 g.jpg'),
('AMS017', 'Microlax Enema 5 ml', 'BOX', 'Obat bebas', 'AMS', 'Obat pencahar untuk sulit buang air besar (sembelit) dalam bentuk gel yang tidak lengket dan tidak berwarna. Obat ini bekerja dengan menurunkan tegangan permukaan feses dan secara bersamaan menyerap air ke dalam usus besar, sehingga feses menjadi lembek.', '> 3 bulan : 1 tube per rektal, \n< 3 bulan : 0.5 tube per rektal.', 'Ada', 'Microlax Enema 5 ml_box.jpg'),
('AMS018', 'Microlax Enema 5 ml', 'TUB', 'Obat bebas', 'AMS', 'Obat pencahar yang menginduksi gerakan peristaltik usus dan melunakkan feses sehingga membantu melancarkan proses Buang Air Besar (BAB) serta mengosongkan usus dari kotoran sebelum dilakukan kolonoskopi atau operasi.', 'Na Lauryl Sulfoacetate 45 mg, Na Citrate 450 mg, Sorbic Acid 5 mg, Sorbitol 4.465 mg, PEg-400 625 mg\n', 'Ada', 'Microlax Enema_5 ml.jpg'),
('AMS019', 'Mofacort Krim 0,1% - 10 g', 'TUB', 'Obat keras', 'AMS', 'Untuk mengobati kondisi kulit seperti eksim (bengkak dan kemerahan pada kulit), psoriasis (peradangan kronis pada kulit), alergi, dan ruam.', 'Oleskan 1x sehari.', 'Ada', 'Mofacort Krim 0,1_10 g.jpg'),
('AMS020', 'Mometasone Krim 10 g', 'TUB', 'Obat keras', 'AMS', 'Untuk meredakan gejala peradangan pada polip hidung, eksim, psoriasis, atau rhinitis alergi.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nOleskan 1 x sehari.', 'Ada', 'Mometasone Krim_10 g.jpg'),
('AMS021', 'Mupirocin Krim 2% - 5 g', 'TUB', 'Obat keras', 'AMS', 'Untuk mengatasi infeksi bakteri yang terjadi di kulit seperti impetigo.', 'Oleskan dalam jumlah yang sedikit sebanyak 3 kali sehari. Penggunaan maksimal selama 10 hari.\n', 'Ada', 'Mupirocin Krim 2_5 g.jpeg'),
('AMS022', 'Mupirocin Salep 2% - 10 g', 'TUB', 'Obat keras', 'AMS', 'Untuk mengatasi penyakit kulit impetigo, atau infeksi kulit lainnya yang disebabkan oleh bakteri Staphylococcus aureus dan Streptococcus pyogenes.', 'Dioleskan 3 kali per hari selama 10 hari.\n', 'Ada', 'Mupirocin Salep 2_10 g.jpg'),
('AMS023', 'Nebacetin Salep 5 g', 'TUB', 'Obat keras', 'AMS', 'Untuk mengobati infeksi-infeksi yang disebabkan terutama oleh bakteri gram negatif.', 'Oleskan salep beberapa kali sehari.\n', 'Ada', 'Nebacetin Salep_5 g.jpeg'),
('AMS024', 'Niacef Gel 4% -15 g', 'TUB', 'Obat keras', 'AMS', 'Untuk mengobati dan mencegah defisiensi asam nikotinat dan juga mengobati peradangan jerawat.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nOleskan gel 2 x sehari.', 'Ada', 'Niacef Gel 4_15 g.jpg'),
('AMS025', 'Oxoferin solution 30 ml', 'BTL', 'Obat keras', 'AMS', 'Untuk luka terinfeksi, penyembuhan luka yang lambat sesudah traumatik atau sesudah operasi, ulkus dekubitus, ulkus kaki kronis pada insufisiensi vena, ulkus dan luka akibat aliran darah arteri, mikroangiopati akibat diabetes atau akibat kelainan, ulkus dibetik, ganggren serta luka bakar.', '2 x per hari pada luka, 5-10 ml atau sesuai dengan petunjuk dokter.\n', 'Ada', 'Oxoferin solution_30 ml_btl.jpeg'),
('AMS026', 'Pabanox Sunblock Krim 20 g', 'TUB', 'Obat keras', 'AMS', 'Sebagai tabir surya untuk melindungi bagian tubuh yang tidak terlindung pakaian dari paparan sinar matahari langsung.', 'Sesuaikan dengan kebutuhan\n', 'Ada', 'Pabanox Sunblock Krim_20 g.jpg'),
('AMS027', 'Parasol Face Sunscreen Cream 20 g', 'TUB', 'Obat bebas terbatas', 'AMS', 'Krim pelindung terhadap sinar matahari yang mengandung aloe leaf extract dan VItamin E. Krim ini juga dapat digunakan sebagai alas bedak.', 'Oleskan 30 menit sebelum terkena sinar matahari.\n', 'Ada', 'ParasolSunscreen Cream_20 g.jpeg'),
('AMS028', 'Pharolit Sachet', 'SCH', 'Obat bebas', 'AMS', 'Untuk mencegah dan mengobati dehidrasi akibat diare/ mencret/ muntaber.', 'Sesuaikan dengan kebutuhan\n', 'Ada', 'Pharolit_Sachet.jpg'),
('AMS029', 'Polysilane Tablet', 'STP', 'Obat bebas', 'AMS', 'Untuk mengurangi gejala-gejala yang berhubungan dengan: kelebihan asam lambung, gastritis, tukak lambung, tukak usus 12 jari, mual, nyeri lambung, nyeri ulu hati, kembung dan perasaan penuh pada lambung.', 'Dewasa : 3-4 kali sehari 1-2 tablet. \nAnak > 4 tahun : 2 tablet per hari.', 'Ada', 'Polysilane Tablet.jpg'),
('AMS030', 'Ramipril Kaplet 5 mg', 'STP', 'Obat keras', 'AMS', 'Untuk mengobati hipertensi (tekanan darah tinggi), nefropati diabetik, dan beberapa jenis gagal jantung kronis.', 'Hipertensi : Awal 2,5 mg 1 kali/hari. Pemeliharaan 2,5-5 mg/hari. Maksimal 10 mg/hari. Gagal jantung kongestif : Awal 1,25 mg 1 kali/hari. Maksimal 10 mg/hari. Terapi sesudah infark miokard : Awal 2,5 mg 2 kali/hari. Maksimal 10 mg/hari.', 'Ada', 'Ramipril Kaplet_5 mg.png'),
('AMS031', 'Scabimite Krim 10 g', 'TUB', 'Obat keras', 'AMS', 'Untuk mengobati infeksi kulit skabies yang disebabkan oleh Tungau (mite) Sarcoptes scabiei.', 'Oleskan 1 kali sehari', 'Ada', 'Scabimite Krim_10 g.jpg'),
('AMS032', 'Tamsulosin Hydrochloride Tablet', 'STP', 'Obat keras', 'AMS', 'Untuk merelaksasi otot-otot di prostat dan uretra serta membuat urin keluar lebih mudah dan membantu buang air kecil.', 'Untuk pengobatan pembesaran prostat jinak: \nDewasa: dosis awal 0,4 mg sekali sehari. Dokter dapat meningkatkan dosis hingga 0,8 mg jika diperlukan. \nAnak-anak: tidak dianjurkan untuk dikonsumsi anak-anak.', 'Ada', 'Tamsulosin Hydrochloride.jpg'),
('AMS033', 'Topcort Krim 0.25% - 10 g', 'TUB', 'Obat keras', 'AMS', 'Untuk mengurangi keluhan gatal, bengkak, dan kemerahan yang disebabkan oleh penyakit kulit, seperti dermatosis dan psoriasis vulgaris. ', 'Oleskan 1 atau 2 x sehari, bila perlu 3x sehari pada bagian yang sakit.\n', 'Ada', 'Topcort Krim 0.25_10 g.jpg'),
('AMS034', 'Vitacid Krim 0,025% - 15 g', 'TUB', 'Obat keras', 'AMS', 'Untuk pengobatan jerawat komedogenik, papul, dan pustul. ', 'Oleskan 1 x sehari pada malam hari.', 'Ada', 'Vitacid Krim 0,025_15 g.jpeg'),
('BSP001', 'Akilen Tetes Telinga 5 ml', 'BTL', 'Obat keras', 'BSP', 'Untuk mengobati infeksi bakteri pada telinga misalnya Chronic suppurative otitis media dan externa.', 'Untuk dewasa : 2 x sehari 6-10 tetes telinga. \nUntuk anak-anak : 2 x sehari 3-5 tetes telinga.\n', 'Ada', 'Akilen_Tetes Telinga_5 ml.png'),
('BSP002', 'Amoxsan Kapsul 250 mg', 'STP', 'Obat keras', 'BSP', 'Infeksi saluran nafas, saluran kemih & kelamin, kulit & jaringan lunak.', 'Dewasa & anak-anak dengan berat badan 20 kg atau lebih : 250-500 mg tiap 8 jam. \nAnak-anak dengan berat badan lebih dari 8 kg : 125-250 mg tiap 8 jam.', 'Ada', 'Amoxsan Kapsul_250 mg.jpg'),
('BSP003', 'Amoxsan Kapsul 500 mg', 'STP', 'Obat keras', 'BSP', 'Untuk mengatasi infeksi pada saluran pernafasan atas, infeksi saluran kemih, saluran cerna, kulit dan jaringan lunak serta demam tifoid pada anak.', 'Dewasa dan Anak 20 mg/kgBB/hr : 250-500 mg. \nAnak dengan BB <20 kg : 20-40 mg/kgBB dalam 2 dosis terbagi tiap 8 jam. Infeksi berat Dosis ganda. \nGO akut 2-3 g dosis tunggal.', 'Ada', 'Amoxsan Kapsul_500 mg.jpg'),
('BSP004', 'Baquinor Forte Kaplet 500 mg', 'STP', 'Obat keras', 'BSP', 'Untuk mengatasi infeksi pada saluran pernafasan atas, infeksi saluran kemih, saluran cerna, kulit dan jaringan lunak.', 'Dewasa : Infeksi Saluran Kemih (ISK) ringan sampai dengan sedang : 250 mg, 2 x sehari. Infeksi Saluran Kemih (ISK) berat, prostatis kronik, infeksi GI : 500 mg, 2 x sehari. Infeksi saluran napas, tulang & sendi, kulit & jaringan lunak ringan sampai dengan sedang : 250-500 mg, 2 x sehari. Infeksi saluran napas, tulang & sendi, kulit & jaringan lunak berat : 500-750 mg, 2 x sehari. GO akut : 250 mg sebagai dosis tunggal. Osteomieletis akut : 750 mg, 2 x sehari.', 'Ada', 'Baquinor Forte_500 mg.jpeg'),
('BSP005', 'Becom C Kaplet', 'BOX', 'Obat bebas', 'BSP', 'Untuk membantu memenuhi kebutuhan multivitamin pada masa pertumbuhan dan selama masa penyembuhan.', '1 x sehari 1 kaplet, atau sesuai petunjuk dokter.', 'Ada', 'Becom C_Kaplet.jpeg'),
('BSP006', 'Becom Zet Kaplet', 'STP', 'Obat bebas', 'BSP', 'Sebagai penunjang vitalitas dan kesehatan, memelihara daya tahan tubuh, serta membantu pemulihan setelah sakit.', '1 x sehari 1 kaplet, atau sesuai petunjuk dokter.', 'Ada', 'Becom Zet Kaplet.jpg'),
('BSP007', 'Bicrolid Kaplet 500 mg', 'STP', 'Obat keras', 'BSP', 'Sebagai antibiotik untuk infeksi yang disebabkan oleh bakteri pada saluran pernafasan atas dan bawah, juga infeksi kulit dan jaringan lunak serta eradikasi Helicobacter pylori (bakteri yang dapat menyebabkan maag).', 'Faringitis dan tonsilitis : 2 kali sehari 250 mg 10 hari. Sinusitis maksilaris akut : 2 kali sehari 500 mgselama 14 hari. Bronkitis kronis eksaserbasi akut : 2 kali sehari 250-500 mg selama 7-14 hari. Infeksi kulit dan strukturnya tanpa komplikasi : 2 kali sehari 250 mg selama 7-14 hari.', 'Ada', 'Bicrolid Kaplet_500 mg.jpg'),
('BSP008', 'Cefat Forte Sirup Kering 60 ml', 'BTL', 'Obat keras', 'BSP', 'Untuk mengatasi infeksi saluran pernafasan, saluran kemih dan kelamin serta infeksi kulit dan jaringan lunak.', 'Dewasa : 1-2 gr / hari terbagi dalam 2 dosis tiap 12 jam. Sistitis 1-2 gr / hari. ISK 2 gr/ hari terbagi dalam 2 dosis. Infeksi kulit dan jaringan lunak, infeksi saluran nafas atas dan bawah : 1gr / hari. Pada infeksi berat, dosis dapat ditingkatkan s/d 2gr / hari diberikan dalam 2 dosis terbagi. Faringitis dan tonsilitis karena streptokokus B hemolitikus 1 gr / hari dalam dosis terbagi selama 10 hari. Anak : 25-50 mg/kgBB/hari diberikan dalam 2 dosis terbagi', 'Ada', 'Cefat Forte Sirup Kering.jpg'),
('BSP009', 'Cefat Kapsul 500 mg', 'STP', 'Obat keras', 'BSP', 'Untuk mengatasi infeksi saluran pernafasan, saluran kemih dan kelamin serta infeksi kulit dan jaringan lunak.', '2 kali sehari 1 kapsul, atau bisa dosis tunggal 1000mg sekali minum per hari', 'Ada', 'Cefat Kapsul_500 mg.jpg'),
('BSP010', 'Cerini Kaplet 10 mg', 'STP', 'Obat keras', 'BSP', 'Untuk mengobati rinitis menahun, rinitis alergi seasonal, konjungtivitis, pruritus, urtikaria idiopati kronis.', 'Kondisi alergi dosis yang dianjurkan:\n- Dewasa & anak umur >12 tahun : 10 mg sekali sehari.\n- Anak umur 6-12 tahun: 2,5 mg dua kali sehari.\n- Anak umur 6-12 tahun: 5 mg dua kali sehari.', 'Ada', 'Cerini Kaplet_10 mg.jpeg'),
('BSP011', 'Cinolon Krim 10 g', 'TUB', 'Obat keras', 'BSP', 'Dapat membantu meredakan dermatosis yang di sebabkan oleh alergi. Juga dapat di gunakan untuk mengobati inflamasi dan pruritus.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nOleskan 3-4 kali sehari', 'Ada', 'Cinolonkrim_10g.jpg'),
('BSP012', 'Cinolon-N Krim 5 gr', 'TUB', 'Obat keras', 'BSP', 'Untuk mengobati infeksi-infeksi yang disebabkan terutama oleh bakteri gram negatif dan positif.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nOleskan 2-4 kali sehari.', 'Ada', 'Cinolon-N_Krim_5 gr.jpg'),
('BSP013', 'Claneksi Forte Sirup 60 mL', 'BTL', 'Obat keras', 'BSP', 'Untuk mengatasi penyakit akibat infeksi bakteri.', 'Anak > 6 tahun : 3 kali sehari, 5 mL.', 'Ada', 'ClaneksiSirup_60 mL.jpg'),
('BSP014', 'Clobesan Krim 0.05% - 10 g', 'TUB', 'Obat keras', 'BSP', 'Sebagai terapi jangka pendek untuk mengobati dermatosis (peradangan kulit).', '1 atau 2 x sehari hingga terjadi perbaikan', 'Ada', 'Clobesan Krim 0.05_10 g.jpeg'),
('BSP015', 'Folavit Tablet 400 mcg', 'STP', 'Obat bebas', 'BSP', 'Untuk memenuhi kebutuhan asam folat dalam tubuh yang bermanfaat dalam pemeliharaan sistem saraf yang sehat dan dalam pembentukan sel darah merah yang membawa oksigen ke seluruh tubuh.', '400-500 mcg per hari, Defisiensi asam folat : \nDosis Awal : 0.25 - 1 mg per hari. Dosis \npemeliharaan : 0.25 mg per hari. Untuk ibu hamil dan menyusui : 2 tablet per hari.', 'Ada', 'Folavit Tablet_400 mcg.jpg'),
('BSP016', 'Formyco Krim 10 g', 'TUB', 'Obat keras', 'BSP', 'Untuk infeksi dermatofita pada kulit atau kuku tangan (tidak pada kuku kaki), kandidiasis mukokutan kronis yang tidak responsif terhadap nistatin dan obat-obat lain, infeksi mikosis sistemik (kandidiasis, paraksidioidomikasis, cocci dioidomycosis, hiptoplasmosis).', 'Penggunaan Obat Ini Harus Sesuai Dengan Petunjuk Dokter. \nTinea Korporis, Tinae Kruris, Tinea Manus, Tinea Pedis, Tinea Versikolor, Kandidiasis Pada Kulit : Oleskan Tipis 1 X Sehari Selama 2 Minggu Atau Hingga Beberapa Hari Setelah Sembuh. \nDermatitis Seboroik: Oleskan Tipis 2 X Sehari Selama 4 Minggu.', 'Ada', 'Formyco Krim_10 g.png'),
('BSP017', 'Formyco Tablet 200 mg', 'STP', 'Obat keras', 'BSP', 'Sebagai anti jamur pada kulit dan selaput mukosa, infeksi dermatofita pada kulit atau kuku tangan, dan kandidiasis.', 'Dewasa : 1 tablet sekali sehari. Pada infeksi berat atau bila respon klinis kurang memadai dalam waktu yang diharapkan : dosis dapat ditingkatkan sampai 2 tablet sekali sehari. Anak-anak > 2 tahun : 5 mg/kg BB/hari.', 'Ada', 'Formyco Tablet_200 mg.png'),
('BSP018', 'Forumen Tetes Telinga 10 ml', 'BTL', 'Obat bebas', 'BSP', 'Untuk membantu menyingkirkan serumen atau kotoran telinga.', 'Gunakan tetes telinga secukupnya ke dalam telinga yang kotor tidak lebih dari 2 malam berturut-turut', 'Ada', 'Forumen_Tetes Telinga_10 ml.jpg'),
('BSP019', 'Lodia Tablet 2 mg', 'STP', 'Obat keras', 'BSP', 'Untuk meredakan diare.', 'Diare akut nonspesifik : 2 tab, diikuti 1 tab setelah setiap tinja yang tidak berbentuk. \nDiare kronis 2-4 tab/hari dalam dosis terbagi. Maks: 8 tab setiap hari.', 'Ada', 'Lodia Tablet_2 mg.jpeg'),
('BSP020', 'Mefinal Kaplet 500 mg', 'STP', 'Obat keras', 'BSP', 'Untuk Nyeri pada kondisi rematik, cedera jaringan lunak, kondisi muskuloskeletal menyakitkan lainnya, dismenorea, sakit kepala, sakit gigi, nyeri pasca operasi.', 'Dewasa dan anak >14 tahun : 3 x sehari 500 mg. \nLansia : Mulailah dengan dosis yang lebih rendah dan durasi sesingkat mungkin.', 'Ada', 'Mefinal Kaplet_500 mg.jpg'),
('BSP021', 'Neo Kaolana Suspensi 120 ml', 'BTL', 'Obat bebas', 'BSP', 'Untuk mengatasi diare tidak spesifik. Obat ini bekerje sebagai penyerap bakteri, racun serta zat-zat lain pada saluran pencernaan dan meningkatkan kepadatan feses pada pengobatan gejala-gejala diare.', 'Dewasa dan Anak > 12 tahun : 30 ml, maksimum 180 ml per hari. \nAnak 6-12 tahun : 15 ml, maksimum 90 ml per hari. Pemberian setiap kali sesudah buang air besar.', 'Ada', 'Neo Kaolana_120 ml.jpg'),
('BSP022', 'Otilon Tetes Telinga 8 ml', 'BTL', 'Obat keras', 'BSP', 'Untuk mengatasi infeksi bakteri pada saluran telinga bagian luar atau otitis eksterna.', '4-5 tetes, 2-4 kali sehari pada telinga yang mengalami keluhan.', 'Ada', 'Otilon Tetes Telinga_8 ml.jpg'),
('BSP023', 'Pibaksin Salep 2% - 10 g', 'TUB', 'Obat keras', 'BSP', 'Untuk mengatasi kulit impetigo atau infeksi kulit lainnya yang di sebabkan oleh bakteri taphylococcus.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \n3 x sehari selama 10 hari.', 'Ada', 'Pibaksin Salep 2_10 g.jpeg'),
('BSP024', 'Pumpitor Kapsul 20 mg', 'STP', 'Obat keras', 'BSP', 'Untuk tukak lambung dan tukak duodenum, tukak lambung dan duodenum yang terkait dengan AINS, lesi lambung dan duodenum, regimen eradikasi H. pylori pada tukak peptik, refluks esofagitis, Sindrom Zollinger Ellison.', 'Tukak duodenum : 20mg/hari selama 4 minggu. Tukak lambung ringan : 20mg selama 8 minggu. Refluks esofagitis erosif : 20mg selama 4-8 minggu. Sindrom Zollinger Ellison : 60mg/hari.', 'Ada', 'Pumpitor Kapsul_20 mg.png'),
('BSP025', 'Sagestam Krim 10 g', 'TUB', 'Obat keras', 'BSP', 'Untuk mengobati penyakit kulit akibat infeksi oleh bakteri yang peka.', '3-4 kali sehari.', 'Ada', 'Sagestam Krim_10 g.jpeg'),
('BSP026', 'Sanmol Forte Tablet 650 mg', 'STP', 'Obat bebas', 'BSP', 'Untuk meringankan rasa sakit pada keadaan sakit kepala, sakit gigi dan menurunkan demam.', 'Dewasa dan anak usia lebih dari 12 tahun : 1 tablet, diberikan 3-4 kali sehari.', 'Ada', 'Sanmol Forte_650 mg.jpeg'),
('BSP027', 'Sanmol Tablet 500 mg', 'STP', 'Obat bebas', 'BSP', 'Untuk meringankan rasa sakit pada keadaan sakit kepala, sakit gigi dan menurunkan demam.', 'Dewasa: 1-2 tablet, diberikan sebanyak 3-4 kali per hari. Anak usia 6-12 tahun: ½-1 tablet, diberikan sebanyak 3-4 kali per hari.', 'Ada', 'Sanmol Tablet_500 mg.jpg'),
('BSP028', 'Santibi Tablet 500 mg', 'STP', 'Obat keras', 'BSP', 'Untuk Tuberkulosis paru.', 'Terapi awal : 15 mg/kg BB/hari. Terapi ulang : 25 mg/kg BB/hari selama 60 hari. Kemudian 25 mg/kg BB/hari.', 'Ada', 'Santibi Tablet_500 mg.jpg'),
('BSP029', 'Urotractin Kapsul 400 mg', 'STP', 'Obat keras', 'BSP', 'Untuk mengobati infeksi saluran kemih baik akut maupun kronis.', '2 x sehari 1 kapsul tiap 12 jam selama minimum 10 hari untuk mencegah kemungkinan kambuh.', 'Ada', 'Urotractin Kapsul_400 mg.jpg'),
('BSP030', 'Vosedon Tablet 10 mg', 'STP', 'Obat keras', 'BSP', 'Membantu mengurangi gejala mual dan muntah pada keadaan akut yang disebabkan pemberian obat levodopa atau bromokriptin, pada anak setelah kemoterapi kanker atau iradiasi dan juga pengobatan gejala dispepsia fungsional.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nDewasa: 10 mg, 3 kali sehari. Maks: 30 mg setiap hari. Durasi perawatan maksimal: 7 hari. Gunakan dosis efektif terendah untuk durasi sesingkat mungkin. \nAnak: Anak umur <12 tahun <35 kg: 0,25 mg/kg diberikan hingga 3 kali sehari. Maks: 0,75 mg/kg setiap hari. \nAnak umur 12 tahun 35 kg: Sama seperti dosis dewasa.', 'Ada', 'Vosedon Tablet_10 mg.jpeg'),
('GMP001', 'Amlodipine Tablet 10mg', 'STP', 'Obat keras', 'GMP', 'Untuk menurunkan tekanan darah tinggi, membantu mencegah stroke, serangan jantung, dan masalah ginjal.', 'Dewasa: Hipertensi dan angina: Dosis awal 1 x sehari 5 mg, dapat ditingkatkan hingga dosis max.10 mg. \n\nAnak: usia 6-17 tahun: Dosis awal 1 x sehari 2,5 mg , dapat ditingkatkan menjadi 5 mg sekali sehari setelah interval 4 minggu sesuai dengan respons klinis.', 'Ada', 'Amlodipine Tab_10mg.png'),
('GMP002', 'Amlodipine Tablet 5 mg', 'STP', 'Obat keras', 'GMP', 'Digunakan sebagai pengobatan lini pertama hipertensi dan dapat digunakan sebagai agen tunggal untuk mengontrol tekanan darah pada sebagian pasien.', 'Dewasa: Hipertensi dan angina: Dosis awal 1 x sehari 5 mg, dapat ditingkatkan hingga dosis max.10 mg. \nAnak: usia 6-17 tahun: Dosis awal 1 x sehari 2,5 mg , dapat ditingkatkan menjadi 5 mg sekali sehari setelah interval 4 minggu sesuai dengan respons klinis. \nLansia: Dosis awal 2,5 mg sekali sehari.', 'Ada', 'Amlodipine Tab_5mg.png'),
('GMP003', 'Amoxicillin Tablet 500 mg', 'STP', 'Obat keras', 'GMP', 'Untuk mengobati infeksi telinga tengah, radang tenggorokan, infeksi saluran pernafasan atas, infeksi saluran kemih, saluran pencernaan, kulit, dan jaringan lunak.', 'Dewasa dan Anak 20 mg/kgBB/hr : 250-500 mg. \nAnak dengan BB <20 kg : 20-40 mg/kgBB dalam 2 dosis terbagi tiap 8 jam. Infeksi berat Dosis ganda. GO akut 2-3 g dosis tunggal.', 'Ada', 'Amoxicillin_500mg.jpeg'),
('GMP004', 'Bioplacenton Gel 15 g', 'TUB', 'Obat keras', 'GMP', 'Untuk mengobati luka bakar, luka dengan infeksi, serta luka kronik dan jenis luka yang lain.', 'Oleskan 4-6 x sehari atau sesuai kebutuhan pada area luka.', 'Ada', 'Bioplacenton gel_15g.jpeg'),
('GMP005', 'Cap Tawon Minyak Gosok CC 20 ml', 'BTL', 'Non obat', 'GMP', 'Membantu meredakan nyeri sendi, sakit gigi, bisul, sakit kepala, kudis, panu, gatal-gatal akibat gigitan serangga, muntah, sakit perut, dan batuk.', 'Sesuaikan dengan kebutuhan\n', 'Ada', 'Cap tawon minyak_20ml.jpeg'),
('GMP006', 'Cap Tawon Minyak Gosok DD 30 ml', 'BTL', 'Non obat', 'GMP', 'Membantu meredakan nyeri sendi, sakit gigi, bisul, sakit kepala, kudis, panu, gatal-gatal akibat digigit serangga, muntah, sakit perut dan batuk.', 'Sesuaikan dengan kebutuhan', 'Ada', 'Cap tawon minyak_30ml.jpeg'),
('GMP007', 'Cap Tawon Minyak Gosok EE 60 mL', 'BTL', 'Non obat', 'GMP', 'Membantu meredakan nyeri sendi, gatal akibat serangga, sakit perut, batuk, muntah, sakit gigi, bisul, dan sakit kepala', 'Sesuaikan dengan kebutuhan', 'Ada', 'Cap tawon minyak_60ml.jpg'),
('GMP008', 'Cap Tawon Minyak Gosok FF 90 mL', 'BTL', 'Non obat', 'GMP', 'Meredakan nyeri sendi, sakit kepala, sakit gigi, gatal akibat digigit serangga, dan sakit perut.', 'Sesuaikan dengan kebutuhan', 'Ada', 'Cap tawon minyak_90ml.jpeg'),
('GMP009', 'Cefila Sirup Kering 30 ml', 'BTL', 'Obat keras', 'GMP', 'Untuk mengobati infeksi saluran kemih tanpa komplikasi, otitis media, faringiris dan tonsilitis, serta bronkitis akut dan kronis dengan eksaserbasi akut. ', 'Dosis harian yang lazim untuk pediatrik adalah 1,5 - 3 mg (potensi)/ kg berat badan, diberikan per oral 2 kali sehari. Dosis sebaiknya disesuaikan dengan keadaan pasien. Untuk infeksi yang berat, dosis dapat ditingkatkan sampai 6 mg (potensi)/kg berat badan diberikan 2 kali sehari. \nDewasa dan anak-anak dengan berat badan sama dengan atau lebih dari 30 kg, dosis harian yang direkomendasikan adalah 50-100 mg (potensi) cefixime, diberikan per oral dua kali sehari. Untuk infeksi yang berat, dosis dapat ditingkatkan sampai 200 mg (potensi) diberikan dua kali sehari.', 'Ada', 'Cefila Sirup_30ml.jpg'),
('GMP010', 'Cendo Asthenof Minidose 5 x 0.6 ml', 'STP', 'Obat bebas terbatas', 'GMP', 'Untuk mengatasi mata merah yang disebabkan oleh iritasi ringan.', '> 6 tahun : 1-2 tetes, dapat diulang sesuai kebutuhan setiap 6 jam, atau atas petunjuk dokter', 'Ada', 'Cendo asthenof_5x0,6ml.jpg'),
('GMP011', 'Cendo Augentonic Minidose 5 x 0.6 mL', 'STP', 'Obat bebas terbatas', 'GMP', 'Untuk mengobati mata merah atau peradangan akibat iritasi minor mata seperti yang disebabkan oleh cuaca dingin, angin, sinar matahari, aktifitas berenang, debu, asap, polusi udara, atau akibat pemakaian lensa kontak.', 'Teteskan 1-2 tetes pada setiap mata, 3-4 kali per hari.', 'Ada', 'Cendo augentonic_5x0,6ml.png'),
('GMP012', 'Cendo Catarlent Tetes Mata 15 ml', 'BTL', 'Obat keras', 'GMP', 'Untuk membantu meredakan kekeruhan pada cairan mata.', '3 x sehari 1-2 tetes pada mata ', 'Ada', 'Cendo catarlent_15ml.jpg'),
('GMP013', 'Cendo Catarlent Tetes Mata Minidose 5 x 0.6 mL', 'STP', 'Obat bebas terbatas', 'GMP', 'Untuk mengobati mata katarak lentrikularis.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \n1-2 tetes 3 kali sehari pada mata yang sakit atau sesuai dengan petunjuk dokter', 'Ada', 'Cendo catarlent_5x0,6ml.jpg'),
('GMP014', 'Cendo Cenfresh Minidose 5 x 0,6 ml', 'STP', 'Obat bebas terbatas', 'GMP', 'Untuk mempertahankan agar permukaan mata tetap basah. Mengurangi iritasi pada mata yang kering.', '1-2 tetes pada mata yang sakit. Diteteskan 3-4 kali sehari atau sesuai kebutuhan.', 'Ada', 'Cendo cenfresh_5x0,6ml.png'),
('GMP015', 'Cendo Conver Tetes Mata Minidose 2%', 'STP', 'Obat keras', 'GMP', 'Untuk mengatasi peradangan pada lapisan mata (konjungtivitis) akibat reaksi alergi.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nTeteskan 1 atau 2 tetes pada setiap mata sampai 4 kali sehari. Efektivitas tergantung pada pemakaian pencegahan yang teratur dan mungkin gejala belum berkurang sampai beberapa hari penggunaan.', 'Ada', 'Cendo conver 2.jpg'),
('GMP016', 'Cendo Eyefresh Mild MD', 'STP', 'Obat bebas terbatas', 'GMP', 'Membantu meredakan iritasi mata yang kering karena kekurangan sekresi air mata.', '3-4 kali sehari 2 tetes pada masing-masing mata.', 'Ada', 'Cendo eyefresh mild.webp'),
('GMP017', 'Cendo Eyefresh Minidose 0,6 ml', 'STP', 'Obat bebas terbatas', 'GMP', 'Untuk mengatasi iritasi pada mata yang kering karena kekurangan seksresi air mata, melindungi mata terhadap iritasi lebih lanjut, mengurangi rasa tidak nyaman karena iritasi mata ringan, terkena angin dan sinar matahari.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \n1 atau 2 tetes pada mata 3-4 kali sehari atau sesuai petunjuk dokter.', 'Ada', 'Cendo eyefresh_0,6ml.webp'),
('GMP018', 'Cendo Fenicol Minidose Tetes Mata 0,25%', 'STP', 'Obat keras', 'GMP', 'Untuk mengobati mata infeksi seperti iritis, konjungtivitis, keratitis, dakriositis, dan infeksi mata lain yang sensitif terhadap Chloramphenicol.', 'Sesuai petunjuk dokter\n', 'Ada', 'Cendo fenicol_0,25.jpg'),
('GMP019', 'Cendo Fenicol Salep Mata 3,5 g', 'TUB', 'Obat keras', 'GMP', 'Untuk mengobati mata infeksi seperti iritis, konjungtivitis, keratitis, dakriositis, dan infeksi mata lain yang sensitif terhadap Chloramphenicol.', 'Sesuai petunjuk dokter', 'Ada', 'Cendo fenicol salep_3,5g.webp'),
('GMP020', 'Cendo Floxa Minidose Tetes Mata 0,6 ml', 'STP', 'Obat keras', 'GMP', 'Untuk mengobati infeksi bakteri pada mata, seperti konjungtivitis dan ulkus kornea.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nTeteskan 1-2 tetes setiap 4-6 jam. Dosis dapat ditingkatkan 1-2 tetes tiap 2 jam selama 24-48 jam pertama. Kemudian frekuensi harus diturunkan bertahap sesuai tanda-tanda perbaikan klinis.', 'Ada', 'Cendo floxa_0,6ml.webp'),
('GMP021', 'Cendo Glaoplus Minidose Tetes Mata 0,6 ml', 'STP', 'Obat keras', 'GMP', 'Untuk membantu menurunkan tekanan intra okular pada pasien glaukoma sudut terbuka dan hipertesi okular mata.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \n1 tetes 1 x sehari, penggunaan pada malam hari memberi efek yang optimal', 'Ada', 'Cendo glaoplus_0,6ml.webp'),
('GMP022', 'Cendo Glaucon Tablet 250 mg', 'STP', 'Obat keras', 'GMP', 'Untuk keluhan glaukoma pemakaian sistemik dapat menurunkan tegangan mata pada segala macam glaukoma.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nGlaukoma akut : dosis permulaan 500 mg sekali sehari,dilanjutkan 4 kali sehari 250 mg.(oral) \nGlaukoma kronis: sehari 2-4 kali 125-250 mg (oral) congestive heart failure dosis permulaan 250-375 mg sekali sehari kemudian dianjurkan selama 2 hari, lalu istirahat sehari sebelum diulang.', 'Ada', 'Cendo glauco tab_250mg.jpg'),
('GMP023', 'Cendo Hervis Salep Mata 3,5 g', 'TUB', 'Obat keras', 'GMP', 'Mengatasi infeksi Virus herpes simpleks pada mata.', 'Sesuai petunjuk dokter', 'Ada', 'Cendo hervis salep_3,5g.jpg'),
('GMP024', 'Cendo Homatro Tetes Mata 5 ml', 'BTL', 'Obat keras', 'GMP', 'Untuk terapi perbesaran bola mata secara berlebihan dan kelumpuhan iris mata, serta membantu mengobati peradangan pada lapisan tengah mata.', 'Sesuai petunjuk dokter', 'Ada', 'Cendo homatro_5ml.webp'),
('GMP025', 'Cendo Hyalub Minidose Tetes Mata 0,6 m', 'STP', 'Obat keras', 'GMP', 'Untuk menghilangkan rasa terbakar, iritasi, atau ketidaknyamanan karena mata kering dan juga membantu pemulihan cedera pada mata seperti abrasi kornea.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \n1 tetes pada mata 5-6 kali sehari atau sesuai petunjuk dokter', 'Ada', 'Cendo hyalub_0,6ml.webp'),
('GMP026', 'Cendo LFX Minidose Tetes Mata 0,6 ml', 'STP', 'Obat keras', 'GMP', 'Untuk mengatasi infeksi pada area luar mata yang disebabkan oleh bakteri yang peka terhadap levofloxacin.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \n1-2 tetes ke mata yang sakit 2-8 kali sehari selama 1-2 hari, lalu 4 kali sehari pada hari ke 3-5, durasi pengobatan tergantung pada tingkat keparahan dan jenis bakteri. Durasi normal 5 hari.', 'Ada', 'Cendo LFX_0,6 ml.jpeg'),
('GMP027', 'Cendo Lyteers Tetes Mata 15 ml', 'BTL', 'Obat bebas', 'GMP', 'Untuk melumasi mata kering akibat iritasi, kondisi lingkungan yang tidak mendukung, atau penggunaan lensa kontak.', '1-2 tetes 3-4 kali sehari', 'Ada', 'Cendo lyteers_15ml.jpg'),
('GMP028', 'Cendo Lyters Tetes Mata Minidose 5 X 0.6 mL', 'STP', 'Obat bebas', 'GMP', 'Melumasi dan menyejukan pada mata kering akibat kekurangan sekresi air mata atau teriritasi kondisi lingkungan, ketidaknyamanan karena penggunaan hard contact lens, gangguan penglihatan karena kelebihan lendir pada mata.', '1-2 tetes 3-4 kali sehari', 'Ada', 'Cendo lyteers_5x0,6ml.webp'),
('GMP029', 'Cendo Natacen Minidose 5 x 0,6 ml', 'STP', 'Obat keras', 'GMP', 'Untuk mengobati infeksi mata yang disebabkan oleh jamur.', 'Sesuai petunjuk dokter', 'Ada', 'Cendo natacen_5x0,6ml.jpeg'),
('GMP030', 'Cendo Noncort Minidose Tetes Mata 0,6 ml', 'STP', 'Obat keras', 'GMP', 'Sebagai antibiotik aminoglikosida yang di gunakan untuk mengobati infeksi akibat bakteri.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nTeteskan satu tetes pada mata dimulai 24 jam setelah operasi katarak dan dianjurkan selama 2 minggu setelah operasi.', 'Ada', 'Cendo noncort_0,6ml.webp'),
('GMP031', 'Cendo Oculenta Eye Gel 5 G', 'TUB', 'Obat bebas terbatas', 'GMP', 'Untuk mengatasi iritasi pada mata, dapat pula digunakan sebagai pengganti air mata pada kondisi mata kering', 'Dewasa dan anak: 3-4 kali sehari 1 tetes', 'Ada', 'Cendo oculenta_5g.webp'),
('GMP032', 'Cendo Pantocain 2% Tetes Mata 5 ml', 'BTL', 'Obat keras', 'GMP', 'Sebagai anestesi untuk meredakan nyeri pada mata selama operasi atau pemeriksaan mata.', 'Sesuai petunjuk dokter', 'Ada', 'Cendo pantocain_5ml.jpeg'),
('GMP033', 'Cendo Polygran Minidose Tetes Mata 0,6 ml', 'STP', 'Obat keras', 'GMP', 'Untuk mengobati infeksi eksternal pada mata yang disebabkan oleh bakteri.', '2-4 x sehari 1-2 tetes\nPada infeksi akut : dosis awal 1-2 tetes setiap 10 - 30 menit, kemudian lanjutkan 2-4 kali sehari 1-2 tetes', 'Ada', 'Cendo polygran_0,6ml.webp'),
('GMP034', 'Cendo Polynel Minidose Tetes Mata 0,6 ml', 'STP', 'Obat keras', 'GMP', 'Untuk mengatasi peradangan pada mata yang disebabkan oleh infeksi bakteri.', 'Sesuai petunjuk dokter', 'Ada', 'Cendo polynel_0,6ml.jpg'),
('GMP035', 'Cendo Posop Minidose Tetes Mata 0,6 ml', 'STP', 'Obat keras', 'GMP', 'Untuk pengobatan jangka pendek kondisi eksternal atau interior inflamasi okular seperti blepharitis, konjungtivitis, keratitis, sclaritis, episcleritis, iritis, iridocyclitis dan inflamasi pasca operasi.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nTeteskan 1-2 tetes pada setiap mata, 2-4 kali per hari atau sesuai anjuran dokter. Dosis disesuaikan dengan umur dan keparahan penyakit.', 'Ada', 'Cendo posop_0,6ml.jpeg'),
('GMP036', 'Cendo P-Pred Minidose 5 x 0,6 mL', 'BTL', 'Obat keras', 'GMP', 'Untuk mengatasi iritasi dan peradangan pada mata. Cendo P-Pred mengandung Prednisolone asetat. Obat ini bekerja dengan menurunkan respon sistem imun tubuh (yang menyebabkan terjadinya reaksi peradangan sebagai upaya untuk mengeluarkan zat asing dari dalam tubuh).', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \n4-5 kali sehari 1-2 tetes pada mata yang sakit, memasang lensa kontak 1-2 tetes di bagian dalam lensa kontak', 'Ada', 'Cendo p-pred_5x0,6ml.jpg'),
('GMP037', 'Cendo Protagenta Minidose 5 x 0,6 mL', 'STP', 'Obat bebas', 'GMP', 'Sebagai cairan air mata buatan yang bertindak sebagai pengganti dan menstabilkan lapisan cairan mata pre korneal alamiah.', 'Melindungi kornea dan mesubstitusi cairan mata: 4-5 x sehari 1-2 tetes pada mata yang sakit. \nMemasang lensa kontak 1-2 tetes di bagian dalam lensa kontak. Setelah lensa dipasang teteskan 1 tetes pada mata.', 'Ada', 'Cendo protagenta_5x0,6ml.jpg'),
('GMP038', 'Cendo Siloxan Tetes Mata 5 ml', 'BTL', 'Obat keras', 'GMP', 'Untuk membantu mengurangi pembengkakan kornea yang disebabkan oleh cedera akibat goresan benda asing, paparan sinar matahari, iritasi, operasi, atau pemakaian lensa kontak.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nTeteskan 1-2 tetes pada mata 2-4 kali sehari.', 'Ada', 'Cendo siloxan_5ml.png'),
('GMP039', 'Cendo Timol 0,25% Minidose Tetes Mata 0,6 ml', 'BTL', 'Obat keras', 'GMP', 'Menurunkan tekanan intraokuler pada penderita glaukoma dan hipertensi okuler.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \n2 x sehari 1 tetes', 'Ada', 'Cendo timol 0,25_0,6ml.webp'),
('GMP040', 'Cendo Timol 0,5% Minidose Tetes Mata 0,6 ml', 'STP', 'Obat keras', 'GMP', 'Menurunkan tekanan intraokuler pada penderita glaukoma dan hipertensi okuler.\r', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \n2 x sehari 1 tetes pada mata sakit', 'Ada', 'Cendo timol 0,5_0,6ml.jpg'),
('GMP041', 'Cendo Tobro Minidose Tetes Mata 0,6 ml', 'STP', 'Obat keras', 'GMP', 'Sebagai antibiotik aminoglikosida yang di gunakan untuk mengobati infeksi akibat bakteri.', 'Sesuai petunjuk dokter', 'Ada', 'Cendo tobro_0,6ml.webp'),
('GMP042', 'Cendo Tobroson Minidose Tetes Mata 0,6 ml', 'STP', 'Obat keras', 'GMP', 'Sebagai antibiotik aminoglikosida yang di gunakan untuk mengobati infeksi akibat bakteri.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \n1-2 tetes setiap 4-6 jam, dapat ditingkatkan tiap 2 jam selama 24-48 jam pertama. Kemudian frekuensi harus diturunkan bertahap sesuai tanda-tanda perbaikan klinis.', 'Ada', 'Cendo tobroson_0,6ml.jpeg'),
('GMP043', 'Cendo Tobroson Salep Mata 3,5 g', 'TUB', 'Obat keras', 'GMP', 'Untuk membantu mengobati infeksi pada mata karena bakteri yang disertai dengan peradangan. Pedih, rasa gatal, mata memerah.', 'Sesuai petunjuk dokter', 'Ada', 'Cendo tobroson salep_3,5g.png'),
('GMP044', 'Cendo Tonor Minidose 0,5% - 5 x 0,6 mL', 'STP', 'Obat keras', 'GMP', 'Untuk mengobati tekanan tinggi di dalam mata karena glaukoma, dan untuk menurunkan tekanan tinggi di dalam mata.', 'PENGGUNAAN OBAT INI HARUS SESUAI PETUNJUK DOKTER. \nTetes mata digunakan 2 kali sehari pada mata yang sakit.', 'Ada', 'Cendo tonor_5x0,6ml.jpg'),
('GMP045', 'Cendo Ulcori Minidose 0,6 ml', 'STP', 'Obat keras', 'GMP', 'Untuk mengatasi infeksi mata yang disebabkan oleh bakteri dan mengobati ulkus kornea (luka terbuka pada kornea yang disebabkan oleh infeksi).', 'Sesuai petunjuk dokter', 'Ada', 'Cendo ulcori_0,6ml.jpg'),
('GMP046', 'Cendo Vernacel 5 x 0.6 mL', 'STP', 'Obat keras', 'GMP', 'Untuk meredakan sementara rasa gatal pada mata serta mata merah karena kelebihan lendir pada mata.', 'Teteskan 1-2 tetes pada mata yang sakit 4 kali sehari.', 'Ada', 'Cendo vernacel_5x0,6ml.webp'),
('GMP047', 'Cendo Vitrolenta Tetes Mata 5 ml', 'BTL', 'Obat bebas terbatas', 'GMP', 'Untuk mengatasi kekeruhan dan pendarahan pada vitreous body dikarenakan segala penyebabnya (faktor usia, myopia, hypertonia, diabetes) kekeruhan pada lensa sebagai gejalan awal katarak sinilis.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \n1-3 x sehari 1 tetes', 'Ada', 'Cendo vitrolenta_5ml.jpeg'),
('GMP048', 'Cendo Xitrol Minidose 5 x 0,6 ml', 'STP', 'Obat keras', 'GMP', 'Untuk kondisi inflamasi mata yang responsif terhadap steroid disertai infeksi bakteri atau adanya reaksi infeksi mata karena bakteri.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \n1-2 tetes tiap jam pada siang hari, dan tiap 2 jam pada malam hari. jika respon baik dikurangi menjadi 1 tetes tiap 4 jam. Untuk mengontrol gejala, dosis dikurangi 3-4 x sehari 1 tetes.', 'Ada', 'Cendo xitrol_5x0,6ml.jpeg'),
('GMP049', 'Cendo Xitrol Salep Mata 3,5 g', 'TUB', 'Obat keras', 'GMP', 'Untuk mengatasi infeksi bakteri pada mata yang menyebabkan mata merah atau bengkak serta iritasi pada jaringan konjungtiva dan kornea.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nDioleskan pada mata yang sakit 2-3 x sehari.', 'Ada', 'Cendo xitrol salep_3,5g.jpeg'),
('GMP050', 'Cendo Xitrol Tetes Mata 5 ml', 'BTL', 'Obat keras', 'GMP', 'Untuk kondisi inflamasi mata yang responsif terhadap steroid disertai infeksi bakteri atau adanya reaksi infeksi mata karena bakteri.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \n1-2 tetes tiap jam pada siang hari, dan tiap 2 jam pada malam hari. jika respon baik dikurangi menjadi 1 tetes tiap 4 jam. Untuk mengontrol gejala, dosis dikurangi 3-4 x sehari 1 tetes.\n', 'Ada', 'Cendo xitrol_5ml.webp'),
('GMP051', 'Combantrin Rasa Jeruk Sirup 10 mL', 'BTL', 'Obat bebas terbatas', 'GMP', 'Untuk mengatasi cacing kremi (Enterobius vermicularis), cacing gelang (Ascaris lumbricoides), cacing tambang (Ancylostoma duodenale), Cacing tambang (Necator americanus), cacing Trichostrongyfus colubriformis dan Trichostrongylus orientalls. ', '- Anak usia 2-6 tahun: 5-10 ml, diberikan sekali. \n- Anak usia 6-12 tahun: 10-15 ml, diberikan sekali. \n- Di atas usia 12 tahun: 15-20 ml, diberikan sekali.', 'Ada', 'Combatnrin jeruk_10ml.jpeg'),
('GMP052', 'Combantrin Tablet 250 mg', 'STP', 'Obat bebas terbatas', 'GMP', 'Untuk mengatasi cacing kremi (Enterobius vermicularis), cacing gelang (Ascaris lumbricoides), cacing tambang (Ancylostoma duodenale), Cacing tambang (Necator americanus), cacing Trichostrongyfus colubriformis dan Trichostrongylus orientalls. ', '- Anak usia 2-6 tahun: 0.5-1 tablet, diberikan sekali.\n- Anak usia 6-12 tahun: 1-1.5 tablet, diberikan sekali. \n- Di atas usia 12 tahun: 1.5-2 tablet, diberikan sekali.', 'Ada', 'Combantrin tab_250mg.jpg'),
('GMP053', 'Esperson Krim 0,25 % - 5 g', 'TUB', 'Obat keras', 'GMP', 'Untuk radang akut yang berat, kelainan kulit alergis dan kronis, psoriasis.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER\nDioleskan 1-2 x sehari pada kulit yang bermasalah.', 'Ada', 'Esperson krim_5g.webp'),
('GMP054', 'Eyevit Tablet', 'STP', 'Obat bebas', 'GMP', 'Suplemen untuk memelihara kesehatan mata yang memiliki kandungan vitamin A untuk memberikan nutrisi pada mata dan menjaga kesehatan mata.', '2-3x sehari 1 tablet', 'Ada', 'Eyevit Tab.png'),
('GMP055', 'Hydrocortisone Krim 1% - 5 g', 'TUB', 'Obat keras', 'GMP', 'Sebagai krim anti alergi dan mengurangi merah-merah.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nOleskan pada kulit yang bermasalah 1-2 kali per hari.', 'Ada', 'Hydrocortisone 1_5g.jpeg'),
('GMP056', 'Hydrocortisone Krim 2,5% - 5 g', 'TUB', 'Obat keras', 'GMP', 'Untuk mengobati eksim, inflamasi, kemerahan serta gatal-gatal pada kulit.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nOleskan pada kulit yang bermasalah 1-2 kali per hari.', 'Ada', 'Hydrocortisone 2,5_5g.jpg'),
('GMP057', 'Kalmicetine Kapsul 250 mg', 'STP', 'Obat keras', 'GMP', 'Untuk mengatasi meningitis, demam tifoid, gastroenteritis, listeriosis, demam tifus, penyakit radang panggul, abses, dan gas gangrene.', 'Dewasa, anak, bayi > 2 minggu : 50 mg/kg BB dalam dosis terbagi 3 - 4 kali sehari. \nBayi < 2 minggu : 25 mg/kg BB dalam dosis terbagi', 'Ada', 'Kalmicetine_250mg.webp'),
('GMP058', 'Kalpanax-K Krim 2% - 5 g', 'TUB', 'Obat bebas terbatas', 'GMP', 'Mengobati kutu air dan infeksi penyakit jamur lainnya. Untuk mengatasi infeksi kulit yang disebabkan oleh dermatofit atau ragi.', 'Oleskan 2 atau 3 kali sehari\n', 'Ada', 'Kalpanax krim_5g.jpg'),
('GMP059', 'Lameson Tablet 4 mg', 'STP', 'Obat keras', 'GMP', 'Untuk keadaan alergi dan mengurangi peradangan atau supresi inflamasi.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nDosis awal : Dewasa : 4 - 80 mg/hari. \nAnak : 0.8 - 1.1 mg/kg BB. \nDosis pemeriharaan : Dewasa : 4 - 8 mg/hari dosis ditingkatkan menjadi 16 mg/hari. \nAnak : 2 - 4 mg/hari, dapat ditingkatkan sampai 8 mg/hari.\nDosis substitusi : 4 - 8 mg/hari, dalam keadaan stres ditingkatkan menjadi 16 mg/hari ', 'Ada', 'Lameson Tab_4mg.webp'),
('GMP060', 'Lapistan Kaplet 500 mg', 'STP', 'Obat keras', 'GMP', 'Sebagai anti nyeri pada tingkat ringan hingga sedang. Obat ini sering digunakan untuk meredakan sakit kepala, migrain, sakit gigi, nyeri haid, serta nyeri pada otot dan sendi.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nDewasa dosis Awal 500 mg, dilanjutkan 250 mg tiap 6 jam, bila perlu.', 'Ada', 'Lapistan_500mg.webp'),
('GMP061', 'Methylprednisolone Tablet 8 mg', 'STP', 'Obat keras', 'GMP', 'Untuk antiinflamasi (anti peradangan) pada berbagai kondisi seperti pada penyakit reumatik, antialergi, terapi insufisensi adrenal, terapi pendamping untuk asma.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nDosis awal : Dewasa : 4 - 80 mg/hari. \nAnak : 0.8 - 1.1 mg/kg BB. \nDosis pemeriharaan : Dewasa : 4 - 8 mg/hari dosis ditingkatkan menjadi 16 mg/hari. \nAnak : 2 - 4 mg/hari, dapat ditingkatkan sampai 8 mg/hari. \nDosis substitusi : 4 - 8 mg/hari, dalam keadaan stres ditingkatkan menjadi 16 mg/hari', 'Ada', 'Methylprednisolone_8mg.jpg'),
('GMP062', 'Metronidazole Tablet 500 mg', 'STP', 'Obat keras', 'GMP', 'Untuk mengobati infeksi trichomonas vaginalis, bakterial vaginosis (Infeksi Gardnerella vaginalis) dan infeksi Entamoeba histolytica dan Giardia lamblia (penyakit Giardiasis).', '- Trikomoniasis \nDewasa: 2 g sebagai dosis tunggal selma 1 hari atau 500 mg 2x/hari atau 250 mg 3x/hari selama 7 hari. \nAnak: 15 mg/kgBB/ hari dalam 3 dosis terbagi selama 7-10 hari. \n- Giardiasis \nDewasa: 250-500 mg 3x/hari selama 5-7 hari atau 2 g 1x/hari selama 3 hari. \nAnak: 5 mg/kgBB 3x/hari selama 5-7 hari. \n- Infeksi anaerob serius \nDewasa: 7.5 mg/kgBB tiap 6 jam. Maksimal 4 g per hari selama 7 hari.', 'Ada', 'Metronidazole Tab_500mg.png'),
('GMP063', 'Mylanta Suspensi 50 mL', 'BTL', 'Obat bebas', 'GMP', 'Untuk mengurangi gejala-gejala yang berhubungan dengan kelebihan asam lambung, gastritis, tukak lambung, tukak usus 12 jari, dengan gejala-gejala seperti mual, nyeri lambung, nyeri ulu hati.', 'Dewasa : 1-2 sendok takar (5-10 mL) 3-4 kali sehari. \nAnak-anak (6 - 12 tahun) : 1/2 - 1 sendok takar (2.5 - 5 mL), sebanyak 3-4 kali sehari.', 'Ada', 'Mylanta_50ml.jpg'),
('GMP064', 'Neo Entrostop Tablet', 'STP', 'Obat bebas', 'GMP', 'Untuk mengatasi diare dengan kandungan Attapulgit dan Pektin. Obat ini dapat digunakan untuk mengobati diare non spesifik. Untuk mengatasi diare yang tidak diketahui penyebabnya dengan jelas.', 'Dewasa dan Anak > 12 tahun : 2 tablet setiap kali setelah diare, maximum 12 tablet per hari (24 jam). \nAnak 6-12 tahun : 1 tablet setiap kali setelah diare, maximum 6 tablet per hari (24 jam).', 'Ada', 'Neo entrostop Tab.jpg'),
('GMP065', 'Omeprazole Kapsul 20 mg', 'STP', 'Obat keras', 'GMP', 'Obat golongan proton pump inhibitor (PPI). Obat ini diindikasikan untuk tukak lambung dan tukak duodenum, tukak lambung dan duodenum yang terkait dengan AINS, lesi lambung dan duodenum, regimen eradikasi H. pylori pada tukak peptik, refluks esofagitis, Sindrom Zollinger Ellison.', '> 12 th : 20 mg/hari selama 2-4 minggu. Pasien yang sukar disembuhkan dengan terapi : 40 mg/hari selama 4-8 minggu', 'Ada', 'Omeprazole_20mg.webp'),
('GMP066', 'Pedialyte Larutan 500 mL', 'BTL', 'Obat bebas', 'GMP', 'Untuk menanggulangi dehidrasi ringan sampai sedang pada bayi dan anak-anak akibat diare.', '- Anak usia di bawah 1 tahun, 3 jam pertama berikan Pedialyte 300 ml, selanjutnya 100 ml tiap kehilangan cairan (muntah/diare). \n- Anak usia 1 sampai 5 tahun, 3 jam pertama berikan Pedialyte 600 ml, selanjutnya 200 ml tiap kehilangan cairan (muntah/diare). \n- Anak usia 5 sampai 12 tahun, 3 jam pertama berikan Pedialyte 1200 ml, selanjutnya 300 ml tiap kehilangan cairan (muntah/diare). \n- Anak usia di atas 12 tahun, 3 jam pertama berikan Pedialyte 2400 ml, selanjutnya 400 ml tiap kehilangan cairan (muntah/diare)', 'Ada', 'Pedialyte_500ml.webp'),
('GMP067', 'Simvastatin Tablet 10 mg', 'STP', 'Obat keras', 'GMP', 'Untuk menurunkan kadar kolesterol jahat (LDL) dan trigliserida, serta meningkatkan jumlah kolesterol baik (HDL) dalam darah. ', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nDewasa: Awalnya, 10-20 mg sekali sehari. Pasien yang membutuhkan pengurangan kolesterol dalam jumlah besar atau dengan risiko CV tinggi: Awalnya, 40 mg sekali sehari. Pasien dengan hiperkolesterolemia familial homozigot: Awalnya, 40 mg sekali sehari. Semua dosis harus diminum di malam hari. Maks: 80 mg setiap hari. Sesuaikan dosis sesuai dengan respon pasien dengan interval minimal 4 minggu. \nAnak: Hiperkolesterolemia familial heterozigot: 10-17 tahun Awalnya, 10 mg sekali sehari. Dosis yang dianjurkan: 10-40 mg setiap hari. Sesuaikan dosis sesuai dengan tujuan terapi yang direkomendasikan dengan interval minimal 4 minggu. Semua dosis harus diminum di malam hari. Maks: 40 mg setiap hari.', 'Ada', 'Simvastatin Tab_10mg.jpg'),
('GMP068', 'Zambuk Oint 10GR', 'POT', 'Non obat', 'GMP', 'Untuk meredakan memar dan terkilir ringan, gatal akibat gigitan serangga dan nyamuk, serta membantu meredakan rasa nyeri dan gatal gatal yang berkaitan dengan luka ringan.', 'Sesuai kebutuhan', 'Ada', 'Zambuk oint_10g.jpg'),
('MA001', 'Onemed Ultrafix 5 cm x 5 m', 'BOX', 'Non obat', 'MA', 'Sebagai plester penutup luka merk OneMed, terbuat dari bahan non woven yang lembut, flexible, serta mudah dipakai.', 'Sesuaikan dengan kebutuhan', 'Ada', 'Onemed Ultrafix.jpeg'),
('MAS001', 'Acetylcysteine Kapsul 200 mg', 'STP', 'Obat keras', 'MAS', 'Sebagai mukolitik (pengencer dahak) dan antidot pada pasien yang overdosis Paracetamol.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER.\nMukolitik Dewasa : 3 x sehari 1 kapsul. Sebagai tab effervescent: 1 x sehari 600 mg. Maks: 600 mg setiap hari. Keracunan Parasetamol Dewasa: Sebagai tab effervescent: Awalnya, 140 mg/kg diikuti oleh 17 dosis pemeliharaan 70 mg/kg diberikan setiap 4 jam. Anak: Sama seperti dosis dewasa.', 'Ada', 'Acetylcysteine_200mg.jpg');
INSERT INTO `produk` (`id_produk`, `nama_produk`, `satuan_unit`, `kategori`, `id_supplier`, `kegunaan`, `dosis`, `status_produk`, `img`) VALUES
('MAS002', 'Ambroxol Tablet 30 mg', 'STP', 'Obat keras', 'MAS', 'Sebagai  sekretolitik pada gangguan saluran nafas akut dan kronis khususnya pada eksaserbasi bronkitis kronis dan bronkitis asmatik dan asma bronkial.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER.\nDewasa dan anak >12 tahun: 30 mg, 2-3 kali sehari. Dapat ditingkatkan hingga 60 mg. Max. 120 mg per hari.', 'Ada', 'Ambroxol Tab_30mg.jpg'),
('MAS003', 'Aptor Tablet 100 mg', 'STP', 'Obat keras', 'MAS', 'Sebagai penghilang rasa nyeri yang juga berkhasiat bagi jantung karena dapat mencegah angina pektoris dan infark miokard.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \n80-160 mg/hari. Untuk infark miokard : sampai dengan 300 mg/hari. Untuk transient ischaemic attack (TIA) atau storke ringan : sampai dengan 1000 mg/hari.', 'Ada', 'Aptor Tab_100mg.webp'),
('MAS004', 'Ardium Tablet 500 mg', 'STP', 'Obat herbal (jamu)', 'MAS', 'Untuk membantu meringankan gangguan peredaran darah di kaki/varises dan membantu meringankan wasir kronik dan akut.', 'Untuk gangguan peredaran darah di kaki/varises dan wasir kronik: 2 Tablet/Hari. \nUntuk wasir akut: 6 Tablet/Hari selama 4 hari, kemudian 4 Tablet/Hari selama 3 hari.', 'Ada', 'Ardium Tab_500mg.jpeg'),
('MAS005', 'Asam Mefenamat Errita Kaplet 500 mg', 'STP', 'Obat keras', 'MAS', 'Untuk mengatasi sakit kepala, sakit gigi, nyeri otot, nyeri sendi, atau nyeri haid', 'Dewasa dan anak usia >14 tahun : Dosis awal 500 mg, dilanjutkan 250 mg tiap 6 jam.', 'Ada', 'Asam mefenamat_500mg.jpeg'),
('MAS006', 'Aspar-K Tablet 300 mg', 'STP', 'Obat keras', 'MAS', 'Untuk suplementasi kalium pada kondisi kekurangan ataupun penyakit-penyakit yang menyebabkan kalium rendah.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nDewasa 3 kali sehari 1 tablet', 'Ada', 'Aspar-K Tab_300mg.webp'),
('MAS007', 'Atorvastatin 20 mg', 'STP', 'Obat keras', 'MAS', 'Untuk menurunkan kolesterol jahat (LDL) dan trigliserida, serta meningkatkan kadar kolesterol baik (HDL) di dalam darah.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nDosis awal yang biasa diberikan adalah 10 mg 1 kali sehari. Rentang dosis adalah antara 10-80 mg sekali sehari. Hypercholesterolemia primer dan hyperlipidemia campuran: 10 mg, diberikan 1 kali sehari. Familial hypercholesterolemia homozigot: 10-80 mg per hari. Familial hypercholesterolemia heterozigot pada pasien anak-anak (10-17 tahun): dosis awal yang direkomendasikan adalah 10 mg/hari, dosis maksimum yang direkomendasikan adalah 20 mg/hari. Penyesuaian harus dilakukan pada interval 4 minggu. Kombinasi dg siklosporin, telaprevir, atau kombinasi tipranavir/ritonavir: Dosis tidak boleh melebihi 10 mg.', 'Ada', 'Atorvastatin_20mg.png'),
('MAS008', 'Avodart Kapsul 0,5 mg', 'STP', 'Obat keras', 'MAS', 'Untuk meringankan gejala BPH seperti kesulitan buang air kecil, urin yang keluar sedikit, dan kebutuhan untuk sering buang air kecil atau mendadak ingin buang air kecil.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \n1 kapsul per hari', 'Ada', 'Avodart_0,5ml.webp'),
('MAS009', 'Bactoderm Krim 5 g', 'TUB', 'Obat keras', 'MAS', 'Untuk mengatasi infeksi bakteri pada kulit terutama yang disebabkan oleh bakteri gram positif seperti Staphylococcus aureus dan Staphylococcus pyogenes yang menyebabkan impetigo, folikulitis, karbunkel serta bisul.', 'Oleskan hingga 3 x sehari selama s/d 10 hari', 'Ada', 'Bactoderm krim_5g.jpg'),
('MAS010', 'Baycuten-N Krim 5 g', 'TUB', 'Obat keras', 'MAS', 'Obat anti jamur yang digunakan terutama untuk mengatasi eksim dan inflamasi kulit yang disebabkan oleh jamur.', 'Oleskan krim 2 kali sehari.', 'Ada', 'Baycuten krim_5g.webp'),
('MAS011', 'Benoson M Krim 5 g', 'TUB', 'Obat keras', 'MAS', 'Untuk mengatasi inflamasi disertai infeksi jamur pada kulit seperti penyakit eksim dan dermatitis.', 'Oleskan krim pada bagian kulit yang sakit/radang 2-3 x sehari', 'Ada', 'Benoson krim_5g.jpg'),
('MAS012', 'Benoson-G Krim 10 g', 'TUB', 'Obat keras', 'MAS', 'Untuk pengobatan penyakit kulit seperti inflamasi pada dermatosis yang peka terhadap kortikosteroid dan disertai oleh infeksi sekunder oleh bakteri tertentu.', 'Oleskan krim 2-3 x sehari', 'Ada', 'Benoson krim_10g.jpg'),
('MAS013', 'Betadine Salep 10 g', 'TUB', 'Obat bebas terbatas', 'MAS', 'Sebagai salep antiseptik untuk membunuh kuman penyebab infeksi pada luka seperti luka bakar, luka sunat, lika tergores, dan luka kecil lainnya.', 'Sesuaikan dengan kebutuhan', 'Ada', 'Betadine salep_10g.webp'),
('MAS014', 'Betadine Salep 5 g', 'TUB', 'Obat bebas terbatas', 'MAS', 'Untuk membunuh kuman penyebab infeksi pada luka seperti luka bakar, luka sunat, lika tergores, dan luka kecil lainnya.', 'Sesuaikan dengan kebutuhan', 'Ada', 'Betadine salep_5g.jpeg'),
('MAS015', 'Betahistine Tablet 6 mg', 'STP', 'Obat keras', 'MAS', 'Untuk mengobati vertigo, tinitus dan gangguan pendengaran yang terkait dengan penyakit meniere.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nDosis yang dianjurkan: 6-12 mg 3x sehari', 'Ada', 'Betahistine Tab_6mg.jpg'),
('MAS016', 'Betamethasone Krim 0,1% 5 g', 'TUB', 'Obat keras', 'MAS', 'Untuk meringankan iritasi kulit, seperti gatal-gatal dan mencreamupas dari eksim, penyakit Bullous dermatitis herpetiformis, eksfoliatif eritroderma, mikosis fungoides, pemfigus, eritema multiforme (sindrom Stevens-Johnson).', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER.\nDioleskan 3-4 kali sehari sampai fase akut berakhir, lalu oleskan 1 kali per hari.', 'Ada', 'Betamethasone_5g.webp'),
('MAS017', 'Betason N Krim 5 g', 'TUB', 'Obat keras', 'MAS', 'Untuk mengatasi reaksi alergi atau mengurangi peradangan kulit akibat sejumlah kondisi, seperti eksim serta dermatitis.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nOleskan tipis pada bagian yang sakit 2-3 kali sehari', 'Ada', 'Betason-N krim_5g.jpeg'),
('MAS018', 'Bevalex Krim 5 g', 'TUB', 'Obat keras', 'MAS', 'Untuk meredakan peradangan dari dermatosis yang responsif terhadap kortikosteroid bila terkomplikasi dengan infeksi sekunder karena organisme yang sensitif terhadap neomisin.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nOleskan krim 2-3 x sehari', 'Ada', 'Bevalex krim_5g.webp'),
('MAS019', 'Biocream 20 g', 'TUB', 'Obat bebas', 'MAS', 'Untuk melembabkan kulit kering dan sebagai pelindung kulit dari radioterapi.', 'Oleskan krim 2-3 x sehari', 'Ada', 'Biocream_20g.jpg'),
('MAS020', 'Candesartan Tablet 8 mg', 'STP', 'Obat keras', 'MAS', 'Untuk menurunkan tekanan darah.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \n- Pasien hipertensi : Dosis awal 4 mg per hari dan dapat ditingkatkan hingga 16 mg, satu kali sehari. \n- Pasien gagal jantung : 4 mg per hari.', 'Ada', 'Candesartan Tab_8mg.png'),
('MAS021', 'Cataflam Tablet 50 mg', 'STP', 'Obat keras', 'MAS', 'Untuk terapi akut & kronik tanda-tanda dan gejala-gejala RA (Rheumatoid Arthritis), OA (Osteoarthritis) & spondilitis ankilosa.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nDewasa dan Anak diatas 14 tahun: 25 mg atau 50 mg, 2 sampai 3 kali per hari.', 'Ada', 'Cataflam Tab_50mg.jpeg'),
('MAS022', 'CDR Rasa Jeruk Tablet Effervescent', 'TUB', 'Obat bebas', 'MAS', 'Sebagai Suplementasi Kalsium, Vitamin C, D, dan B6 untuk membantu menjaga kesehatan tulang pada orang dewasa serta membantu memenuhi kebutuhan kalsium pada ibu hamil dan menyusui. Juga diperlukan untuk membantu masa pertumbuhan, masa penyembuhan dan gangguan penyerapan makanan.', '1 tablet effervescen', 'Ada', 'CDR jeruk Tab.webp'),
('MAS023', 'Cefadroxil Kapsul 500 mg', 'STP', 'Obat keras', 'MAS', 'Untuk mengatasi infeksi saluran pernafasan, saluran kemih dan kelamin serta infeksi kulit dan jaringan lunak.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER.\nInfeksi kulit dan struktur kulit, Infeksi saluran kemih Dewasa: Dosis biasa: 1 atau 2 g setiap hari sebagai dosis tunggal atau dalam 2 dosis terbagi. Dosis individual berdasarkan kerentanan patogen, tingkat keparahan infeksi, dan status klinis pasien. Anak: 6 tahun Dosis anjuran: <40 kg: 30-50 mg/kg setiap hari sebagai dosis tunggal atau dalam 2 dosis terbagi. Maks: 100 mg/kg setiap hari. >40 kg: Sama seperti dosis dewasa. Faringitis streptokokus, Tonsilitis Dewasa: Untuk kasus yang disebabkan oleh galur Streptococcus pyogenes yang rentan (streptokokus -hemolitik grup A): 1 g sekali sehari atau 500 mg dua kali sehari selama setidaknya 10 hari. Anak: Dosis yang dianjurkan: <40 kg: 30 mg/kg setiap hari sebagai dosis tunggal atau dalam 2 dosis terbagi selama minimal 10 hari. Maks: 100 mg/kg setiap hari. >40 kg: Sama seperti dosis dewasa.', 'Ada', 'Cefadroxil_500mg.jpg'),
('MAS024', 'Cefixime Kapsul 200 mg', 'STP', 'Obat keras', 'MAS', 'Untuk mengobati infeksi saluran kemih tanpa komplikasi, otitis media, faringiris dan tonsilitis, serta bronkitis akut dan kronis dengan eksaserbasi akut.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nDewasa dan anak-anak dengan berat badan sama dengan atau lebih dari 30 kg, dosis harian yang direkomendasikan adalah 50-100 (potensi) cefixime, diberikan per oral dua kali sehari. Untuk infeksi yang berat, dosis dapat ditingkatkan sampai 200 mg (potensi) diberikan dua kali sehari.', 'Ada', 'Cefixime_200mg.jpg'),
('MAS025', 'Cetirizine Tablet 10 mg', 'STP', 'Obat keras', 'MAS', 'Untuk mengobati rinitis menahun, rinitis alergi seasonal, konjungtivitis, pruritus, urtikaria idiopati kronis.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nKondisi alergi Dosis yang dianjurkan: Dewasa & anak umur >12 tahun: 10 mg sekali sehari. \nAnak umur 2-6 tahun: 2,5 mg dua kali sehari. \nAnak umur 6-12 tahun: 5 mg dua kali sehari. \nLansia: Belum ada data untuk menurunkan dosis pada pasien lansia. \nInsufisiensi ginjal: dosis 1/2 kali dosis yang dianjurkan.', 'Ada', 'Cetirizine Tab_10mg.webp'),
('MAS026', 'Ciprofloxacin Tablet 500 mg', 'STP', 'Obat keras', 'MAS', 'Untuk pengobatan infeksi bakteri yang sensitif terhadap ciprofloxacin seperti infeksi pada saluran kemih, saluran cerna, termasuk demam tifoid yang disebabkan oleh S. thypi, saluran napas (kecuali pneumonia akibat Streptococcus), kulit dan jaringan lunak, tulang dan sendi.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER.\nDewasa : Infeksi Saluran Kemih (ISK) ringan sampai dengan sedang : 250 mg, 2 x sehari. \nInfeksi Saluran Kemih (ISK) berat, prostatis kronik, infeksi GI : 500 mg, 2 x sehari.\nInfeksi saluran napas, tulang & sendi, kulit & jaringan lunak ringan sampai dengan sedang : 250-500 mg, 2 x sehari. \nInfeksi saluran napas, tulang & sendi, kulit & jaringan lunak berat : 500-750 mg, 2 x sehari. \nGO akut : 250 mg sebagai dosis tunggal. \nOsteomieletis akut : 750 mg, 2 x sehari.', 'Ada', 'Ciprofloxacin_500mg.jpg'),
('MAS027', 'Clopidogrel Tablet 75 mg', 'STP', 'Obat keras', 'MAS', 'Untuk mencegah penyumbatan pembuluh darah dan membantu melancarkan peredaran darah, sehingga obat ini dapat menurunkan risiko terjadinya stroke atau serangan jantung.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER.\nSehari 1 kali 1 tablet (75 mg). Tidak ada penyesuaian dosis yang diperlukan untuk pasien lanjut usia atau pasien dengan penyakit ginjal.', 'Ada', 'Clopidogrel_75mg.jpg'),
('MAS028', 'Cotrimoxazole Tablet 480 mg', 'STP', 'Obat keras', 'MAS', 'Untuk menangani infeksi yang disebabkan oleh bakteri, seperti bronkitis, otitis media, dan infeksi saluran kemih.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nDosis lazim untuk dewasa dan anak usia diatas 12 tahun: 2 kali sehari 1 tablet, selama 10-14 hari.', 'Ada', 'Cotrimoxazole Tab_480mg.jpg'),
('MAS029', 'Counterpain Krim 15 g', 'TUB', 'Obat bebas', 'MAS', 'Krim pereda nyeri untuk meringankan rasa sakit pada otot, nyeri sendi, keseleo, dan nyeri akibat encok.', 'Sesuaikan dengan kebutuhan', 'Ada', 'Counterpain krim_15g.jpg'),
('MAS030', 'CTM PIM 4 mg box 12 tab', 'STP', 'Obat bebas terbatas', 'MAS', 'Untuk mengatasi gejala alergi seperti rhinitis alergi, urtikaria, bersin-bersin, mata berair, gatal pada mata, hidung, tenggorokan atau kulit.', 'Dewasa : 1 Tablet, diminum 3-4 kali per hari. Maksimum = 6 tablet/hari. \nAnak : 2-5 th : 1 mg, diminum 3-4 kali per hari. Maksimum = 1.5 tablet/hari. 6-12 th : 0.5 Tablet, diminum 3-4 kali per hari. Maksimum = 3 tablet/hari.', 'Ada', 'CTM PIM_4mg.jpeg'),
('MAS031', 'Curcuma Plus Emulsion Grow Rasa Jeruk Sirup 200 mL', 'BTL', 'Obat bebas', 'MAS', 'Untuk membantu memperbaiki nafsu makan, membantu memenuhi kebutuhan vitamin di masa pertumbuhan, serta membantu pertumbuhan tulang dan gigi yang kuat.', 'Dewasa : 3 kali sehari 1 sendok makan (15 ml) \nAnak-anak : - Usia 6 - 12 tahun : 2 kali sehari 1 sendok makan (15 ml) \n- Usia 1 - 6 tahun : 1 kali sehari 1 sendok makan (15 ml)', 'Ada', 'Curcuma plus jeruk_200ml.jpeg'),
('MAS032', 'Curvit Sirup 60 mL', 'BTL', 'Obat bebas', 'MAS', 'Sebagai suplemen untuk memperbaiki nafsu makan.', 'Dewasa : 3 kali sehari 1 sendok teh (5 ml)\nAnak 6-12 tahun : 2 kali sehari 1 sendok teh (5 ml)\nAnak 1-6 tahun : 1 kali sehari 1 sendok teh (5 ml)', 'Ada', 'Curvit sirup_60ml.jpg'),
('MAS033', 'Daktarin Krim 5 g', 'TUB', 'Obat bebas terbatas', 'MAS', 'Untuk mengatasi penyakit infeksi kulit yang diakibatkan oleh berbagai jenis jamur serta infeksi yang disebabkan karena bakteri gram positif.', 'Oleskan 2 kali sehari pada bagian kulit yang terinfeksi selama 2-6 minggu', 'Ada', 'Daktarin krim_5g.webp'),
('MAS034', 'Decolgen Tablet', 'STP', 'Obat bebas terbatas', 'MAS', 'Untuk meringankan gejala flu seperti demam, sakit kepala, hidung tersumbat dan bersin-bersin.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER.\nDewasa : 3 x sehari 1 tablet. \nAnak-anak : 25 mg/kg BB sehari dalam dosis terbagi tiap 8 jam', 'Ada', 'Decolgen Tab.webp'),
('MAS035', 'Dehidralyte Larutan Steril 200 ml', 'BTL', 'Obat bebas', 'MAS', 'Untuk pengobatan dan pencegahan dehidrasi ringan hingga sedang akibat muntah dan diare.', 'Sesuai petunjuk dokter', 'Ada', 'Dehidralyte_200ml.jpeg'),
('MAS036', 'Dextamine Kaplet', 'STP', 'Obat keras', 'MAS', 'Sebagai antiinflamasi, antirematik, serta antialergi/antihistamin.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nDewasa : 1 tablet, 3 kali per hari. \nAnak : 1/2 tablet, 3 kali per hari.', 'Ada', 'Dextamine.png'),
('MAS037', 'Dexyl sirup 60 ml', 'BTL', 'Obat bebas terbatas', 'MAS', '', 'Dewasa: 3x sehari 2 sendok teh.\nAnak - anak diatas 2 thn: 3x sehari 1/2 - 1 sendok teh.', 'Ada', 'Dexyl sirup_60ml.webp'),
('MAS038', 'Dulcolactol Sirup 60 ml', 'BTL', 'Obat bebas', 'MAS', 'Untuk menaikkan tekanan osmosa dan suasana asam sehingga feses menjadi lunak.', '- Dewasa : Konstipasi ringan : Awal 15 ml/hari, pemeliharaan 10 ml/hari. Konstipasi sedang : Awal 15-30 ml/hari, pemeliharaan 10-15 ml/hari. Konstipasi berat : Awal 15 ml 2x/hari, pemeliharaan 15-25 ml/hari.\n- Anak 5-10 tahun : Awal 10 ml 2x/hari, pemeliharaan 10 ml/hari.\n- Anak 1-5 tahun : Awal 5 ml 2x/hari, pemeliharaan 5-10 ml/hari.\n- Anak < 1 tahun : Awal 2,5 ml 2x/hari, pemeliharaan 2,5-5 ml/hari.', 'Ada', 'Dulcolactol sirup_60ml.jpeg'),
('MAS039', 'Dulcolax Tablet 5 mg', 'STP', 'Obat bebas terbatas', 'MAS', 'Untuk mengatasi masalah sembelit/susah BAB/konstipasi.', '- Dewasa : Konstipasi ringan : Awal 15 ml/hari, pemeliharaan 10 ml/hari. Konstipasi sedang : Awal 15-30 ml/hari, pemeliharaan 10-15 ml/hari. \n- Konstipasi berat : Awal 15 ml 2x/hari, pemeliharaan 15-25 ml/hari.\n- Anak 5-10 tahun : Awal 10 ml 2x/hari, pemeliharaan 10 ml/hari.\n- Anak 1-5 tahun : Awal 5 ml 2x/hari, pemeliharaan 5-10 ml/hari.\n- Anak < 1 tahun : Awal 2,5 ml 2x/hari, pemeliharaan 2,5-5 ml/hari.', 'Ada', 'Dulcolax Tab_5mg.webp'),
('MAS040', 'Elocon Krim 5 g', 'TUB', 'Obat keras', 'MAS', 'Untuk mengatasi masalah kulit seperti eksim, psoriasis, alergi dan ruam', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nOleskan 1 x sehari', 'Ada', 'Elocon krim_5g.webp'),
('MAS041', 'Em Kapsul', 'BOX', 'Obat herbal (jamu)', 'MAS', 'Untuk melancarkan menstruasi dan meredakan nyeri haid.', '2 kapsul 2 kali sehari, dikonsumsi 4–5 hari sebelum haid', 'Ada', 'Em kapsul.webp'),
('MAS042', 'Encephabol Larutan 100 ml', 'BTL', 'Obat bebas terbatas', 'MAS', 'Untuk meningkatkan metabolisme otak dan transmisi kolinergik sentral.', 'Dewasa : 3 x sehari 2 sendok takar 5 mL\nAnak 6-15 tahun : 3 x sehari 1 sendok takar 5 mL \nAnak < 6 tahun : 0.5-2 sendok takar 5 mL perhari', 'Ada', 'Encephabol_100ml.webp'),
('MAS043', 'Enervon Active Tablet', 'BTL', 'Obat bebas', 'MAS', 'Untuk membantu memelihara daya tahan tubuh, membantu proses metabolisme tubuh, dan membantu pembentukan energi yang dibutuhkan oleh tubuh.', '1 tablet per hari', 'Ada', 'Enervon active Tab.png'),
('MAS044', 'Enervon C Plus Sirup 120 mL', 'BTL', 'Obat bebas', 'MAS', 'Untuk memenuhi kebutuhan Vitamin B Kompleks, Vitamn C, A & D serta memelihara kesehatan anak pada masa pertumbuhan anak.', '- Anak usia 1 - 6 tahun : 1 sendok takar (5 ml), 1 kali per hari.\n- Anak usia 6 - 12 tahun : 2 sendok takar (10 ml), 1 kali per hari.', 'Ada', 'Enervon C plus sirup_120 ml.webp'),
('MAS045', 'Enervon C Tablet', 'BTL', 'Obat bebas', 'MAS', 'Untuk membantu menjaga daya tahan tubuh.', '1 tablet per hari', 'Ada', 'Enervon C Tab_btl.png'),
('MAS046', 'Enervon C Tablet', 'STP', 'Obat bebas', 'MAS', 'Untuk membantu menjaga daya tahan tubuh.', '1 tablet per hari', 'Ada', 'Enervon C Tab_stp.jpg'),
('MAS047', 'Erythromycin Tablet 500 mg', 'STP', 'Obat keras', 'MAS', 'Untuk mengatasi infeksi bakteri di berbagai bagian tubuh, seperti kulit, saluran pernapasan, saluran pencernaan, saluran kemih, dan organ genital.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER.\nProfilaksis infeksi bedah, Infeksi saluran pernapasan, Infeksi kulit dan jaringan lunak, Infeksi Gram-negatif yang rentan, Infeksi Gram-positif yang rentan Dewasa: 1-2 g setiap hari dalam 2-4 dosis terbagi; dapat ditingkatkan hingga 4 g setiap hari untuk infeksi berat. Dosis >1 g harus diberikan dalam lebih dari 2 dosis terbagi. Anak: 30-50 mg/kg sehari dalam 2-4 dosis terbagi; dapat berlipat ganda pada infeksi berat.', 'Ada', 'Erythromycin Tab_500 mg.webp'),
('MAS048', 'Ethambutol Tablet 500 mg', 'STP', 'Obat keras', 'MAS', 'Obat antibiotik yang digunakan untuk mengobati tuberkulosis (TBC), terutama bila diduga telah terjadi resistensi.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nDosis lazim: 15 -25 mg per kg berat badan per hari dosis tunggal. \nPasien yang belum pernah diobati dengan obat anti Tuberkolusis : 15 mg per kg berat badan per hari dosis tunggal. ', 'Ada', 'Ethambutol Tab_500mg.webp'),
('MAS049', 'Farmoten Tablet 25 mg', 'STP', 'Obat keras', 'MAS', 'Untuk menurunkan tekanan darah tinggi pada penderita hipertensi dan sebagai terapi pada gagal jantung.', '- Hipertensi Dewasa Awal 12,5-25 mg, 2-3 kali/hari. \n- Hipertensi ringan-sedang maksimal 150 mg/hari. \n- Hipertensi berat maksimal 450 mg/hari. Gagal jantung 12,5-25 mg, 3 kali/hari.', 'Ada', 'Farmoten Tab_25mg.webp'),
('MAS050', 'Farsifen Kaplet 400 mg', 'STP', 'Obat keras', 'MAS', 'Sebagai Nyeri ringan sampai sedang antara lain nyeri pada penyakit gigi atau pencabutan gigi, nyeri pasca bedah, sakit kepala, gejala artritis reumatoid, gejala osteoartritis, gejala juvenile artritis reumatoid, menurunkan demam pada anak.', '- Dewasa inflamasi & analgesik: 3-4 kali sehari 400mg. \n- Analgesik: 3-4 kali sehari 200-400mg, maks. 2400mg/hari. \n- Anak 8-12th: 3-4 kali sehari 200mg. 3-7th: 3-4 kali sehari 100mg. 1-2th: 3-4 kali sehari 50mg.', 'Ada', 'Farsifen_400mg.jpg'),
('MAS051', 'Fleet Enema cairan 133 ml', 'BTL', 'Obat bebas terbatas', 'MAS', 'Untuk meringankan gangguan sembelit yang datang sewaktu-waktu atau sebagai pencahar sebelum pemeriksaan rektal.', 'Dewasa dan anak > 12 thn 1 tube/hari', 'Ada', 'Fleet Enema_133ml.webp'),
('MAS052', 'FreshCare Citrus Roll On 10 mL', 'BTL', 'Non obat', 'MAS', 'Membantu meredakan perut kembung, pusing, masuk angin dan mabuk perjalanan.', 'Sesuaikan dengan kebutuhan', 'Ada', 'FreshCare Citrus_10mL.webp'),
('MAS053', 'FreshCare Strong Roll On 10 mL', 'BTL', 'Non obat', 'MAS', 'Membantu meredakan perut kembung, pusing, masuk angin dan mabuk perjalanan.', 'Sesuaikan dengan kebutuhan', 'Ada', 'FreshCare Strong_10ml.webp'),
('MAS054', 'Fungiderm Krim 5 g', 'TUB', 'Obat bebas terbatas', 'MAS', 'Untuk infeksi jamur.', 'Sesuaikan dengan kebutuhan', 'Ada', 'Fungiderm krim_5g.webp'),
('MAS055', 'Fusycom Krim 5 g', 'TUB', 'Obat keras', 'MAS', 'Untuk mengatasi infeksi kulit, seperti impetigo, folikulitis, furunkulosis, abses, hidradenitis axillaris, atau eritrasma.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER.\nGunakan 3-4 kali sehari', 'Ada', 'Fusycom krim_5g.webp'),
('MAS056', 'Gentasolon Krim 5 g', 'TUB', 'Obat keras', 'MAS', 'Untuk Pengobatan topikal penyakit kulit misalnya dermatitis atopik, terutama bentuk yang terinfeksi, neurodermatitis, dermatitis seboroik, eksim, dermatitis kontak, dermatitis eksfoliatif, pruritus anogenital.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER.\nOleskan krim 2-3 x sehari', 'Ada', 'Gentasolon krim_5g.webp'),
('MAS057', 'Glibenclamide Kaplet 5 mg', 'STP', 'Obat keras', 'MAS', 'Untuk menurunkan kadar gula darah dengan cara meningkatkan kalsium intraseluler dalam sel beta pankreas sehingga menstimulasi produksi insulin.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \n- Dosis awal: 2.5-5 mg/hari. Dosis dapat disesuaikan sebanyak 2.5 mg dengan interval mingguan sesuai dengan respon pasien. \n- Dosisi maksimal: 20 mg per hari. Dosis di atas 10 mg dapat diberikan dalam 2 dosis terbagi', 'Ada', 'Glibenclamide_5mg.jpg'),
('MAS058', 'Glimepiride Tablet 2 mg', 'STP', 'Obat keras', 'MAS', 'Sebagai terapi tambahan terhadap diet dan olahraga untuk pasien yang tidak menggunakan terapi insulin.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \n- Dosis awal: 1-2 mg, satu kali sehari \n- Dosis pemeliharaan: 1-4 mg, satu kali sehari, dosis maksimum 8 mg, satu kali sehari. \nPada saat pemberian telah mencapai dosis 2 mg maka kenaikan dosis tidak boleh melebihi 2 mg dengan interval 1-2 minggu tergantung dari respon gula darah.', 'Ada', 'Glimepiride Tab_2mg.jpg'),
('MAS059', 'Glucophage Tablet 500 mg', 'STP', 'Obat keras', 'MAS', 'Obat antidiabetes generik yang dapat mengontrol dan menurunkan kadar gula darah pada penderita diabetes tipe 2. ', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \n- Dosis awal: Sehari 2 x 500 mg atau 2 x 850 mg. Dosis dapat ditingkatkan sesuai dengan respon pasien. \n- Dosis maksimal 3000 mg/hari dalam 3 dosis terbagi. \n- Dosis pemeliharaan: Sehari 2 x 850 mg.', 'Ada', 'Glucophage Tab_500mg.jpeg'),
('MAS060', 'Glucosamine MPL Kaplet 500 mg', 'STP', 'Obat bebas', 'MAS', 'Untuk membantu memenuhi kebutuhan nutrisi pada persendian dan sebagai pelumas persendian, sehingga meminimalkan rasa nyeri dan kaku saat digerakkan.', '3 x sehari 1 kaplet', 'Ada', 'Glucosamine MPL_500mg.jpeg'),
('MAS061', 'Gludepatic Tablet 500 mg', 'STP', 'Obat keras', 'MAS', 'Obat antidiabetes generik yang dapat mengontrol dan menurunkan kadar gula darah pada penderita diabetes tipe 2. ', 'Awal : 2 kali sehari 1 tablet. Selanjutnya : 3 kali sehari 1 tablet.', 'Ada', 'Gludepatic Tab_500mg.jpg'),
('MAS062', 'Harnal Ocas Tablet 0,4 mg', 'STP', 'Obat keras', 'MAS', 'Untuk meredakan keluhan akibat pembesaran kelenjar prostat, seperti kesulitan buang air kecil, aliran urine yang lemah, dan rasa ingin selalu buang air kecil.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \n0.5 - 1 Tablet, diminum 1 kali per hari.', 'Ada', 'Harnal Ocas Tab_0,4mg.webp'),
('MAS063', 'Herocyn Baby Powder 100 g', 'BTL', 'Non obat', 'MAS', 'Untuk menjaga kesehatan kulit bayi dari gatal-gatal, kemerahan, serta biang keringat. ', 'Sesuaikan dengan kebutuhan', 'Ada', 'Herocyn bedak_100g.webp'),
('MAS064', 'Herocyn Bedak Bayi 200 g', 'BTL', 'Non obat', 'MAS', 'Untuk memelihara agar kulit bayi tetap sehat, segar, halus dan harum.', 'Sesuaikan dengan kebutuhan', 'Ada', 'Herocyn bedak_200g.webp'),
('MAS065', 'Herocyn Bedak Dewasa 150 g', 'BTL', 'Non obat', 'MAS', 'Untuk membantu meredakan biang kerngat dan gatal-gatal pada kulit.', 'Sesuaikan dengan kebutuhan', 'Ada', 'Herocyn bedak_150g.webp'),
('MAS066', 'Holisticare Super Ester-C Tablet', 'BTL', 'Obat bebas', 'MAS', 'Untuk meningkatkan daya tahan tubuh keluarga.', 'Sesuaikan dengan kebutuhan', 'Ada', 'Holisticare Ester-C Tab_btl.webp'),
('MAS067', 'Holisticare Super Ester-C Tablet', 'STP', 'Obat bebas', 'MAS', 'Untuk meningkatkan daya tahan tubuh keluarga.', 'Sesuaikan dengan kebutuhan', 'Ada', 'Holisticare Ester-C Tab_stp.jpeg'),
('MAS068', 'Hufadon Tablet 10 mg', 'STP', 'Obat keras', 'MAS', 'Untuk meredakan mual dan muntah.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nDewasa: 10 mg, 3 kali sehari. Maks: 30 mg setiap hari. Durasi perawatan maksimal: 7 hari. Gunakan dosis efektif terendah untuk durasi sesingkat mungkin. Anak: Anak umur <12 tahun <35 kg: 0,25 mg/kg diberikan hingga 3 kali sehari. Maks: 0,75 mg/kg setiap hari. Anak umur 12 tahun 35 kg: Sama seperti dosis dewasa.', 'Ada', 'HUFADON 10 MG TABLET.jpg'),
('MAS069', 'Ikaderm Krim 10 g', 'TUB', 'Obat keras', 'MAS', 'untuk meredakan mual dan muntah.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nOleskan salep 1-2 x sehari', 'Ada', 'Ikaderm_Krim_10g.jpg'),
('MAS070', 'Ikagen Salep 10 g', 'TUB', 'Obat keras', 'MAS', 'Untuk mengobati infeksi kulit primer, folikulitis superfisial. Infeksi kulit sekunder, seperti jerawat, ekskoriasi dan peradangan kulit yang disertai dengan infeksi.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nOleskan 2-3 sehari', 'Ada', 'Ikagen_Cream_10g.jpg'),
('MAS071', 'Iliadin Nasal Drops 0.025% - 10 mL', 'BTL', 'Obat bebas terbatas', 'MAS', 'Untuk meredakan hidung tersumbat akibat flu, demam, alergi saluran pernapasan bagian atas lainnya atau infeksi sinus.', 'Anak 2-6 tahun : 2 x sehari 2-3 tetes dalam tiap lubang hidung, pagi & malam, maximum terapi 5-7 hari', 'Ada', 'iliadin_nasal_10ml.jpg'),
('MAS072', 'Imboost Force Kaplet', 'STP', 'Obat bebas', 'MAS', 'Untuk membantu memelihara daya tahan tubuh. Membantu memelihara daya tahan tubuh.', 'Dewasa: 1 kali sehari, 1 kaplet', 'Ada', 'imbost_force.jpg'),
('MAS073', 'Imboost Tablet', 'STP', 'Obat bebas', 'MAS', 'Untuk membantu memelihara daya tahan tubuh. Membantu memelihara daya tahan tubuh.', 'Dewasa: 3 kali sehari 1 tablet', 'Ada', 'imbost_tablet.jpg'),
('MAS074', 'Imodium Tablet 2 mg', 'STP', 'Obat keras', 'MAS', 'Untuk mengobati diare akut dan kronis.', 'Dewasa : awal 2 tablet kemudian 1 tablet setiap habis diare/mencret. Maksimal : 8 tablet/hari. \nAnak >8 tahun : Awal : 1 tablet kemudian sesuai kebutuhan. Maksimal : 4-6 tablet/hari.', 'Ada', 'imodium_2mg.jpg'),
('MAS075', 'Incidal OD Kapsul 10 mg', 'STP', 'Obat bebas terbatas', 'MAS', 'Untuk meredakan gejala alergi, seperti seperti bersin-bersin, hidung gatal dan tersumbat, biduran, atau mata merah dan berair.', 'Dewasa & anak umur >12 tahun: 10 mg sekali sehari. Anak umur 2-6 tahun: 2,5 mg dua kali sehari.', 'Ada', 'incidal_kapsul_10mg.png'),
('MAS076', 'Isosorbid Dinitrat Tablet 5 mg', 'STP', 'Obat keras', 'MAS', 'Untuk menurunkan kebutuhan dan meningkatkan suplai oksigen dengan cara mempengaruhi tonus vaskular.', 'Dosis awal: 5 mg, dapat ditingkatkan 10 mg pada hari ke-2 atau ke-3 sesuai anjuran dokter. \nDosis pemeliharaan: 1 tablet 2 kali per hari. HARUS DENGAN RESEP DOKTER.', 'Ada', 'isosorbide_dinitrate_5mg.jpg'),
('MAS077', 'Itraconazole Kapsul 100 mg', 'STP', 'Obat keras', 'MAS', 'Untuk mengobati berbagai infeksi jamur, terutama infeksi jamur sistemik seperti aspergillosis, kandidiasis, kriptokokosis di mana obat antijamur lain tidak lagi efektif.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nKandidiasis: 1-2 kapsul 1 x per hari selama 3-7 minggu. Dalam kasus invasif dosis ditingkatkan menjadi 2 x per hari. Sporotrikosis: 1 kapsul, 1 x per hari selama 3 bulan. Parakoksidiodomikosis: 1 kapsul, 1 x per hari selama 6 bulan. Kandidiasis vaginal: 2 kapsul, 2x per hari selama 1 hari. Tinea corporis : 1 kapsul, 1 x per hari selama 15 hari Tinea pedis : 1 kapsul, 1 x per hari selama 30 hari', 'Ada', 'Itraconazole_Kapsul_100mg.jpg'),
('MAS078', 'Kanna Krim Lembut 15 g', 'TUB', 'Obat bebas', 'MAS', 'Untuk melembabkan tumit yang kering, serta dapat menghaluskan kembali tumit yang kasar dan pecah-pecah.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nKandidiasis: 1-2 kapsul 1 x per hari selama 3-7 minggu. Dalam kasus invasif dosis ditingkatkan menjadi 2 x per hari. Sporotrikosis: 1 kapsul, 1 x per hari selama 3 bulan. Parakoksidiodomikosis: 1 kapsul, 1 x per hari selama 6 bulan. Kandidiasis vaginal: 2 kapsul, 2x per hari selama 1 hari. Tinea corporis : 1 kapsul, 1 x per hari selama 15 hari Tinea pedis : 1 kapsul, 1 x per hari selama 30 hari', 'Ada', 'Kanna_Krim15g.jpg'),
('MAS079', 'Kenalog In Orabase Salep 5 g', 'TUB', 'Obat keras', 'MAS', 'Untuk mengobati peradangan atau luka di bagian dalam mulut, seperti sariawan atau radang gusi, maupun luka akibat cedera, behel gigi, atau tersodok sikat gigi.', 'Sesuai kebutuhan, gunakan sesering mungkin agar kelembutan tetap terjaga.', 'Ada', 'Kenalog_In_Orabase_Salep_5g.jpg'),
('MAS080', 'Ketoconazole Tablet 200 mg', 'STP', 'Obat keras', 'MAS', 'Untuk mengobati infeksi jamur.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \n2-3 kali sehari.', 'Ada', 'Ketoconazole_Tablet_200mg.jpg'),
('MAS081', 'Ketorolac Tablet 10 mg', 'STP', 'Obat keras', 'MAS', 'Untuk meredakan nyeri sedang hingga berat.', 'Dewasa : 200 mg 1 x sehari. Jika respon tidak ada, dapat ditingkatkan menjadi 400 mg. \nAnak > 2 tahun : 3,3-6,6 mg/kg 1 x sehari. \nSindrom Crushing: Dewasa dan anak > 12 tahun: Dosis awal 400-600 mg, dapat ditingkatkan 200 mg per hari.\nDosis pemeliharaan: 600-800 mg per hari (Max. 1200 mg per hari). Semua dosis diberikan dalam 2 atau 3 dosis terbagi.', 'Ada', 'Ketorolac_Tablet_10mg.jpg'),
('MAS082', 'Lansoprazole Kapsul 30 mg', 'STP', 'Obat keras', 'MAS', 'Untuk mengatasi penyakit-penyakit yang disebabkan oleh kelebihan produksi asam lambung, seperti sakit maag dan tukak lambung.', 'Esofagitis refluks Dewasa: Pengobatan: 30 mg 1 kali sehari, selama 4-8 minggu. Profilaksis: 15 mg 1 kali sehari, dapat ditingkatkan hingga 30 mg jika perlu. Refluks gastro-esofagus Dewasa: 15-30 mg 1 kali sehari, selama 4 minggu. Ulserasi terkait NSAID Dewasa: 30 mg sekali sehari selama 4-8 minggu. Sindrom Zollinger-Ellison Dewasa: Awalnya, 60 mg 2 kali sehari, dapat disesuaikan hingga 180 mg setiap hari sesuai respons. Dosis harian >120 mg harus diberikan dalam 2 dosis terbagi. Eradikasi H. pylori Dewasa: Sebagai terapi rangkap 3: 30 mg 2 kali sehari, selama 7-14 hari (dalam kombinasi dengan antibiotik). Sebagai terapi ganda: 30 mg tiga kali sehari selama 14 hari dalam kombinasi dengan amoksisilin. Tukak lambung/duodenum karena NSAID Dewasa: 15-30 mg 1 kali sehari. Tukak Peptik/ Peptic Ulcer Dewasa: 30 mg 1 kali sehari, selama 2-4 minggu (ulkus duodenum) atau selama 4-8 minggu (tukak lambung). Lansia: Maks: 30 mg per hari.', 'Ada', 'Lansoprazole_Kapsul_30mg.jpg'),
('MAS083', 'Lasix Tablet 40 mg', 'STP', 'Obat keras', 'MAS', 'Untuk mengatasi pembengkakan atau edema yang disebabkan oleh kondisi penyakit hati dan penyakit ginjal.', 'Edema: Dewasa: Dosis Awal: 40 mg per hari, dosis dpat diturunkan menjadi 20 mg perhari. Dalam beberapa kasus, mungkin diperlukan 80 mg atau lebih per hari dalam dosis terbagi. Lansia: dosis awal: 20 mg per hari, dan dapat ditingkatkan jika diperlukan. Hipertensi: Dewasa: 40-80 mg per hari sebagai terapi tunggal atau dikombinasikan dengan antihipertensi lain.', 'Ada', 'Lasix_Tablet_40 mg.jpg'),
('MAS084', 'Lerzin Kapsul 10 mg', 'STP', 'Obat keras', 'MAS', 'Untuk meredakan gejala alergi seperti mata dan hidung berair, gatal pada mata dan hidung, bersin-bersin, dan gatal pada kulit.', 'Kondisi alergi Dosis yang dianjurkan: Dewasa & anak umur >12 tahun: 10 mg sekali sehari. Anak umur 2-6 tahun: 2,5 mg dua kali sehari. Anak umur 6-12 tahun: 5 mg dua kali sehari. Lansia: Belum ada data untuk menurunkan dosis pada pasien lansia. Insufisiensi ginjal: dosis 1/2 kali dosis yang dianjurkan.', 'Ada', 'Lerzin_Kapsul_10mg.jpg'),
('MAS085', 'Mecobalamin Kapsul 500 mcg', 'STP', 'Obat keras', 'MAS', 'Untuk mengobati neuropati perifer (saraf tepi) dan anemia megaloblastik yang disebabkan oleh defisiensi vitamin B12.', '3 x sehari 1 kapsul, dapat menyesuaikan dosis tergantung pada usia dan tingkat keparahan pasien', 'Ada', 'Mecobalamin_Kapsul_500mcg.jpg'),
('MAS086', 'Meloxicam Tablet 15 mg', 'STP', 'Obat keras', 'MAS', 'Untuk meredakan gejala-gejala arthritis, misalnya peradangan, pembengkakan, serta kaku dan nyeri otot. ', '- Dewasa: Rhematoid Astritis dan Ankylosing Spondylitis: 15 mg, 1 kali per hari. Dapat diturunkan menjadi 7.5 mg, 1 kali per hari berdasarkan respon terapetik. \n- Osteo Astritis: 7.5 mg, 1 kali per hari. Dapat ditingkankan s/d 15 mg, 1 kali per hari. \n- Anak >60 kg: Artritis idiopatik juvenil: 7,5 mg sekali sehari. Lansia dan pasien ginjal: 7.5 mg, 1 kali per hari.', 'Ada', 'Meloxicam_Tablet_15mg.jpg'),
('MAS087', 'Meloxicam Tablet 7,5 mg', 'STP', 'Obat keras', 'MAS', 'Untuk meredakan gejala-gejala arthritis, misalnya peradangan, pembengkakan, serta kaku dan nyeri otot. ', 'Dosis: OA: 7,5 mg 1 x sehari, dosis dapat ditingkatkan s/d 15 mg 1 x sehari. AR : 15 mg 1 x sehari, dapat dikurangi s/d 7,5 mg 1 x sehari, tergantung respon klinis. Lansia: 7,5 mg per hari untuk terapi jangka panjang.', 'Ada', 'Meloxicam_Tablet_7,5mg.jpg'),
('MAS088', 'Merislon Tablet 6 mg', 'STP', 'Obat keras', 'MAS', 'Untuk mengobati vertigo, tinitus dan gangguan pendengaran yang terkait dengan penyakit meniere.', 'Dosis yang dianjurkan: 6-12 mg 3x sehari', 'Ada', 'Merislon_Tablet_6mg.jpg'),
('MAS089', 'Metformin Hexpharm Tablet 500 mg', 'STP', 'Obat keras', 'MAS', 'Untuk Penurun gula darah bagi penderita kencing manis (diabetes mellitus).', 'Dosis awal: Sehari 2 x 500 mg atau 2 x 850 mg. Dosis dapat ditingkatkan sesuai dengan respon pasien. Dosis maksimal 3000 mg/hari dalam 3 dosis terbagi. Dosis pemeliharaan: Sehari 2 x 850 mg.', 'Ada', 'Metformin_Hexpharm_500mg.jpg'),
('MAS090', 'Methylprednisolone Tablet 4 mg', 'STP', 'Obat keras', 'MAS', 'Untuk meredakan peradangan pada berbagai kondisi, termasuk radang sendi, radang usus, asma, psoriasis, lupus, hingga multiple sclerosis.', '- Dosis awal : Dewasa : 4 - 80 mg/hari. Anak : 0.8 - 1.1 mg/kg BB. \n- Dosis pemeriharaan : Dewasa : 4 - 8 mg/hari dosis ditingkatkan menjadi 16 mg/hari. Anak : 2 - 4 mg/hari, dapat ditingkatkan sampai 8 mg/hari. \n- Dosis substitusi : 4 - 8 mg/hari, dalam keadaan stres ditingkatkan menjadi 16 mg/hari.', 'Ada', 'Metformin_Hexpharm_500mg.jpg'),
('MAS091', 'Motilium Tablet 10 mg', 'STP', 'Obat keras', 'MAS', 'Untuk menangani gejala mual, muntah, nyeri perut, serta ketidaknyamanan akibat terlalu banyak makan serta penyakit GERD yang biasa menyebabkan keluhan seperti mulut terasa asam, begah, dan nyeri ulu hati.', 'Dewasa: 10 mg, 3 kali sehari. Maks: 30 mg setiap hari. Durasi perawatan maksimal: 7 hari. ', 'Ada', 'Motilium_Tablet_10mg.jpg'),
('MAS092', 'Mycoral Krim 5 g', 'TUB', 'Obat bebas terbatas', 'MAS', 'Untuk infeksi dermatofita pada kulit atau kuku tangan (tidak pada kuku kaki), kandidiasis mukokutan kronis yang tidak responsif terhadap nistatin dan obat-obat lain, infeksi mikosis sistemik (kandidiasis, paraksidioidomikasis, cocci dioidomycosis, hiptoplasmosis).', 'Dewasa: Oleskan 1 sampai 2 kali per hari pada tempat yang infeksi. Durasi Pengobatan: P. Versikolor (2-3 minggu), T. Korporis (3-4 minggu), T. Pedis (4-6 minggu), T. Kruris (2-4 minggu), Infeksi ragi (2-3 minggu), Dermatitis Seboroik (2-4 minggu)', 'Ada', 'Mycoral_Krim_5g.jpg'),
('MAS093', 'Myco-Z Salep 10 g', 'TUB', 'Obat keras', 'MAS', 'Untuk mengatasi infeksi kulit yang diakibatkan oleh jamur (mikosis) seperti intertrigo (infeksi jamur yang biasa terdapat pada lipatan di bawah payudara, paha, dan daerah kemaluan), paronikia, mikosis interdigitalis (jamur pada sela-sela jari tangan dan kaki), ruam kulit dan penyakit jamur kulit lainnya.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nOleskan salep 2-4 x sehari', 'Ada', 'Myco-Z_Salep_10g.jpg'),
('MAS094', 'Natrium Diklofenak Tablet 50 mg', 'STP', 'Obat keras', 'MAS', 'Sebagai terapi awal untuk membantu mengobati rematik yang disertai inflamasi dan degeneratif (artritis rematoid, ankylosing spondylitis, osteoartritis dan spondilartritis), sindroma nyeri dan kolumna vertebralis, rematik non-artikular, serangan akut dari gout, nyeri pascabedah.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nDewasa dan Anak diatas 14 tahun: 25 mg atau 50 mg, 2 sampai 3 kali per hari.', 'Ada', 'Natrium_Diklofenak_Tablet_50mg.jpg'),
('MAS095', 'Natur-E Daily Nourishing 100 IU Kapsul', 'BOX', 'Obat bebas', 'MAS', 'Untuk menambah kesuburan, menghaluskan kulit, regenerasi sel, mencegah penuaan dini.', 'Dewasa: 1-2 tablet perhari, sesudah makan.', 'Ada', 'Natur-E_Daily_Nourishing_100 IU Kapsul.jpg'),
('MAS096', 'Neozep Forte Tablet', 'STP', 'Obat bebas terbatas', 'MAS', 'Untuk meringankan gejala flu seperti demam, sakit kepala, hidung tersumbat dan bersin-bersin.', 'Dewasa: 3-4 x sehari 1 tablet \nAnak usia 6-12 tahun: 3-4 x sehari setengah tablet.', 'Ada', 'Neozep_Forte_Tablet.png'),
('MAS097', 'Neuralgin RX Kaplet', 'STP', 'Obat bebas terbatas', 'MAS', 'Untuk mengatasi nyeri akibat berbagai kondisi, mulai dari nyeri sendi, nyeri saraf, sakit kepala, sakit gigi, nyeri haid, hingga nyeri pascaoperasi.', 'Dewasa : 3-4 x sehari 1-2 kaplet. \nAnak : 3-4 x sehari 1/2-1 kaplet.', 'Ada', 'Neuralgin_RX_Kaplet.jpg'),
('MAS098', 'Neurobion Forte Tablet', 'STP', 'Obat bebas', 'MAS', 'Untuk mencegah dan mengatasi kebas serta kesemutan akibat kekurangan vitamin neurotropik.', 'Dewasa: 1 tablet, 1 kali per hari atau sesuai dengan anjuran dokter.', 'Ada', 'Neurobion_Forte_Tablet.jpg'),
('MAS099', 'Neurobion Tablet', 'STP', 'Obat bebas', 'MAS', 'Suplemen ini digunakan untuk pencegahan dan pengobatan penyakit karena kekurangan Vitamin B1, B6, B12, seperti neuritis perifer, neuralgia.', '1 tablet, diminum 1 kali per hari atau sesuai anjuran dokter.', 'Ada', 'Neurobion_Tablet.jpg'),
('MAS100', 'Nifedipine Tablet 10 mg', 'STP', 'Obat keras', 'MAS', 'Untuk mengobati hipertensi dan angina.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \n1 kali sehari 1 tablet. Terapi Awal : 1 kali sehari 30 mg. Dosis Awal : 1 kali sehari 20 mg dapat dipertimbangkan jika ada indikasi medis. Tablet tidak boleh dikunyah atau dihancurkan.', 'Ada', 'Nifedipine_Tablet_10mg.jpg'),
('MAS101', 'OBH Combi Batuk Plus Flu Rasa Menthol Sirup 60 mL', 'BTL', 'Obat bebas terbatas', 'MAS', 'Untuk meredakan batuk yang disertai gejala flu seperti deman, sakit kepala, bersin dan hidung tersumbat.', 'Dewasa dan anak-anak di atas 12 tahun : sehari 3 x 15 ml', 'Ada', 'OBH Combi_60mL.jpg'),
('MAS102', 'Ondansetron Tablet 4 mg', 'STP', 'Obat keras', 'MAS', 'Untuk meredakan mual dan muntah akibat kemoterapi serta pencegahan mual dan muntah paska operasi.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nPencegahan mual muntah paska operasi Dewasa dan anak >17 tahun: Awal 8 mg per oral 1-2 jam sebelum anestesi, dilanjutkan dengan 8 mg setelah 8-12 jam.\nAnak 4-11 tahun: 4 mg 30 menit sebelum kemoterapi. Ulangi dosis setelah 4 dan 8 jam dari dosis awal Mual muntah paska operasi: 16 mg dosis tunggal 1 jam sebelum anestesi. Mual dan muntah yang diinduksi terapi radiasi: 8 mg per oral 1-2 jam sebelum radioterapi', 'Ada', 'Ondansetron_Tablet_4mg.jpg'),
('MAS103', 'Panadol Extra Kaplet', 'STP', 'Obat bebas', 'MAS', 'Untuk meringankan sakit kepala dan sakit gigi.', 'Dewasa dan anak-anak lebih dari 12 tahun : 1 Kaplet, ditelan dengan segelas air, 3-4 kali sehari bila gejala memburuk. Tidak melebihi 8 kaplet dalam 24 jam. Minimum interval penggunaan dosis adalah 4 jam.', 'Ada', 'Panadol_Extra_Kaplet.png'),
('MAS104', 'Panadol Kaplet 500 mg', 'STP', 'Obat bebas', 'MAS', 'Untuk meredakan nyeri ringan hingga sedang seperti sakit kepala, sakit gigi, sakit pada otot, serta menurunkan demam.', 'Dewasa dan anak usia lebih dari 12 tahun : 1 - 2 kaplet, 3-4 kali sehari (Maksimum 8 kaplet dalam 24 jam). \nAnak-anak usia 6-11 tahun : 1/2 - 1 kaplet, 3-4 kali sehari (maksimum 4 kaplet dalam 24 jam). Minimum interval penggunaan dosis adalah 4 jam. Jangan melebihi dosis yang dianjurkan, atau menurut aturan dokter.', 'Ada', 'Panadol_Kaplet_500mg.jpeg'),
('MAS105', 'Paracetamol Kaplet 500 mg', 'STP', 'Obat bebas', 'MAS', 'Untuk meredakan nyeri ringan hingga sedang seperti sakit kepala, sakit gigi, nyeri otot, serta menurunkan demam.', 'Dewasa: 1-2 kaplet, 3-4 kali per hari. Penggunaan maximum 8 kaplet per hari. \nAnak 7-12 tahun : 0.5 - 1 kaplet, 3-4 kali per hari. Penggunaan maximum 4 kaplet per hari.', 'Ada', 'Paracetamol_Kaplet_500mg.jpeg'),
('MAS106', 'Pharmaton Formula Kapsul', 'STP', 'Obat bebas', 'MAS', 'Efektif mengurangi rasa letih, meningkatkan stamina pada saat aktivitas fisik, mendukung memori dan kemampuan belajar, serta dapat membantu menstabilkan emosi.', 'Sesuai kebutuhan', 'Ada', 'Pharmaton_Formula_Kapsul.jpg'),
('MAS107', 'Piroxicam Kapsul 10 mg', 'STP', 'Obat keras', 'MAS', 'Digunakan sebagai terapi simptomatik rheumatoid arthitis, osteoarthritis, ankilosing spondilitis, gangguan muskuloskeletal akut dan gout akut.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nAR, OA, ankilosa spondilitis : 1 x sehari 20mg ; Gangguan muskoloskeletal akut : 40 mg/hari dalam dosis tunggal atau terbagi selama 2 hari, kemudian 1 x sehari 20 mg selama 7-14 hari ; Gout akut : dosis awal 40 mg /hari dalam dosis tunggal, kemudian 40mg dosis tunggal atau terbagi selama 4-6 hari. Tidak untuk terapi gout jangka panjang\n', 'Ada', 'Piroxicam_Kapsul_10mg.jpg'),
('MAS108', 'Piroxicam Kapsul 20 mg', 'STP', 'Obat keras', 'MAS', 'Digunakan sebagai terapi simptomatik rheumatoid arthitis, osteoarthritis, ankilosing spondilitis, gangguan muskuloskeletal akut dan gout akut.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nAR, OA, ankilosa spondilitis : 1 x sehari 20mg. Gangguan muskoloskeletal akut : 40 mg/hari dalam dosis tunggal atau terbagi selama 2 hari, kemudian 1 x sehari 20 mg selama 7-14 hari. Gout akut : dosis awal 40 mg /hari dalam dosis tunggal, kemudian 40 mg dosis tunggal atau terbagi selama 4-6 hari. Tidak untuk terapi gout jangka panjang', 'Ada', 'Piroxicam_Kapsul_20mg.jpg'),
('MAS109', 'Propranolol Tablet 10 mg', 'STP', 'Obat keras', 'MAS', 'Untuk terapi hipertensi, angina, aritmia, pencegahan migrain.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nDewasa dan anak > 12 tahun untuk hipertensi : 20 mg, 3-4 kali sehari; aritmia : 10-20 mg, 3-4 kali sehari; angina : 10-20 mg, 3-4 kali sehari; mencegah migrain : 40 mg,2-3 kali sehari. \nAnak-anak : aritmia : 0,5 mg/kgBB/hari dibagi 3-4 kali pemberian; hipertensi : 1-3 mg/kgBB/hari dibagi 3 kali pemberian.\n', 'Ada', 'Propranolol_Tablet_10mg.jpg'),
('MAS110', 'Ranitidine Tablet 150 mg', 'STP', 'Obat keras', 'MAS', 'Untuk tukak lambung dan tukak duodenum, refluks esofagitis, dispepsia episodik kronis, tukak akibat AINS, tukak duodenum karena H.pylori, sindrom Zollinger-Ellison, kondisi lain dimana pengurangan asam lambung.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nUlserasi NSAID: 150 mg (1 tab) 2 kali sehari atau 300 mg (2 tab) sebelum tidur selama 8 minggu Dispepsia: 150 mg (1 tab) dalam 2 dosis selama 6 minggu Refluks gastro-esofagus: 150 mg (1 tab) 2 kali sehari atau 300 mg (2 tab) sebelum tidur selama 8-12 minggu Ulkus duodenum (H.Pylori): 150 mg (1 tab) dalam 2 dosis terbagi atau 300 mg (2 tab) sebelum tidur diberikan dengan amoksisilin dan metronidazol selama 2 minggu. Ulkus lambung dan duodenum jinak: Dewasa dan anak > 12 tahun: 150 mg (1 tab) 2 kali sehari atau 300 mg (2 tab) sebelum tidur selama 4 minggu Anak 3-11 tahun: 4-8 mg/kg setiap hari dalam 2 dosis terbagi maks.300 mg selama 4-8 minggu', 'Ada', 'Ranitidine_Tablet_150mg.png'),
('MAS111', 'Recolfar Tablet 0,5 mg', 'STP', 'Obat keras', 'MAS', 'Untuk mencegah dan mengatasi serangan gout (gejala asam urat).', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nArtritis gout akut awal : 0.5 - 1.2 mg diikuti dengan 0.5 mg tiap 2 jam sampai nyeri mereda atau timbul mual, muntah atau diare. Dosis rata-rata : 4 - 8 mg. Profilaksis jangka pendek selama awal terapi dengan alopurinol dan obat urikosurik : 0.5 mg 1 kali seminggu atau sampai dengan 1 kali sehari.', 'Ada', 'Recolfar_Tablet_0,5mg.png'),
('MAS112', 'Redoxon Triple Action Tablet Effervescent', 'TUB', 'Obat bebas', 'MAS', 'Untuk membantu menjaga daya tahan tubuh.', 'Dewasa dan anak-anak di atas 12 tahun: 1 tablet effervescent per hari.', 'Ada', 'Redoxon_Triple_Action_Tablet_Effervescent.jpg'),
('MAS113', 'Rifampicin Kaplet 600 mg', 'STP', 'Obat keras', 'MAS', 'Untuk mengobati berbagai penyakit infeksi yang disebabkan oleh bakteri.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nTuberkulosa : - Dewasa 450-600 mg sekali sehari dikombinasi dengan obat antituberkulosis lain, \n- Anak berumur 12 tahun ke bawah : 10-20 mg/kg berat badan sekali sehari. \nLepra : 600 mg sekali sebulan dikombinasi dengan anti leprotik lainnya.', 'Ada', 'Rifampicin_Kaplet_600mg.png'),
('MAS114', 'Salbutamol Tablet 2 mg', 'STP', 'Obat keras', 'MAS', 'Untuk mengobati bronkospasme (misalnya penyakit asma karena alergi tertentu, asma bronkial, bronkitis asmatis, emfisema pulmonum), dan penyakit paru obstruktif kronik (PPOK).', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \n- Dewasa : 3-4 kali sehari 2-4 mg tablet. \n- Anak-anak berusia 6-12 tahun : 2 kali sehari 2 mg. \n- Anak berusia 2-6 tahun : 3 kali sehari 1-2 mg.', 'Ada', 'Salbutamol_Tablet_2mg.jpg'),
('MAS115', 'Salbutamol Tablet 4 mg', 'STP', 'Obat keras', 'MAS', 'Untuk mengobati asma bronkial, bronkitis kronis, emfisema.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \n- Dewasa : 3-4 kali sehari 2-4 mg tablet. \n- Anak-anak berusia 6-12 tahun : 2 kali sehari 2 mg. \n- Anak berusia 2-6 tahun : 3 kali sehari 1-2 mg.', 'Ada', 'Salbutamol_Table_ 4mg.jpg'),
('MAS116', 'Skizon Krim 10 g', 'TUB', 'Obat keras', 'MAS', 'Untuk mengobati penyakit kulit, gatal-gatal pada kulit dan peradangan kulit lainnya yang responsif terhadap kortikosteroid.', 'Oleskan tipis-tipis Skizon cream pada daerah lesi 1 atau 2 kali sehari (pagi dan malam hari)', 'Ada', 'Skizon_Krim_10g.jpg'),
('MAS117', 'Sterimar Nose Hygiene and Comfort 50 ml', 'BTL', 'Obat bebas', 'MAS', 'Untuk melembabkan membran nasal (hidung) yang kering dan meradang karena pilek, alergi, kelembaban yang rendah, dan iritasi hidung yang lainnya pada anak-anak maupun dewasa.', '2-6 kali semprotan per hari tiap lubang hidung (atau lebih jika diperlukan). Disarankan untuk penggunaan sebelum tidur atau membersihkan hidung sehari-hari.', 'Ada', 'Sterimar_Nose_50ml.jpg'),
('MAS118', 'Sucralfate Suspensi 100 ml', 'BTL', 'Obat keras', 'MAS', 'Untuk mengatasi peradangan pada lambung (gastritis) dan mencegah perdarahan saluran cerna yang bekerja dengan cara membentuk lapisan pelindung pada tukak untuk melindunginya dari infeksi dan kerusakan lebih lanjut.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nDewasa : 4 x sehari 1 g (2 sendok takar)', 'Ada', 'Sucralfate Suspensi_100ml.png'),
('MAS119', 'Tantum Verde Oral Rinse 60 mL', 'BTL', 'Obat bebas terbatas', 'MAS', 'Untuk meringankan rasa sakit pada mulut dan tenggorokan, post ekstraksi gigi dan kelainan periodontal.', 'Dikumur-kumur 2-3 kali per hari sebanyak 1 sendok makan (15 ml) selama 1 menit.', 'Ada', 'Tantum Verde_60mL.jpg'),
('MAS120', 'Thecort Krim 5 g', 'TUB', 'Obat keras', 'MAS', 'Untuk mengatasi inflamasi dan infeksi kulit yang disebabkan oleh jamur.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nOleskan sehari 1-2 x sesuai dengan luasnya lesi', 'Ada', 'Thecort Krim_5g.jpg'),
('MAS121', 'Thrombogel Gel 10 g', 'TUB', 'Obat bebas terbatas', 'MAS', 'Untuk  mengatasi memar akibat cedera saat berolahraga atau kecelakaan atau phlebitis superfisial.', '2-3 kali sehari dioleskan tipis pada kulit.', 'Ada', 'Thrombogel Gel_10g.jpg'),
('MAS122', 'Thrombophob Gel 20 g', 'TUB', 'Obat bebas terbatas', 'MAS', 'Untuk flebitis superfisial, penyempitan pembuluh vena, cedera karena olahraga dan kecelakaan.', '2-3 kali sehari dioleskan tipis pada kulit.', 'Ada', 'Thrombophob Gel_20g.jpg'),
('MAS123', 'Thrombophob Ointment 15 g', 'TUB', 'Obat bebas terbatas', 'MAS', 'Untuk phlebitis permukaan, penyumbatan pembuluh balik (vena) yang berlebihan, cedera saat berolahraga dan kecelakaan.', '2-3 kali sehari dioleskan tipis pada kulit. Dapat juga dioleskan pada sepotong kain kasa lalu ditempelkan pada bagian yang sakit. Jangan digososk atau diurut pada trombosis dan trombophlebitis.', 'Ada', 'Thrombophob Ointment_15g.jpg'),
('MAS124', 'Urispas Tablet 200 mg', 'STP', 'Obat keras', 'MAS', 'Untuk mengatasi gejala yang timbul pada pada saluran kemih seperti disuria, urgensi, nokturia, inkontinensia dan nyeri kandung kemih yang disebabkan oleh peradangan atau infeksi pada saluran kemih.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nDewasa dan anak berusia lebih dari 12 tahun : 3-4 kali sehari 200 mg.', 'Ada', 'Urispas Tablet_200mg.jpg'),
('MAS125', 'Ventolin Nebules 2,5 ml', 'AMP', 'Obat keras', 'MAS', 'Untuk meringankan gejala-gejala asma dengan cepat pada saat serangan asma berlangsung dan mampu mengobati Penyakit Paru Obstruktif Kronik (PPOK).', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \nDewasa & anak: Awal 2.5 mg, lalu dapat ditingkatkan s/d 5 mg. Dapat diulangi 4 kali per hari dengan nebulizer. Obstruksi saluran napas berat dewasa s/d 40 mg per hari.', 'Ada', 'Ventolin Nebules_2,5ml.jpg'),
('MAS126', 'Vicee 500 Rasa Lemon Tablet', 'STP', 'Obat bebas', 'MAS', 'Untuk membantu memenuhi kebutuhan vitamin C tubuh.', 'Dewasa 1-2 tablet per hari', 'Ada', 'Vicee 500 _Rasa Lemon.png');
INSERT INTO `produk` (`id_produk`, `nama_produk`, `satuan_unit`, `kategori`, `id_supplier`, `kegunaan`, `dosis`, `status_produk`, `img`) VALUES
('MAS127', 'Voltadex Tablet 50 mg', 'STP', 'Obat keras', 'MAS', 'Untuk mengatasi nyeri, rasa kaku, dan bengkak yang disebabkan peradangan sendi, sepertirheumatoid arthritisdanosteoartritis.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \n- Dewasa dan Anak diatas 12 tahun : 50-75 mg, 2 - 3 kali per hari. Max. 150 mg per hari. \n- Anak < 12 tahun : 1-3 mg/kg, 2-3 kali per hari.', 'Ada', 'Voltadex Tablet_50mg.jpg'),
('MAS128', 'Voltaren Tablet 50 mg', 'STP', 'Obat keras', 'MAS', 'Untuk membantu mengobati rematik yang disertai inflamasi dan degeneratif (artritis rematoid, ankylosing spondylitis, osteoartritis dan spondilartritis), sindroma nyeri dan kolumna vertebralis, rematik non-artikular, serangan akut dari gout, nyeri pascabedah.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \n- Dewasa dan Anak diatas 12 tahun : 50-75 mg, 2 - 3 kali per hari. Max. 150 mg per hari. \n- Anak < 12 tahun : 1-3 mg/kg, 2-3 kali per hari.', 'Ada', 'Voltaren Tablet_50 mg.jpg'),
('MAS129', 'Vometa FT Tablet 10 mg', 'STP', 'Obat keras', 'MAS', 'Untuk meredakan mual dan muntah, serta mengatasi gangguan saluran cerna, seperti gastroparesis.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \n- Dewasa: 10 mg, 3 kali sehari. Maks: 30 mg setiap hari. Durasi perawatan maksimal: 7 hari. Gunakan dosis efektif terendah untuk durasi sesingkat mungkin. \n- Anak umur <12 tahun <35 kg: 0,25 mg/kg diberikan hingga 3 kali sehari. Maks: 0,75 mg/kg setiap hari. \n- Anak umur 12 tahun 35 kg: Sama seperti dosis dewasa.', 'Ada', 'Vometa FT_Tablet_10 mg.jpg'),
('MAS130', 'Zoloral Krim 10 g', 'TUB', 'Obat bebas terbatas', 'MAS', 'Untuk tinea korporis (kurap), tinea cruris (ruam merah di bagian paha dalam, area kelamin, dan bokong), tinea manus, tinea pedis (kutu air), tinea versicolor (panu), kandidiasis kulit.', '- Tinea korporis, tinea manus, tinea pedis, kandidiasis kutis : oleskan sehari 1 kali pada kulit yang terinfeksi. \n- Tinea Cruris, Tinea Versicolor (panu) : oleskan 1 kali sehari selama 2 minggu.', 'Ada', 'Zoloral Krim_10 g.jpg'),
('MBS001', 'Hot in Strong Cream 60 g', 'TUB', 'Non obat', 'MBS', 'Meredakan pegal-pegal, nyeri otot dan sendi akibat trauma (memar dan keseleo) ataupun nyeri otot pada punggung.', 'Sesuaikan dengan kebutuhan', 'Ada', 'Hot in Strong.jpg'),
('MBS002', 'Intrizin Tablet 10 mg', 'STP', 'Obat keras', 'MBS', 'Untuk mengobati berbagai kondisi alergi.', 'Kondisi alergi Dosis yang dianjurkan: Dewasa & anak umur >12 tahun: 10 mg sekali sehari. \nAnak umur 2-6 tahun: 2,5 mg dua kali sehari.', 'Ada', 'Intrizin Tablet 10 mg.jpeg'),
('MBS003', 'Otopain Tetes Telinga 8 ml', 'BTL', 'Obat keras', 'MBS', 'Untuk mengatasi penyakit infeksi pada telinga dengan beberapa gejalanya berupa rasa nyeri, bengkak, gatal dan telinga berair.', 'PENGGUNAAN OBAT INI HARUS SESUAI DENGAN PETUNJUK DOKTER. \n2-4 x sehari 4-5 tetes', 'Ada', 'Otopain TetesTelinga.jpg'),
('MU001', 'ByeBye Fever Anak', 'SCH', 'Non obat', 'MU', 'Kompres demam dan nyeri yang lembut di kulit, aman digunakan bersama obat, dan memiliki daya lekat kuat.', 'Setiap 10 jam, bila perlu.', 'Ada', 'ByeBye Fever Anak.jpg'),
('MU002', 'Byebye Fever Baby Sachet', 'SCH', 'Non obat', 'MU', 'Plester yang digunakan untuk meringankan efek tidak nyaman karena demam, sakit gigi, sakit kepala.', 'Setiap 10 jam, bila perlu.', 'Ada', 'Byebye Fever Baby.jpg'),
('MU003', 'FG Troches Tablet', 'STP', 'Obat keras', 'MU', 'Untuk mengatasi infeksi bakteri pada rongga mulut, seperti radang tenggorokan atau sariawan.', 'Dewasa: 1 - 2 tablet, dihisap 4 - 5 kali perhari. Anak-anak : 1 tablet, dihisap 4 - 5 kali perhari. \nHARUS DENGAN RESEP DOKTER. Jangan mengkonsumsi obat ini dalam waktu lebih dari 1 minggu.', 'Ada', 'FG Troches Tablet.jpg'),
('MU004', 'Salonpas Koyo', 'SCH', 'Non obat', 'MU', 'Membantu meredakan rasa nyeri yang disebabkan oleh nyeri otot, nyeri sendi, terkilir, dan punggung pegal.', 'Dewasa dan anak > 12 tahun: 3-4 kali sehari. \nAnak usia < 12 tahun: konsultasi ke dokter.', 'Ada', 'Salonpas Koyo.png');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` varchar(5) NOT NULL,
  `nama_supplier` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `notelp_supplier` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `email`, `alamat`, `notelp_supplier`) VALUES
('AMS', 'Antarmitra Sembada', 'contactus@ams.co.id', 'Jl. Asoka No. 95/97 Kelurahan Asam Kumbang, Kecamatan Medan 20122', '(061) 80015580'),
('BSP', 'Bina San Prima', 'bspmdn@binasanprima.com', 'Jl. Gatot Subroto KM 5,5 No. 210AB Kel. Sei Sikambing CII Kec. Medan Helvetia 20123', '(061) 8443113'),
('GMP', 'Global Mitra Prima', 'gmp.medan@gmail.com', 'Jl. Budi Luhur No. 196 Medan - 20123', '(061) 8444555'),
('MA', 'Mekada Abadi', 'mekadaabadi@ma.co.id', 'Jl. Kapten Muslim No.235, Helvetia Tengah, Kec. Medan Helvetia, Kota Medan, Sumatera Utara 20124', '(061) 8471900'),
('MAS', 'Menara Abadi Sentosa', 'mas@menara.com', 'Jl. Pancing No.20, Kenangan Baru, Kec. Percut Sei Tuan, Medan, Sumatera Utara 20371', '(061) 7332182'),
('MBS', 'Mensa Binasukses', 'kacabmdn@mbs.co.id', 'Jl. Tempua No.36, Sei Sikambing B, Kec. Medan Sunggal, Kota Medan, Sumatera Utara 20122', '(061) 420-08266'),
('MU', 'Merapi Utama', 'mupmdn@merapi.net', 'Jalan Tapian Nauli, Pasar 1 No. 5, Sunggal, Kec. Medan Sunggal, Kota Medan, Sumatera Utara 20133', '(061) 8449505');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `no_telp` varchar(16) DEFAULT NULL,
  `alamat` varchar(256) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `email`, `nama`, `no_telp`, `alamat`, `password`) VALUES
(1, 'tanjess676@gmail.com', 'Jess', '0895321059820', 'Jalan Medan no 199', '$2y$10$uR.bMemX8Uhat3WiCxGdwe3TocYBzOowK7DPrUzh52NveL/ExRjSW'),
(2, 'budi.ganteng@gmail.com', 'Budi', NULL, NULL, '$2y$10$yB1aKB3asRbAOLgKKUcnIezFs4FzN36v3GYuR2yb19ZC20jqlNiQK'),
(3, 'feliciasalimm02@gmail.com', 'Felicia Salim', '0812345678910', 'Jalan Glugur', '$2y$10$ToRTRIthYiQZHBPucnvGvuk2CmiBusy1kDbVlD4q2GQkrbvWb9BdK'),
(4, 'felicia@gmail.com', 'felicia', '000', 'situ', '$2y$10$qn0Vb48t25HfLK8pUFi6jupsXKFVbqve.lcZM4fgqq32Ts.iDRNhG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`id_batch`),
  ADD KEY `id_produk_constraint` (`id_produk`);

--
-- Indexes for table `detail_invoice_apotek`
--
ALTER TABLE `detail_invoice_apotek`
  ADD PRIMARY KEY (`id_detail_inv_apotek`),
  ADD KEY `no_pembelian` (`no_pembelian`);

--
-- Indexes for table `detail_invoice_pelanggan`
--
ALTER TABLE `detail_invoice_pelanggan`
  ADD PRIMARY KEY (`id_detail_inv_pelanggan`),
  ADD KEY `id_produk` (`nama_produk`),
  ADD KEY `no_invoice` (`no_invoice`);

--
-- Indexes for table `invoice_apotek`
--
ALTER TABLE `invoice_apotek`
  ADD PRIMARY KEY (`no_pembelian`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Indexes for table `invoice_pelanggan`
--
ALTER TABLE `invoice_pelanggan`
  ADD PRIMARY KEY (`no_invoice`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`),
  ADD KEY `id_produk` (`id_produk`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `detail_invoice_pelanggan`
--
ALTER TABLE `detail_invoice_pelanggan`
  MODIFY `id_detail_inv_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `batch`
--
ALTER TABLE `batch`
  ADD CONSTRAINT `id_produk_constraint` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);

--
-- Constraints for table `detail_invoice_apotek`
--
ALTER TABLE `detail_invoice_apotek`
  ADD CONSTRAINT `detail_invoice_apotek_ibfk_1` FOREIGN KEY (`no_pembelian`) REFERENCES `invoice_apotek` (`no_pembelian`);

--
-- Constraints for table `detail_invoice_pelanggan`
--
ALTER TABLE `detail_invoice_pelanggan`
  ADD CONSTRAINT `detail_invoice_pelanggan_ibfk_1` FOREIGN KEY (`no_invoice`) REFERENCES `invoice_pelanggan` (`no_invoice`);

--
-- Constraints for table `invoice_apotek`
--
ALTER TABLE `invoice_apotek`
  ADD CONSTRAINT `invoice_apotek_ibfk_1` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`);

--
-- Constraints for table `invoice_pelanggan`
--
ALTER TABLE `invoice_pelanggan`
  ADD CONSTRAINT `invoice_pelanggan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD CONSTRAINT `keranjang_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `keranjang_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
