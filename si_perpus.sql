-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 06, 2017 at 11:29 
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `si_perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_1_pengguna`
--

CREATE TABLE IF NOT EXISTS `tbl_1_pengguna` (
  `id_pengguna` varchar(4) NOT NULL,
  `nama_pengguna` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `no_telp_pengguna` varchar(14) NOT NULL,
  `alamat_pengguna` varchar(150) NOT NULL,
  PRIMARY KEY (`id_pengguna`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_1_pengguna`
--

INSERT INTO `tbl_1_pengguna` (`id_pengguna`, `nama_pengguna`, `username`, `password`, `no_telp_pengguna`, `alamat_pengguna`) VALUES
('P001', 'ABDUL AZIZUR ROKHMAN', 'admin', 'admin', '087855644433', 'Ngawi'),
('P002', 'ZAYINY CANTIKA BILILMY', 'user', 'user', '085777546647', 'Madiun'),
('P003', 'VIYUS VIORA DETANADI', 'viyus', 'viyus', '085644336636', 'Magetan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_2_anggota`
--

CREATE TABLE IF NOT EXISTS `tbl_2_anggota` (
  `nis` varchar(11) NOT NULL,
  `nama_anggota` varchar(50) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `no_telp_anggota` varchar(14) NOT NULL,
  `alamat_anggota` varchar(250) NOT NULL,
  PRIMARY KEY (`nis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_2_anggota`
--

INSERT INTO `tbl_2_anggota` (`nis`, `nama_anggota`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `kelas`, `no_telp_anggota`, `alamat_anggota`) VALUES
('30448', 'ALVIAN MAULANA PANGESTU', 'Ngawi', '2012-11-26', 'Laki-Laki', '5A', '', 'Ngawi'),
('30452', 'ARIS BAYU SAPUTRA', 'Madiun', '2011-11-28', 'Laki-Laki', '5A', '', 'Madiun'),
('30453', 'AIDAH DEA MAWARNI', 'Ngawi', '2012-09-04', 'Perempuan', '5A', '', 'Ngawi'),
('30459', 'AINUN JANUARI', 'Ngawi', '2012-01-19', 'Perempuan', '5A', '', 'Ngawi'),
('30461', 'FAIZAH KHOIRUN NISA', 'Ngaiw', '2012-10-09', 'Perempuan', '5A', '', 'Ngawi'),
('30464', 'ASRUL SALWA TALITHA', 'Ngawi', '2012-05-31', 'Laki-Laki', '5A', '', 'Ngawi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_3_buku`
--

CREATE TABLE IF NOT EXISTS `tbl_3_buku` (
  `tanggal_masuk` date NOT NULL,
  `no_induk_buku` varchar(4) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `pengarang` varchar(150) NOT NULL,
  `penerbit` varchar(150) NOT NULL,
  `id_kategori` varchar(4) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tersedia` int(11) NOT NULL,
  `keluar` int(11) NOT NULL,
  `tahun_terbit` varchar(4) NOT NULL,
  `no_klasifikasi` varchar(30) NOT NULL,
  `lokasi_buku` varchar(20) NOT NULL,
  PRIMARY KEY (`no_induk_buku`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_3_buku`
--

INSERT INTO `tbl_3_buku` (`tanggal_masuk`, `no_induk_buku`, `judul`, `pengarang`, `penerbit`, `id_kategori`, `jumlah`, `tersedia`, `keluar`, `tahun_terbit`, `no_klasifikasi`, `lokasi_buku`) VALUES
('2016-11-22', '0001', 'Bermain dengan Sains 3', 'Salih O.Duffuaa', 'Airlangga', 'K001', 10, 9, 1, '2010', '1-5/SDN1/H/2013', 'III/4/T.I/R1/Umum/3'),
('2016-11-22', '0002', 'Jelajah Ilmu Pengetahuan, Seri Ruang \nAngkasa', 'Delik Iskandar, dkk', 'Andi', 'K004', 10, 9, 1, '2013', '658.403/Lev/p.3', 'III/4/T.I/R1/Kep/2'),
('2016-11-22', '0003', 'Jelajah Ilmu Pengetahuan, \nSeri Serangga \ndan Laba - laba', 'Richard Levin', 'Andi', 'K004', 10, 8, 2, '2010', '658.403/Sri/t.2', 'III/4/T.I/R1/Kep/2'),
('2016-10-24', '0004', 'Jelajah Ilmu Pengetahuan, Seri Reptil \ndan Amphibi', 'Delik Iskandar, dkk', 'Aneka ilmu', 'K004', 10, 10, 0, '2013', '14-15/SDN1/H/2013', '-'),
('2016-05-18', '0005', 'Jelajah Ilmu Pengetahuan, Seri \nMamalia', 'Delik Iskandar, dkk', 'Aneka ilmu', 'K004', 10, 10, 0, '2013', '18-19/SDN1/H/2013', '-'),
('2016-05-23', '0006', 'Jelajah Ilmu Pengetahuan, Seri \nBencana Alam', 'Delik Iskandar, dkk', 'Aneka ilmu', 'K004', 10, 9, 1, '2013', '20-21/SDN1/H/2013', '-'),
('2016-05-24', '0007', 'Ensiklopedi Bermain dengan Sains 1', 'Drs. Siswanto, M.Pd.', 'Aneka ilmu', 'K001', 10, 9, 1, '2013', '38-39/SDN1/H/2013', '-'),
('2017-05-24', '0008', 'Sains Itu Menyenangkan, \nBenarkah manusia Itu Harus \nBerasal dari P. Kripton?', 'Erwin Adi Putranto', 'Bengawan Ilmu', 'K004', 10, 9, 1, '2013', '130-131/SDN1/H/2013', '-');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_4_transaksi_peminjaman`
--

CREATE TABLE IF NOT EXISTS `tbl_4_transaksi_peminjaman` (
  `no_peminjaman` varchar(12) NOT NULL,
  `nis` varchar(11) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `batas_pengembalian` date NOT NULL,
  `total_buku_dipinjam` int(11) NOT NULL,
  PRIMARY KEY (`no_peminjaman`),
  KEY `nis` (`nis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_4_transaksi_peminjaman`
--

INSERT INTO `tbl_4_transaksi_peminjaman` (`no_peminjaman`, `nis`, `tanggal_pinjam`, `batas_pengembalian`, `total_buku_dipinjam`) VALUES
('PJM0001', '30448', '2017-03-16', '2017-03-22', 2),
('PJM0002', '30453', '2017-03-16', '2017-03-22', 2),
('PJM0003', '30461', '2017-03-16', '2017-03-22', 1),
('PJM0004', '30459', '2017-05-01', '2017-05-07', 1),
('PJM0005', '30452', '2017-05-01', '2017-05-07', 1),
('PJM0006', '30464', '2017-05-01', '2017-05-07', 1),
('PJM0007', '30448', '2017-05-05', '2017-05-11', 1),
('PJM0008', '30452', '2017-05-05', '2017-05-11', 1),
('PJM0009', '30461', '2017-05-05', '2017-05-11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_5_detil_peminjaman`
--

CREATE TABLE IF NOT EXISTS `tbl_5_detil_peminjaman` (
  `no_peminjaman` varchar(12) NOT NULL,
  `no_induk_buku` varchar(4) NOT NULL,
  `jumlah_buku_dipinjam` int(11) NOT NULL,
  `status` varchar(15) NOT NULL,
  KEY `no_peminjaman` (`no_peminjaman`),
  KEY `no_induk_buku` (`no_induk_buku`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_5_detil_peminjaman`
--

INSERT INTO `tbl_5_detil_peminjaman` (`no_peminjaman`, `no_induk_buku`, `jumlah_buku_dipinjam`, `status`) VALUES
('PJM0001', '0001', 1, 'Kembali'),
('PJM0001', '0003', 1, 'Kembali'),
('PJM0002', '0004', 1, 'Kembali'),
('PJM0002', '0005', 1, 'Kembali'),
('PJM0003', '0001', 1, 'Kembali'),
('PJM0004', '0006', 1, 'Kembali'),
('PJM0005', '0007', 1, 'Kembali'),
('PJM0006', '0007', 1, 'Dipinjam'),
('PJM0007', '0008', 1, 'Dipinjam'),
('PJM0008', '0006', 1, 'Dipinjam'),
('PJM0009', '0003', 1, 'Dipinjam');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_6_transaksi_pengembalian`
--

CREATE TABLE IF NOT EXISTS `tbl_6_transaksi_pengembalian` (
  `no_peminjaman` varchar(12) NOT NULL,
  `nis` varchar(11) NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `total_denda` double NOT NULL,
  KEY `no_peminjaman` (`no_peminjaman`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_6_transaksi_pengembalian`
--

INSERT INTO `tbl_6_transaksi_pengembalian` (`no_peminjaman`, `nis`, `tanggal_kembali`, `total_denda`) VALUES
('PJM0001', '30448', '2017-05-05', 44000),
('PJM0002', '30453', '2017-05-05', 44000),
('PJM0003', '30461', '2017-05-05', 22000),
('PJM0004', '30459', '2017-05-05', 0),
('PJM0005', '30452', '2017-05-05', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_7_detil_pengembalian`
--

CREATE TABLE IF NOT EXISTS `tbl_7_detil_pengembalian` (
  `no_peminjaman` varchar(12) NOT NULL,
  `no_induk_buku` varchar(4) NOT NULL,
  `jumlah_buku_dikembalikan` int(11) NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `denda` double NOT NULL,
  KEY `no_peminjaman` (`no_peminjaman`,`no_induk_buku`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_7_detil_pengembalian`
--

INSERT INTO `tbl_7_detil_pengembalian` (`no_peminjaman`, `no_induk_buku`, `jumlah_buku_dikembalikan`, `tanggal_kembali`, `denda`) VALUES
('PJM0001', '0001', 1, '2017-05-05', 22000),
('PJM0001', '0003', 1, '2017-05-05', 22000),
('PJM0002', '0004', 1, '2017-05-05', 22000),
('PJM0002', '0005', 1, '2017-05-05', 22000),
('PJM0003', '0001', 1, '2017-05-05', 22000),
('PJM0004', '0006', 1, '2017-05-05', 0),
('PJM0005', '0007', 1, '2017-05-05', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_8_kategori_buku`
--

CREATE TABLE IF NOT EXISTS `tbl_8_kategori_buku` (
  `id_kategori` varchar(4) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `Keterangan` varchar(150) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_8_kategori_buku`
--

INSERT INTO `tbl_8_kategori_buku` (`id_kategori`, `nama_kategori`, `Keterangan`) VALUES
('K001', 'Umum', ''),
('K002', 'Komputer', ''),
('K003', 'Agama', ''),
('K004', 'Ilmu Alam', ''),
('K005', 'Bahasa', ''),
('K006', 'Sastra', ''),
('K007', 'Kesenian', ''),
('K008', 'Sejarah', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_9_denda`
--

CREATE TABLE IF NOT EXISTS `tbl_9_denda` (
  `denda_perhari` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_9_denda`
--

INSERT INTO `tbl_9_denda` (`denda_perhari`) VALUES
(500);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
