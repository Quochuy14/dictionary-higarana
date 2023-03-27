-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2023 at 11:29 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jp`
--

-- --------------------------------------------------------

--
-- Table structure for table `dictionaries`
--

CREATE TABLE `dictionaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `japanese` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pronuciation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `english` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vietnamese` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dictionaries`
--

INSERT INTO `dictionaries` (`id`, `japanese`, `pronuciation`, `english`, `vietnamese`, `created_at`, `updated_at`) VALUES
(11, 'いち', 'i chi', 'one', 'Số 1', '2023-03-25 19:45:50', '2023-03-25 19:45:50'),
(12, 'に', 'ni', 'two', 'Số 2', '2023-03-26 00:22:12', '2023-03-26 00:22:12'),
(14, 'なな', 'na na', 'seven', 'số 7', '2023-03-26 00:45:20', '2023-03-26 00:45:20'),
(15, 'はい', 'ha i', 'yes', 'Vâng', '2023-03-26 00:59:53', '2023-03-26 00:59:53'),
(16, 'おはよう', 'o ha yo u', 'good morning', 'chào buổi sáng', '2023-03-26 01:00:35', '2023-03-26 01:00:35'),
(17, 'やさい', 'ya sa i', 'vegetable', 'Rau củ', '2023-03-26 03:25:22', '2023-03-26 03:25:22'),
(18, 'よむ', 'yo mu', 'read', 'Đọc', '2023-03-26 03:34:40', '2023-03-26 03:34:40'),
(20, 'ほしい', 'ho shi i', 'want', 'muốn', '2023-03-26 03:37:42', '2023-03-26 03:37:42'),
(21, 'よん', 'yo n', 'four', 'số 4', '2023-03-26 04:26:29', '2023-03-26 04:26:29'),
(22, 'てら', 'te ra', 'temple', 'Ngôi đền', '2023-03-26 04:27:25', '2023-03-26 04:27:25'),
(23, 'しろ', 'shi ro', 'white', 'màu trắng', '2023-03-26 04:32:49', '2023-03-26 04:32:49'),
(24, 'あか', 'a ka', 'red', 'màu đỏ', '2023-03-26 04:32:59', '2023-03-26 04:32:59'),
(25, 'あお', 'a o', 'blue', 'màu xanh', '2023-03-26 04:33:09', '2023-03-26 04:33:09'),
(26, 'よる', 'yo ru', 'night', 'ban đêm', '2023-03-26 04:34:13', '2023-03-26 04:34:13'),
(27, 'こんにちは', 'ko n ni chi ha', 'Hi', 'Xin chào', '2023-03-26 04:34:46', '2023-03-26 04:34:46'),
(28, 'きる', 'ki ru', 'wear', 'mặc', '2023-03-26 04:35:26', '2023-03-26 04:35:26'),
(29, 'おさけ', 'o sa ke', 'alcohol', 'rượu', '2023-03-26 04:35:58', '2023-03-26 04:35:58'),
(30, 'のむ', 'no mu', 'drink', 'Uống', '2023-03-26 04:36:24', '2023-03-26 04:36:24'),
(31, 'すし', 'su shi', 'sushi', 'sushi', '2023-03-26 04:36:58', '2023-03-26 04:36:58'),
(32, 'すき', 'su ki', 'like', 'Thích', '2023-03-26 04:37:15', '2023-03-26 04:37:15'),
(34, 'あまい', 'a ma i', 'sweet', 'Ngọt ngào', '2023-03-26 04:42:45', '2023-03-26 04:42:45'),
(35, 'きたない', 'ki ta na i', 'dirty', 'Bẩn thỉu', '2023-03-26 04:43:20', '2023-03-26 04:43:20'),
(36, 'わたし', 'wa ta shi', 'i', 'tôi', '2023-03-26 04:43:38', '2023-03-26 04:43:38'),
(37, 'さようなら', 'sa yo u na ra', 'good bye', 'tạm biệt', '2023-03-26 04:44:08', '2023-03-26 04:44:08'),
(38, 'うし', 'u shi', 'cow', 'con bò', '2023-03-26 04:44:27', '2023-03-26 04:44:27'),
(39, 'かさ', 'ka sa', 'umbrella', 'Chiếc ô', '2023-03-26 04:45:01', '2023-03-26 04:45:01'),
(40, 'さい', 'sa i', 'year old', 'tuổi', '2023-03-26 04:45:20', '2023-03-26 04:45:20'),
(41, 'あさ', 'a sa', 'morning', 'buổi sáng', '2023-03-26 04:45:39', '2023-03-26 04:45:39'),
(42, 'いえ', 'i e', 'house', 'ngôi nhà', '2023-03-26 04:45:52', '2023-03-26 04:45:52'),
(43, 'かみ', 'ka mi', 'paper', 'giấy', '2023-03-26 04:46:14', '2023-03-26 04:46:14'),
(44, 'さん', 'sa n', 'three', 'số 3', '2023-03-26 04:46:30', '2023-03-26 04:46:30'),
(45, 'あき', 'a ki', 'autumn', 'mùa thu', '2023-03-26 04:48:25', '2023-03-26 04:48:25'),
(46, 'ここ', 'ko ko', 'here', 'đây', '2023-03-26 04:48:46', '2023-03-26 04:48:46'),
(47, 'しし', 'shi shi', 'lion', 'sư tử', '2023-03-26 04:49:01', '2023-03-26 04:49:01'),
(48, 'すこし', 'su ko shi', 'a little', 'một ít', '2023-03-26 04:49:38', '2023-03-26 04:49:38'),
(49, 'きた', 'ki ta', 'north', 'phía bắc', '2023-03-26 04:52:42', '2023-03-26 04:52:42'),
(50, 'えん', 'e n', 'yen', 'đồng yên', '2023-03-26 04:53:48', '2023-03-26 04:53:48'),
(51, 'ゆき', 'yu ki', 'snow', 'tuyết', '2023-03-26 04:54:03', '2023-03-26 04:54:03'),
(52, 'つき', 'tsu ki', 'moon', 'mặt trăng', '2023-03-26 04:57:18', '2023-03-26 04:57:18'),
(53, 'こし', 'ko shi', 'waist', 'thắt lưng', '2023-03-26 04:57:47', '2023-03-26 04:57:47'),
(54, 'いす', 'i su', 'chair', 'cái ghế', '2023-03-26 04:58:06', '2023-03-26 04:58:06'),
(55, 'しあい', 'shi a i', 'game', 'trò chơi', '2023-03-26 04:58:23', '2023-03-26 04:58:23'),
(56, 'えみ', 'e mi', 'smile', 'nụ cười', '2023-03-26 04:58:41', '2023-03-26 04:58:41'),
(57, 'いつ', 'i tsu', 'when', 'khi', '2023-03-26 04:59:03', '2023-03-26 04:59:03'),
(58, 'から', 'ka ra', 'from', 'từ', '2023-03-26 04:59:17', '2023-03-26 04:59:17'),
(59, 'みそ', 'mi so', 'miso', 'tương miso', '2023-03-26 04:59:42', '2023-03-26 04:59:42'),
(60, 'かう', 'ka u', 'to buy', 'mua', '2023-03-26 05:00:36', '2023-03-26 05:00:36'),
(61, 'うすい', 'u su i', 'thin', 'gầy', '2023-03-26 05:00:55', '2023-03-26 05:00:55'),
(62, 'わかい', 'wa ka i', 'young', 'trẻ', '2023-03-26 05:11:18', '2023-03-26 05:11:18'),
(63, 'そら', 'so ra', 'sky', 'bầu trời', '2023-03-26 07:20:55', '2023-03-26 07:20:55'),
(64, 'しま', 'shi ma', 'island', 'hòn đảo', '2023-03-26 07:22:03', '2023-03-26 07:22:03'),
(65, 'いま', 'i ma', 'now', 'bây giờ', '2023-03-26 07:22:19', '2023-03-26 07:22:19'),
(66, 'はし', 'ha shi', 'chopsticks', 'đôi đũa', '2023-03-26 07:23:01', '2023-03-26 07:23:01'),
(67, 'はち', 'ha chi', 'eight', 'số 8', '2023-03-26 07:23:16', '2023-03-26 07:23:16'),
(68, 'なつ', 'na tsu', 'summer', 'mùa hè', '2023-03-26 07:23:45', '2023-03-26 07:23:45'),
(69, 'はな', 'ha na', 'flower', 'hoa', '2023-03-26 07:24:17', '2023-03-26 07:24:17'),
(70, 'はわ', 'ha wa', 'river', 'dòng sông', '2023-03-26 07:24:30', '2023-03-26 07:24:30'),
(71, 'ちかい', 'chi ka i', 'close', 'đóng', '2023-03-26 07:24:51', '2023-03-26 07:24:51'),
(72, 'たかい', 'ta ka i', 'expensive', 'đắt', '2023-03-26 07:25:12', '2023-03-26 07:25:12'),
(73, 'ゆり', 'yu ri', 'lily', 'Hoa loa kèn', '2023-03-26 07:25:30', '2023-03-26 07:25:30'),
(74, 'さら', 'sa ra', 'plate', 'chiếc đĩa', '2023-03-26 07:26:02', '2023-03-26 07:26:02'),
(75, 'め', 'me', 'eye', 'con mắt', '2023-03-26 07:26:20', '2023-03-26 07:26:20'),
(76, 'せなか', 'se na ka', 'back', 'quay lại', '2023-03-26 07:26:40', '2023-03-26 07:26:40'),
(77, 'みみ', 'mi mi', 'ear', 'tai', '2023-03-26 07:26:54', '2023-03-26 07:26:54'),
(78, 'くつ', 'ku tsu', 'shoes', 'đôi giày', '2023-03-26 07:27:12', '2023-03-26 07:27:12'),
(79, 'もち', 'mo chi', 'mochi', 'Bánh mochi', '2023-03-26 07:28:15', '2023-03-26 07:28:15'),
(80, 'せん', 'se n', 'thousand', 'ngàn', '2023-03-26 07:28:40', '2023-03-26 07:28:40'),
(81, 'くま', 'ku ma', 'bear', 'con gấu', '2023-03-26 07:29:09', '2023-03-26 07:29:09'),
(82, 'ねこ', 'ne ko', 'cat', 'con mèo', '2023-03-26 07:29:23', '2023-03-26 07:29:23'),
(83, 'いぬ', 'i nu', 'dog', 'con chó', '2023-03-26 07:29:39', '2023-03-26 07:29:39'),
(84, 'ふゆ', 'fu yu', 'winter', 'mùa đông', '2023-03-26 07:30:24', '2023-03-26 07:30:24'),
(85, 'えき', 'e ki', 'train station', 'ga xe lửa', '2023-03-26 07:31:26', '2023-03-26 07:31:26'),
(86, 'なか', 'na ka', 'middle', 'ở giữa', '2023-03-26 07:31:54', '2023-03-26 07:31:54'),
(87, 'あね', 'a ne', 'older sister', 'chị gái', '2023-03-26 07:32:33', '2023-03-26 07:32:33'),
(88, 'くに', 'ku ni', 'country', 'quốc gia', '2023-03-26 07:32:49', '2023-03-26 07:32:49'),
(89, 'いけ', 'i ke', 'pond', 'cái ao', '2023-03-26 07:33:23', '2023-03-26 07:33:23'),
(90, 'にわ', 'ni wa', 'garden', 'khu vườn', '2023-03-26 07:33:49', '2023-03-26 07:33:49'),
(92, 'つゆ', 'tsu yu', 'rainy season', 'mùa mưa', '2023-03-26 07:34:53', '2023-03-26 07:34:53'),
(93, 'かゆい', 'ka yu i', 'itchy', 'ngứa', '2023-03-26 07:35:16', '2023-03-26 07:35:16'),
(94, 'からい', 'ka ra i', 'spicy', 'cay', '2023-03-26 07:35:37', '2023-03-26 07:35:37'),
(95, 'あつい', 'a tsu i', 'hot', 'nóng', '2023-03-26 07:36:02', '2023-03-26 07:36:02'),
(96, 'かた', 'ka ta', 'flag', 'lá cờ', '2023-03-26 07:36:18', '2023-03-26 07:36:18'),
(97, 'まつり', 'ma tsu ri', 'festival', 'lễ hội', '2023-03-26 07:36:49', '2023-03-26 07:36:49'),
(98, 'たま', 'ta ma', 'ball', 'quả bóng', '2023-03-26 07:37:04', '2023-03-26 07:37:04'),
(99, 'はんたい', 'ha n ta i', 'opposite', 'đối diện', '2023-03-26 07:37:29', '2023-03-26 07:37:29'),
(101, 'ほん', 'ho n', 'book', 'sách', '2023-03-26 07:38:05', '2023-03-26 07:38:05'),
(102, 'ほる', 'ho ru', 'spring', 'mùa xuân', '2023-03-26 07:38:37', '2023-03-26 07:38:37'),
(103, 'ぬま', 'nu ma', 'swamp', 'đầm lầy', '2023-03-26 07:39:35', '2023-03-26 07:39:35'),
(104, 'ほね', 'ho ne', 'bone', 'xương', '2023-03-26 07:39:49', '2023-03-26 07:39:49'),
(105, 'ひま', 'hi ma', 'free time', 'thời gian rãnh', '2023-03-26 07:40:15', '2023-03-26 07:40:15'),
(106, 'へや', 'he ya', 'room', 'căn phòng', '2023-03-26 07:40:37', '2023-03-26 07:40:37'),
(107, 'かつら', 'ka tsu ra', 'wig', 'tác giả', '2023-03-26 07:41:10', '2023-03-26 07:41:10'),
(108, 'みせ', 'mi se', 'store', 'cửa hàng', '2023-03-26 07:41:35', '2023-03-26 07:41:35'),
(109, 'せかい', 'se ka i', 'world', 'thế giới', '2023-03-26 07:41:58', '2023-03-26 07:41:58'),
(110, 'むし', 'mu shi', 'bug', 'sâu bọ', '2023-03-26 07:42:37', '2023-03-26 07:42:37'),
(111, 'やま', 'ya ma', 'mountain', 'núi', '2023-03-26 07:43:08', '2023-03-26 07:43:08'),
(112, 'へん', 'he n', 'strange', 'lạ lùng', '2023-03-26 07:43:51', '2023-03-26 07:43:51'),
(113, 'むら', 'mu ra', 'village', 'ngôi làng', '2023-03-26 07:46:48', '2023-03-26 07:46:48'),
(115, 'とり', 'to ri', 'bird', 'con chim', '2023-03-26 07:48:10', '2023-03-26 07:48:10'),
(116, 'くすり', 'ku su ri', 'medicine', 'thuốc', '2023-03-26 07:48:44', '2023-03-26 07:48:44'),
(117, 'あに', 'a ni', 'older brother', 'anh trai', '2023-03-26 07:49:08', '2023-03-26 07:49:08'),
(118, 'にく', 'ni ku', 'meat', 'thịt', '2023-03-26 07:49:22', '2023-03-26 07:49:22'),
(119, 'さいふ', 'sa i fu', 'wallet', 'cái ví', '2023-03-26 07:49:53', '2023-03-26 07:49:53'),
(120, 'ろく', 'ro ku', 'six', 'số 6', '2023-03-26 07:50:07', '2023-03-26 07:50:07'),
(121, 'はと', 'ha to', 'pigeon', 'chim bồ câu', '2023-03-26 07:50:26', '2023-03-26 07:50:26'),
(122, 'いろ', 'i ro', 'color', 'màu sắc', '2023-03-26 07:50:46', '2023-03-26 07:50:46'),
(123, 'そと', 'so to', 'outside', 'bên ngoài', '2023-03-26 07:53:32', '2023-03-26 07:53:32'),
(125, 'くもり', 'ku mo ri', 'cloud', 'đám mây', '2023-03-26 18:40:28', '2023-03-26 18:40:28'),
(131, 'ひる', 'hi ru', 'daytime', 'ban ngày', '2023-03-27 00:31:19', '2023-03-27 00:31:19'),
(132, 'ぎんこう', 'gi n ko u', 'bank', 'ngân hàng', '2023-03-27 01:00:30', '2023-03-27 01:00:30'),
(133, 'まんが', 'ma n ga', 'manga', 'truyện', '2023-03-27 01:00:58', '2023-03-27 01:00:58'),
(134, 'かぜ', 'ka ze', 'wind', 'gió', '2023-03-27 01:01:21', '2023-03-27 01:01:21'),
(135, 'ちず', 'chi zu', 'map', 'bản đồ', '2023-03-27 01:01:35', '2023-03-27 01:01:35'),
(137, 'えもじ', 'e mo ji', 'emoji', 'biểu tượng cảm xúc', '2023-03-27 01:02:20', '2023-03-27 01:02:20'),
(138, 'くだもの', 'ku da mo no', 'fruit', 'trái cây', '2023-03-27 01:03:25', '2023-03-27 01:03:25'),
(139, 'でんわ', 'de n wa', 'telephone', 'Điện thoại', '2023-03-27 01:03:48', '2023-03-27 01:03:48'),
(140, 'かばん', 'ka ba n', 'bag', 'cái túi', '2023-03-27 02:09:59', '2023-03-27 02:09:59'),
(141, 'べんとう', 'be n to u', 'a boxer lunch', 'hộp cơm trưa', '2023-03-27 02:10:35', '2023-03-27 02:10:35'),
(142, 'てんぷら', 'te n pu ra', 'tempura', 'tempura', '2023-03-27 02:11:10', '2023-03-27 02:11:10'),
(143, 'えんぴつ', 'e n pi tsu', 'pencil', 'bút chì', '2023-03-27 02:12:00', '2023-03-27 02:12:00'),
(146, 'きゅ', 'kyu', 'nine', 'số 9', '2023-03-27 02:15:25', '2023-03-27 02:15:25'),
(147, 'きょ', 'kyo', 'today', 'hôm nay', '2023-03-27 02:16:38', '2023-03-27 02:16:38'),
(148, 'おちゃ', 'o cha', 'green tea', 'trà xanh', '2023-03-27 02:23:00', '2023-03-27 02:23:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_24_115707_create_word_table', 1),
(6, '2023_03_24_115914_create_dictionarys_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `word`
--

CREATE TABLE `word` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pronunciation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dictionaries`
--
ALTER TABLE `dictionaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `word`
--
ALTER TABLE `word`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dictionaries`
--
ALTER TABLE `dictionaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `word`
--
ALTER TABLE `word`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
