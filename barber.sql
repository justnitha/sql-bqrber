-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2023 at 02:18 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barber`
--

-- --------------------------------------------------------

--
-- Table structure for table `barber`
--

CREATE TABLE `barber` (
  `barber_id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `nomor_telepon` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barber`
--

INSERT INTO `barber` (`barber_id`, `nama`, `nomor_telepon`, `email`, `alamat`) VALUES
(1002, 'angga maruk', '12312312312', 'maruk@gmail.com', 'timur tenggara');

-- --------------------------------------------------------

--
-- Table structure for table `layanan`
--

CREATE TABLE `layanan` (
  `layanan_id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `nama_layanan` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `layanan`
--

INSERT INTO `layanan` (`layanan_id`, `type`, `nama_layanan`, `deskripsi`, `harga`) VALUES
(12002, 'Reguler', 'Gentlemen Grooming', 'A complete men’s grooming service. Dimulai dengan membersihkan wajah dengan handuk dingin kemudian potong rambut lalu keramas, selanjutnya membersihkan wajah dengan handuk hangat, mendapatkan pijat kepala, leher dan bahu lalu diakhiri dengan pengaplikasian tonic dan pomade untuk styling.', 65),
(12003, 'Reguler', 'Kids Haircut', 'Pengalaman potong rambut yang ramah dan nyaman untuk si kecil.', 65),
(12004, 'Reguler', 'Gentlemen Grooming & Hairspa', 'A complete men’s grooming service with hairspa. Dimulai dengan membersihkan wajah dengan handuk dingin kemudian potong rambut lalu keramas, selanjutnya membersihkan wajah dengan handuk hangat, lalu pengaplikasian masker rambut agar rambut sehat & ternutrisi, mendapatkan pijat kepala dan punggung lalu diakhiri dengan pengaplikasian tonik atau pomade.', 90),
(12005, 'Reguler', 'Gentlemen\'s Premium Package', 'Solusi perawatan rambut & wajah eksklusif. treatment yang kamu dapatkan: grooming, hair spa, sheet mask & hair loss serum.', 130),
(12006, 'Reguler', 'Grooming + Hair Tattoo', 'Untuk kamu yang ingin mencari gaya rambut khas. Biarkan barberman kami yang terampil untuk membentuk dan merancang gaya rambut-mu seperti hasil mahakaryanya.', 140),
(12007, 'Reguler', 'Black Hair Coloring', 'Ubah rambut ubanmu menjadi rambut hitam berkilau', 150),
(12008, 'Reguler', 'Basic Hair Color', 'Warnai rambutmu (tanpa dibleaching) dengan sempurna sesuai dengan warna idaman-mu dengan barberman kami yang sudah berpengalaman.', 300),
(12009, 'Reguler', 'Fashion Hair Color', 'Warnai rambutmu dengan sempurna sesuai dengan warna idaman-mu dengan barberman kami yang sudah berpengalaman.', 800),
(12010, 'Reguler', 'Smoothing', 'Pelurusan rambut dengan hasil yang natural', 350),
(12011, 'Reguler', 'Perm Hair Treatment', 'Pengeritingan rambut dengan hasil yang natural dan trendy', 500),
(12012, 'Reguler', 'Korean Perm', 'Membuat rambut kamu terlihat lebih rata (tidak jigrak) dibagian samping (down perm) dan lebih bervolume juga berbentuk di bagian depan & atas rambut (root lift)', 150),
(12013, 'Reguler', 'Anti-Dandruff Treatment', 'Treatment untuk menghilangkan ketombe', 100),
(12014, 'Reguler', 'Hair Repair Treatment', 'Treatment untuk rambut yang sudah rusak akibat bahan kimia yang berfungsi untuk mengembalikan kesehatan rambutmu', 150),
(12015, 'Reguler', 'Hair Loss Serum Treatment', 'Solusi untuk rambut rontok & tipis. Berguna untuk mengurangi kerontokan rambut', 35),
(12016, 'Reguler', 'Wash, Massage & Hairspa', 'Diawali dengan pemijatan kepala dan punggung , lalu dapatkan rambut kilaumu yang lebih sehat dengan hairspa dan pengaplikasian tonik atau pomade', 50),
(12017, 'Reguler', 'Face Treatment with Gold Mask & Gold Serum', 'Kulit sehat, wajah sehat Treatment untuk mencerahkan & mengencangkan kulit wajah dengan serum emas berkualitas tinggi', 100),
(12018, 'Reguler', 'Black Pore Face Mask', 'Komedo? Jangan khawatir. Treatment masker wajah ini bisa untuk menghilangkan komedo kamu.', 40),
(12019, 'Reguler', 'Gentlemen Shave', 'Dimulai dengan handuk panas untuk merilekskan kulit wajah dan membuka pori-pori wajah lalu diikuti dengan pencukuran yang nyaman.', 35);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `customer_id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `nomor_telepon` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`customer_id`, `nama`, `nomor_telepon`, `email`, `alamat`) VALUES
(1, 'yanto', '08123456789', 'asfafafds@gmial.com', 'jawa barat');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `layanan_id` int(11) DEFAULT NULL,
  `barber_id` int(11) DEFAULT NULL,
  `tanggal_transaksi` date DEFAULT NULL,
  `jumlah_pembayaran` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barber`
--
ALTER TABLE `barber`
  ADD PRIMARY KEY (`barber_id`);

--
-- Indexes for table `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`layanan_id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `layanan_id` (`layanan_id`),
  ADD KEY `barber_id` (`barber_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barber`
--
ALTER TABLE `barber`
  MODIFY `barber_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;

--
-- AUTO_INCREMENT for table `layanan`
--
ALTER TABLE `layanan`
  MODIFY `layanan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12020;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10033;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `pelanggan` (`customer_id`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`layanan_id`) REFERENCES `layanan` (`layanan_id`),
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`barber_id`) REFERENCES `barber` (`barber_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
