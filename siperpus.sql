-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2024 at 12:10 PM
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
-- Database: `siperpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `writer` varchar(100) DEFAULT NULL,
  `publisher` varchar(100) DEFAULT NULL,
  `year_publication` int(50) DEFAULT NULL,
  `synopsis` text DEFAULT NULL,
  `thumbnail` varchar(100) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `category_id`, `title`, `writer`, `publisher`, `year_publication`, `synopsis`, `thumbnail`, `stock`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Alan', 'Warda', 'Pacarnya Awa', 2024, 'Novel ini berkisah tentang Meisya Nata Wijaya yang baper dengan Alan Aileen, cowok idaman SMA Cakrawala yang dingin, ganteng, dan wakil ketua geng DRAX.', '/assets/books/1707417890_2fb1411c09799789c8fc.png', 9, '2024-06-18 07:12:37', '2024-06-21 07:57:24', '2024-06-21 07:57:24'),
(2, 2, 'Pelangi Setelah Hujan', 'Galang', 'Fikri', 2024, 'Novel ini berkisah tentang pasangan suami istri, Kirana dan Lee, yang mengalami kecelakaan mobil dan masuk jurang. Lee dinyatakan hilang, dan beberapa bulan kemudian Kirana bertemu dengan seorang pemuda yang mirip dengan Lee.', '/assets/books/1707419848_93a3093cdbffcbe1426b.png', 2, '2024-06-18 07:12:37', '2024-06-21 07:57:31', '2024-06-21 07:57:31'),
(3, 1, 'Historical Romance: Sweetest Scoundrel (Kekasih Termanis)', 'Gramedia Pustaka Utama', 'Gramedia Pustaka Utama', 2017, 'Eve Dinwoody sangatlah serius dalam niatnya melindungi investasi kakaknya. Tapi ketika ia setuju mengendalikan keuangan Harte`s Folly, ia mendapati dirinya terus berselilih dengan berandal yang tak bisa dikontrol.\r\n\r\nAsa Makepeace tak punya waktu untuk Eve yang kikir. Sebagai pemilik Harte`s Folly, ia sudah harus berhadapan dengan penyanyi soprano yang egois dan penyanyi tenor yang temperamental. Ia takkan membiarkan wanita bangsawan mengaturnya… tak peduli betapa menawannya wanita itu.\r\n\r\nTerlepas dari minimnya pengalaman teaternya—dan perbedaan pendapatnya dengan Asa—Eve bertekad mengubah Harte`s Folly menjadi tempat paling sukses. Tapi seberapa keras pun ia berusaha mengendalikan Asa, semakin sulit baginya mengabaikan pesona pria itu. Apalagi setelah Eve mengetahui bahwa Asa sebenarnya kekasih termanis.', '/assets/books/1718980354_cc41a411d3342ec8f9e8.jpg', 20, '2024-06-21 07:32:34', '2024-06-21 07:32:34', NULL),
(4, 1, 'Seni Merayu (The Study of Seduction)', 'Gramedia Pustaka Utama', 'Gramedia Pustaka Utama', 2017, 'Bagi Edwin Barlow, Earl of Blakeborough, tak ada yang lebih menyulitkan daripada menolong sahabatnya menjaga Lady Clarissa Lindsey. Ia sedang mencari gadis rasional dan berpikiran logis untuk dijadikan istri. Gadis yang berkebalikan 180 derajat dengan Clarissa. Clarissa yang membuatnya merasakan… banyak hal.\r\n\r\nClarissa tidak berniat menikah dengan siapa pun—tidak dengan Edwin, yang ia yakini akan menjadi suami diktator, dan yang jelas bukan diplomat Prancis yang suka menguntitnya. Tapi ketika masalah dengan sang diplomat memanas, ia memilih menerima tawaran pernikahan antarteman dari Edwin. Clarissa tak menyangka pernikahan itu memberinya kesempatan untuk melihat sisi Edwin yang lain. Dan membuatnya jatuh cinta kepada pria itu. Dapatkah Clarissa menemukan akhir bahagianya dengan Edwin?', '/assets/books/1718981643_f6e1cd19f46fc86c755a.jpg', 20, '2024-06-21 07:54:03', '2024-06-21 07:54:03', NULL),
(5, 1, 'Skandal Sang Duchess (The Duchess War)', 'Gramedia Pustaka Utama', 'Gramedia Pustaka Utama', 2016, 'Miss Minerva Lane terkenal pendiam, dan ia ingin tetap seperti itu, karena kali terakhir ia menjadi pusat perhatian, hal itu berakhir sangat buruk sampai ia terpaksa mengganti nama untuk meninggalkan masa lalunya yang penuh skandal. Jadi ketika seorang duke tampan muncul, ia sama sekali tidak menginginkan perhatiannya. Tetapi justru itulah yang ia dapatkan.\r\n\r\nRobert Blaisdell, Duke of Clermont, memiliki misi penting yang amat dirahasiakan. Karena itu, ia terkejut ketika Minnie berhasil mengungkap rencananya. Robert menyadari di balik sifat pendiam Minnie, ada kecerdasan yang membahayakan. Maka ia bertekad menguak skandal masa lalu Minnie sebelum wanita itu mengungkap rencananya lebih jauh. Tapi si nona pemalu terbukti merupakan lawan yang lebih tangguh...', '/assets/books/1718981824_1c775009c7e95d51ab36.jpg', 15, '2024-06-21 07:57:04', '2024-06-21 07:57:04', NULL),
(6, 1, 'Pertaruhan Lady Honor (The Trouble with Honor)', 'Gramedia Pustaka Utama', 'Gramedia Pustaka Utama', 2016, 'Honor Cabot, putri tiri tertua Earl of Beckington yang kaya berada dalam situasi terdesak. Setelah kematian sang earl, Honor dan saudara perempuannya terancam kehilangan rumah mewah—juga simbol kedudukan mereka di masyarakat kalangan atas—karena dikuasai kakak tiri mereka beserta tunangan pria itu. Terpaksa bertindak cepat, Honor membuat kesepakatan dengan satusatunya pria yang mampu merayu tunangan sang kakak tiri agar bisa enyah dari kehidupan keluarga Cabot selamanya.\r\n\r\nSebagai putra tak sah seorang duke, George Easton terlahir dari skandal dan mendapatkan kekayaan lewat risiko besar. Tapi sekarang ia dan Honor terlibat dalam tarian berbahaya yang mempertaruhkan reputasi wanita itu. Ketika ketertarikan tak terduga mengancam untuk mengubah permainan rahasia mereka, pertaruhan ini mungkin akan terlalu tinggi bagi mereka.', '/assets/books/1718981934_1e8a67f0419b7d65ff02.jpg', 5, '2024-06-21 07:58:54', '2024-06-21 07:58:54', NULL),
(7, 3, 'Book of Horror 2', 'Elex Media Komputindo', 'Elex Media Komputindo', 2017, 'Takaminato Motosuke\r\nBook of Horror 2\r\nshare-icon\r\nPilih Format Buku\r\nDeskripsi Buku\r\nDetail Buku\r\nPilih Format Buku Yang Tersedia\r\n\r\nDeskripsi Buku\r\nCerita misteri yang membuat semua orang merinding karena ngeri. Tentang hantu yang berkeliaran di sekeliling kita, yang tinggal di tempat-tempat gelap dan misterius. Bisakah orang-orang yang melihatnya bisa lolos dan lari dari mereka?', '/assets/books/1718982030_b3bb8541bf275d9292d6.jpg', 30, '2024-06-21 08:00:30', '2024-06-21 08:00:30', NULL),
(8, 3, 'Book of Horror 9', 'Elex Media Komputindo', 'Gramedia Pustaka Utama', 2018, 'Sebuah keluarga tercerai berai setelah kecelakaan menimpa sang ayah. Sifat yang penyayang menjadi kasar dan kejam. Namun berkat mimpi kucing keluarga yang sudah berusia seratus tahun usia manusia, satu persatu anak-anak kembali ke ibunya karena dimimpikan hal yang sama. Sementara itu seorang suami terus menyimpan jasad sang istri yang telah membusuk, rasa cintanya membuatnya tak rela melepaskannya. Apa yang akan terjadi selanjutnya? Kisah horor misteri kembali berlanjut.', '/assets/books/1718982111_d1a8f6be6cf8b88ec94e.jpg', 40, '2024-06-21 08:01:51', '2024-06-21 08:01:51', NULL),
(9, 3, 'Book Of Horror 3', 'Elex Media Komputindo', 'Gramedia Pustaka Utama', 2019, 'Kisah misteri berlanjut dengan kengerian yang selalu terbayang-bayang. Bagaimana rasanya menjadi cenayang yang dapat melihat maut di depan mata? Bisakah ia mengubah takdir? Dan bagaimana menghindari wanita kasat mata yang terus mengikuti kemanapun kita pergi. Apakah kalian cukup bernyali untuk membaca buku horor ini di malam hari?', '/assets/books/1718982204_fc08831fc32c86b68888.jpg', 10, '2024-06-21 08:03:24', '2024-06-21 08:03:24', NULL),
(10, 3, 'Book Of Horror 5', 'Elex Media Komputindo', 'Gramedia Pustaka Utama', 2020, 'Komik karya Takaminato Motosuke ini menceritakan kisah horor pada zaman perang di Jepang. Komik Book of Horror 5 ini merupakan bagian kelima dari seri Book of Horror. Komik ini merupakan kisah lanjutan dari bagian pertama, kedua, ketiga, dan keempat. Komik ini bergenre horor misteri. Komik ini cocok untuk dibaca oleh kamu yang sangat suka membaca cerita seram.\r\n\r\nSebuah benang keluar dari tubuh seorang gadis belia. Dari hari ke hari jalinan tisikan benang itu semakin keluar dan banyak terlihat. Misteri masa lalu tentang Senninbari di zaman perang di Jepang akan mengungkap misteri ini. Seperti apa misteri tentang Senninbari tersebut? Lalu, siapakah gadis belia itu? Yuk, simak cerita serunya di komik Book of Horror 5! Lengkapi juga komik seri Book of Horror ini ya teman-teman!', '/assets/books/1718982270_24afd5656cb6a463be9e.jpg', 10, '2024-06-21 08:04:30', '2024-06-21 08:04:30', NULL),
(11, 4, 'Online Business Golden Book', 'Ery Prasetyawan', 'Elex Media Komputindo', 2022, 'Buku ini ditulis dengan tujuan untuk memberikan solusi pada kesalahan-kesalahan tersebut. Dimulai dari permasalahan market formula seperti bagaimana cara memahami pangsa pasar, pembagian setiap pangsa pasar, dan kondisi psikologis calon pembeli. Lalu dijelaskan juga tentang bagaimana cara memiliki produk yang tidak mudah ditiru sehingga produk Anda memiliki kekuatan pendobrak pasar yang powerful (blockbuster). Penawaran yang menarik ibarat ujung mata anak panah. Jika ujung anak panah tumpul, tentu hasil yang didapatkan tidak akan maksimal.', '/assets/books/1718982360_73389a75cb5124e1e31e.jpg', 10, '2024-06-21 08:06:00', '2024-06-21 08:06:00', NULL),
(12, 4, 'The Business Book: Big Ideas Simply Explained', 'Dorling Kindersley', 'Sinar Star Book', 2014, 'The Business Book: Big Ideas Simply Explained merupakan sebuah buku panduan dalam berbisnis yang ditulis oleh Dorling Kindersley. Buku ini memiliki pembahasan seputar bisnis tentang ide-ide besar yang jarang sekali diketahui orang dan sangat mudah untuk dilakukan dalam berbisnis. Tidak hanya itu, buku ini juga akan membahas beberapa pembahasan lain yaitu seperti bagaimana cara untuk dapat memulai bisnis, bagaimana untuk bisa mendapatkan modal bisnis, bagaimana cara untuk mengembangkan bisnis, dan masih banyak lagi. Buku ini menjelaskan semua pembahasan secara detail dan terperinci, sehingga para pembaca tidak akan merasa kebingungan. Selain itu, buku ini juga akan memberikan solusi terbaik baik bagi Anda yang sedang menjalankan sebuah bisnis. Buku ini sangat cocok dibaca oleh para calon pebisnis maupun mereka yang sudah terjun di bidang bisnis untuk dapat memperoleh ilmu dan wawasan yang lebih luas di dunia bisnis dan mengembangkan kemampuan bisnis yang sudah dimiliki.', '/assets/books/1718982473_4f0d3a75c810b1164ba0.jpg', 10, '2024-06-21 08:07:53', '2024-06-21 08:07:53', NULL),
(13, 4, 'The Big Book of Small Business', 'Tom Gegax', 'Harper Collins', 2014, 'Tom Gegax knows what that is like. Years after running his Tires Plus franchise by the seat of his pants, blissfully unaware of how little he knew about getting the most out of people and managing a world-class organization, Tom was faced with a cancer diagnosis and a business at the brink of disaster. Resolved to change things around, he improved his mental clarity, health, and relationships and noticed that the more he profited on a personal level, the more his profited. Tires Plus grew into a $200 million business with 150 upscale locations. He had learned the first lesson in Enlightened Leadership 101: Focus on the well-being of your employees and customers‚Äîas well as your own‚Äîand success will follow naturally.', '/assets/books/1718982526_130c39f6d4b5ec433430.jpg', 5, '2024-06-21 08:08:46', '2024-06-21 08:08:46', NULL),
(14, 4, 'The Guide Book Of Sales', 'Aris Marwanto', 'Anak Hebat Indonesia', 2018, 'Menjadi seorang sales bukanlah perkara mudah. Sales dituntut untuk selalu bergerak cepat dan mencurahkan energi ekstra setiap harinya. Sekali lengah, bisa jadi kesempatan emas hilang dari pegangan.\r\n\r\nUntuk menjadi seorang sales yang berkualitas, dan memiliki daya saing tinggi ada beberapa hal yang harus diasah yang diikuti dengan pengalaman dan jam terbang.\r\n\r\nBuku ini akan membuka gambaran sudut pandang nyata seorang sales leader yang ia tulis berdasarkan pengalamannya sendiri. Tidak hanya berbicara tentang kesuksesan memimpin dan mengelola sales, buku ini juga akan membagi pengetahuan, tips & trik untuk mengantisipasi pola kegagalan yang umum terjadi.', '/assets/books/1718982618_bcc9091b5d5034775e59.jpg', 10, '2024-06-21 08:10:18', '2024-06-21 08:10:18', NULL),
(15, 5, 'Attack on Titan Before the Fall 16', 'Hajime Isayama & Shiki Satoshi', 'Elex Media Komputindo', 2020, 'Beberapa dekade sebelum jatuhnya Distrik Shiganshina, Titan yang ganas memasuki Shiganshina karena tindakan sekte fanatik. Kekacauan terjadi, dan dari mayat wanita hamil yang dikonsumsi, seorang anak laki-laki bernama Kuklo lahir. Malu dan dipermalukan karena dianggap sebagai putra seorang Titan, Kuklo menghadapi kesulitan sepanjang kehidupan awalnya dan akhirnya dibeli sebagai piala untuk keluarga bangsawan di Wall Sheena. Di sana ia bertemu Sharle Inocencio, putri seorang bangsawan, yang mengajarinya sejarah dan cara orang-orang Tembok.', '/assets/books/1718982697_8fbf84de3fcfb126a7bb.jpg', 4, '2024-06-21 08:11:37', '2024-06-21 08:11:37', NULL),
(16, 5, 'After School Charisma 4', 'Suekane Kumiko', 'Elex Media Komputindo', 2020, 'Akademi St. Kleio adalah sekolah yang sangat eksklusif. Untuk mendaftar, seorang siswa harus menjadi tiruan dari tokoh sejarah yang sangat terkenal. Wolfgang Mozart, Ratu Elizabeth, Sigmund Freud, Marie Curie, Adolf Hitler—dengan mahasiswa yang begitu mudah terbakar, hanya masalah waktu sebelum kampus meledak!\r\n\r\nDi tengah kegelisahan yang meliputi akademi menjelang “presentasi hasil studi” yang akan menguji keberhasilan para murid sebagai kloning dari tokoh-tokoh bersejarah, semakin banyak siswa yang percaya kepada domba yang disebut sebagai “Dolly yang Agung”. Jeanne D’arc yang takut kalau ia akan kehilangan nyawanya di usia muda, sama seperti Jeanne D’arc yang asli pun kembali memohon kepada Dolly yang Agung.', '/assets/books/1718982762_6695b05ff222a35e9a7e.jpg', 20, '2024-06-21 08:12:42', '2024-06-21 08:12:42', NULL),
(17, 5, 'Karate Master Minoru 31', 'Baba Yasushi', 'Elex Media Komputindo', 2020, 'Kohinata Minoru adalah seorang mahasiswa di sebuah perguruan tinggi yang populer dengan olahraganya daripada orientasi akademisnya. Dia memulai sebagai pesenam bersama temannya, Nana, tetapi diganggu oleh senior pesenamnya. Suatu malam, seorang siswa karate di perguruan tinggi, Mutou Ryuuji, menyaksikan Minoru diintimidasi dan datang untuk menyelamatkannya dan menyeretnya ke dunia karate. Minoru mendapat teman baru dan mempelajari beberapa masa lalu kelam mereka, termasuk kematian mengejutkan yang mengungkap motif balas dendam.', '/assets/books/1718982815_08c783f5947ef8630082.jpg', 20, '2024-06-21 08:13:35', '2024-06-21 08:13:35', NULL),
(18, 5, 'On Comics Vol 39 Periodical Comics Compilation', 'Indonesian Comics Compilation', 'Wahana Inspirasi Nusantara', 2019, 're:ON Comics adalah sebuah majalah kompilasi dan platform komik di Indonesia yang didirikan sejak tahun 2013 dan diterbitkan setiap enam minggu sekali oleh Wahana Inspirasi Nusantara dalam bentuk cetak dan daring. Komik yang berada di bawah naungan re:ON merupakan karya dari para komikus lokal Indonesia.\r\n\r\nPada bulan April 2015, re:ON menggelar konvensi komik mereka bertajuk re:CON, yang disebut media sebagai konvensi komik terbesar di Indonesia.\r\n\r\nMetode pemasaran mereka menggunakan media sosial dinilai berpengaruh, dan mereka dianggap sebagai pionir dalam bidang pasar komik lokal Indonesia.', '/assets/books/1718982879_d156d980a1c072b99261.jpg', 20, '2024-06-21 08:14:39', '2024-06-21 08:14:39', NULL),
(19, 6, 'Sejarah Penyalinan Kitab Suci Perjanjian Baru', 'REV. CHRISTOPHER LUTHY, PH.D', 'Andi Offset', 2021, 'Buku ini membahas asumsi dengan mengikuti sejarah Perjanjian Baru dari abad pertama hingga periode saat ini. Topik-topik yang dibahas termasuk kanon Perjanjian Baru, variasi Salinan Perjanjian Baru, Textus Receptus, dan kritik tekstual. Disimpulkan bahwa meskipun manuskrip-manuskrip asli Perjanjian Baru tidak lagi tersedia, ada banyak alasan mengapa para pembaca dapat meyakini bahwa Perjanjian Baru saat ini mewakili teks aslinya.', '/assets/books/1718982947_e350bb9c536439c96656.jpg', 19, '2024-06-21 08:15:47', '2024-06-21 08:33:48', NULL),
(20, 6, 'Sejarah Kelas Menengah Dari Zaman Kerajaan Hingga Indonesia', 'Arie Wahyu Prananta', 'Intrans Publishing', 2019, 'Perdebatan tentang peran kelas menengah sudah berlangsung sejak dari lama. Banyak yang menentukan kelas ini berdasarkan tingkat pendapatan ekonomi, tidak sedikit pula yang mengklasifikasikannya berdasarkan peran mereka dalam perubahan sosial dan politik. Buku ini menyajikan tiga fase besar perkembangan kelas menengah di Indonesia yaitu pertama di zaman sebelum Indonesia modern tepatnya sebelum Indonesia merdeka yaitu zaman kerajaan Mataram dan kolonialisme, kedua, di zaman kemerdekaan dan pasca awal-awal kemerdekaan Indonesia yang banyak disebut sebagai masa orde lama, dan ketiga, di zaman rezim orde baru berkuasa hingga jatuhnya rezim yang kemudian banyak disebut sebagai masa orde reformasi. Hadirnya buku ini patut dibaca oleh mahasiswa, aktivis, para akademisi dan siapapun yang memiliki perhatian terhadap kelas menengah.', '/assets/books/1718983027_fdd8b75032b0e0d13d3d.jpg', 10, '2024-06-21 08:17:07', '2024-06-21 08:17:07', NULL),
(21, 6, 'Sejarah Nusantara Yang Disembunyikan', 'Fatimah Purwoko', 'Anak Hebat Indonesia', 2019, 'Buku Sejarah Nusantara yang Disembunyikan yang ditulis oleh Fatimah Purwoko dan diterbitkan oleh Anak Hebat Indonesia menjadi salah satu bahan bacaan atau rujukan yang tepat dalam memahami peristiwa-peristiwa di Indonesia sejak dulu kala. Bahasa yang digunakan cukup mudah dipahami sehingga tidak menyulitkan pembaca untuk menangkap intisari di dalam buku ini. Topik pembahasannya mengenai pemberontakan Pangeran Diponegoro, pemikiran Bung Karno, masa kerajaan Hindu-Buddha, dan masih banyak lagi.', '/assets/books/1718983102_3909daa39700d0acd217.jpg', 10, '2024-06-21 08:18:22', '2024-06-21 08:18:22', NULL),
(22, 6, 'Akar Sejarah Etika Pesantren Di Nusantara', 'Aguk Irawan M.N.', ' Ilman Real', 2019, 'Islam tidak melulu berisi doktrin dan teologi, tetapi juga tentang keadaban, kebudayaan, dan peradaban. Bukti itu ditunjukkan dengan diutusnya Kanjeng Nabi Muhammad Saw. di muka bumi ini untuk memperbaiki akhlak manusia. Estafet tugas mulia itu diteruskan oleh penyebar Islam awal, terutama Walisongo dan pesantren-pesantren tradisional di Nusantara, yang di dalamnya terdiri dari empat entitas yang menyatu; kiai, santri, kurikulum, dan asrama. Keempat pilar inilah yang membentuk generasi beretika.', '/assets/books/1718983147_dd3ec2a782a33456bc3a.jpg', 15, '2024-06-21 08:19:07', '2024-06-21 08:19:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `borrows`
--

CREATE TABLE `borrows` (
  `borrow_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `confirm_by` varchar(50) DEFAULT NULL,
  `loan_date` datetime DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `proof_of_payment` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `borrows`
--

INSERT INTO `borrows` (`borrow_id`, `user_id`, `book_id`, `confirm_by`, `loan_date`, `due_date`, `status`, `proof_of_payment`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 2, NULL, '2024-02-05 00:00:00', '2024-02-07 00:00:00', 'process_borrowing', NULL, '2024-06-18 07:12:37', '2024-02-06 17:00:00', NULL),
(2, 2, 1, NULL, '2024-02-05 00:00:00', '2024-02-07 00:00:00', 'borrowed', NULL, '2024-06-18 07:12:37', '2024-02-06 17:00:00', NULL),
(3, 3, 1, NULL, '2024-06-20 00:00:00', '2024-06-23 00:00:00', 'process_borrowing', NULL, '2024-06-19 21:20:38', '2024-06-19 21:20:38', NULL),
(4, 3, 19, NULL, '2024-06-21 00:00:00', '2024-06-24 00:00:00', 'process_borrowing', NULL, '2024-06-21 08:33:48', '2024-06-21 08:33:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Romance', '2024-06-18 07:12:37', '2024-06-18 07:12:37', NULL),
(2, 'Art & Music', '2024-06-18 07:12:37', '2024-06-21 07:59:20', '2024-06-21 07:59:20'),
(3, 'Horror', '2024-06-18 07:12:37', '2024-06-18 07:12:37', NULL),
(4, 'Business', '2024-06-18 07:12:37', '2024-06-18 07:12:37', NULL),
(5, 'Comics', '2024-06-18 07:12:37', '2024-06-18 07:12:37', NULL),
(6, 'History', '2024-06-18 07:12:37', '2024-06-18 07:12:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `collection_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`collection_id`, `user_id`, `book_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 1, '2024-06-19 21:20:27', '2024-06-19 21:20:27', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(7, '2024-02-08-150147', 'App\\Database\\Migrations\\Category', 'default', 'App', 1718694670, 1),
(8, '2024-02-08-150239', 'App\\Database\\Migrations\\Users', 'default', 'App', 1718694670, 1),
(9, '2024-02-08-150252', 'App\\Database\\Migrations\\Books', 'default', 'App', 1718694670, 1),
(10, '2024-02-08-150257', 'App\\Database\\Migrations\\Reviews', 'default', 'App', 1718694670, 1),
(11, '2024-02-08-150340', 'App\\Database\\Migrations\\Borrows', 'default', 'App', 1718694670, 1),
(12, '2024-02-29-022037', 'App\\Database\\Migrations\\Collections', 'default', 'App', 1718694670, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `review` text DEFAULT NULL,
  `rating` int(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `user_id`, `book_id`, `review`, `rating`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, 'Bagus Banget', 5, '2024-06-18 07:12:37', '2024-06-18 07:12:37', NULL),
(2, 1, 1, 'Lumayan', 3, '2024-06-18 07:12:37', '2024-06-18 07:12:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `email`, `password`, `address`, `role`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Administrator', 'admin@gmail.com', '$2y$10$wd4nYEuBleD3a4w.i3kEoux8koJ88a00EEnkU1zVEM6NaK9JauYBW', 'Jaksel', 'admin', '2024-06-18 07:12:37', '2024-06-18 07:12:37', NULL),
(2, 'Petugas', 'petugas@gmail.com', '$2y$10$JCqUEmUOrielOAc.1vDgEuuRQkO7zIeCmhdK.X8H2mV9qjWEdT.5K', 'Malang', 'petugas', '2024-06-18 07:12:37', '2024-06-18 07:12:37', NULL),
(3, 'warda', 'warda@gmail.com', '$2y$10$dRqT1ljw00Q9plQ/3pY51.iEOFK0SDBBinfFHc32UJYjwtKaaa4rO', 'Malang', 'user', '2024-06-18 07:12:37', '2024-06-18 07:12:37', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `books_category_id_foreign` (`category_id`);

--
-- Indexes for table `borrows`
--
ALTER TABLE `borrows`
  ADD PRIMARY KEY (`borrow_id`),
  ADD KEY `borrows_user_id_foreign` (`user_id`),
  ADD KEY `borrows_book_id_foreign` (`book_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`collection_id`),
  ADD KEY `collections_user_id_foreign` (`user_id`),
  ADD KEY `collections_book_id_foreign` (`book_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_book_id_foreign` (`book_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `borrows`
--
ALTER TABLE `borrows`
  MODIFY `borrow_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `collection_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);

--
-- Constraints for table `borrows`
--
ALTER TABLE `borrows`
  ADD CONSTRAINT `borrows_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`),
  ADD CONSTRAINT `borrows_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `collections`
--
ALTER TABLE `collections`
  ADD CONSTRAINT `collections_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`),
  ADD CONSTRAINT `collections_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`),
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
