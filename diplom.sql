-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 26 2022 г., 13:26
-- Версия сервера: 8.0.24
-- Версия PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `diplom`
--

-- --------------------------------------------------------

--
-- Структура таблицы `activations`
--

CREATE TABLE `activations` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `activations`
--

INSERT INTO `activations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Steam', NULL, NULL),
(2, 'Bethesda.net', NULL, NULL),
(3, 'Epic Game Stor', NULL, NULL),
(4, 'Origin', NULL, NULL),
(5, 'Ubisoft Connect ', NULL, NULL),
(6, 'Rockstar Games', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `avatars`
--

CREATE TABLE `avatars` (
  `id` bigint UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `avatars`
--

INSERT INTO `avatars` (`id`, `url`, `created_at`, `updated_at`) VALUES
(1, 'ProfAvatar/1.svg', NULL, NULL),
(2, 'ProfAvatar/2.svg', NULL, NULL),
(3, 'ProfAvatar/3.svg', NULL, NULL),
(4, 'ProfAvatar/4.svg', NULL, NULL),
(5, 'ProfAvatar/5.svg', NULL, NULL),
(6, 'ProfAvatar/6.svg', NULL, NULL),
(7, 'ProfAvatar/7.svg', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `cupons`
--

CREATE TABLE `cupons` (
  `id` bigint UNSIGNED NOT NULL,
  `cupon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cupons`
--

INSERT INTO `cupons` (`id`, `cupon`, `price`, `created_at`, `updated_at`) VALUES
(6, '.cUe6E50HOCA', 759, NULL, NULL),
(7, 'Lh,zyBx_pFS8', 500, NULL, NULL),
(8, 'Yfl539TNPRy0', 300, NULL, NULL),
(9, '3iAnTXHKlaB0', 200, NULL, NULL),
(10, 'r-RScCL8HKTk', 600, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `devolopers`
--

CREATE TABLE `devolopers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `devolopers`
--

INSERT INTO `devolopers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Sony', NULL, NULL),
(2, 'Valve', NULL, NULL),
(3, 'EA', NULL, NULL),
(4, '2K', NULL, NULL),
(5, 'Blizzard', NULL, NULL),
(6, 'Compom', NULL, NULL),
(7, 'Mihuo', NULL, NULL),
(8, 'Bethesda', NULL, NULL),
(9, 'Naughty Dog', NULL, NULL),
(10, 'Infinity World', NULL, NULL),
(11, 'Nintendo', NULL, NULL),
(12, 'RockStar Games', NULL, NULL),
(13, 'Ubisoft', NULL, NULL),
(14, 'SOFTLAB-NSK', NULL, NULL),
(15, 'АКЕЛЛА', NULL, NULL),
(16, 'Stunlock Studios', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `genres`
--

CREATE TABLE `genres` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Экшен', NULL, NULL),
(2, 'Ролевые', NULL, NULL),
(3, 'Приключение', NULL, NULL),
(4, 'Онлайн', NULL, NULL),
(6, 'Симуляторы ', NULL, NULL),
(7, 'Стратегии ', NULL, NULL),
(8, 'Спортивные ', NULL, NULL),
(9, 'Головоломки', NULL, NULL),
(10, 'Инди', NULL, NULL),
(11, 'Казуальные', NULL, NULL),
(12, 'Навальный', NULL, '2022-04-02 09:31:33'),
(13, 'MOBA', NULL, NULL),
(14, 'MMORPG', NULL, NULL),
(15, 'Battle Royale', NULL, NULL),
(17, 'ККИ', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `imageposter`
--

CREATE TABLE `imageposter` (
  `id` bigint UNSIGNED NOT NULL,
  `urlImage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `imageposter`
--

INSERT INTO `imageposter` (`id`, `urlImage`) VALUES
(1, 'https://cdn.cloudflare.steamstatic.com/steam/apps/239140/header.jpg?t=1651762410'),
(2, 'https://cdn.akamai.steamstatic.com/steam/apps/594650/header.jpg?t=1654513341'),
(3, 'https://cdn.cloudflare.steamstatic.com/steam/apps/924970/header.jpg?t=1649358821'),
(4, 'https://cdn.cloudflare.steamstatic.com/steam/apps/412020/header.jpg?t=1649065184'),
(5, 'https://cdn.cloudflare.steamstatic.com/steam/apps/377160/header.jpg?t=1650909928'),
(6, 'https://cdn.cloudflare.steamstatic.com/steam/apps/1850570/header.jpg?t=1649438096'),
(7, 'https://cdn.cloudflare.steamstatic.com/steam/apps/489830/header.jpg?t=1650909796'),
(8, 'https://cdn.cloudflare.steamstatic.com/steam/apps/292030/header_russian.jpg?t=1646996408'),
(9, 'https://cdn.cloudflare.steamstatic.com/steam/apps/1151640/header.jpg?t=1635442187'),
(10, 'https://cdn.cloudflare.steamstatic.com/steam/apps/1259420/header.jpg?t=1635476187'),
(17, 'https://cdn.akamai.steamstatic.com/steam/apps/1604030/header.jpg?t=1653053023'),
(22, 'https://cdn.akamai.steamstatic.com/steam/apps/1245620/header.jpg?t=1654259241');

-- --------------------------------------------------------

--
-- Структура таблицы `imagescrean`
--

CREATE TABLE `imagescrean` (
  `id` bigint NOT NULL,
  `idTovar` bigint UNSIGNED NOT NULL,
  `urlImage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `imagescrean`
--

INSERT INTO `imagescrean` (`id`, `idTovar`, `urlImage`) VALUES
(5, 17, 'https://cdn.akamai.steamstatic.com/steam/apps/1604030/ss_d2e9d6e735dc27b24c8640fb048d6e782c17890a.600x338.jpg?t=1653053023'),
(6, 17, 'https://cdn.akamai.steamstatic.com/steam/apps/1604030/ss_35d7baf25bbf3a626271284d896799e5e6302014.600x338.jpg?t=1653053023'),
(7, 17, 'https://cdn.akamai.steamstatic.com/steam/apps/1604030/ss_acab31ac83e06add31dca59bdd39ca04ed6ca3a3.600x338.jpg?t=1653053023'),
(8, 17, 'https://cdn.akamai.steamstatic.com/steam/apps/1604030/ss_39a81a80a5674ad9f28249e54a56e29ab874bd04.600x338.jpg?t=1653053023'),
(9, 17, 'https://cdn.akamai.steamstatic.com/steam/apps/1604030/ss_7a8b278828615b9d9ac03e159ccf919889ea2504.600x338.jpg?t=1653053023'),
(10, 17, 'https://cdn.akamai.steamstatic.com/steam/apps/1604030/ss_3eff976163ecc8d479a9a33008620f911020a2f8.600x338.jpg?t=1653053023'),
(12, 1, 'https://cdn.cloudflare.steamstatic.com/steam/apps/239140/ss_8bf1e0e5333f5899b413f90d67a3cfe8b8b8f8e1.1920x1080.jpg?t=1651762410'),
(13, 1, 'https://cdn.cloudflare.steamstatic.com/steam/apps/239140/ss_3b41c96ae1a6f31c597187672221b8db9b78419b.1920x1080.jpg?t=1651762410'),
(14, 1, 'https://cdn.cloudflare.steamstatic.com/steam/apps/239140/ss_ac414827362042b5f4a95ab90df508adc822ddc1.1920x1080.jpg?t=1651762410'),
(15, 1, 'https://cdn.cloudflare.steamstatic.com/steam/apps/239140/ss_37f8192f3bf85359ddee0b5c2e9a58eaaf6c4026.1920x1080.jpg?t=1651762410'),
(16, 1, 'https://cdn.cloudflare.steamstatic.com/steam/apps/239140/ss_488226f013287012e0feaed2fb7799dbe038fd00.1920x1080.jpg?t=1651762410'),
(17, 1, 'https://cdn.cloudflare.steamstatic.com/steam/apps/239140/ss_1f0dc94f46fa1a953827188188887f6a12911ec2.1920x1080.jpg?t=1651762410'),
(18, 2, 'https://cdn.akamai.steamstatic.com/steam/apps/594650/ss_ecccaab1143081ca96d8bf00d8b1c4d3d3291e64.1920x1080.jpg?t=1654513341'),
(19, 2, 'https://cdn.akamai.steamstatic.com/steam/apps/594650/ss_36f6d959f75d1cca48c2a98d892d2697f6d4bde6.1920x1080.jpg?t=1654513341'),
(20, 2, 'https://cdn.akamai.steamstatic.com/steam/apps/594650/ss_f2a2d3445a568c0748aca08a44f45ceac4810cb4.1920x1080.jpg?t=1654513341'),
(21, 2, 'https://cdn.akamai.steamstatic.com/steam/apps/594650/ss_021db5b59b2108a69fa710164b97e58cfaada03c.1920x1080.jpg?t=1654513341'),
(22, 2, 'https://cdn.akamai.steamstatic.com/steam/apps/594650/ss_4697d48347130eaf48e03e92556252f6b8744428.1920x1080.jpg?t=1654513341'),
(23, 2, 'https://cdn.akamai.steamstatic.com/steam/apps/594650/ss_5d14f045ac48f8aa8ccd643a1db7e83a0c384fba.1920x1080.jpg?t=1654513341'),
(24, 3, 'https://cdn.cloudflare.steamstatic.com/steam/apps/924970/ss_61ba5c1e5ff0992738255a3c6679fdbc2cd659de.1920x1080.jpg?t=1649358821'),
(25, 3, 'https://cdn.cloudflare.steamstatic.com/steam/apps/924970/ss_01d625277a7dc76a67f78de3a3ed1e633d205ddd.1920x1080.jpg?t=1649358821'),
(26, 3, 'https://cdn.cloudflare.steamstatic.com/steam/apps/924970/ss_cb8d4bd7139ce8f80df16e5c7c4be906222f050b.1920x1080.jpg?t=1649358821'),
(27, 3, 'https://cdn.cloudflare.steamstatic.com/steam/apps/924970/ss_cff8429e91cfc960864b0652855a8458e43d476a.1920x1080.jpg?t=1649358821'),
(28, 3, 'https://cdn.cloudflare.steamstatic.com/steam/apps/924970/ss_38fee58572e3ad66ef445bcc358ee8dcaadf06bc.1920x1080.jpg?t=1649358821'),
(29, 3, 'https://cdn.cloudflare.steamstatic.com/steam/apps/924970/ss_3329126d46bfd0cd32069508a1d37e40a1f4d92e.1920x1080.jpg?t=1649358821'),
(30, 4, 'https://cdn.cloudflare.steamstatic.com/steam/apps/412020/ss_bd875dbf865e70cda73a7cd6b132cadacfdb768b.1920x1080.jpg?t=1649065184'),
(31, 4, 'https://cdn.cloudflare.steamstatic.com/steam/apps/412020/ss_f0297eacbfb4266f311a8cb4137e4ef8b7cdd00b.1920x1080.jpg?t=1649065184'),
(32, 4, 'https://cdn.cloudflare.steamstatic.com/steam/apps/412020/ss_23815433fdd4a63064da79222fdefb569eeafaba.1920x1080.jpg?t=1649065184'),
(33, 4, 'https://cdn.cloudflare.steamstatic.com/steam/apps/412020/ss_4613c0b4d861ac5dbbac9a1e06a8abecfa3b34d5.1920x1080.jpg?t=1649065184'),
(34, 4, 'https://cdn.cloudflare.steamstatic.com/steam/apps/412020/ss_a142b2ad182bce7032a9a3d46216080feb76a3f6.1920x1080.jpg?t=1649065184'),
(35, 4, 'https://cdn.cloudflare.steamstatic.com/steam/apps/412020/ss_76733d65d429aed586ef02772297efbf8bf45a22.1920x1080.jpg?t=1649065184'),
(36, 5, 'https://cdn.cloudflare.steamstatic.com/steam/apps/377160/ss_c6b798424a93617b4b825aea3bcd9547c0b0a5ce.1920x1080.jpg?t=1650909928'),
(37, 5, 'https://cdn.cloudflare.steamstatic.com/steam/apps/377160/ss_f7861bd71e6c0c218d8ff69fb1c626aec0d187cf.1920x1080.jpg?t=1650909928'),
(38, 5, 'https://cdn.cloudflare.steamstatic.com/steam/apps/377160/ss_910437ac708aed7c028f6e43a6224c633d086b0a.1920x1080.jpg?t=1650909928'),
(39, 5, 'https://cdn.cloudflare.steamstatic.com/steam/apps/377160/ss_f649b8e57749f380cca225db5074edbb1e06d7f5.1920x1080.jpg?t=1650909928'),
(40, 5, 'https://cdn.cloudflare.steamstatic.com/steam/apps/377160/ss_c310f858e6a7b02ffa21db984afb0dd1b24c1423.1920x1080.jpg?t=1650909928'),
(41, 5, 'https://cdn.cloudflare.steamstatic.com/steam/apps/377160/ss_5e2d136759e0ff4e0d74940fffc9c64e8cdcd833.1920x1080.jpg?t=1650909928'),
(42, 6, 'https://cdn.akamai.steamstatic.com/steam/apps/1850570/ss_4b6d7d010d1701b2b57bf8ef1b4975a04b3d632f.1920x1080.jpg?t=1649438096'),
(43, 6, 'https://cdn.akamai.steamstatic.com/steam/apps/1850570/ss_bc8812817c074772822c1d1e8a6b016983cf05e8.1920x1080.jpg?t=1649438096'),
(44, 6, 'https://cdn.akamai.steamstatic.com/steam/apps/1850570/ss_d47bde2e349606b3ef1f641e2d8fb7ccf1adba77.1920x1080.jpg?t=1649438096'),
(45, 6, 'https://cdn.akamai.steamstatic.com/steam/apps/1850570/ss_8f0a2b1f6ea6da05c53f802034e08cbe92aaccab.1920x1080.jpg?t=1649438096'),
(46, 6, 'https://cdn.akamai.steamstatic.com/steam/apps/1850570/ss_73eb002b5070299aae3727bd07ce6d51e4a82b10.1920x1080.jpg?t=1649438096'),
(47, 6, 'https://cdn.cloudflare.steamstatic.com/steam/apps/489830/ss_d64b646612ab1402bdda8e400672aa0dbcb352ea.1920x1080.jpg?t=1650909796'),
(48, 7, 'https://cdn.cloudflare.steamstatic.com/steam/apps/489830/ss_d64b646612ab1402bdda8e400672aa0dbcb352ea.1920x1080.jpg?t=1650909796'),
(49, 7, 'https://cdn.cloudflare.steamstatic.com/steam/apps/489830/ss_d64b646612ab1402bdda8e400672aa0dbcb352ea.1920x1080.jpg?t=1650909796'),
(50, 7, 'https://cdn.cloudflare.steamstatic.com/steam/apps/489830/ss_b6bb6f79278505b3f48567f08c21f7a0eb171c68.1920x1080.jpg?t=1650909796'),
(51, 7, 'https://cdn.cloudflare.steamstatic.com/steam/apps/489830/ss_921ccea650df936a0b14ebd5dd4ecc73c1d2a12d.1920x1080.jpg?t=1650909796'),
(52, 7, 'https://cdn.cloudflare.steamstatic.com/steam/apps/489830/ss_8c7ecd394afb581b9b2137a3de04433f78fdf4ea.1920x1080.jpg?t=1650909796'),
(53, 7, 'https://cdn.cloudflare.steamstatic.com/steam/apps/489830/ss_50c3da9e29e9b0368889379cdd03a71aba8d614c.1920x1080.jpg?t=1650909796'),
(54, 8, 'https://cdn.cloudflare.steamstatic.com/steam/apps/292030/ss_107600c1337accc09104f7a8aa7f275f23cad096.1920x1080.jpg?t=1646996408'),
(55, 8, 'https://cdn.cloudflare.steamstatic.com/steam/apps/292030/ss_64eb760f9a2b67f6731a71cce3a8fb684b9af267.1920x1080.jpg?t=1646996408'),
(56, 8, 'https://cdn.cloudflare.steamstatic.com/steam/apps/292030/ss_d5b80eb63c12a6484f26796f3e34410651bba068.1920x1080.jpg?t=1646996408'),
(57, 8, 'https://cdn.cloudflare.steamstatic.com/steam/apps/292030/ss_eda99e7f705a113d04ab2a7a36068f3e7b343d17.1920x1080.jpg?t=1646996408'),
(58, 8, 'https://cdn.cloudflare.steamstatic.com/steam/apps/292030/ss_b74d60ee215337d765e4d20c8ca6710ae2362cc2.1920x1080.jpg?t=1646996408'),
(59, 8, 'https://cdn.cloudflare.steamstatic.com/steam/apps/292030/ss_dc55eeb409d6e187456a8e159018e8da098fa468.1920x1080.jpg?t=1646996408'),
(60, 9, 'https://cdn.cloudflare.steamstatic.com/steam/apps/1151640/ss_d09106060fb7de8bf342c23df18b14debc8a15a3.1920x1080.jpg?t=1635442187'),
(61, 9, 'https://cdn.cloudflare.steamstatic.com/steam/apps/1151640/ss_271f850eec3f96b22aa17be35b948268e0771c7f.1920x1080.jpg?t=1635442187'),
(62, 9, 'https://cdn.cloudflare.steamstatic.com/steam/apps/1151640/ss_15f5759c441e4e5f51e1a8ee333e4ab9df9aa783.1920x1080.jpg?t=1635442187'),
(63, 9, 'https://cdn.cloudflare.steamstatic.com/steam/apps/1151640/ss_f7cf51f1ccd909264f2c5814f328e3f72e7b62bd.1920x1080.jpg?t=1635442187'),
(64, 9, 'https://cdn.cloudflare.steamstatic.com/steam/apps/1151640/ss_9db45aa04e8c8b5043b479f42ed36296bfc3a918.1920x1080.jpg?t=1635442187'),
(65, 9, 'https://image.api.playstation.com/cdn/EP9000/CUSA10211_00/FREE_CONTENTbemQjC6lIHZrK2joSoW7/7.png'),
(66, 10, 'https://cdn.cloudflare.steamstatic.com/steam/apps/1259420/ss_8d958e566d5315463d099b21eae729d0f462caad.1920x1080.jpg?t=1635476187'),
(67, 10, 'https://cdn.cloudflare.steamstatic.com/steam/apps/1259420/ss_4a1a39d5559909424ed36414070477a96c91e92c.1920x1080.jpg?t=1635476187'),
(68, 10, 'https://cdn.cloudflare.steamstatic.com/steam/apps/1259420/ss_364f3048399fcb95df5e878c708c94e934cd53d4.1920x1080.jpg?t=1635476187'),
(69, 10, 'https://cdn.cloudflare.steamstatic.com/steam/apps/1259420/ss_80bbb5ea187cc422012f7a84e694f20f87a26862.1920x1080.jpg?t=1635476187'),
(70, 10, 'https://cdn.cloudflare.steamstatic.com/steam/apps/1259420/ss_a947f551335679fbffcbe64a3ffcb939429ed533.1920x1080.jpg?t=1635476187'),
(71, 10, 'https://cdn.cloudflare.steamstatic.com/steam/apps/1259420/ss_e7254729cc5f28ac6fc9622209812705b782fbb9.1920x1080.jpg?t=1635476187'),
(96, 22, 'https://cdn.akamai.steamstatic.com/steam/apps/1245620/ss_e80a907c2c43337e53316c71555c3c3035a1343e.600x338.jpg?t=1654259241'),
(97, 22, 'https://cdn.akamai.steamstatic.com/steam/apps/1245620/ss_25cd489871907387c1b915022a96b196661b6e17.600x338.jpg?t=1654259241'),
(98, 22, 'https://cdn.akamai.steamstatic.com/steam/apps/1245620/ss_3e556415d1bda00d749b2166ced264bec76f06ee.600x338.jpg?t=1654259241'),
(99, 22, 'https://cdn.akamai.steamstatic.com/steam/apps/1245620/ss_ae44317e3bd07b7690b4d62cc5d0d1df30367a91.600x338.jpg?t=1654259241'),
(100, 22, 'https://cdn.akamai.steamstatic.com/steam/apps/1245620/ss_c372274833ae6e5437b952fa1979430546a43ad9.600x338.jpg?t=1654259241'),
(101, 22, 'https://cdn.akamai.steamstatic.com/steam/apps/1245620/ss_e87a3e84890ab19f8995566e62762d5f8ed39315.600x338.jpg?t=1654259241');

-- --------------------------------------------------------

--
-- Структура таблицы `keys`
--

CREATE TABLE `keys` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `keys`
--

INSERT INTO `keys` (`id`, `name`, `created_at`, `updated_at`) VALUES
(7, 'UCg?JX97lo.w0Lk3', NULL, NULL),
(10, '9gwLo7.XJU3Ckl0?', NULL, NULL),
(13, 'MSO4?.bnJx,zo1Rp', NULL, NULL),
(15, 'FOu9Y!I,NBrsqlCj', NULL, NULL),
(16, 'vlc4i!t-MQTYx2?7', NULL, NULL),
(17, 'GEbseg7Ai_F6.Ch9', NULL, NULL),
(20, 'YW.KVC7BXdtuJFy6', NULL, NULL),
(21, 'VIh6U0_?Ys-gr2ay', NULL, NULL),
(23, '_QHdTI09oA?Z5Nzc', NULL, NULL),
(26, 'eY!z,ksBX1ujc9Jr', NULL, NULL),
(28, 'dOFibovDH6lYmR5X', NULL, NULL),
(31, 'xIi5cTMAqVwPOk23', NULL, NULL),
(32, 'gSHzrUyCWlPFQawv', NULL, NULL),
(33, '5?kDZ0Jiy23hjLBr', NULL, NULL),
(34, 'bs-XfJHMrZc6tzIK', NULL, NULL),
(35, '-ft7AdDe6g0KVFTn', NULL, NULL),
(36, 'Qrsdj1K056ehBvNI', NULL, NULL),
(37, '.mIisMdpbCV?KeXv', NULL, NULL),
(38, 'NMbh_fl0mxzcWIDp', NULL, NULL),
(39, 'eUa_QA.Jy89SvxP0', NULL, NULL),
(40, 'js4!l9ekpXY0Srqb', NULL, NULL),
(41, 'QJiBwtLFza.xbNS1', NULL, NULL),
(42, 'X2i1MplES8QKyYtB', NULL, NULL),
(43, 'xIi5cTMAqVwPOk23', NULL, NULL),
(44, 'gSHzrUyCWlPFQawv', NULL, NULL),
(45, '5?kDZ0Jiy23hjLBr', NULL, NULL),
(46, 'bs-XfJHMrZc6tzIK', NULL, NULL),
(47, '-ft7AdDe6g0KVFTn', NULL, NULL),
(48, 'Qrsdj1K056ehBvNI', NULL, NULL),
(49, '.mIisMdpbCV?KeXv', NULL, NULL),
(50, 'NMbh_fl0mxzcWIDp', NULL, NULL),
(51, 'eUa_QA.Jy89SvxP0', NULL, NULL),
(52, 'js4!l9ekpXY0Srqb', NULL, NULL),
(53, 'QJiBwtLFza.xbNS1', NULL, NULL),
(54, 'X2i1MplES8QKyYtB', NULL, NULL),
(55, 'xIi5cTMAqVwPOk23', NULL, NULL),
(56, 'xIi5cTMAqVwPOk23', NULL, NULL),
(57, 'xIi5cTMAqVwPOk23', NULL, NULL),
(58, 'gSHzrUyCWlPFQawv', NULL, NULL),
(59, '5?kDZ0Jiy23hjLBr', NULL, NULL),
(60, 'bs-XfJHMrZc6tzIK', NULL, NULL),
(61, '-ft7AdDe6g0KVFTn', NULL, NULL),
(62, 'Qrsdj1K056ehBvNI', NULL, NULL),
(63, '.mIisMdpbCV?KeXv', NULL, NULL),
(64, 'NMbh_fl0mxzcWIDp', NULL, NULL),
(65, 'eUa_QA.Jy89SvxP0', NULL, NULL),
(66, 'js4!l9ekpXY0Srqb', NULL, NULL),
(67, 'QJiBwtLFza.xbNS1', NULL, NULL),
(68, 'X2i1MplES8QKyYtB', NULL, NULL),
(69, 'dOFibovDH6lYmR5X', NULL, NULL),
(70, 'dOFibovDH6lYmR5X', NULL, NULL),
(71, 'eY!z', NULL, NULL),
(72, 'ksBX1ujc9Jr', NULL, NULL),
(73, 'FOu9Y!I', NULL, NULL),
(74, 'NBrsqlCj', NULL, NULL),
(75, 'testtesttesttest', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(77, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(78, '2021_10_18_235516_create_tovars_table', 1),
(79, '2022_02_02_061802_create_genres_table', 1),
(80, '2022_02_02_120130_create_tovar_genre_table', 1),
(81, '2022_02_04_051306_create_publishers_table', 1),
(82, '2022_02_04_051337_create_devolopers_table', 1),
(83, '2022_02_04_052736_create_tovar_publisher_table', 1),
(84, '2022_02_04_052753_create_tovar_devoloper_table', 1),
(85, '2022_03_09_233125_create_regions_table', 1),
(86, '2022_03_09_233156_create_activations_table', 1),
(87, '2022_03_09_233316_create_tovar_region_table', 1),
(88, '2022_03_09_233513_create_tovar_activation_table', 1),
(89, '2022_03_10_160425_create_keys_table', 1),
(90, '2022_03_10_160543_create_tovar_key_table', 1),
(91, '2022_03_14_183122_create_users_table', 1),
(92, '2022_03_14_183138_create_tovar_user_table', 1),
(93, '2022_03_20_234954_create_cupons_table', 2),
(130, '2022_03_21_220311_create_user_buy_table', 3),
(131, '2022_03_21_223200_create_user_cupon_table', 3),
(132, '2022_03_24_031210_create_avatars_table', 3),
(133, '2022_03_24_031240_create_user_avatar_table', 3),
(146, '2022_03_25_072118_create_reports_table', 4),
(147, '2022_03_25_072141_create_user_report_table', 4),
(148, '2022_03_25_080318_create_tovar_report_table', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `publishers`
--

CREATE TABLE `publishers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Enlight', NULL, NULL),
(2, 'EA', NULL, NULL),
(3, '2K', NULL, NULL),
(4, 'Valve', NULL, NULL),
(5, 'Blizzard', NULL, NULL),
(6, 'HandyGames', NULL, NULL),
(7, '505 Games', NULL, NULL),
(8, 'Bandai', NULL, NULL),
(9, 'Campo Santo', NULL, NULL),
(10, 'Capcom', NULL, NULL),
(11, 'Tengen', NULL, NULL),
(12, 'Nacon', NULL, NULL),
(13, 'D3 Publisher', NULL, NULL),
(14, 'Digital Reality', NULL, NULL),
(15, 'Yuke’s', NULL, NULL),
(16, 'THQ Nordic', NULL, NULL),
(17, 'TinyBuild', NULL, NULL),
(18, 'Oberon Media', NULL, NULL),
(19, 'Nobilis', NULL, NULL),
(20, '1С', NULL, NULL),
(21, 'Human Entertainment', NULL, NULL),
(22, 'Rockstar Games', NULL, NULL),
(23, 'Koei', NULL, NULL),
(24, 'Level-5', NULL, NULL),
(25, 'Stunlock Studios', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `regions`
--

CREATE TABLE `regions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `regions`
--

INSERT INTO `regions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Весь  мир', NULL, NULL),
(2, 'Россия', NULL, NULL),
(3, 'Россия и СНГ', NULL, NULL),
(4, 'Россия и Украина', NULL, NULL),
(5, 'Россия, Украина и Казахстан', NULL, NULL),
(6, 'Россия, Украина, Казахстан и Белоруссия', NULL, NULL),
(7, 'Россия, Украина, Белоруссия, Казахстан, Узбекистан, Армения, Молдавия, Азербайджан', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `reports`
--

CREATE TABLE `reports` (
  `id` bigint UNSIGNED NOT NULL,
  `report` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `like` int NOT NULL,
  `diz_like` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `reports`
--

INSERT INTO `reports` (`id`, `report`, `rating`, `like`, `diz_like`, `created_at`, `updated_at`) VALUES
(37, 'В первые играю, но уже за два дня наиграл 16 часов. Классная игра, впервые играю по стелсу\r\nСпасибо GabeStore за помощь!\r\nНу а вообще, на эту игру наткнулся случайно. Хотел купить в стиме Портал 2, но не получилось. Заскочил к вам и увидел эту игру!', 5, 3, 1, '2022-03-24 02:55:26', '2022-03-24 02:55:26'),
(38, 'хорошая игра про скрытного убийцу. частенько в нее возвращаюсь вот только сейчас сожалею о том что купил ее не на гейбсторе:( но теперь на личном опыте советую друзьям покупать игры здесь так как цены просто сочнейшие.', 3, 2, 1, '2022-03-24 02:45:41', '2022-03-24 02:45:41'),
(39, 'Когда вдоволь нагеройствовался в Богемии и поработал за чеканную монету, то самое время её потратить. В корчме, увы, на огромные суммы с проданных разбойничьих доспехов не повеселишься, поэтому на помощь приходит следующее дополнение.\r\n', 3, 34, 12, '2022-03-15 02:55:26', '2022-03-15 02:55:26'),
(40, 'Жду ценник 500р и меньше, а потом забрать в конкурсе до 500 рублей', 1, 25, 11, '2022-03-06 02:55:26', '2022-03-06 02:55:26'),
(41, 'У меня 5 ачивок', 2, 0, 0, '2022-03-10 02:55:26', '2022-03-10 02:55:26'),
(42, 'А вообще у меня 16 ачивок', 5, 1, 0, '2022-03-12 02:55:26', '2022-03-12 02:55:26'),
(43, 'Моя любимая Готика', 5, 0, 0, '2022-03-13 02:55:26', '2022-03-13 02:55:26'),
(44, 'Немного в другой обертке, но все же. :)', 2, 0, 2, '2022-03-21 02:55:26', '2022-03-21 02:55:26'),
(46, 'hwhwehweh', 3, 0, 0, '2022-03-25 22:26:21', '2022-03-25 22:26:21'),
(47, 'gqgqwg', 2, 0, 0, '2022-03-25 22:28:40', '2022-03-25 22:28:40'),
(48, 'gqgqwg', 2, 0, 0, '2022-03-25 22:29:02', '2022-03-25 22:29:02'),
(49, 'whehwehweh', 5, 0, 0, '2022-03-25 22:32:22', '2022-03-25 22:32:22'),
(50, 'whehwehweh', 5, 0, 0, '2022-03-25 22:57:26', '2022-03-25 22:57:26'),
(51, 'wgeg', 4, 0, 0, '2022-03-25 22:57:31', '2022-03-25 22:57:31'),
(52, 'gqwg', 5, 0, 0, '2022-03-25 22:58:39', '2022-03-25 22:58:39'),
(53, 'gqwg', 5, 0, 0, '2022-03-25 22:58:45', '2022-03-25 22:58:45'),
(54, 'gqwg', 5, 0, 0, '2022-03-25 22:59:20', '2022-03-25 22:59:20'),
(55, 'gqwg', 5, 0, 0, '2022-03-25 23:00:40', '2022-03-25 23:00:40'),
(56, 'gqwg', 5, 0, 0, '2022-03-25 23:00:59', '2022-03-25 23:00:59'),
(57, 'gqwg', 5, 0, 0, '2022-03-25 23:01:32', '2022-03-25 23:01:32'),
(58, 'gqwg', 5, 0, 0, '2022-03-25 23:02:09', '2022-03-25 23:02:09'),
(59, 'Классно, но я кака', 4, 0, 0, '2022-03-25 23:02:35', '2022-03-25 23:02:35'),
(60, 'Классно, рукр', 4, 0, 0, '2022-03-25 23:04:17', '2022-03-25 23:04:17'),
(61, 'Классно, рукр', 4, 0, 0, '2022-03-25 23:04:49', '2022-03-25 23:04:49'),
(62, 'Классно, рукр', 4, 0, 0, '2022-03-25 23:04:58', '2022-03-25 23:04:58'),
(63, 'Объем: 40 Гб', 4, 0, 0, '2022-03-25 23:06:53', '2022-03-25 23:06:53'),
(64, 'Объем: 40 Гб', 4, 0, 0, '2022-03-25 23:12:44', '2022-03-25 23:12:44'),
(65, 'Объем: 40 Гб', 4, 0, 0, '2022-03-25 23:13:16', '2022-03-25 23:13:16'),
(66, 'Видеокарта: NVIDIA® GeForce® GTX 780 / AMD Radeon™ R9 290 (2GB VRAM)', 2, 0, 0, '2022-03-25 23:17:06', '2022-03-25 23:17:06'),
(67, 'рук пыфп', 4, 0, 0, '2022-03-29 12:04:30', '2022-03-29 12:04:30'),
(68, 'hwehweh', 4, 0, 0, '2022-03-30 00:35:32', '2022-03-30 00:35:32'),
(69, 'ВАВАВА', 5, 0, 0, '2022-03-30 00:36:16', '2022-03-30 00:36:16'),
(70, 'коеокео', 5, 0, 0, '2022-03-30 00:36:59', '2022-03-30 00:36:59');

-- --------------------------------------------------------

--
-- Структура таблицы `tovars`
--

CREATE TABLE `tovars` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_OS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_Processor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_RAM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_Video_Card` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rec_OS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rec_Processor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rec_RAM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rec_Video_Card` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Transitions` double NOT NULL DEFAULT '0',
  `Buy` double NOT NULL DEFAULT '0',
  `Rating` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tovars`
--

INSERT INTO `tovars` (`id`, `name`, `price`, `discount`, `description`, `data`, `min_OS`, `min_Processor`, `min_RAM`, `min_Video_Card`, `rec_OS`, `rec_Processor`, `rec_RAM`, `rec_Video_Card`, `Size`, `Transitions`, `Buy`, `Rating`, `created_at`, `updated_at`) VALUES
(1, 'Dying light', '759', '50', 'От создателей популярных проектов Dead Island и Call of Juarez. Свыше 50 наград и номинаций от игровой индустрии. Именно эта игра про зомби от первого лица установила новые стандарты жанра. Даже спустя годы после выхода для игры выпускаются новые материалы и проводятся бесплатные события сообщества.Попробуйте выжить в городе, где бушует зомби-вирус! Во время этого спецзадания вам предстоит принимать нелегкие решения. Окажется ли преданность начальству выше желания спасти выживших? Выбор за вами...', '2015-01-26', 'Windows® 7 64-bit / Windows® 8 64-bit / Windows® 8.1 64-bit', 'Intel® Core™ i5-2500 @3.3 GHz / AMD FX-8320 @3.5 GHz', '4 GB RAM DDR3', 'NVIDIA® GeForce® GTX 560 / AMD Radeon™ HD 6870 (1GB VRAM)', 'Windows® 7 64-bit / Windows® 8 64-bit / Windows® 8.1 64-bit', 'Intel® Core™ i5-4670K @3.4 GHz / AMD FX-8350 @4.0 GHz', '8 GB RAM DDR3', 'NVIDIA® GeForce® GTX 780 / AMD Radeon™ R9 290 (2GB VRAM)', '40', 24, 12, 0, NULL, '2022-04-03 02:37:11'),
(2, 'Hunt: Showdown', '1349', '0', '1895 год. Вы — отважный охотник, которому поручили истребить ужасных чудовищ, наводнивших болота Луизианы. Играйте в одиночку или объединяйтесь в команды из двух или трёх человек. Ищите подсказки, которые приведут вас к цели, и сражайтесь с другими охотниками, которые тоже не прочь получить награду. Убейте и изгоните цель, заберите награду и приготовьтесь к жестокому противостоянию. Как только награда будет у вас, вы станете мишенью для всех остальных охотников на карте. Действуйте решительно: в этом жестоком мире нет места жалости. К вашим услугам — легендарное оружие той эпохи. Повышайте уровень персонажа, открывайте новое снаряжение, зарабатывайте опыт и золото для своего наследия.', '2018-03-26', 'Windows® 7 64-bit / Windows® 8 64-bit / Windows® 8.1 64-bit', 'Intel® Core™ i5-2500 @3.3 GHz / AMD FX-8320 @3.5 GHz', '4 GB RAM DDR3', 'NVIDIA® GeForce® GTX 560 / AMD Radeon™ HD 6870 (1GB VRAM)', 'Windows® 7 64-bit / Windows® 8 64-bit / Windows® 8.1 64-bit', 'Intel® Core™ i5-4670K @3.4 GHz / AMD FX-8350 @4.0 GHz', '8 GB RAM DDR3', 'NVIDIA® GeForce® GTX 780 / AMD Radeon™ R9 290 (2GB VRAM)', '40', 126, 25, 2, NULL, NULL),
(3, 'Back 4 Blood', '1999', '0', 'Back 4 Blood – это захватывающий кооперативный шутер от первого лица от создателей признанной критиками франшизы Left 4 Dead. Вы находитесь в эпицентре войны с одержимыми. Эти носители смертоносного паразита когда-то были людьми, но теперь превратились в ужасающих существ, стремящихся сожрать все, что осталось от цивилизации. С уничтожением всего человечества на кону у вас и у ваших друзей остался единственный вариант - принять бой с врагом, искоренить одержимых и отвоевать весь мир.Кооперативный режим в сюжетной кампанииПробирайтесь вперед в сюжетной кампании с кооперативным режимом для 4 игроков, где вы должны работать вместе, чтобы выжить при прохождении невероятно сложных миссий. Вы можете взять в команду до 3 своих друзей или играть в одиночку, ведя свой отряд в бой.Выберите из 8 чистильщиков, которых вы можете изменить по своему вкусу, и подберите для себя смертельное оружие и предметы, чтобы выработать стратегию борьбы с постоянно развивающимися врагами.Соревновательный онлайн-режимИграйте с друзьями или против них в PVP-боях. Станьте чистильщиком или выберите противоборствующую сторону, играя за ужасного одержимого. Обе стороны имеют уникальное оружие, способности и бонусы.Невероятная реиграбельностьНепредсказуемая система карт дарит новые впечатления каждый раз, когда вы создаете собственные колоды, чтобы выжить во все более сложных сражениях.Динамическая система создания игры постоянно приспосабливается к действиям игроков, обеспечивая захватывающие бои, экстремальное разнообразие геймплея и целые легионы еще более сильных одержимых, в том числе различные типы мутировавших боссов высотой до 6 метров.', '2018-03-26', 'Windows® 7 64-bit / Windows® 8 64-bit / Windows® 8.1 64-bit', 'Intel® Core™ i5-2500 @3.3 GHz / AMD FX-8320 @3.5 GHz', '4 GB RAM DDR3', 'NVIDIA® GeForce® GTX 560 / AMD Radeon™ HD 6870 (1GB VRAM)', 'Windows® 7 64-bit / Windows® 8 64-bit / Windows® 8.1 64-bit', 'Intel® Core™ i5-4670K @3.4 GHz / AMD FX-8350 @4.0 GHz', '8 GB RAM DDR3', 'NVIDIA® GeForce® GTX 780 / AMD Radeon™ R9 290 (2GB VRAM)', '40', 21, 16, 3, NULL, NULL),
(4, 'Metro Exodus', '1199', '0', '2036 год.\r\n\r\nПрошло четверть века с тех пор, как ядерная война опустошила землю. Москва лежит в руинах, и несколько тысяч выживших вынуждены бороться за существование в тоннелях метро.\r\n\r\nИх не убила отравленная природа и мутировавшие чудовища, они пережили сверхъестественный кошмар и ужасы гражданской войны.\r\n\r\nТеперь в роли Артема вы должны покинуть метро и возглавить бойцов ордена \"Спарты\", чтобы отправиться в невероятное путешествие по постапокалиптическим землям России в поисках новой жизни на Востоке.\r\n\r\nMetro Exodus – это эффектный шутер от первого лица с захватывающим сюжетом. 4A Games отлично совместили напряженные сражения, исследования и пугающую атмосферу, создав один из самых убедительных игровых миров в истории.\r\n\r\nОтправляйтесь в путешествие по диким землям России. Вас ждут большие нелинейные уровни и захватывающая сюжетная линия. Испытайте на себе весну, лето, осень и ужасы ядерной зимы.\r\n\r\nСюжетная линия Metro Exodus, вдохновленная романами Дмитрия Глуховского, продолжает историю Артема в лучшем приключении в серии Metro.', '2019-02-14', 'Windows® 7 64-bit / Windows® 8 64-bit / Windows® 8.1 64-bit', 'Intel® Core™ i5-2500 @3.3 GHz / AMD FX-8320 @3.5 GHz', '4 GB RAM DDR3', 'NVIDIA® GeForce® GTX 560 / AMD Radeon™ HD 6870 (1GB VRAM)', 'Windows® 7 64-bit / Windows® 8 64-bit / Windows® 8.1 64-bit', 'Intel® Core™ i5-4670K @3.4 GHz / AMD FX-8350 @4.0 GHz', '8 GB RAM DDR3', 'NVIDIA® GeForce® GTX 780 / AMD Radeon™ R9 290 (2GB VRAM)', '40', 6, 2, 4, NULL, NULL),
(5, 'Fallout 4', '899', '75', 'Bethesda Game Studios, создатель популярнейших игр Fallout 3 и The Elder Scrolls V: Skyrim, приглашает вас в мир Fallout 4 – своей самой грандиозной игры нового поколения с открытым миром.\r\n\r\nВы – единственный выживший из убежища 111, оказавшийся в мире, разрушенном ядерной войной. Каждый миг вы сражаетесь за выживание, каждое решение может стать последним. Но именно от вас зависит судьба пустошей. Добро пожаловать домой.', '2015-11-10', 'Windows® 7 64-bit / Windows® 8 64-bit / Windows® 8.1 64-bit', 'Intel® Core™ i5-2500 @3.3 GHz / AMD FX-8320 @3.5 GHz', '4 GB RAM DDR3', 'NVIDIA® GeForce® GTX 560 / AMD Radeon™ HD 6870 (1GB VRAM)', 'Windows® 7 64-bit / Windows® 8 64-bit / Windows® 8.1 64-bit', 'Intel® Core™ i5-4670K @3.4 GHz / AMD FX-8350 @4.0 GHz', '8 GB RAM DDR3', 'NVIDIA® GeForce® GTX 780 / AMD Radeon™ R9 290 (2GB VRAM)', '40', 616, 36, 5, NULL, NULL),
(6, 'DEATH STRANDING', '3499', '0', 'Легендарный разработчик Хидео Кодзима выпускает новую знаковую для жанра игру.\r\n\r\nСэм Бриджес должен преодолеть мир, трансформированный Петлёй смерти. Держа в своих руках бессвязные остатки нашего будущего, он отправился в дорогу, чтобы восстановить связь между осколками мира.\r\n\r\nВ главных ролях: Норман Ридус, Мадс Миккельсен, Леа Сейду и Линдси Вагнер.\r\n\r\nДополнительные функции для компьютеров включают ВЫСОКУЮ ЧАСТОТУ КАДРОВ, РЕЖИМ ФОТОСЬЁМКИ и ПОДДЕРЖКУ УЛЬТРАШИРОКОГО МОНИТОРА. Также включает перекрёстный контент из серии игр HALF-LIFE от корпорации Valve.', '2020-07-14', 'Windows® 7 64-bit / Windows® 8 64-bit / Windows® 8.1 64-bit', 'Intel® Core™ i5-2500 @3.3 GHz / AMD FX-8320 @3.5 GHz', '4 GB RAM DDR3', 'NVIDIA® GeForce® GTX 560 / AMD Radeon™ HD 6870 (1GB VRAM)', 'Windows® 7 64-bit / Windows® 8 64-bit / Windows® 8.1 64-bit', 'Intel® Core™ i5-4670K @3.4 GHz / AMD FX-8350 @4.0 GHz', '8 GB RAM DDR3', 'NVIDIA® GeForce® GTX 780 / AMD Radeon™ R9 290 (2GB VRAM)', '40', 126, 52, 6, NULL, '2022-06-09 15:52:07'),
(7, 'The Elder Scrolls V: Skyrim Special Edition', '1599', '0', 'Winner of more than 200 Game of the Year Awards, Skyrim Special Edition brings the epic fantasy to life in stunning detail. The Special Edition includes the critically acclaimed game and add-ons with all-new features like remastered art and effects, volumetric god rays, dynamic depth of field, screen-space reflections, and more. Skyrim Special Edition also brings the full power of mods to the PC and consoles. New quests, environments, characters, dialogue, armor, weapons and more – with Mods, there are no limits to what you can experience.', '2016-10-28', 'Windows® 7 64-bit / Windows® 8 64-bit / Windows® 8.1 64-bit', 'Intel® Core™ i5-2500 @3.3 GHz / AMD FX-8320 @3.5 GHz', '4 GB RAM DDR3', 'NVIDIA® GeForce® GTX 560 / AMD Radeon™ HD 6870 (1GB VRAM)', 'Windows® 7 64-bit / Windows® 8 64-bit / Windows® 8.1 64-bit', 'Intel® Core™ i5-4670K @3.4 GHz / AMD FX-8350 @4.0 GHz', '8 GB RAM DDR3', 'NVIDIA® GeForce® GTX 780 / AMD Radeon™ R9 290 (2GB VRAM)', '40', 61, 15, 2, NULL, NULL),
(8, 'Ведьмак 3: Дикая Охота', '1599', '0', '«Ведьмак 3: Дикая Охота» — это сюжетная ролевая игра с открытым миром. Её действие разворачивается в поразительной волшебной вселенной, и любое ваше решение может повлечь за собой серьёзные последствия. Вы играете за профессионального охотника на монстров Геральта из Ривии, которому поручено найти Дитя предназначения в огромном мире, полном торговых городов, пиратских островов, опасных горных перевалов и заброшенных пещер.', '2015-05-18', 'Windows® 7 64-bit / Windows® 8 64-bit / Windows® 8.1 64-bit', 'Intel® Core™ i5-2500 @3.3 GHz / AMD FX-8320 @3.5 GHz', '4 GB RAM DDR3', 'NVIDIA® GeForce® GTX 560 / AMD Radeon™ HD 6870 (1GB VRAM)', 'Windows® 7 64-bit / Windows® 8 64-bit / Windows® 8.1 64-bit', 'Intel® Core™ i5-4670K @3.4 GHz / AMD FX-8350 @4.0 GHz', '8 GB RAM DDR3', 'NVIDIA® GeForce® GTX 780 / AMD Radeon™ R9 290 (2GB VRAM)', '40', 37, 5, 1, NULL, NULL),
(9, 'Horizon Zero Dawn™ Complete Edition', '759', '50', 'БОЛЬШЕ НЕ НАША ЗЕМЛЯ\r\n\r\nВместе с Элой отправляйтесь в путешествие по загадочному миру смертоносных машин.\r\n\r\nЮная охотница-изгой стремится узнать свое предназначение... и остановить катастрофу.\r\n\r\nИспользуйте сокрушительные атаки против уникальных машин и представителей враждебных племен, исследуя опасную дикую природу.\r\n\r\nПолное издание для ПК включает получившую множество наград ролевую игру Horizon Zero Dawn™ и дополнение The Frozen Wilds с новыми землями, умениями, оружием и машинами.\r\n', '2020-09-07', 'Windows® 7 64-bit / Windows® 8 64-bit / Windows® 8.1 64-bit', 'Intel® Core™ i5-2500 @3.3 GHz / AMD FX-8320 @3.5 GHz', '4 GB RAM DDR3', 'NVIDIA® GeForce® GTX 560 / AMD Radeon™ HD 6870 (1GB VRAM)', 'Windows® 7 64-bit / Windows® 8 64-bit / Windows® 8.1 64-bit', 'Intel® Core™ i5-4670K @3.4 GHz / AMD FX-8350 @4.0 GHz', '8 GB RAM DDR3', 'NVIDIA® GeForce® GTX 780 / AMD Radeon™ R9 290 (2GB VRAM)', '40', 174, 5, 0, NULL, NULL),
(10, 'Days Gone', '2999', '50', 'Действие приключенческого боевика «Жизнь после» происходит в суровом открытом мире через два года после катастрофической пандемии.\r\n\r\nЕго главный герой Дикон Сент-Джон — бывший байкер и преступник, а ныне охотник за наградой, пытающийся обрести смысл жизни в мире, объятом смертью. Находите ресурсы в заброшенных поселениях, чтобы затем мастерить из них полезные предметы и оружие, или налаживайте контакт с другими выжившими, занятыми честной торговлей... или более кровавыми делами.\r\n', '2021-05-18', 'Windows® 7 64-bit / Windows® 8 64-bit / Windows® 8.1 64-bit', 'Intel® Core™ i5-2500 @3.3 GHz / AMD FX-8320 @3.5 GHz', '4 GB RAM DDR3', 'NVIDIA® GeForce® GTX 560 / AMD Radeon™ HD 6870 (1GB VRAM)', 'Windows® 7 64-bit / Windows® 8 64-bit / Windows® 8.1 64-bit', 'Intel® Core™ i5-4670K @3.4 GHz / AMD FX-8350 @4.0 GHz', '8 GB RAM DDR3', 'NVIDIA® GeForce® GTX 780 / AMD Radeon™ R9 290 (2GB VRAM)', '40', 5, 1, 0, NULL, NULL),
(17, 'V Rising', '435', '0', 'A Vampire Survival Experience\n\nAwaken as a weakened vampire after centuries of slumber. Hunt for blood to regain your strength while hiding from the scorching sun to survive. Rebuild your castle and convert humans into your loyal servants in a quest to raise your vampire empire. Make allies or enemies online or play solo locally, fend off holy soldiers, and wage war in a world of conflict.\n\nWill you become the next Dracula?', '2022-05-17', 'Windows 10 64 bit', 'Intel Core i5-11600K, 3.9 GHz or AMD Ryzen 5 5600X, 3.7 GHz', '12', 'NVIDIA GeForce GTX 1070, 8 GB or AMD Radeon RX 590, 8 GB', 'Windows 10 64 bit', 'Intel Core i5-6600, 3.3 GHz or AMD Ryzen 5 1500X, 3.5 GHz', '2', 'NVIDIA GeForce GTX 1070, 8 GB or AMD Radeon RX 590, 8 GB', '7', 0, 0, 0, NULL, '2022-06-08 09:14:16'),
(22, 'ELDEN RING', '3999', '0', 'НОВЫЙ ФЭНТЕЗИЙНЫЙ РОЛЕВОЙ БОЕВИК.\nВосстань, погасшая душа! Междуземье ждёт своего повелителя. Пусть благодать приведёт тебя к Кольцу Элден.\n\n• Огромный захватывающий мир\nОгромный мир с открытыми полями, множеством ситуаций и гигантскими подземельями, где сложные трёхмерные конструкции сочетаются воедино. Путешествуйте, преодолевайте смертельные опасности и радуйтесь успехам.\n\n• Создайте своего персонажа\nВы можете не только изменить внешность персонажа, но также комбинировать оружие, броню и предметы. Развивайте персонажа по своему вкусу. Наращивайте мышцы или постигайте таинства магии.\n\n• Эпическая драма, выросшая из мифа\nМногослойная история, разбитая на фрагменты. Эпическая драма, в которой мысли персонажей пересекаются в Междуземье.\n\n• Уникальный сетевой режим, приближающий вас к другим игрокам\nПомимо многопользовательского режима, в котором вы напрямую подключаетесь к другим игрокам и путешествуете вместе, есть асинхронный сетевой режим, позволяющий ощутить присутствие других игроков.', '2022-03-25', 'Windows 10/11', 'INTEL CORE I7-8700K or AMD RYZEN 5 3600X', '16 GB ОЗУ', 'NVIDIA GEFORCE GTX 1070 8 GB or AMD RADEON RX VEGA 56 8 GB', 'Windows 10', 'INTEL CORE I5-8400 or AMD RYZEN 3 3300X', '12 GB ОЗУ', 'NVIDIA GEFORCE GTX 1060 3 GB or AMD RADEON RX 580 4 GB', '60 GB', 0, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tovar_activation`
--

CREATE TABLE `tovar_activation` (
  `id` bigint UNSIGNED NOT NULL,
  `id_tovar` bigint UNSIGNED NOT NULL,
  `id_activation` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tovar_activation`
--

INSERT INTO `tovar_activation` (`id`, `id_tovar`, `id_activation`) VALUES
(25, 1, 1),
(26, 1, 2),
(27, 2, 4),
(28, 6, 5),
(29, 5, 5),
(30, 2, 6),
(31, 3, 3),
(32, 4, 4),
(33, 4, 5),
(34, 4, 2),
(35, 5, 4),
(36, 5, 2),
(37, 6, 6),
(38, 7, 5),
(39, 7, 1),
(40, 8, 5),
(41, 9, 3),
(42, 10, 6),
(43, 10, 1),
(44, 10, 5),
(45, 10, 4),
(46, 10, 3),
(47, 10, 2),
(49, 17, 1),
(54, 22, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `tovar_devoloper`
--

CREATE TABLE `tovar_devoloper` (
  `id` bigint UNSIGNED NOT NULL,
  `id_tovar` bigint UNSIGNED NOT NULL,
  `id_devoloper` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tovar_devoloper`
--

INSERT INTO `tovar_devoloper` (`id`, `id_tovar`, `id_devoloper`) VALUES
(1, 1, 8),
(2, 1, 3),
(3, 2, 5),
(4, 3, 13),
(5, 3, 11),
(6, 3, 15),
(7, 4, 13),
(8, 4, 1),
(9, 5, 9),
(10, 5, 10),
(11, 5, 14),
(12, 5, 7),
(13, 6, 8),
(14, 6, 3),
(15, 7, 9),
(16, 8, 12),
(17, 8, 2),
(18, 9, 1),
(19, 9, 14),
(20, 10, 2),
(23, 17, 16),
(28, 22, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `tovar_genre`
--

CREATE TABLE `tovar_genre` (
  `id` bigint UNSIGNED NOT NULL,
  `id_tovar` bigint UNSIGNED NOT NULL,
  `id_genre` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tovar_genre`
--

INSERT INTO `tovar_genre` (`id`, `id_tovar`, `id_genre`) VALUES
(5, 2, 1),
(6, 2, 4),
(7, 3, 1),
(8, 3, 3),
(9, 3, 4),
(10, 4, 1),
(11, 4, 2),
(12, 4, 3),
(13, 5, 1),
(14, 5, 2),
(15, 5, 3),
(16, 6, 2),
(17, 6, 3),
(18, 7, 1),
(19, 7, 2),
(20, 7, 3),
(21, 8, 2),
(22, 8, 3),
(23, 9, 1),
(24, 9, 3),
(25, 10, 1),
(26, 10, 2),
(27, 10, 3),
(28, 10, 4),
(57, 1, 14),
(58, 1, 13),
(60, 1, 15),
(61, 1, 1),
(62, 1, 2),
(67, 17, 1),
(68, 17, 3),
(69, 17, 4),
(70, 17, 6),
(71, 17, 14),
(80, 22, 1),
(81, 22, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `tovar_key`
--

CREATE TABLE `tovar_key` (
  `id` bigint UNSIGNED NOT NULL,
  `id_tovar` bigint UNSIGNED NOT NULL,
  `id_key` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tovar_key`
--

INSERT INTO `tovar_key` (`id`, `id_tovar`, `id_key`) VALUES
(6, 2, 10),
(22, 9, 13),
(23, 9, 7),
(24, 9, 21),
(25, 9, 16),
(28, 10, 20),
(29, 10, 23),
(54, 22, 57),
(55, 22, 58),
(56, 22, 59),
(57, 22, 60),
(58, 22, 61),
(59, 22, 62),
(60, 22, 63),
(61, 22, 64),
(62, 22, 65),
(63, 22, 66),
(64, 22, 67),
(65, 22, 68),
(66, 6, 70),
(67, 6, 71),
(68, 6, 72),
(69, 6, 73),
(70, 6, 74),
(71, 6, 75);

-- --------------------------------------------------------

--
-- Структура таблицы `tovar_publisher`
--

CREATE TABLE `tovar_publisher` (
  `id` bigint UNSIGNED NOT NULL,
  `id_tovar` bigint UNSIGNED NOT NULL,
  `id_publisher` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tovar_publisher`
--

INSERT INTO `tovar_publisher` (`id`, `id_tovar`, `id_publisher`) VALUES
(1, 1, 21),
(2, 2, 17),
(3, 2, 23),
(4, 3, 20),
(5, 3, 9),
(6, 4, 24),
(7, 5, 8),
(8, 5, 2),
(9, 6, 19),
(10, 7, 16),
(11, 8, 5),
(12, 9, 18),
(13, 10, 14),
(14, 1, 3),
(15, 1, 2),
(19, 17, 25),
(24, 22, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `tovar_region`
--

CREATE TABLE `tovar_region` (
  `id` bigint UNSIGNED NOT NULL,
  `id_tovar` bigint UNSIGNED NOT NULL,
  `id_region` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tovar_region`
--

INSERT INTO `tovar_region` (`id`, `id_tovar`, `id_region`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 3),
(4, 3, 4),
(5, 4, 7),
(6, 5, 5),
(7, 6, 1),
(8, 7, 3),
(9, 8, 4),
(10, 9, 6),
(11, 10, 7),
(13, 17, 1),
(18, 22, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `tovar_report`
--

CREATE TABLE `tovar_report` (
  `id` bigint UNSIGNED NOT NULL,
  `id_userReport` bigint UNSIGNED NOT NULL,
  `id_tovar` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tovar_report`
--

INSERT INTO `tovar_report` (`id`, `id_userReport`, `id_tovar`, `created_at`, `updated_at`) VALUES
(1, 5, 1, NULL, NULL),
(2, 6, 1, NULL, NULL),
(3, 7, 2, NULL, NULL),
(4, 8, 2, NULL, NULL),
(5, 1, 3, NULL, NULL),
(6, 2, 4, NULL, NULL),
(7, 3, 5, NULL, NULL),
(8, 4, 6, NULL, NULL),
(10, 27, 1, NULL, NULL),
(11, 28, 8, NULL, NULL),
(12, 29, 8, NULL, NULL),
(13, 30, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tovar_user`
--

CREATE TABLE `tovar_user` (
  `id` bigint UNSIGNED NOT NULL,
  `id_tovar` bigint UNSIGNED NOT NULL,
  `id_user` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tovar_user`
--

INSERT INTO `tovar_user` (`id`, `id_tovar`, `id_user`) VALUES
(64, 6, 5),
(65, 7, 5),
(66, 8, 5),
(67, 9, 5),
(68, 10, 5),
(69, 22, 5),
(70, 17, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `treiler`
--

CREATE TABLE `treiler` (
  `id` bigint UNSIGNED NOT NULL,
  `urlTreiler` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `treiler`
--

INSERT INTO `treiler` (`id`, `urlTreiler`) VALUES
(1, 'https://cdn.cloudflare.steamstatic.com/steam/apps/256799827/movie480_vp9.webm?t=1599232793'),
(2, 'https://cdn.cloudflare.steamstatic.com/steam/apps/256888313/movie480_vp9.webm?t=1653488271'),
(3, 'https://cdn.cloudflare.steamstatic.com/steam/apps/256859582/movie480_vp9.webm?t=1636477206'),
(4, 'https://cdn.cloudflare.steamstatic.com/steam/apps/256833673/movie480_vp9.webm?t=1622105831'),
(5, 'https://cdn.cloudflare.steamstatic.com/steam/apps/256658080/movie480.webm?t=1447378809'),
(6, 'https://cdn.cloudflare.steamstatic.com/steam/apps/256878920/movie480_vp9.webm?t=1648163051'),
(7, 'https://cdn.cloudflare.steamstatic.com/steam/apps/256672927/movie480.webm?t=1476991615'),
(8, 'https://cdn.cloudflare.steamstatic.com/steam/apps/256658589/movie480.webm?t=1528288687'),
(9, 'https://cdn.cloudflare.steamstatic.com/steam/apps/256795570/movie480_vp9.webm?t=1596814664'),
(10, 'https://cdn.cloudflare.steamstatic.com/steam/apps/256835018/movie480_vp9.webm?t=1621341084'),
(17, 'https://cdn.akamai.steamstatic.com/steam/apps/256886955/movie480_vp9.webm?t=1652788973'),
(22, 'https://cdn.akamai.steamstatic.com/steam/apps/256864458/movie480_vp9.webm?t=1646817689');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `api_token`, `created_at`, `updated_at`) VALUES
(4, 'asffasf', 'hwehw', '$2y$10$UD3IR6ioq6OVez//yHtFReyJtj1EdQoNJ9piKpApt4rpxXpZ384b2', '3GMgYS0iNFmJYWcH2GbkrZyRblQ6ckAoc93r1aVNDoKmey5YByCJDqNcftQVQdtwQOBdtqdSmy7CMCes', '2022-03-14 13:48:57', '2022-03-14 13:48:57'),
(5, 'Viewer', 'dema.cokol2@gmail.com', '$2y$10$5zmVzRnz0CGz2jOs.2OzS.aF4o/qjWF8MZsABg4f/Wlp/HLhpjzfS', 'mYMGWohaWCQJ7ZcQT6u9geIlJndouSGlA5lamA4BOwskLeDqCsRLmFaZ4cKia8nkItJL0XtNeo3XdsmU', '2022-03-14 13:51:30', '2022-03-24 16:59:48'),
(6, 'hweweh', 'gasg', '$2y$10$6fPcfXzE0/L3.34wn5pMaezCyxxEZT.qL6PY7zFogo0B5n/fevQei', 'yLCYQrwyCU8u4J2avPNqzbdNUB23Rilq9Jm2pDPt93E5ovZo6YhyuRgcPrLe1YumEEEBHX1Hq5TETX62', '2022-03-14 14:00:10', '2022-03-14 14:00:10'),
(7, 'erh', 'asg', '$2y$10$47aG04Mox.LrXmXDxc3rJuFH91UriYfnCGjKN9TpFVURSJ10v4LdC', 'laHiQGFL0ZSgEzZ9byBh0inPtcm64k6UcU6nPBgWnpnkelSuhLuKQzY7dVHdfcvARXf7mLqGb7omKwV5', '2022-03-14 14:25:50', '2022-03-14 14:25:50'),
(8, 'asd', 'asd', '$2y$10$w20KO/XgVWI473Rble9wzeymQfe0/jZUEAOP6YUqsiK1bmaXtZGYW', 'sbIxALfv6HY9QrdsrTBAIrBomWDmrDlKlA2XwmI5HxH7wi50fQ2zO5jF6LqZ6fiGAPQDaJXmdkGvRoAQ', '2022-03-15 13:57:45', '2022-03-15 13:57:45'),
(17, 'test', 'eryery@geqwggwe', '$2y$10$vxDEBf1bE9olBbck.dtIFe5IU7e9uubWFe17zr5CEH.eSC.7XnwRm', 'hBkaJ7fgDa8RVLwk289Zh2URtFzbd19ekuG2vE2xzYmZwDGvYuOJcJnLqwmzcCfQtQd6WMik6edw5yET', '2022-06-14 13:46:29', '2022-06-14 13:46:29'),
(18, 'test', 'test@test', '$2y$10$jHy0QPkmLIjomvXbYuy0t.57N4s0VZZ5zXY5JqzsqjRWR.JXNh19q', 'hQPSVtk4GiGUdwGWqQmtcxYiaX6PRlnfuSgocB7HYUPkRrOaZtBxksfevzOb42gX7HbP6cTdY9kI8pnc', '2022-06-14 13:50:46', '2022-06-14 13:50:46');

-- --------------------------------------------------------

--
-- Структура таблицы `user_avatar`
--

CREATE TABLE `user_avatar` (
  `id` bigint UNSIGNED NOT NULL,
  `id_avatar` bigint UNSIGNED NOT NULL,
  `id_user` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user_avatar`
--

INSERT INTO `user_avatar` (`id`, `id_avatar`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 1, 4, NULL, NULL),
(3, 3, 6, NULL, NULL),
(4, 4, 7, NULL, NULL),
(5, 5, 8, NULL, NULL),
(21, 1, 17, NULL, NULL),
(22, 1, 18, NULL, NULL),
(26, 7, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `user_buy`
--

CREATE TABLE `user_buy` (
  `id` bigint UNSIGNED NOT NULL,
  `id_tovar` bigint UNSIGNED NOT NULL,
  `id_user` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user_buy`
--

INSERT INTO `user_buy` (`id`, `id_tovar`, `id_user`, `key`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 'luYKvFU_TdLmckn5', '2022-03-17 04:21:35', '2022-03-17 04:21:35'),
(2, 2, 5, 'XfFmQOi39cZD5Vv6', '2022-03-17 04:21:35', '2022-03-17 04:21:35');

-- --------------------------------------------------------

--
-- Структура таблицы `user_cupon`
--

CREATE TABLE `user_cupon` (
  `id` bigint UNSIGNED NOT NULL,
  `id_cupon` bigint UNSIGNED NOT NULL,
  `id_user` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `user_report`
--

CREATE TABLE `user_report` (
  `id` bigint UNSIGNED NOT NULL,
  `id_report` bigint UNSIGNED NOT NULL,
  `id_user` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user_report`
--

INSERT INTO `user_report` (`id`, `id_report`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 37, 5, NULL, NULL),
(2, 38, 7, NULL, NULL),
(3, 39, 8, NULL, NULL),
(4, 40, 5, NULL, NULL),
(5, 41, 6, NULL, NULL),
(6, 42, 7, NULL, NULL),
(7, 43, 4, NULL, NULL),
(8, 44, 8, NULL, NULL),
(9, 48, 5, '2022-03-25 22:29:02', '2022-03-25 22:29:02'),
(10, 49, 5, '2022-03-25 22:32:22', '2022-03-25 22:32:22'),
(11, 50, 5, '2022-03-25 22:57:26', '2022-03-25 22:57:26'),
(12, 51, 5, '2022-03-25 22:57:31', '2022-03-25 22:57:31'),
(13, 52, 5, '2022-03-25 22:58:39', '2022-03-25 22:58:39'),
(14, 53, 5, '2022-03-25 22:58:45', '2022-03-25 22:58:45'),
(15, 54, 5, '2022-03-25 22:59:20', '2022-03-25 22:59:20'),
(16, 55, 5, '2022-03-25 23:00:40', '2022-03-25 23:00:40'),
(17, 56, 5, '2022-03-25 23:00:59', '2022-03-25 23:00:59'),
(18, 57, 5, '2022-03-25 23:01:32', '2022-03-25 23:01:32'),
(19, 58, 5, '2022-03-25 23:02:09', '2022-03-25 23:02:09'),
(20, 59, 5, '2022-03-25 23:02:35', '2022-03-25 23:02:35'),
(21, 60, 5, '2022-03-25 23:04:17', '2022-03-25 23:04:17'),
(22, 61, 5, '2022-03-25 23:04:49', '2022-03-25 23:04:49'),
(23, 62, 5, '2022-03-25 23:04:58', '2022-03-25 23:04:58'),
(24, 63, 5, '2022-03-25 23:06:53', '2022-03-25 23:06:53'),
(25, 64, 5, '2022-03-25 23:12:44', '2022-03-25 23:12:44'),
(26, 65, 5, '2022-03-25 23:13:16', '2022-03-25 23:13:16'),
(27, 66, 5, '2022-03-25 23:17:06', '2022-03-25 23:17:06'),
(28, 68, 5, '2022-03-30 00:35:32', '2022-03-30 00:35:32'),
(29, 69, 5, '2022-03-30 00:36:16', '2022-03-30 00:36:16'),
(30, 70, 5, '2022-03-30 00:36:59', '2022-03-30 00:36:59');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `avatars`
--
ALTER TABLE `avatars`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cupons`
--
ALTER TABLE `cupons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `devolopers`
--
ALTER TABLE `devolopers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `imageposter`
--
ALTER TABLE `imageposter`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `imagescrean`
--
ALTER TABLE `imagescrean`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idTovar` (`idTovar`);

--
-- Индексы таблицы `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tovars`
--
ALTER TABLE `tovars`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tovar_activation`
--
ALTER TABLE `tovar_activation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tovar_activation_id_tovar_foreign` (`id_tovar`),
  ADD KEY `tovar_activation_id_activation_foreign` (`id_activation`);

--
-- Индексы таблицы `tovar_devoloper`
--
ALTER TABLE `tovar_devoloper`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tovar_devoloper_id_tovar_foreign` (`id_tovar`),
  ADD KEY `tovar_devoloper_id_devoloper_foreign` (`id_devoloper`);

--
-- Индексы таблицы `tovar_genre`
--
ALTER TABLE `tovar_genre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tovar_genre_id_tovar_foreign` (`id_tovar`),
  ADD KEY `tovar_genre_id_genre_foreign` (`id_genre`);

--
-- Индексы таблицы `tovar_key`
--
ALTER TABLE `tovar_key`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tovar_key_id_tovar_foreign` (`id_tovar`),
  ADD KEY `tovar_key_id_key_foreign` (`id_key`);

--
-- Индексы таблицы `tovar_publisher`
--
ALTER TABLE `tovar_publisher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tovar_publisher_id_tovar_foreign` (`id_tovar`),
  ADD KEY `tovar_publisher_id_publisher_foreign` (`id_publisher`);

--
-- Индексы таблицы `tovar_region`
--
ALTER TABLE `tovar_region`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tovar_region_id_tovar_foreign` (`id_tovar`),
  ADD KEY `tovar_region_id_region_foreign` (`id_region`);

--
-- Индексы таблицы `tovar_report`
--
ALTER TABLE `tovar_report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tovar_report_id_userreport_foreign` (`id_userReport`),
  ADD KEY `tovar_report_id_tovar_foreign` (`id_tovar`);

--
-- Индексы таблицы `tovar_user`
--
ALTER TABLE `tovar_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tovar_user_id_tovar_foreign` (`id_tovar`),
  ADD KEY `tovar_user_id_user_foreign` (`id_user`);

--
-- Индексы таблицы `treiler`
--
ALTER TABLE `treiler`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user_avatar`
--
ALTER TABLE `user_avatar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_avatar_id_avatar_foreign` (`id_avatar`),
  ADD KEY `user_avatar_id_user_foreign` (`id_user`);

--
-- Индексы таблицы `user_buy`
--
ALTER TABLE `user_buy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_buy_id_tovar_foreign` (`id_tovar`),
  ADD KEY `user_buy_id_user_foreign` (`id_user`);

--
-- Индексы таблицы `user_cupon`
--
ALTER TABLE `user_cupon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_cupon_id_cupon_foreign` (`id_cupon`),
  ADD KEY `user_cupon_id_user_foreign` (`id_user`);

--
-- Индексы таблицы `user_report`
--
ALTER TABLE `user_report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_report_id_report_foreign` (`id_report`),
  ADD KEY `user_report_id_user_foreign` (`id_user`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `avatars`
--
ALTER TABLE `avatars`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `cupons`
--
ALTER TABLE `cupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `devolopers`
--
ALTER TABLE `devolopers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `imageposter`
--
ALTER TABLE `imageposter`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `imagescrean`
--
ALTER TABLE `imagescrean`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT для таблицы `keys`
--
ALTER TABLE `keys`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `regions`
--
ALTER TABLE `regions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT для таблицы `tovars`
--
ALTER TABLE `tovars`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `tovar_activation`
--
ALTER TABLE `tovar_activation`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT для таблицы `tovar_devoloper`
--
ALTER TABLE `tovar_devoloper`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `tovar_genre`
--
ALTER TABLE `tovar_genre`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT для таблицы `tovar_key`
--
ALTER TABLE `tovar_key`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT для таблицы `tovar_publisher`
--
ALTER TABLE `tovar_publisher`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `tovar_region`
--
ALTER TABLE `tovar_region`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `tovar_report`
--
ALTER TABLE `tovar_report`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `tovar_user`
--
ALTER TABLE `tovar_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT для таблицы `treiler`
--
ALTER TABLE `treiler`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `user_avatar`
--
ALTER TABLE `user_avatar`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `user_buy`
--
ALTER TABLE `user_buy`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `user_cupon`
--
ALTER TABLE `user_cupon`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `user_report`
--
ALTER TABLE `user_report`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `imageposter`
--
ALTER TABLE `imageposter`
  ADD CONSTRAINT `imageposter_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tovars` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `imagescrean`
--
ALTER TABLE `imagescrean`
  ADD CONSTRAINT `imagescrean_ibfk_1` FOREIGN KEY (`idTovar`) REFERENCES `tovars` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tovar_activation`
--
ALTER TABLE `tovar_activation`
  ADD CONSTRAINT `tovar_activation_id_activation_foreign` FOREIGN KEY (`id_activation`) REFERENCES `activations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tovar_activation_id_tovar_foreign` FOREIGN KEY (`id_tovar`) REFERENCES `tovars` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tovar_devoloper`
--
ALTER TABLE `tovar_devoloper`
  ADD CONSTRAINT `tovar_devoloper_id_devoloper_foreign` FOREIGN KEY (`id_devoloper`) REFERENCES `devolopers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tovar_devoloper_id_tovar_foreign` FOREIGN KEY (`id_tovar`) REFERENCES `tovars` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tovar_genre`
--
ALTER TABLE `tovar_genre`
  ADD CONSTRAINT `tovar_genre_id_genre_foreign` FOREIGN KEY (`id_genre`) REFERENCES `genres` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tovar_genre_id_tovar_foreign` FOREIGN KEY (`id_tovar`) REFERENCES `tovars` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tovar_key`
--
ALTER TABLE `tovar_key`
  ADD CONSTRAINT `tovar_key_id_key_foreign` FOREIGN KEY (`id_key`) REFERENCES `keys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tovar_key_id_tovar_foreign` FOREIGN KEY (`id_tovar`) REFERENCES `tovars` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tovar_publisher`
--
ALTER TABLE `tovar_publisher`
  ADD CONSTRAINT `tovar_publisher_id_publisher_foreign` FOREIGN KEY (`id_publisher`) REFERENCES `publishers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tovar_publisher_id_tovar_foreign` FOREIGN KEY (`id_tovar`) REFERENCES `tovars` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tovar_region`
--
ALTER TABLE `tovar_region`
  ADD CONSTRAINT `tovar_region_id_region_foreign` FOREIGN KEY (`id_region`) REFERENCES `regions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tovar_region_id_tovar_foreign` FOREIGN KEY (`id_tovar`) REFERENCES `tovars` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tovar_report`
--
ALTER TABLE `tovar_report`
  ADD CONSTRAINT `tovar_report_id_tovar_foreign` FOREIGN KEY (`id_tovar`) REFERENCES `tovars` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tovar_report_id_userreport_foreign` FOREIGN KEY (`id_userReport`) REFERENCES `user_report` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tovar_user`
--
ALTER TABLE `tovar_user`
  ADD CONSTRAINT `tovar_user_id_tovar_foreign` FOREIGN KEY (`id_tovar`) REFERENCES `tovars` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tovar_user_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `treiler`
--
ALTER TABLE `treiler`
  ADD CONSTRAINT `treiler_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tovars` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user_avatar`
--
ALTER TABLE `user_avatar`
  ADD CONSTRAINT `user_avatar_id_avatar_foreign` FOREIGN KEY (`id_avatar`) REFERENCES `avatars` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_avatar_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user_buy`
--
ALTER TABLE `user_buy`
  ADD CONSTRAINT `user_buy_id_tovar_foreign` FOREIGN KEY (`id_tovar`) REFERENCES `tovars` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_buy_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user_cupon`
--
ALTER TABLE `user_cupon`
  ADD CONSTRAINT `user_cupon_id_cupon_foreign` FOREIGN KEY (`id_cupon`) REFERENCES `cupons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_cupon_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user_report`
--
ALTER TABLE `user_report`
  ADD CONSTRAINT `user_report_id_report_foreign` FOREIGN KEY (`id_report`) REFERENCES `reports` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_report_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
