-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 10.4.1.107:3306
-- Generation Time: Aug 28, 2020 at 01:27 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loker_news`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_news`
--

CREATE TABLE `tb_news` (
  `no` int(3) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `image` text NOT NULL,
  `tanggal` varchar(25) NOT NULL,
  `waktu` varchar(15) NOT NULL,
  `kategori` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_news`
--

INSERT INTO `tb_news` (`no`, `judul`, `content`, `image`, `tanggal`, `waktu`, `kategori`) VALUES
(1, 'Kasus Corona di Indonesia Tembus Angka 151 Ribu', 'Breaking News - Kasus positif virus corona di Indonesia hari ini menembus lebih dari 151 ribu penderita. Angka pasien positif mencapai 151 ribu ini diraih dalam waktu 173 hari, sejak kasus pertama diumumkan Menteri Kesehatan Terawan Agus Putranto pada 2 Maret 2020. Per Sabtu (22/8), Kemenkes mengumumkan tambahan 2.090 kasus positif virus corona baru. Sehingga, secara akumulasi, total kasus positif COVID-19 mencapai 151.498, dari sebelumnya 149.408 orang. Selain kasus positif, pemerintah juga mengumumkan penambahan pasien yang meninggal akibat corona sebanyak 94 jiwa. Sehingga totalnya kini menjadi 6.594, dari yang sebelumnya 6.500 jiwa. Kabar baiknya, pasien positif yang sembuh pun juga kian meningkat. Hari ini saja dilaporkan terdapat 2.207 pasien sembuh, sehingga totalnya menjadi 105.198, dari sebelumnya 102.991 orang.', 'corona.jpg', '22 Agustus 2020', '15:18 WIB', ''),
(2, 'Jomblo dan Merasa Kesepian? Lakukan 5 Hal Ini agar Hidup Lebih Bahagia', 'Menjadi jomblo lantas jangan membuatmu merasa kesepian, tetapi jika kamu mengalami kesedihan karena fakta bahwa kamu sedang tidak berada dalam hubungan romantis, itu sangat dimaklumi. Apakah dengan melihat pasanganmu sudah memiliki pasangan dan kamu masih sendirian, atau kamu baru saja menyudahi hubungan jangka panjang, lalu rasanya sulit untuk memulai hubungan baru. Kehidupan jomblo ada pasang surutnya, namun alih-alih hanya duduk-duduk dan membuat kamu merasa lebih buruk, melansir Elite Daily, ada beberapa langkah yang bisa kamu lakukan untuk menangkal rasa kesepian diantaranya Paksakan diri kamu untuk memiliki setidaknya satu interaksi sosial setiap hari, Terlibat dalam pengalaman yang bermakna (bukan hanya bersenang-senang), Bergabung dengan kelas olahraga atau aktivitas baru yang melibatkan orang lain, Mulailah mengubah cara berpikirmu, dan Konsultasi dengan ahli kesehatan mental', 'jomblo.jpg', '22 Agustus 2020', '19:59 WIB', ''),
(3, 'Tips Menggunakan Hand Sanitizer Supaya Tak Kering di Tangan', 'Mencuci tangan dan menggunakan hand sanitizer di masa pandemi menjadi hal yang sangat penting dilakukan. Cara ini dianggap paling efektif untuk membunuh bakteri. Setiap kali kita keluar rumah atau usai melakukan aktivitas, kita harus langsung mencuci tangan atau menggunakan hand sanitizer untuk membersihkan tangan. Namun pemakaian hand sanitizer tanpa henti ternyata bisa menyebabkan kulit tangan menjadi kering. Seorang dokter kulit menuturkan bahwa untuk mencegah iritasi kulit setiap usai membersihkan tangan dengan hand sanitizer, mulailah membiasakan untuk mengoleskan hand cream. Sehingga selain hand sanitizer, bawalah juga hand cream dalam kemasan saat bepergian. ', 'handsanitizer.jpg', '22 Agustus 2020', '6:17 WIB', ''),
(4, 'Jadi Perawat Lansia di Jepang Gajinya Rp 18 Juta per Bulan, Mau?', 'Jadi perawat lansia di Jepang menjadi pekerjaan yang sempat dijalani Nani, seorang pekerja yang pernah ikut program Indonesia-Jepang Economic Partnership Agreement (IJEPA) sejak Juli 2008. Ia berangkat ke Jepang tahun 2014 dan kembali ke Indonesia tahun 2019. Selain suasananya menyenangkan, Nani mengaku penghasilan yang didapatkan selama merawat lansia cukup besar. Penghasilannya mencapai 150 ribu yen setiap bulan. Jumlah tersebut belum termasuk bonusnya. Dengan pendapatan mencapai Rp 18 juta lebih, Nani menjelaskan angka itu tidak bisa langsung disebut gaji tinggi di Jepang. Sebab, biaya hidup di negeri sakura juga mahal. ', 'lansia.jpg', '22 Agustus 2020', '9:52 WIB', ''),
(5, 'Ilmuwan Prediksi Kiamat Alam Semesta, Kapan?', 'Penelitian yang diterbitkan dalam jurnal Monthly Notices of the Royal Astronomical Society, mencatat bahwa beberapa triliun tahun mendatang, ketika kiamat tiba, bintang-bintang akan meledak dalam intensitas yang sangat lambat. Dalam penelitian tersebut Caplan, penulis studi yang merupakan seorang fisikawan teoritis melihat potensi ledakan bintang dan menemukan bahwa di masa depan bintang yang lebih kecil seperti katai putih akan meledak dalam supernova. Saat mereka menjadi lebih padat, bintang-bintang ini akan meredup, membeku dan berubah menjadi katai hitam yang mampu menghasilkan besi. ', 'kiamat.jpg', '22 Agustus 2020', '10:02 WIB', ''),
(6, 'Microsoft Suntik Mati Browser Legendaris Internet Explorer, Kapan?', 'Microsoft telah memutuskan akan menyuntik mati Internet Explorer pada tahun depan. Eksistensinya selama 25 tahun bakal berakhir. Perusahaan sudah menentukan jadwal penutupan browser legendarisnya itu, yakni 17 Agustus 2021. Sejumlah aplikasi dan layanan pendukungnya bakal ditutup secara bertahap. Di samping itu, Microsoft juga berencana untuk memutus dukungan untuk browser Edge versi jadul pada 9 Maret 2021 mendatang. Lewat dari tanggal itu, Edge versi jadul tidak akan menerima pembaruan keamanan. Sebagai gantinya, Microsoft bakal fokus mengarahkan pengguna Windows 10 ke browser Edge versi baru yang berbasis Chromium. Chromium sendiri adalah software web gratis dan open-source yang dikembangkan oleh Google, dan digunakan untuk pengembangan browser Chrome. Sejak Edge berbasis Chromium dirilis pada Januari 2020 lalu, Microsoft klaim sudah ada jutaan penggunanya yang memakainya sebagai browser. Perusahaan menambahkan, mereka akan membawa sejumlah pembaruan fitur baru untuk meningkatkan pengalaman dalam menjelajah internet di Edge versi modern.', 'ie.jpg', '22 Agustus 2020', '17:01 WIB', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(3) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_news`
--
ALTER TABLE `tb_news`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_news`
--
ALTER TABLE `tb_news`
  MODIFY `no` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
