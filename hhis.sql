-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2017 at 03:41 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hhis`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE IF NOT EXISTS `administrator` (
`id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'hhis', 'lzz-j3bqEsUKMl4uUyqOuClWtPT3D01u', '$2y$13$jmuIPd/XxwS0nwkOtMMbFei/qDJbDFr1oQjT4xsVztTqcwIBpb5si', NULL, 'hhis@gmail.com', 10, 1491252221, 1491252221),
(2, 'dokter', 'cSM4EAMrF2wE6yeb8M1tA1jPozgMuXHG', '$2y$13$0tgkapumExqpII6T2J1Q7ukfh48yVDrZuXBUyAjj.5VCJLFKxdufG', NULL, 'dokter@gmail.com', 10, 1491252444, 1491252444),
(3, 'admin', '607O6PS76fxpTNtZclshXANEaPVniFU3', '$2y$13$ckxJ8pEY02CYM./4jOow8OrWioGnlWbk.7uY6JaTvuJiUuhlpdg.6', NULL, 'faruqfadhil7@gmail.com', 10, 1497249648, 1497249648),
(13, 'faruqfadh', 'GdmbKjvi9ngWNukS15dT4U-s4EbbiEWD', '$2y$13$mbytdAt4DF95UHlSP/fNf.1w0SWd08mGuqhulmAla0XMhVjHeOjHK', NULL, 'faruqfadhil7@gmail.com', 10, 1500042908, 1500042908),
(14, 'ainun', 'rIm3UqeWRLg3HoL3E7mJTE3GkUT9i6HZ', '$2y$13$DauhcHGnquTsOkcNXtDIi.L60xckN9J.zB.zNGNmsEYUCFKGmeQlW', NULL, 'ainunabdullah@gmail.com', 10, 1500089501, 1500089501);

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE IF NOT EXISTS `artikel` (
`id_artikel` int(11) NOT NULL,
  `judul` text,
  `deskripsi` text,
  `image` varchar(255) DEFAULT NULL,
  `abstrak` text
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `deskripsi`, `image`, `abstrak`) VALUES
(5, 'PENTINGNYA ASI UNTUK KESEHATAN BAYI', '<p><strong>Berikut ini terdapat 10 alasan mengapa ASI sangat bermanfaat bagi bayi Anda:</strong></p>\r\n<p><strong>1. Asi kaya akan zat penting yang dibutuhkan oleh bayi</strong><br />Bila dibandingkan ASI dengan produk susu kalengan atau formula untuk sang buah hati, ASI tetap terunggul dan tak terkalahkan. Karena ASI memiliki semua kandungan zat penting yang dibutuhkan oleh sang bayi seperti; DHA, AA, Omega 6, laktosa, taurin, protein, laktobasius, vitamin A, kolostrum, lemak, zat besi, laktoferin and lisozim yang semuanya dalam takaran dan komposisi yang pas untuk bayi, oleh karenanya ASI jauh lebih unggul dibandingkan dengan susu apapun.</p>\r\n<p><strong>2. Asi sebagai sarana untuk mendekatkan sang ibu dengan buah hatinya</strong><br />ASI, menjadi makanan utama sang buah hati, selain karena kegunaannya sebagai makanan utama ASI juga berperan dalam mendekatkan kedekatan jiwa antara sang ibu dan sang anak. Sudah bukan menjadi rahasia umum lagi kalau anak yang mendapatkan ASI eklusif dari sang ibu akan cenderung mempunyai kedekatan dan hubungan yang lebih baik dibandingkan dengan bayi yang tidak mendapatkan asupan ASI.</p>\r\n<p><strong>3. Asi memberikan kekebalan yang optimal untuk bayi</strong><br />Karena ASI memiliki banyak keunggulan kandugan zat-zat penting yang terkandung didalamnya yang membuat bayi berkembang dengan optimal. ASI juga mempunyai keunggulan lain untuk pembentukan sistim Imun sang bayi. Sistem imum merupakan sistim yang sangat krusial untuk sang bayi, semakin baik sistim imun anak maka akan membuat anak jarang sakit. Dibandingkan bayi yang tidak mendapatkan asupan ASI, bayi yang mendapatkan asupan ASI mempunyai sistim imun atau sistim kekebalan tubuh yang jauh lebih baik.</p>\r\n<p><strong>4. Asi tidak basi dan selalu segar</strong><br />Tidak seperti susu yang lain, ASI tidak akan basi, karena ASI langsung dihasilkan dipayudara sang ibu tanpa campur tangan bahan kimia, yang terpenting selama asupan makanan yang dikonsumsi oleh ibu bergizi seimbang dan tepat , maka ASI yang dihasilkanpun memiliki kualitas yang baik.</p>\r\n<div>\r\n<div><span class="ctaText">Baca Juga:</span>&nbsp; <span class="postTitle">Tangani Diare Anak dengan Cepat dan Tepat</span></div>\r\n</div>\r\n<p><strong>5. Asi lebih higenis dibandingkan dengan susu lain</strong><br />Karena ASI langsung diberikan melaui puting sang ibu dengan ASI yang tersimpan dipayudara ibu akan menjaga keadaan ASI steril dan dengan suhu yang tepat sesuai untuk kebutuhan sang buah hati. Bila dibandingkan dengan susu formula atau susu kaleng, keduannya memerlukan alat bantu berupa botol dot agar bisa dikonsumsi oleh sang bayi. Kesterilan dari susu seperti ini perlu dipikirkan lagi, karena dalam proses pembuatan susu dan memasukan ke dalam botol ada banyak kemungkinan bahwa susu tersebut tercemar dengan senyawa lain, entah dari susunya sendiri sudah tercemar, air yang digunakan belum tentu streril dan yang penting botol dot yang digunakan untuk minum sang bayi juga belum tentu bebas dari kuman.</p>\r\n<p><strong>6. Asi menjadi pelindung yang baik</strong><br />ASI menjadi pelindung yang baik untuk sang bayi dari berbagai penyakit atau insiden seperti kematian bayi secara mendadak, gangguan pencernaan, <a href="http://doktersehat.com/diare/" target="_blank">diare</a>, infeksi telinga dan lain-lain.</p>\r\n<p><strong>7. Asi akan berubah sesuai kebutuhan bayi</strong><br />ASI memiliki sistematika cara kerja yang sangat unik, karena dengan sendirinya komponen ASI akan berubah sesuai dengan kebutuhan dan usia sang bayi.</p>\r\n<p><strong>8. Asi merupakan pelindung dari berbagai alergi makanan</strong><br />ASI juga mampu memberi rangsangan kepada sang bayi agar kebal terhadap berbagai bahan makanan, perlu diingat untuk hal ini keragaman dan ke-berimbagan makanan yang dikonsumsi oleh sang ibu akan turut menentukan.</p>\r\n<p><strong>9. Asi makanan yang tepat untuk bayi</strong><br />ASI sangat penting keberadaanya khususnya untuk bayi usia 0-6 bulan, karena di usia ini ASI merupakan makanan wajib bagi sang buah hati.</p>\r\n<p><strong>10. Bermanfaat untuk ibu dan bayi</strong><br />Manfaat ASI bukan hanya untuk sang bayi akan tetapi juga untuk sang ibu , karena dengan menyusui sang ibu dapat melepaskan ketegangan yang ada pada payudaranya, selain itu memperkecil resiko sang ibu terkena kanker ovarium, dibanding dengan wanita yang tidak memberikan ASI.</p>\r\n<p><br /><br /></p>', 'uploads/asi.jpg', 'Mungkin anda masih ingat bagaimana gencarnya pemerintah dalam menggalakkan pemberian Air Susu Ibu ASI bagi bayi, memang keputusan untuk memberi ASI merupakan sesuatu yang bersifat personal tetapi para ahli kesehatan mendukung pembirian ASI dan mereka pun menyampaikan banyak pesan bahwa ASI memberikan nutrisi yang lengkap dan kekebalan pada bayi serta keuntungan psikologi untuk kesehatan bayi.\r\n'),
(7, 'Segudang Bahaya Merokok Terhadap Tubuh', '<p>Salah satu konsekuensi utama yang bisa Anda dapatkan dari rokok adalah menderita penyakit jantung. Diperkirakan, sebanyak 20% kematian akibat penyakit jantung terkait langsung dengan kebiasaan merokok. Kenapa rokok begitu berbahaya? Apa saja efek negatif lainnya dari rokok?</p>\r\n<p>Lihat saja kandungan yang terdapat pada sebatang rokok. Lebih dari 4000 bahan kimia terdapat di dalamnya. Ratusan di antaranya zat beracun dan sekitar 70 bahan di dalamnya bersifat kanker. Bahan-bahan berbahaya pada sebatang rokok, antara lain:</p>\r\n<ul>\r\n<li><strong>Karbon monoksida.</strong>&nbsp;Zat yang kerap ditemukan pada asap knalpot mobil ini bisa mengikat diri pada hemoglobin dalam darah secara permanen sehingga menghalang penyediaan oksigen ke tubuh. Hal tersebut membuat Anda cepat lelah.</li>\r\n<li><strong>Tar.</strong>&nbsp;Ketika merokok, kandungan tar di dalam rokok akan ikut terisap. Zat ini akan mengendap di paru-paru Anda dan berdampak negatif pada kinerja rambut kecil yang melapisi paru-paru. Padahal rambut tersebut bertugas untuk membersihkan kuman dan hal lainnya keluar dari paru-paru Anda.</li>\r\n<li><strong>Gas oksidan.</strong>&nbsp;Gas ini bisa bereaksi dengan oksigen. Keberadaannya pada tubuh lebih meningkatkan risiko stroke dan serangan jantung akibat penggumpalan darah.</li>\r\n<li><strong>Benzene.</strong>&nbsp;Zat yang ditambahkan ke dalam bahan bakar minyak ini bisa merusak sel pada tingkat genetik. Zat ini juga dikaitkan dengan berbagai jenis kanker seperti&nbsp;<a href="http://www.alodokter.com/kanker-ginjal" target="_blank">kanker ginjal</a>&nbsp;dan leukimia.</li>\r\n</ul>\r\n<p>Selain bahan-bahan di atas, masih banyak kandungan beracun pada sebatang rokok seperti&nbsp;<em>arsenic</em>&nbsp;(digunakan dalam&nbsp;<a href="http://www.alodokter.com/sedekat-inilah-pestisida-dengan-kita" target="_blank">pestisida)</a>,&nbsp;<em>toluene</em>&nbsp;(ditemukan pada pengencer cat),&nbsp;<em>formaldehyde</em>&nbsp;(digunakan untuk mengawetkan mayat),&nbsp;<em>hydrogen cyanide</em>&nbsp;(digunakan untuk membuat senjata kimia), dan&nbsp;<em>cadmium</em>&nbsp;(digunakan untuk membuat baterai).</p>\r\n<p>&nbsp;</p>\r\n<p>Ketika Anda merokok, Anda akan lebih mungkin terkena serangan jantung. Perokok berisiko dua hingga empat kali lebih tinggi menderita penyakit jantung. Risiko lebih tinggi lagi jika Anda perokok wanita yang sedang&nbsp;<a href="http://www.alodokter.com/ingin-tahu-efek-samping-pil-kb" target="_blank">mengonsumsi pil KB</a>.</p>\r\n<p>Saat merokok, Anda akan turut memasukkan zat-zat berbahaya yang bisa berdampak buruk tubuh, khususnya jantung. Contohnya zat nikotin. Ketika nikotin masuk ke tubuh, zat itu bisa mengurangi kadar oksigen yang akan masuk ke darah. Zat yang bersifat candu ini juga bisa mempercepat detak jantung, menaikkan tekanan darah, merusak&nbsp;<a href="http://www.alodokter.com/Ini-Serius-Jaga-Baik-baik-Kesehatan-Pembuluh-Darah" target="_blank">pembuluh darah&nbsp;</a>dalam jantung, dan mempercepat pembekuan darah yang bisa memicu serangan jantung. Begitu juga dengan akibat-akibat buruk terhadap organ tubuh yang lainnya.</p>\r\n<p><strong>Otak</strong></p>\r\n<p>Merokok bisa meningkatkan risiko terkena stroke sebesar 50 persen. Hal tersebut bisa menyebabkan kerusakan otak dan kematian. Merokok juga dapat meningkatkan risiko mengalami aneurisma otak. Aneurisma otak adalah pembengkakan pembuluh darah yang terjadi akibat melemahnya dinding pembuluh darah. Sewaktu-waktu bisa pecah dan mengakibatkan pendarahan di otak.</p>\r\n<p><strong>Mulut dan tenggorokan</strong></p>\r\n<p><a href="http://www.alodokter.com/bahaya-merokok-bagi-kesehatan-mulut" target="_blank">Bau mulut dan gigi bernoda merupakan efek yang akan timbul akibat merokok</a>. Penyakit gusi dan kerusakan indera perasa pun dapat timbul. Masalah serius yang akan hinggap pada mulut dan tenggorokan adalah meningkatnya risiko kanker pada lidah, tenggorokan, bibir, dan pita suara.</p>\r\n<p><strong>Paru-paru</strong></p>\r\n<p>Salah satu efek paling berbahaya akibat merokok adalah kanker paru-paru. Bahan-bahan kimia pada rokok berpotensi merusak sel-sel pada paru-paru yang bisa membentuk sel kanker. Penyakit serius lainnya yang bisa Anda alami adalah bronkitis, pneumonia, dan emfisema.</p>\r\n<p><strong>Lambung</strong></p>\r\n<p>Merokok bisa melemahkan otot yang mengontrol bagian bawah kerongkongan Anda. Hal tersebut memungkinkan asam dari lambung bergerak ke arah yang salah, yaitu ke kerongkongan. Kondisi tersebut dinamakan penyakit asam lambung. Beberapa risiko penyakit yang akan dihadapi oleh seorang perokok adalah ulkus atau tukak dan&nbsp;<a href="http://www.alodokter.com/hiperemsis-gravidarum" target="_blank">kanker lambung.</a></p>\r\n<p><strong>Tulang</strong></p>\r\n<p>Racun pada rokok bisa merusak tulang dengan cara menghentikan kerja sel-sel konstruksi. Oleh sebab itu, perokok lebih berisiko mengalami tulang rapuh atau osteoporosis. Racun rokok juga bisa mengganggu keseimbangan hormon-hormon yang bertugas menjaga tulang tetap kuat, seperti hormon estrogen.</p>\r\n<p><strong>Kulit</strong></p>\r\n<p>Perokok akan terlihat lebih tua ketimbang yang bukan perokok karena kurangnya asupan oksigen ke kulit. Penuaan dini akan dirasakan, seperti kemunculan&nbsp;<a href="http://www.alodokter.com/wajah-berkerut-inilah-prosedur-untuk-mengatasinya" target="_blank">kerutan</a>di sekitar mata dan mulut. Racun rokok juga bisa menyebabkan selulit pada kulit.</p>\r\n<p><strong>Organ reproduksi</strong></p>\r\n<p>Merokok bisa mengganggu sistem reproduksi dan kesuburan Anda. Pada pria, merokok bisa menyebabkan impotensi, mengurangi produksi sperma, dan&nbsp;<a href="http://www.alodokter.com/kanker-testis" target="_blank">kanker testis</a>.&nbsp;<a href="http://www.alodokter.com/penyebab-infertilitas-wanita-yang-perlu-diketahui" target="_blank">Sementara pada wanita, merokok dapat mengurangi kesuburan</a>. Selain itu, risiko terkena kanker serviks pun lebih tinggi karena rokok mengurangi kemampuan alami tubuh dalam melawan infeksi&nbsp;<em>human papillomavirus</em>&nbsp;atau HPV.</p>\r\n<p>Selain penyakit pada fisik, perokok juga mengalami tingkat stres yang lebih tinggi dibandingkan mereka yang tidak merokok. Selama ini mungkin Anda mengira merokok bisa membuat lebih rileks. Anda menganggap kandungan nikotin bisa menenangkan pikiran Anda, tapi ternyata itu salah. Yang membuat perokok gelisah dan cemas adalah gejala putus obat terhadap nikotin. Dengan merokok, kecanduan terhadap nikotin akan terpenuhi dan perokok merasa seperti rokok tersebut menurunkan stres.</p>\r\n<p>&nbsp;</p>\r\n<p>Memang tidak semua perokok akan meninggal karena penyakit jantung, kanker paru-paru, atau stroke, namun kebiasaan merokok bisa sangat mengganggu dan mengurangi kualitas hidup Anda sehari-hari. Efek rokok yang bisa Anda rasakan sehari-hari adalah batuk-batuk, sesak napas, lebih mudah lelah, lebih rentan terhadap infeksi, atau mengalami&nbsp;<a href="http://www.alodokter.com/gangguan-tidur" target="_blank">gangguan tidur</a>&nbsp;yang ditandai dengan sulit bernapas pada malam hari kemudian merasa kelelahan di pagi hari.</p>\r\n<p>Mungkin Anda sudah terbiasa mendengar bahaya merokok terhadap tubuh, namun Anda tetap tidak menghentikan kebiasaan mengisap rokok karena merasa saat ini kesehatan Anda masih baik-baik saja.</p>\r\n<p>Perlu diingat, merokok sama saja seperti menabung racun pada tubuh yang sedikit demi sedikit bisa menumpuk jika dilakukan terus-menerus. Dengan begitu, risiko menderita penyakit pun akan lebih tinggi pada masa tua.&nbsp;<a href="http://www.alodokter.com/bahaya-menjadi-perokok-pasif" target="_blank">Tidak hanya Anda, orang-orang terdekat pun akan merasakan efeknya karena menghirup asap rokok yang beracun.</a></p>', 'uploads/rokoko.jpg', 'Pasti Anda sudah tidak asing lagi dengan peringatan dilarang merokok. Dua kata itu bisa dengan mudahnya dijumpai di mana saja. Sepertinya tidak mengherankan jika mengingat dampak-dampak negatif yang ditimbulkan akibat merokok pada tubuh Anda.'),
(8, '5 Cara Mengatasi Wajah Berminyak dalam 30 Menit Saja', '<p><span style="font-style: inherit; font-weight: inherit;">Apa yang kamu lakukan ketika mengetahui muka berminyak? Mengambil tisu kah, mengusapnya dengan tangan, atau malah pergi ke kamar mandi lalu menggunakan facial foam?&nbsp;Semua itu salah besar. Kali&nbsp;ini saya akan&nbsp;bagikan cara paling ampuh agarwajah berminyak tak menghantuimu lagi.</span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;">Sebenarnya wajah berminyak itu tidak selamanya buruk. Dengan adanya minyak di wajah, maka kulit akan menjadi lebih lembab. Kondisi lembab inilah yang dapat membantu mencegah penuaan dini. Dengan demikian, seseorang yang memiliki muka berminyak, mereka cenderung lebih&nbsp;<strong><strong style="font-style: inherit;"><a style="font-style: inherit; font-weight: inherit;" href="http://www.cantikitu.com/2015/07/11-tips-sederhana-agar-anda-selalu-awet.html">awet muda</a></strong></strong>.<br /></span></p>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></strong></strong></p>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Penyebab Muka Berminyak</span></span></span></strong></strong></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Minyak muncul di wajah itu sangatlah wajah. Adanya minyak ini akan membantu mencegah kekeringan di kulit. Akan tetapi apabila berlebihan, minyak tersebut justru akan berpotensi menyebabkan masalah seperti jerawat, muka mengkilap, penyumbatan pori, komedo, dll. Berikut beberapa penyebab wajah berminyak:</span></span></p>\r\n<ul style="font-style: inherit; font-weight: inherit;">\r\n<li style="font-style: inherit; font-weight: inherit;"><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Kondisi hormon seseorang</span></span></strong></strong></li>\r\n</ul>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Biasanya para wanita yang sedang menstruasi akan cenderung mengalami produksi minyak berlebih pada bagian wajah. Munculnya kondisi ini dapat disebabkan karena hormon dalam tubuh sedang tidak stabil. Selain pada wanita yang mengalami mens, kamu yang sedang masa puber juga akan mengalami hal yang sama.</span></span></p>\r\n<ul style="font-style: inherit; font-weight: inherit;">\r\n<li style="font-style: inherit; font-weight: inherit;"><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Stres</span></span></strong></strong></li>\r\n</ul>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Stres mendorong hormon kartisol yang merupakan penunjang produksi minyak di wajah. Oleh karenanya, kebanyakan orang yang stres mereka lebih cenderung memiliki minyak berlebih pada wajahnya. Bahkan jika stres tersebut berlebihan, wajah kamu juga akan sangat mudah terserang jerawat.</span></span></p>\r\n<ul style="font-style: inherit; font-weight: inherit;">\r\n<li style="font-style: inherit; font-weight: inherit;"><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Cuaca panas</span></span></strong></strong></li>\r\n</ul>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Cuaca panas dapat mengakibatkan tubuh kita lebih mudah berkeringat. Sambil mengeluarkan keringat, sebenarnya dalam cuaca panas tubuh juga memproduksi banyak minyak pada kulit. Apabila keringat dan minyak tidak segera dibersihkan, maka akan menyebabkan muculnya&nbsp;<strong><strong style="font-style: inherit;"><a style="font-style: inherit; font-weight: inherit;" href="http://www.cantikitu.com/2015/09/16-cara-menghilangkan-bau-badan.html">bau badan</a></strong></strong>.</span></span></p>\r\n<ul style="font-style: inherit; font-weight: inherit;">\r\n<li style="font-style: inherit; font-weight: inherit;"><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Kosmetika yang tidak cocok</span></span></strong></strong></li>\r\n</ul>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Apakah kamu suka menggunakan pelembab wajah? Pelembab wajah sebenarnya hanya direkomendasikan kepada pemilik kulit kering, bukannya berminyak. Nah apabila kulitmu berminyak, cobalah untuk menghindari kosmetik dalam bentuk pelembab, cream, lotion, dll.</span></span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Beberapa penyebab diatas bisa kamu hindari sebisa mungkin supaya keluarnya minyak dapat diminimalisir. Langsung saja berikut beberapa cara mengatasi wajah berminyak secara alami hanya dalam 30 menit saja.</span></span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><strong>1. Masker jeruk nipis</strong><br /></span></span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Jeruk nipis termasuk buah yang memiliki rasa masam cukup tinggi. Rasa masamnya inilah yang bertindak untuk mengurangi minyak di wajah kamu. Selain itu, kandungan vitamin C yang cukup tinggi juga dapat membuat kulitmu nampak lebih cerah dan bebas dari jerawat.</span></span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Namun jangan kaget, biasanya penggunaan masker jeruk nipis akan menyebabkan rasa gatal dan bahkan perih. Apalagi jika wajah kamu berjerawat. Rasa gatal tersebut akan hilang sendirinya seiring dengan perawatan rutin.</span></span></p>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></strong></strong></p>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Cara menghilangkan minyak di wajah dengan jeruk nipis:</span></span></strong></strong></p>\r\n<ul>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Siapkan buah jeruk nipis sebanyak 1 butir saja</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Belah jeruk nipis menjadi 2 bagian, lalu peras dalam wadah</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Gunakan bantuan kapas untuk mengoleskan masker jeruk nipis tersebut</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Diamkan sekitar 30 menitan, kemudian bilas dengan air hangat</span></span></li>\r\n</ul>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;">Catatan:</span></strong></strong>&nbsp;apabila tidak ada jeruk nipis, kamu bisa menggantinya dengan lemon.<span style="font-style: inherit; font-weight: inherit;">Keduanya memiliki manfaat yang sam<span style="font-style: inherit; font-weight: inherit;">a kok.</span></span></span></span></p>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></strong></strong></p>\r\n<ol start="2">\r\n<li><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"> Gunakan buah apel dan madu</span></span></strong></strong></li>\r\n</ol>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Apel merupakan buah yang mengandung senyawa anti-lemak. Sifat anti-lemaknya inilah yang dapat membantu mengatasi wajah berminyak. Kamu bisa menggunakan apel jenis apapun, mulai dari apel&nbsp;<span style="font-style: inherit; font-weight: inherit;">hijau</span>&nbsp;<span style="font-style: inherit; font-weight: inherit;">atau merah.</span></span></span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;">Kelebihan cara ini ialah tak menyebabkan rasa gatal atau perih. Sehingga sangat cocok untuk kulitmu yang sekaligus jerawatan.</span></p>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></strong></strong></p>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Cara mengatasi wajah berminyak dengan apel:</span></span></strong></strong></p>\r\n<ul>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Siapkan 1 buah apel segar dan 3 sendok makan madu</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Haluskan apel dengan blender (tanpa dikupas)</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Campur dengan madu sampai merata, lalu masukan kedalam kulkas</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Setelah dingin, oleskan masker apel secara merata keseluruh bagian wajah</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Agar bekerja maksimal beri pijatan lembut 5 menit dan diamkan 25 menit</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Apabila sudah, bilas dengan menggunakan air dingin.</span></span></li>\r\n</ul>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></strong></strong></p>\r\n<ol start="3">\r\n<li><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"> Tomat</span></span></strong></strong></li>\r\n</ol>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></strong></strong></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Manfaat tomat</span><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></strong></strong><span style="font-style: inherit; font-weight: inherit;">ada banyak sekali, mulai dari meningkatkan imun tubuh sampai dengan perawatan kecantikan. Salah satu manfaat untuk kecantikan adalah dapat membantu mengurangi minyak di wajah secara alami.</span></span></p>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></strong></strong></p>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Cara mengatasi muka berminyak dengan tomat:</span></span></strong></strong></p>\r\n<ul>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Haluskan buah tomat segar, lalu campur dengan madu (bila ada)</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Aplikasikan masker tomat tersebut secara merata keseluruh bagian wajah</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Pijat lembut selama kurang lebih 15 menit, dan diamkan 15 menit</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Setelah itu, bilas dengan menggunakan air hangat sampai bersih</span></span></li>\r\n</ul>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></strong></strong></p>\r\n<ol start="4">\r\n<li><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"> Mentimun</span></span></strong></strong></li>\r\n</ol>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Timun atau mentimun, merupakan buah yang mengandung banyak air di dalamnya. Kandungan tersebut memiliki sifat antibakterial, anti-inflamasi, dan kaya akan mineral alami yang baik untuk kesehatan kulit.</span></span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Perawatan dengan masker timun rutin sangat baik untuk mengatasi jerawat, mencegah peradangan, menghilangkan minyak di wajah, dan lain sebagainya.</span></span></p>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></strong></strong></p>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Cara mengatasi wajah berminyak dengan mentimun:</span></span></strong></strong></p>\r\n<ul>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Siapkan timun segar secukupnya saja</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Haluskan timun tersebut dengan menggunakan blender (tanpa dikupas)</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Setelah halus, diamkan sejenak dalam kulkas</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Selanjutnya oleskan masker timun secara merata keseluruh bagian wajah</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Diamkan selama 30 menit, lalu bilas dengan menggunakan air hangat.</span></span></li>\r\n</ul>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></strong></strong></p>\r\n<ol start="5">\r\n<li><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"> Masker semangka</span></span></strong></strong></li>\r\n</ol>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Semangkat mengandung kalium yang cukup tingg, menurut para ahli kandungan kalium tersebut bisa menurunkan tekanan darah tinggi, mencegah diabetes, stroke, penyumbatan pembuluh darah, dan bahkan serangan jantung.</span></span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Selain kalium, semangka dipercaya juga mengandung vitamin E dan C yang dapat membantu mengontrol minyak di wajah. Bahkan beberapa mineral alaminya juga cukup baik untuk mengecilkan pori wajah secara alami</span></span></p>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></strong></strong></p>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Cara mengatasi wajah berminyak dengan semangka:</span></span></strong></strong></p>\r\n<ul>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Haluskan daging buah semangka segar (bisa ditumbuk atau diblender)</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Bila ada, tambahkan sedikit yoghurt tawar atau susu</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Setelah selesai mandi, aplikasikan masker semangka secara merata keseluruh bagian wajah</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Diamkan sekiranya 30 menit, apabila sudah terasa kaku bilas dengan air dingin sampai bersih. Selesai.</span></span></li>\r\n</ul>\r\n<h3 style="font-style: inherit;"><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Cara Merawat Wajah Berminyak dengan Baik dan Benar</span></span></span></strong></strong></h3>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Setelah minyak di wajah hilang, bukan berarti kamu membiarkannya begitu saja tanpa melakukan perawatan lagi. Sebab kondisi alamiah wajah mau tidak mau akan menyebabkan munculnya minyak kembali. Berikut beberapa tips merawat muka berminyak yang bisa kamu terapkan:</span></span></p>\r\n<ul>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Bersihkan wajah secara rutin minimal 2x sehari (bisa setiap kali mandi)</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Setelah selesai beraktivitas olahraga, usahakan membersihkan sisa keringat dan minyak</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Hindari menggunakan kosmetik berlebihan, termasuk cream pelembab</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Hindari makanan gorengan, mie instan, dan makanan berminyak lainnya</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Jangan membersihkan muka berminyak dengan tangan kotor, tisu, ataupun sabun muka yang tidak cocok dengan jenis kulit</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Perbanyak konsumsi buah dan sayur yang kaya akan serat, dll.</span></span></li>\r\n</ul>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Itulah beberapa cara&nbsp;<span style="font-style: inherit; font-weight: inherit;">atasi</span>&nbsp;wajah berminyak secara alami dalam 30 menit.&nbsp;<span style="font-style: inherit; font-weight: inherit;">Pilih salah satu saja kemudian coba terapkan selama sebulan. Jika tak ada perubahan kamu bisa berkonsultasi ke dokter agar mendapatkan saran terbaik.</span></span></span></p>', 'uploads/cara-mengatasi-muka-berminyak.gif', 'Apa yang kamu lakukan ketika mengetahui muka berminyak? Mengambil tisu kah, mengusapnya dengan tangan, atau malah pergi ke kamar mandi lalu menggunakan facial foam? Semua itu salah besar. Kali ini saya akan bagikan cara paling ampuh agar wajah berminyak tak menghantuimu lagi.\r\n'),
(9, 'Waspadai 7 Penyakit Tanpa Gejala Ini', '<p><strong>1. Hipertensi dan Kolesterol Tinggi</strong></p>\r\n<p>Dua masalah ini sangat populer di tengah masyarakat. Hipertensi dan kolesterol yang tinggi pada dasarnya tidak memberikan keluhan apapun bagi penderitanya. Idealnya tekanan darah normal untuk dewasa ialah &le;120/80 mmHg, dan disebut hipertensi grade I apabila tensi &ge;140/90 serta hipertensi grade II bila tensi &ge;160/100. Tekanan darah yang melebihi 180/120 disebut juga hipertensi krisis (berbahaya).</p>\r\n<p><br />Namun ironisnya, hipertensi hingga &ge; 200/120 pun kadang tidak memberikan gejala apapun! Atau pada kebanyakan kasus, orang tersebut hanya mengeluh pusing-pusing ringan dan pegal-pegal ringan. Tak heran, banyak orang yang menyepelakan dan tidak mau berobat karena tidak ada keluhan. Itu adalah persepsi yang keliru. Disadari atau tidak, dampak hipertensi sebenarnya telah terjadi apabila tekanan &ge; 120/80; efek kerusakan akan terakumulasi hingga bertahun-tahun kemudian baru menimbulkan penyakit jantung dan pembuluh darah. Khusus untuk hipertensi krisis, bahaya stroke, penyakit jantung, serta pecah pembuluh darah dapat mengancam setiap saat.</p>\r\n<p>Serupa halnya dengan kolesterol tinggi. Kadar kolesterol yang tinggi ibarat bom waktu yang akan terakumulasi di pembuluh darah atau jaringan hati (<em>fatty liver</em>) dan berakibat fatal. Padahal, obatnya sangat sederhana dan relatif murah.</p>\r\n<p><strong>2. Penyakit Ginjal Kronis</strong></p>\r\n<p>Fungsi utama ginjal ialah menyaring darah dan membuang sisa-sisa metabolisme melalui urin. Namun, penyakit ginjal tidak selalu ditandai dengan masalah pada urin atau berkemih. Dalam pengalaman penulis, gejala baru disadari saat penyakit sudah memasuki stadium III atau IV, bahkan ada yang harus langsung menjalani cuci darah (hemodialisis). Sedih rasanya melihat kondisi tersebut.</p>\r\n<p>Disebut penyakit ginjal kronis (<em>chronic kidney disease</em>/CKD) apabila fungsi ginjal telah menurun secara progresif. Hal yang dikhawatirkan pasien dari CKD ini ialah tindakan pengganti ginjal (cuci darah rutin atau transplantasi ginjal), apabila sudah stadium terminal (<em>stage</em>&nbsp;V). CKD stage IV tidak akan kembali menjadi stage III atau II lagi, demikian seterusnya, sehingga fokus terapi ialah mencegah penurunan fungsi ginjal lebih lanjut.</p>\r\n<p>Apa penyebab penyakit ginjal kronis ini? Nomor satu ialah&nbsp;<a class="inner-link" href="http://indeks.kompas.com/tag/diabetes" target="_blank">diabetes</a>melitus yang tidak terkontrol (gula darah terus tinggi), dan berikutnya ialah hipertensi yang tidak terkontrol.</p>\r\n<p><strong>3.&nbsp;<a class="inner-link" href="http://indeks.kompas.com/tag/diabetes" target="_blank">Diabetes</a>&nbsp;Melitus (DM)</strong></p>\r\n<p>Terutama di Indonesia, penyakit kencing manis atau diabetes melitus masih banyak yang tak terdeteksi. Pasien kadang baru datang berobat setelah ada penyakit jantung, ginjal, luka yang tak kunjung sembuh, hingga luka yang telah membusuk sekalipun. Padahal penyebabnya sederhana: kadar gula darah yang tinggi.</p>\r\n<p>Patut diakui, para dokter sulit menentukan dengan tepat kapan sebenarnya penyakit ini dimulai. Ada literatur yang mengatakan, apabila kadar HbA1C &ge; 6,5 (ini adalah patokan angka diagnosis DM) sesungguhnya sudah terjadi kerusakan pembuluh darah mikro di retina mata akibat kadar gula yang tinggi (retinopati).</p>\r\n<p>Beberapa pasien pada awalnya mengeluhkan gejala 3P: poliuria (sering berkemih), polidipsi (sering haus), dan polifagia (sering lapar), serta penurunan berat badan tanpa sebab. Itu adalah gejala klasik DM. Walaupun telah muncul, gejala tersebut kadang terabaikan atau dianggap bukan yang penting. Padahal, keluhan tersebut dapat membuka pintu untuk deteksi DM secara dini dan tepat.</p>\r\n<p><strong>4. Osteoporosis</strong></p>\r\n<p>Siapa yang tak kenal penyakit ini? Meski familiar, namun Anda dan saya tidak tahu apakah sedang mengalami pengeroposan tulang atau tidak. Osteoporosis tidak memiliki gejala atau keluhan apapun, seringkali pasien datang sudah dengan nyeri akibat patah tulang (fraktur) atau kejadian jatuh akibat tulang yang rapuh. Angka tertinggi osteoporosis terjadi pada wanita yang menopause, terutama yang memiliki berat badan rendah.</p>\r\n<p>Cara pasti untuk mendeteksi secara dini ialah dengan pemeriksaan kepadatan tulang (<em>bone densitometry</em>), atau pada kasus-kasus awal dapat dilakukan dengan pemeriksaan radiologi. Namun sayangnya, pemeriksaan tersebut belum rutin dilakukan pada orang sehat.</p>\r\n<p><strong>5. Penyakit Jantung Koroner (PJK)</strong></p>\r\n<p>Masihkan ingatkah Anda sesosok artis dan politisi muda dengan porsi tubuh ideal dan rutin berolahraga, namun meninggal mendadak akibat satu kali serangan jantung? Ya, tak heran PJK disebut sebagai pembunuh nomor satu. Dalam ilmu kedokteran, jenis kelamin laki-laki dan usia &ge; 45 tahun saja (belum ditambah faktor lain) sudah termasuk sebagai faktor risiko PJK.</p>\r\n<p>PJK biasa muncul sebagai nyeri dada sebelah kiri, seperti ditekan benda berat, yang kadang menjalar ke lengan, rahang bawah, serta pundak. Artinya, ada sumbatan di pembuluh darah koroner. Namun faktanya, PJK bisa muncul tanpa gejala apapun! Pasien dapat tiba-tiba jatuh tergeletak tanpa diketahui sebabnya. Setelah diperiksa rekam jantung, barulah diketahui bahwa pasien mengalami PJK.</p>\r\n<p><strong>6. Infeksi Menular (HIV dan Hepatitis)</strong></p>\r\n<p>Penyakit ini boleh dibilang berbeda golongan dari lima yang telah dibahas sebelumnya. Namun, infeksi menular seperti HIV dan hepatitis dapat muncul tanpa gejala sedikitpun. Selain tidak menimbulkan gejala, penyakit ini mudah menular bila tidak berhati-hati!<br />Pada kasus HIV, butuh bertahun-tahun sejak virus masuk ke dalam darah hingga muncul sebagai gejala.</p>\r\n<p>Banyak pasien yang baru diketahui mengalami HIV setelah dirinya terjangkit berbagai infeksi sekunder lainnya. Seperti yang diketahui, pasien HIV memiliki imunitas yang rendah sehingga rentan terkena infeksi. Dengan kata lain, virus HIV tidak membunuh pasien secara langsung, melainkan melalui infeksi-infeksi sekunder tersebut. Pasien HIV paling sering meninggal akibat tuberkulosis atau hepatitis C.</p>\r\n<p>Untungnya, pemeriksaan HIV dan hepatitis telah rutin dilakukan pada orang sehat, misalnya saat melamar kerja. Penulis sering menemukan, seseorang baru mengetahui dirinya mengidap hepatitis B kronis saat pemeriksaan rutin sewaktu melamar kerja. Tiba-tiba saja hasil laboratorium menunjukkan nilai HbsAg posititf (penanda hepatitis B). Ia tidak tahu dari mana sumbernya, dan mengaku tidak menggunakan obat-obatan suntik, seks bebas, atau transfusi darah. Dan tidak ada keluhan kesehatan selama ini; murni hanya hasil lab saja yang bermasalah.</p>\r\n<p>Itulah kesulitan dari hepatitis B. Di Indonesia, mayoritas kasus hepatitis B kronis terjadi akibat infeksi melalui plasenta sewaktu dalam kandungan. Misalnya seorang ibu hamil dengan hepatitis B positif, sang bayi memiliki risiko yang sangat besar untuk mengidap hepatitis juga, namun dengan sifat penyakit kronis: tidak ada gejala pada tahun-tahun awal.</p>\r\n<p><strong>7. Sirosis hepar (penciutan hati)</strong></p>\r\n<p>Seperti halnya penyakit ginjal kronis, masalah kronis pada hati juga dapat mengakibatkan perubahan struktur dan penurunan fungsi. Disebut sirosis hati, apabila sel-sel normal telah mati, digantikan oleh serabut-serabut fibrosa, ukurannya menciut, dan tidak bisa dipulihkan lagi. Lazimnya kondisi ini diketahui melalui USG hati.</p>\r\n<p>Namun, ceritanya agak berbeda dengan penyakit-penyakit di atas. Biasanya pasien memiliki riwayat penyakit hati yang berangsur-angsur dan tidak diobati hingga terjadilah sirosis. Penyebab tersering ialah hepatitis kronis yang disepelekan karena tidak ada gejala. Sampai suatu ketika, barulah pasien mengalami muntah darah atau bengkak yang menandakan telah terjadi sirosis.</p>\r\n<p>Sejatinya, tak semua penyakit menimbulkan gejala pada awalnya. Keluhan yang muncul malah menandakan bahwa penyakit telah memasuki tahap lanjut, bahkan terminal. Di sinilah pentingnya bagi kita semua untuk waspada dan mau periksa kesehatan. Periksa tekanan darah, kadar gula darah, serta waspada terhadap semua faktor risiko adalah hal sederhana nan esensial mencegah tujuh penyakit di atas. Mengutip pepatah tua, mencegah akan selalu lebih baik daripada mengobati. Itupun kalau penyakitnya bisa diobati&hellip;</p>', 'uploads/Waspadai penyakit stroke.jpg', '“Dok, kok saya dibilang sakit padahal tidak ada keluhan apapun?”\r\n“Dok, kok hasil laboratoriumnya tidak normal padahal saya merasa sehat saja?”\r\n\r\nMungkin sebagian besar dari kita pernah bertanya begitu ketika divonis mengalami suatu penyakit, padahal jasmani kita merasa sehat. '),
(10, 'Anjuran Penting untuk Perawatan Bayi', '<p>.</p>\r\n<ol>\r\n<li><strong>Anda akan membuat anak Anda manja jika sering menggendong mereka.&nbsp;</strong>Bayi yang baru lahir biasanya menangis karena mereka memerlukan sesuatu. Apakah mereka perlu diganti popoknya, lapar atau hanya ingin dipeluk, menenangkan bayi Anda akan sangat membantu mereka merasa aman dan dicintai. Bayi tidak akan bisa menjadi manja. Bahkan makin konsisten Anda memenuhi kebutuhan mereka sebelum mereka berumur 6 bulan, bayi Anda akan menjadi makin jarang menuntut ke depannya.</li>\r\n<li><strong>Jaga ketenangan saat bayi Anda tidur.&nbsp;</strong>Ternyata bayi Anda sebenarnya sering mendengar suara bising ketika mereka masih berada di dalam rahim. Cobalah menyalakan penyedot debu ketika mereka sedang tidur siang. Dengungan mesin bisa saja membuat bayi Anda tidur lebih pulas dan Anda juga bisa sekalian membersihkan rumah.</li>\r\n<li><strong>Berikan bayi Anda jadwal makan yang ketat.&nbsp;</strong>Sebelumnya sering dianjurkan untuk memberi makan bayi setiap empat jam setelah mereka dibawa pulang dari rumah sakit. Kepercayaan bahwa memberi makan bayi hanya ketika mereka lapar akan menganggu kesehatan bayi dan bahkan bisa meningkatkan risiko infeksi usus. Namun sekarang banyak dokter yang menyarankan untuk memberi makan bayi ketika mereka mulai merasa lapar.</li>\r\n</ol>\r\n<p>Anjuran perawatan bayi telah berubah dari waktu ke waktu, akan tetapi satu hal tentang pengasuhan anak yang tetap pasti: Keinginan untuk membuat bayi Anda tetap senang dan sehat. Dan ingatlah: Anda pasti tahu yang paling baik untuk bayi Anda !</p>', 'uploads/newborn-baby-advice.jpg', 'Walaupun keluarga dan teman Anda peduli dan mempunyai niat baik dengan memberi nasihat, akan tetapi bisa saja nasihat mereka bisa menyesatkan. Berikut ini adalah tiga nasihat orang tua yang sudah ketinggalan zaman yang bisa Anda abaikan.');

-- --------------------------------------------------------

--
-- Table structure for table `artikel_dokter`
--

CREATE TABLE IF NOT EXISTS `artikel_dokter` (
`id_artikel_dokter` int(11) NOT NULL,
  `id_dokter` int(11) DEFAULT NULL,
  `id_artikel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE IF NOT EXISTS `dokter` (
`id_dokter` int(11) NOT NULL,
  `id_no_izin` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `alamat_rumah` varchar(255) DEFAULT NULL,
  `alamat_praktik` varchar(255) DEFAULT NULL,
  `nama_dokter` varchar(255) DEFAULT NULL,
  `no_telp` varchar(15) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `id_no_izin`, `email`, `alamat_rumah`, `alamat_praktik`, `nama_dokter`, `no_telp`, `password`) VALUES
(8, 10, 'faruqfadhil7@gmail.com', 'bangkalan', 'bangkalan', 'faruqfadh', '085859953545', 'frq03051997'),
(9, 18, 'ainunabdullah@gmail.com', 'surabaya', 'surabaya', 'ainun', '085859953545', 'frq03051997'),
(10, 24, 'abdullah.ainun4@gmail.com', 'sambogunung dukun gresik', 'jln raya golokan sedayu gresik', 'Ainun Abdullah', '081217238486', 'action'),
(11, 23, 'mifdlol.nafis@gmail.com', 'sambogunung dukun gresik', 'jln raya golokan sedayu gresik', 'Mifdlol Navis', '081217238486', 'action');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1491250531),
('m130524_201442_init', 1491250600);

-- --------------------------------------------------------

--
-- Table structure for table `no_izin_dokter`
--

CREATE TABLE IF NOT EXISTS `no_izin_dokter` (
`id_no_izin` int(11) NOT NULL,
  `no_izin` varchar(25) NOT NULL,
  `keahlian` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `no_izin_dokter`
--

INSERT INTO `no_izin_dokter` (`id_no_izin`, `no_izin`, `keahlian`) VALUES
(1, 'D001', 'Spesialis Kandungan'),
(2, 'D002', 'Spesialis Kandungan'),
(3, 'D003', 'Spesialis Kedokteran Gigi Anak'),
(4, 'D004', 'Spesialis Kedokteran Jiwa atau Psikiatri'),
(5, 'D005', 'Spesialis Konservasi Gigi'),
(6, 'D006', 'Spesialis Kedokteran Fisik & Rehabilitasi'),
(7, 'D007', 'Spesialis Konservasi Gigi'),
(8, 'D008', 'Spesialis Akupuntur Klinik'),
(9, 'D009', 'Dokter Umum'),
(10, 'D0010', 'Dokter Umum'),
(18, 'D0011', 'Dokter Umum'),
(19, 'D0012', 'Dokter Umum'),
(20, 'D0013', 'Dokter Gigi'),
(21, 'D0014', 'Spesialis Bedah Toraks & Kardiovaskular'),
(22, 'D0015', 'Dokter Umum'),
(23, 'D0016', 'Spesialis Kedokteran Gigi Anak'),
(24, 'D0017', 'Dokter Umum'),
(25, 'D0018', 'Dokter Umum'),
(26, 'D0019', 'Dokter Umum'),
(27, 'D0020', 'Dokter Umum'),
(28, 'D0021', 'Dokter Umum'),
(29, 'D0022', 'Spesialis Kedokteran Fisik & Rehabilitasi');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE IF NOT EXISTS `pasien` (
`id_pasien` int(11) NOT NULL,
  `nama_pasien` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_telp_pasien` varchar(15) DEFAULT NULL,
  `gol_darah` varchar(2) DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `nik` int(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama_pasien`, `alamat`, `no_telp_pasien`, `gol_darah`, `jenis_kelamin`, `nik`) VALUES
(4, 'binangkit intan', 'pangeranan ', '08585676533', 'O', 'PEREMPUAN', 2110151059),
(5, 'wahyu abied', 'sidoarjo', '08585676533', 'O', 'LAKI-LAKI', 2110151056),
(6, 'Ahmad Faizal', 'sekargadung dukun gresik', '81217238486', 'A', 'LAKI-LAKI', 2110151001),
(7, 'Ahmad Roni', 'sekargadung dukun gresik', '81217239878', 'A', 'LAKI-LAKI', 2110151001),
(8, 'Ahmad deni', 'sekargadung dukun gresik', '81217230987', 'A', 'LAKI-LAKI', 2110151002),
(9, 'Ahmad abid', 'kauman pangka gresik', '81217231234', 'A', 'LAKI-LAKI', 2110151003),
(10, 'Ahmad aan', 'GKB gresik', '81217238486', 'A', 'LAKI-LAKI', 2110151004),
(11, 'Ahmad navis', 'keputih sukolilo surabaya', '81217235674', 'A', 'LAKI-LAKI', 2110151005),
(12, 'Ahmad badrun', 'keputih sukolilo surabaya', '81217233324', 'A', 'LAKI-LAKI', 2110151006),
(13, 'faizal amiruddin', 'keputih sukolilo surabaya', '81217235674', 'A', 'LAKI-LAKI', 2110151005),
(14, 'faruq', 'keputih sukolilo surabaya', '81217233324', 'A', 'LAKI-LAKI', 2110151006),
(15, 'abid', 'keputih sukolilo surabaya', '81217235674', 'A', 'LAKI-LAKI', 2110151005),
(16, 'reza pahlevie', 'keputih sukolilo surabaya', '81217233324', 'A', 'LAKI-LAKI', 2110151006),
(17, 'ika nuzulia', 'sekargadung dukun gresik', '81217239878', 'A', 'LAKI-LAKI', 2110151007),
(18, 'Ahmad deni', 'sekargadung dukun gresik', '81217230987', 'A', 'LAKI-LAKI', 2110151008),
(19, 'Ahmad abid', 'kauman pangka gresik', '81217231234', 'A', 'LAKI-LAKI', 2110151009),
(20, 'Ahmad aan', 'GKB gresik', '81217238486', 'A', 'LAKI-LAKI', 2110151004);

-- --------------------------------------------------------

--
-- Table structure for table `riwayat`
--

CREATE TABLE IF NOT EXISTS `riwayat` (
`id_riwayat` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `umur` int(11) DEFAULT NULL,
  `berat_badan` int(11) DEFAULT NULL,
  `tinggi_badan` int(11) DEFAULT NULL,
  `riwayat_kesehatan_keluarga` text,
  `keluhan_utama` text,
  `diagnosa` text,
  `larangan` text,
  `note` text,
  `tgl_periksa` date DEFAULT NULL,
  `perawatan` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `riwayat`
--

INSERT INTO `riwayat` (`id_riwayat`, `id_pasien`, `id_dokter`, `umur`, `berat_badan`, `tinggi_badan`, `riwayat_kesehatan_keluarga`, `keluhan_utama`, `diagnosa`, `larangan`, `note`, `tgl_periksa`, `perawatan`) VALUES
(1, 4, 9, 17, 80, 170, 'tidak ada', 'meriang, panas', 'flue ringan', 'tidak boleh lelah', 'tidak ada', '2017-06-12', 'rumah'),
(2, 5, 10, 30, 180, 178, 'asam urat ayah', 'pusing,selera makan menurun', 'inveksi pencernaan', 'tidak boleh memakan pedas', 'tidak ada', '2017-07-15', 'rumahsakit'),
(5, 4, 8, 18, 80, 170, 'ayah pernah mengidap penyakit asam manis, ', 'panas,meriang,badan panas,badan panas semua', 'flue ringan', 'tidak boleh tidur terlalu malam', 'tidak ada', '2017-05-09', 'rumah'),
(6, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2016-07-06', 'tidak ada'),
(7, 5, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-31', 'tidak ada'),
(8, 6, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(9, 7, 9, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2016-07-20', 'tidak ada'),
(10, 8, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2016-08-30', 'tidak ada'),
(11, 9, 9, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-06-28', 'tidak ada'),
(12, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2015-10-01', 'tidak ada'),
(13, 4, 10, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(14, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-04-17', 'tidak ada'),
(15, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(16, 4, 11, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(17, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(18, 4, 11, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(19, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(20, 4, 10, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(21, 4, 11, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(22, 4, 9, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(23, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(24, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(25, 4, 11, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '1997-07-18', 'tidak ada'),
(26, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(27, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2013-07-18', 'tidak ada'),
(28, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(29, 4, 9, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '1990-07-18', 'tidak ada'),
(30, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(31, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2016-10-15', 'tidak ada'),
(32, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(33, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2015-09-29', 'tidak ada'),
(34, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2000-07-13', 'tidak ada'),
(35, 4, 11, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(36, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '1990-07-10', 'tidak ada'),
(37, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(38, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(39, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(40, 4, 9, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(41, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '1994-07-15', 'tidak ada'),
(42, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(43, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(44, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(45, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '1998-07-23', 'tidak ada'),
(46, 4, 11, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(47, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(48, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(49, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(50, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(51, 4, 11, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(52, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(53, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(54, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(55, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(56, 4, 9, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit kelapa migrain', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(57, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit pinggang', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(58, 4, 8, 50, 50, 170, 'tidak ada', 'panas di kepala bagian samping kanan', 'sakit perut', 'tidak boleh bergerak secara tiba-tiba', NULL, '2017-07-18', 'tidak ada'),
(59, 7, 11, 80, 50, 170, 'stroke', 'kejang kejang', 'stroke', 'tidak boleh marah', NULL, '2017-07-18', ''),
(60, 7, 11, 80, 50, 170, 'stroke', 'kejang kejang', 'stroke', 'tidak boleh marah', NULL, '2017-07-18', ''),
(61, 9, 9, 80, 50, 170, 'stroke', 'kejang kejang', 'stroke', 'tidak boleh marah', NULL, '2017-07-18', ''),
(62, 10, 11, 80, 50, 170, 'stroke', 'kejang kejang', 'stroke', 'tidak boleh marah', NULL, '2017-07-18', ''),
(63, 11, 8, 80, 50, 170, 'stroke', 'kejang kejang', 'stroke', 'tidak boleh marah', NULL, '2017-07-18', ''),
(64, 12, 9, 80, 50, 170, 'stroke', 'kejang kejang', 'stroke', 'tidak boleh marah', NULL, '2017-07-18', ''),
(65, 13, 11, 80, 50, 170, 'stroke', 'kejang kejang', 'stroke', 'tidak boleh marah', NULL, '2017-07-18', ''),
(66, 14, 11, 80, 50, 170, 'stroke', 'kejang kejang', 'stroke', 'tidak boleh marah', NULL, '2017-07-18', ''),
(67, 15, 10, 80, 50, 170, 'stroke', 'kejang kejang', 'stroke', 'tidak boleh marah', NULL, '2017-07-18', ''),
(68, 16, 9, 80, 50, 170, 'stroke', 'kejang kejang', 'stroke', 'tidak boleh marah', NULL, '2017-07-18', ''),
(69, 17, 8, 80, 50, 170, 'stroke', 'kejang kejang', 'stroke', 'tidak boleh marah', NULL, '2017-07-18', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
 ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `artikel_dokter`
--
ALTER TABLE `artikel_dokter`
 ADD PRIMARY KEY (`id_artikel_dokter`), ADD KEY `id_dokter` (`id_dokter`), ADD KEY `id_artikel` (`id_artikel`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
 ADD PRIMARY KEY (`id_dokter`), ADD KEY `id_no_izin` (`id_no_izin`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
 ADD PRIMARY KEY (`version`);

--
-- Indexes for table `no_izin_dokter`
--
ALTER TABLE `no_izin_dokter`
 ADD PRIMARY KEY (`id_no_izin`), ADD UNIQUE KEY `no_izin` (`no_izin`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
 ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `riwayat`
--
ALTER TABLE `riwayat`
 ADD PRIMARY KEY (`id_riwayat`), ADD KEY `id_pasien` (`id_pasien`), ADD KEY `id_dokter` (`id_dokter`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`id_dokter`), ADD UNIQUE KEY `password_reset_token` (`password_reset_token`), ADD KEY `id_dokter` (`id_dokter`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `artikel_dokter`
--
ALTER TABLE `artikel_dokter`
MODIFY `id_artikel_dokter` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
MODIFY `id_dokter` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `no_izin_dokter`
--
ALTER TABLE `no_izin_dokter`
MODIFY `id_no_izin` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
MODIFY `id_pasien` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `riwayat`
--
ALTER TABLE `riwayat`
MODIFY `id_riwayat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `artikel_dokter`
--
ALTER TABLE `artikel_dokter`
ADD CONSTRAINT `artikel_dokter_ibfk_1` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `artikel_dokter_ibfk_2` FOREIGN KEY (`id_artikel`) REFERENCES `artikel` (`id_artikel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dokter`
--
ALTER TABLE `dokter`
ADD CONSTRAINT `dokter_ibfk_1` FOREIGN KEY (`id_no_izin`) REFERENCES `no_izin_dokter` (`id_no_izin`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `riwayat`
--
ALTER TABLE `riwayat`
ADD CONSTRAINT `riwayat_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `riwayat_ibfk_2` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
