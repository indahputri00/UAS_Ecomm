-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jul 2021 pada 05.07
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forge`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_18_101953_create_products_table', 1),
(5, '2020_04_18_132841_create_profiles_table', 1),
(6, '2020_04_21_154729_create_stocks_table', 1),
(7, '2020_04_24_084350_create_orders_table', 1),
(8, '2020_04_26_123151_create_reminders_table', 1),
(9, '2020_04_27_044831_create_newsletters_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` int(11) NOT NULL,
  `payment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `user_id`, `name`, `cart`, `phonenumber`, `country`, `city`, `address`, `zipcode`, `payment_id`) VALUES
(1, '2021-07-16 06:37:23', '2021-07-16 06:37:23', 1, 'Indah Kurnia', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:0;a:5:{s:8:\"quantity\";i:1;s:5:\"price\";i:70000;s:4:\"size\";s:1:\"S\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:22;s:4:\"name\";s:8:\"Al Yasin\";s:5:\"brand\";N;s:5:\"price\";i:70000;s:5:\"image\";s:53:\"products/a6yZiZcoPWubl5acY1SxLIHObkt7jtywszIfOxSQ.jpg\";s:6:\"gender\";s:21:\"Busana Anak Laki-Laki\";s:8:\"category\";N;s:8:\"quantity\";i:1;s:10:\"created_at\";s:19:\"2021-07-15 15:12:38\";s:10:\"updated_at\";s:19:\"2021-07-15 15:12:38\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:22;s:4:\"name\";s:8:\"Al Yasin\";s:5:\"brand\";N;s:5:\"price\";i:70000;s:5:\"image\";s:53:\"products/a6yZiZcoPWubl5acY1SxLIHObkt7jtywszIfOxSQ.jpg\";s:6:\"gender\";s:21:\"Busana Anak Laki-Laki\";s:8:\"category\";N;s:8:\"quantity\";i:1;s:10:\"created_at\";s:19:\"2021-07-15 15:12:38\";s:10:\"updated_at\";s:19:\"2021-07-15 15:12:38\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:10:\"product_id\";i:22;}}s:13:\"totalQuantity\";i:1;s:10:\"totalPrice\";i:70000;}', '089347283478', 'Indonesia', 'Purwodadi', 'Jl. Merbabu no 13 09/17 Purwodadi', 54932, NULL),
(2, '2021-07-16 09:18:30', '2021-07-16 09:18:30', 5, 'Indah Kurnia Putri', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:4:{i:0;a:5:{s:8:\"quantity\";i:1;s:5:\"price\";i:40000;s:4:\"size\";s:8:\"All Size\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:50;s:4:\"name\";s:21:\"Hijab Pashmina Sabyan\";s:5:\"brand\";N;s:5:\"price\";i:40000;s:5:\"image\";s:53:\"products/s4HpzTSkBWDiMJy0YH7WcLK5KcB2v7iC1NmgausS.jpg\";s:6:\"gender\";s:5:\"Hijab\";s:8:\"category\";N;s:8:\"quantity\";i:1;s:10:\"created_at\";s:19:\"2021-07-16 13:52:15\";s:10:\"updated_at\";s:19:\"2021-07-16 13:52:15\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:50;s:4:\"name\";s:21:\"Hijab Pashmina Sabyan\";s:5:\"brand\";N;s:5:\"price\";i:40000;s:5:\"image\";s:53:\"products/s4HpzTSkBWDiMJy0YH7WcLK5KcB2v7iC1NmgausS.jpg\";s:6:\"gender\";s:5:\"Hijab\";s:8:\"category\";N;s:8:\"quantity\";i:1;s:10:\"created_at\";s:19:\"2021-07-16 13:52:15\";s:10:\"updated_at\";s:19:\"2021-07-16 13:52:15\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:10:\"product_id\";i:50;}i:1;a:5:{s:8:\"quantity\";i:1;s:5:\"price\";i:290000;s:4:\"size\";s:8:\"All Size\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:51;s:4:\"name\";s:20:\"Mukena Attaya Cotton\";s:5:\"brand\";N;s:5:\"price\";i:290000;s:5:\"image\";s:53:\"products/yTHC0BalFB9gijmHtTNmCzOFYBWesllvU2kyM7lX.jpg\";s:6:\"gender\";s:11:\"Alat Shalat\";s:8:\"category\";N;s:8:\"quantity\";i:1;s:10:\"created_at\";s:19:\"2021-07-16 13:52:44\";s:10:\"updated_at\";s:19:\"2021-07-16 13:52:44\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:51;s:4:\"name\";s:20:\"Mukena Attaya Cotton\";s:5:\"brand\";N;s:5:\"price\";i:290000;s:5:\"image\";s:53:\"products/yTHC0BalFB9gijmHtTNmCzOFYBWesllvU2kyM7lX.jpg\";s:6:\"gender\";s:11:\"Alat Shalat\";s:8:\"category\";N;s:8:\"quantity\";i:1;s:10:\"created_at\";s:19:\"2021-07-16 13:52:44\";s:10:\"updated_at\";s:19:\"2021-07-16 13:52:44\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:10:\"product_id\";i:51;}i:2;a:5:{s:8:\"quantity\";i:1;s:5:\"price\";i:125000;s:4:\"size\";s:1:\"L\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:30;s:4:\"name\";s:22:\"Gamis Anak Nadia Polka\";s:5:\"brand\";N;s:5:\"price\";i:125000;s:5:\"image\";s:53:\"products/pzyVN6VmYUeo7cOwptBuDZ2HI4P2PwftSlQKufha.jpg\";s:6:\"gender\";s:21:\"Busana Anak Perempuan\";s:8:\"category\";N;s:8:\"quantity\";i:1;s:10:\"created_at\";s:19:\"2021-07-16 13:43:50\";s:10:\"updated_at\";s:19:\"2021-07-16 13:43:50\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:30;s:4:\"name\";s:22:\"Gamis Anak Nadia Polka\";s:5:\"brand\";N;s:5:\"price\";i:125000;s:5:\"image\";s:53:\"products/pzyVN6VmYUeo7cOwptBuDZ2HI4P2PwftSlQKufha.jpg\";s:6:\"gender\";s:21:\"Busana Anak Perempuan\";s:8:\"category\";N;s:8:\"quantity\";i:1;s:10:\"created_at\";s:19:\"2021-07-16 13:43:50\";s:10:\"updated_at\";s:19:\"2021-07-16 13:43:50\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:10:\"product_id\";i:30;}i:3;a:5:{s:8:\"quantity\";i:1;s:5:\"price\";i:230000;s:4:\"size\";s:1:\"M\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:38;s:4:\"name\";s:26:\"Celline Dress vol 2 by Lil\";s:5:\"brand\";N;s:5:\"price\";i:230000;s:5:\"image\";s:53:\"products/7PrBjhMBd8MqgxeJvyaPagT0V437L0wuxv9KA5jV.jpg\";s:6:\"gender\";s:13:\"Busana Wanita\";s:8:\"category\";N;s:8:\"quantity\";i:1;s:10:\"created_at\";s:19:\"2021-07-16 13:47:42\";s:10:\"updated_at\";s:19:\"2021-07-16 13:47:42\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:38;s:4:\"name\";s:26:\"Celline Dress vol 2 by Lil\";s:5:\"brand\";N;s:5:\"price\";i:230000;s:5:\"image\";s:53:\"products/7PrBjhMBd8MqgxeJvyaPagT0V437L0wuxv9KA5jV.jpg\";s:6:\"gender\";s:13:\"Busana Wanita\";s:8:\"category\";N;s:8:\"quantity\";i:1;s:10:\"created_at\";s:19:\"2021-07-16 13:47:42\";s:10:\"updated_at\";s:19:\"2021-07-16 13:47:42\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:10:\"product_id\";i:38;}}s:13:\"totalQuantity\";i:4;s:10:\"totalPrice\";i:685000;}', '089780976893', 'Indonesia', 'Grobogan', 'Jl. Penuh Kenangan Bersamanya', 12390, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@therack.com', '$2y$10$n03rucLOFnp1jwAfTxRWBeKLbvvBnp3Luikom5c92kMqIcSJbOc7i', '2021-07-15 07:05:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `brand`, `price`, `image`, `gender`, `category`, `quantity`, `created_at`, `updated_at`) VALUES
(22, 'Al Yasin', NULL, 70000, 'products/a6yZiZcoPWubl5acY1SxLIHObkt7jtywszIfOxSQ.jpg', 'Busana Anak Laki-Laki', NULL, 1, '2021-07-15 08:12:38', '2021-07-15 08:12:38'),
(23, 'Baju Koko Anak Qahtan', NULL, 180000, 'products/26vkcazMDYwHI1gWpO7Cn4HkY44jOVYlzBslIP3X.jpg', 'Busana Anak Laki-Laki', NULL, 1, '2021-07-16 06:27:24', '2021-07-16 06:27:24'),
(24, 'Baju Koko Anak Yazan', NULL, 125000, 'products/ZSK0hDAs2546x5GpcEoqer5mA5QkIGOHwmNEFbEL.jpg', 'Busana Anak Laki-Laki', NULL, 1, '2021-07-16 06:29:15', '2021-07-16 06:29:15'),
(25, 'Gamis Anak Toyobo', NULL, 125000, 'products/lRIctBcnzVs2ZkJLuOPG6jfOGm94HLxaECMrkgnG.jpg', 'Busana Anak Laki-Laki', NULL, 1, '2021-07-16 06:29:57', '2021-07-16 06:29:57'),
(26, 'Jubah Anak Nubi', NULL, 125000, 'products/t8hLBgplyI3Vn4K19savHtP9m48ZcWqeotIkPvdD.jpg', 'Busana Anak Laki-Laki', NULL, 1, '2021-07-16 06:31:35', '2021-07-16 06:31:35'),
(27, 'Gamis Anak Aliza Navy', NULL, 90000, 'products/oWpP7TrEDggegyCWCFya6THVvifkVknAUO8pWPM2.jpg', 'Busana Anak Perempuan', NULL, 1, '2021-07-16 06:42:33', '2021-07-16 06:42:33'),
(28, 'Gamis Anak Annisa', NULL, 275000, 'products/cMlaezGQb466FPO8HkoM7Fq4XdmVT2yCxOSTTmp5.jpg', 'Busana Anak Perempuan', NULL, 1, '2021-07-16 06:43:06', '2021-07-16 06:43:06'),
(29, 'Gamis Anak Dahlia', NULL, 90000, 'products/zMuV8vQ758MyKRg7rtZp1wMTylzL5MDnXOk4O4sD.jpg', 'Busana Anak Perempuan', NULL, 1, '2021-07-16 06:43:28', '2021-07-16 06:43:28'),
(30, 'Gamis Anak Nadia Polka', NULL, 125000, 'products/pzyVN6VmYUeo7cOwptBuDZ2HI4P2PwftSlQKufha.jpg', 'Busana Anak Perempuan', NULL, 1, '2021-07-16 06:43:50', '2021-07-16 06:43:50'),
(31, 'Gamis Anak Raffaby', NULL, 100000, 'products/p9TRdc2hZAIAw9TExaOmcixG1AYVY7O6oladlXp4.jpg', 'Busana Anak Perempuan', NULL, 1, '2021-07-16 06:44:20', '2021-07-16 06:44:20'),
(32, 'Baju Gamis Pria Syari', NULL, 225000, 'products/pkMAN8OpCUscPmlAdfHVypylAL60NEgyl9x2aYu5.jpg', 'Busana Pria', NULL, 1, '2021-07-16 06:44:56', '2021-07-16 06:44:56'),
(33, 'Baju Koko Ardhani Katun', NULL, 170000, 'products/GbV94C2oHMaR3xqHYO9jpP1pZ4lvj6vtOWB1bqkM.jpg', 'Busana Pria', NULL, 1, '2021-07-16 06:45:21', '2021-07-16 06:45:21'),
(34, 'Baju Koko Aladin', NULL, 260000, 'products/l9xmg62drnHWUQmTfLpe2JCzJc3tv1mATSdxWZW8.jpg', 'Busana Pria', NULL, 1, '2021-07-16 06:45:45', '2021-07-16 06:45:45'),
(35, 'Lio Maxy Dress Syari', NULL, 90000, 'products/JuTtwBvhWipfiA52Zi9ktxMvTzorPpZFWNHwThh9.jpg', 'Busana Wanita', NULL, 1, '2021-07-16 06:46:23', '2021-07-16 06:46:23'),
(36, 'Renata Dress Muslimah by Shofiya', NULL, 120000, 'products/D1kIHeGJelgTCfaoyXpt6qLsaZCtFgfsQU2Z9UFD.jpg', 'Busana Wanita', NULL, 1, '2021-07-16 06:46:51', '2021-07-16 06:46:51'),
(37, 'Ruby Nissa by Shofiya', NULL, 145000, 'products/gQy511Cc5BfQI6Gm2lureCWas85ljPhl7LOjgVuz.jpg', 'Busana Wanita', NULL, 1, '2021-07-16 06:47:17', '2021-07-16 06:47:17'),
(38, 'Celline Dress vol 2 by Lil', NULL, 230000, 'products/7PrBjhMBd8MqgxeJvyaPagT0V437L0wuxv9KA5jV.jpg', 'Busana Wanita', NULL, 1, '2021-07-16 06:47:42', '2021-07-16 06:47:42'),
(39, 'Hijab Aida Instant', NULL, 30000, 'products/e9kp5Py3QOsAqIjPwhtRJQSNlligFNHFW9jsia0Q.jpg', 'Hijab', NULL, 1, '2021-07-16 06:48:14', '2021-07-16 06:48:14'),
(40, 'Hijab Aisyah Bergo', NULL, 35000, 'products/vq2ZaNxhZ0dHTIxzLB9XoG3dUKR280k0vpCNfmtA.jpg', 'Hijab', NULL, 1, '2021-07-16 06:48:35', '2021-07-16 06:48:35'),
(41, 'Hijab Aisyah Rempel', NULL, 50000, 'products/6URU1dBko7SDzfJfavD4vG2XQ53iSwm7dNpb0u0R.jpg', 'Hijab', NULL, 1, '2021-07-16 06:48:58', '2021-07-16 06:48:58'),
(42, 'Hijab Areta Premium', NULL, 20000, 'products/NbNTwzsQbqgqkMdqnM6kPR9DbODAphQNAwrAY3E9.jpg', 'Hijab', NULL, 1, '2021-07-16 06:49:17', '2021-07-16 06:49:17'),
(43, 'Hijab Instan Aldhans Malay', NULL, 34000, 'products/dFQlTGu2FKhI3Y6we41AYwdawP8k1BrVazNU5NKh.jpg', 'Hijab', NULL, 1, '2021-07-16 06:49:39', '2021-07-16 06:49:39'),
(44, 'Hijab Instan Jersey Khimar Penguin', NULL, 27000, 'products/YzEpIpGHxjDdWQmS3Xj9BbEG80xcwI8dtlQHUltZ.jpg', 'Hijab', NULL, 1, '2021-07-16 06:50:02', '2021-07-16 06:50:02'),
(45, 'Hijab Jumbo Quail Afifah', NULL, 80000, 'products/RiN6ZGFyMmUykwIJUXlPVizLoVkiNOm1iQp2Dyp3.jpg', 'Hijab', NULL, 1, '2021-07-16 06:50:23', '2021-07-16 06:50:23'),
(46, 'Hijab Niqab Aldhans 3 in 1', NULL, 28000, 'products/VNyMQhaHPSGZ6UAyNkSP4j8KCR0W5yzuUWkjd305.jpg', 'Hijab', NULL, 1, '2021-07-16 06:50:43', '2021-07-16 06:50:43'),
(47, 'Hijab Niqab Jumbo', NULL, 170000, 'products/BPrormfgLvnyE0bqrEsaegdXceorM9D05Kky6nvO.jpg', 'Hijab', NULL, 1, '2021-07-16 06:51:05', '2021-07-16 06:51:05'),
(48, 'Hijab Pashmina Ceruty', NULL, 38000, 'products/O4dMFBAWt5hIMZrg98FjuIVvRET7DVgUre03bnoL.jpg', 'Hijab', NULL, 1, '2021-07-16 06:51:34', '2021-07-16 06:51:34'),
(49, 'Hijab Pashmina Diamond', NULL, 35000, 'products/lQGl5sYt378fYQZOlMJ8UVF4zWam7mAawJb4eKuX.jpg', 'Hijab', NULL, 1, '2021-07-16 06:51:56', '2021-07-16 06:51:56'),
(50, 'Hijab Pashmina Sabyan', NULL, 40000, 'products/s4HpzTSkBWDiMJy0YH7WcLK5KcB2v7iC1NmgausS.jpg', 'Hijab', NULL, 1, '2021-07-16 06:52:15', '2021-07-16 06:52:15'),
(51, 'Mukena Attaya Cotton', NULL, 290000, 'products/yTHC0BalFB9gijmHtTNmCzOFYBWesllvU2kyM7lX.jpg', 'Alat Shalat', NULL, 1, '2021-07-16 06:52:44', '2021-07-16 06:52:44'),
(52, 'Mukena Bali Indah', NULL, 230000, 'products/nzouBOLeuk8Xl5ZLA012Zy9XeNAaRbVTsbNJbxJG.jpg', 'Alat Shalat', NULL, 1, '2021-07-16 06:53:07', '2021-07-16 06:53:07'),
(53, 'Mukena Bali Keira', NULL, 190000, 'products/KDMCZteTPwoWULnmDz6wZbdUOOC9CiSP4UYmtC0q.jpg', 'Alat Shalat', NULL, 1, '2021-07-16 06:53:32', '2021-07-16 06:53:32'),
(54, 'Mukena Camela Dewasa', NULL, 190000, 'products/wue7Bv0nyJVzKP2NQIlwDs1o43EWCaSgXHY1aq13.jpg', 'Alat Shalat', NULL, 1, '2021-07-16 06:53:53', '2021-07-16 06:53:53'),
(55, 'Mukena Dewasa Renda Nabila', NULL, 170000, 'products/kDmO943mZoaeONJdVfYP8VIuddWxppX8bQdXjPop.jpg', 'Alat Shalat', NULL, 1, '2021-07-16 06:54:17', '2021-07-16 06:54:17'),
(56, 'Mukena Khairunisa Renda', NULL, 200000, 'products/cmE3KApagyF4VJwqQmCKHQD8EWdKRZw3FiDFXw1t.jpg', 'Alat Shalat', NULL, 1, '2021-07-16 06:54:39', '2021-07-16 06:54:39'),
(57, 'Mukena Qoriah Raqumi', NULL, 270000, 'products/51Vz1zyiUzaqMHwetFInRbzWYBKeBSpGRQOAzodo.jpg', 'Alat Shalat', NULL, 1, '2021-07-16 06:55:02', '2021-07-16 06:55:02'),
(58, 'Mukena Shireen Coksu', NULL, 250000, 'products/UbCoLSljVXxXhNCyDIiiWKeAxdgSziBPyH5rCpXk.jpg', 'Alat Shalat', NULL, 1, '2021-07-16 06:55:23', '2021-07-16 06:55:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `phonenumber` bigint(20) DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `phonenumber`, `country`, `city`, `address`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 1, 62851666, 'Indonesia', 'Tamer', 'SP2 Tanah Miring', 99611, NULL, '2021-07-15 08:18:55'),
(2, 2, 8215551234, 'Indonesia', 'Medan', 'Danau Toba', 27321, NULL, NULL),
(3, 3, 42912345, 'United State of America', 'Seattle', 'Downtown Seattle ST 17', 78231, NULL, NULL),
(4, 4, 32912345, 'China', 'Guangzhou', 'ST 23a', 78213, NULL, NULL),
(5, 5, NULL, NULL, NULL, NULL, NULL, '2021-07-16 04:31:42', '2021-07-16 04:31:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reminders`
--

CREATE TABLE `reminders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reminder` text COLLATE utf8mb4_unicode_ci DEFAULT 'Type Something',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `reminders`
--

INSERT INTO `reminders` (`id`, `reminder`, `created_at`, `updated_at`) VALUES
(1, 'Type Something', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `stocks`
--

INSERT INTO `stocks` (`id`, `product_id`, `name`, `quantity`, `created_at`, `updated_at`) VALUES
(58, 22, 'S', 4, '2021-07-16 06:33:41', '2021-07-16 06:37:23'),
(59, 22, 'M', 2, '2021-07-16 06:33:52', '2021-07-16 06:33:52'),
(60, 22, 'L', 3, '2021-07-16 06:34:04', '2021-07-16 06:34:04'),
(61, 22, 'XL', 7, '2021-07-16 06:34:15', '2021-07-16 06:34:15'),
(62, 23, 'S', 2, '2021-07-16 06:58:28', '2021-07-16 06:58:28'),
(63, 23, 'M', 4, '2021-07-16 06:58:38', '2021-07-16 06:58:38'),
(64, 23, 'L', 3, '2021-07-16 06:59:34', '2021-07-16 06:59:34'),
(65, 23, 'XL', 3, '2021-07-16 06:59:44', '2021-07-16 06:59:44'),
(66, 24, 'S', 5, '2021-07-16 06:59:55', '2021-07-16 06:59:55'),
(67, 24, 'M', 2, '2021-07-16 07:00:03', '2021-07-16 07:00:03'),
(68, 24, 'L', 3, '2021-07-16 07:02:35', '2021-07-16 07:02:35'),
(69, 24, 'XL', 3, '2021-07-16 07:02:44', '2021-07-16 07:02:44'),
(70, 25, 'L', 3, '2021-07-16 07:04:26', '2021-07-16 07:04:26'),
(71, 25, 'S', 2, '2021-07-16 07:04:35', '2021-07-16 07:04:35'),
(72, 25, 'M', 4, '2021-07-16 07:04:48', '2021-07-16 07:04:48'),
(73, 25, 'XL', 2, '2021-07-16 07:05:02', '2021-07-16 07:05:02'),
(74, 26, 'L', 2, '2021-07-16 07:05:14', '2021-07-16 07:05:14'),
(75, 26, 'S', 5, '2021-07-16 07:05:23', '2021-07-16 07:05:23'),
(76, 26, 'M', 7, '2021-07-16 07:05:37', '2021-07-16 07:05:37'),
(77, 26, 'XL', 6, '2021-07-16 07:05:50', '2021-07-16 07:05:50'),
(78, 27, 'L', 2, '2021-07-16 07:06:30', '2021-07-16 07:06:30'),
(79, 27, 'S', 0, '2021-07-16 07:06:47', '2021-07-16 07:06:47'),
(80, 27, 'M', 1, '2021-07-16 07:07:05', '2021-07-16 07:07:05'),
(81, 27, 'XL', 5, '2021-07-16 07:07:18', '2021-07-16 07:07:18'),
(82, 28, 'L', 2, '2021-07-16 07:07:28', '2021-07-16 07:07:28'),
(83, 28, 'S', 5, '2021-07-16 07:07:39', '2021-07-16 07:07:39'),
(84, 28, 'M', 0, '2021-07-16 07:07:52', '2021-07-16 07:07:52'),
(85, 28, 'XL', 0, '2021-07-16 07:08:03', '2021-07-16 07:08:03'),
(86, 29, 'L', 2, '2021-07-16 07:19:24', '2021-07-16 07:19:24'),
(87, 29, 'S', 3, '2021-07-16 07:19:34', '2021-07-16 07:19:34'),
(88, 28, 'M', 5, '2021-07-16 07:19:44', '2021-07-16 07:19:44'),
(89, 28, 'XL', 0, '2021-07-16 07:19:59', '2021-07-16 07:19:59'),
(90, 29, 'L', 0, '2021-07-16 07:20:09', '2021-07-16 07:20:09'),
(91, 29, 'S', 1, '2021-07-16 07:20:19', '2021-07-16 07:20:19'),
(92, 29, 'M', 1, '2021-07-16 07:20:29', '2021-07-16 07:20:29'),
(93, 29, 'XL', 1, '2021-07-16 07:20:42', '2021-07-16 07:20:42'),
(94, 30, 'L', 0, '2021-07-16 07:20:53', '2021-07-16 09:18:30'),
(95, 30, 'S', 0, '2021-07-16 07:21:03', '2021-07-16 07:21:03'),
(96, 30, 'M', 0, '2021-07-16 07:21:12', '2021-07-16 07:21:12'),
(97, 30, 'XL', 0, '2021-07-16 07:21:24', '2021-07-16 07:21:24'),
(98, 31, 'L', 0, '2021-07-16 07:21:41', '2021-07-16 07:21:41'),
(99, 31, 'S', 5, '2021-07-16 07:21:51', '2021-07-16 07:21:51'),
(100, 31, 'M', 1, '2021-07-16 07:22:03', '2021-07-16 07:22:03'),
(101, 31, 'XL', 2, '2021-07-16 07:22:15', '2021-07-16 07:22:15'),
(102, 32, 'L', 0, '2021-07-16 07:23:31', '2021-07-16 07:23:31'),
(103, 32, 'S', 5, '2021-07-16 07:23:45', '2021-07-16 07:23:45'),
(104, 32, 'M', 1, '2021-07-16 07:23:57', '2021-07-16 07:23:57'),
(105, 32, 'XL', 3, '2021-07-16 07:24:07', '2021-07-16 07:24:07'),
(106, 33, 'L', 0, '2021-07-16 07:24:18', '2021-07-16 07:24:18'),
(107, 33, 'S', 2, '2021-07-16 07:24:28', '2021-07-16 07:24:28'),
(108, 33, 'M', 0, '2021-07-16 07:24:37', '2021-07-16 07:24:37'),
(109, 33, 'XL', 0, '2021-07-16 07:24:47', '2021-07-16 07:24:47'),
(110, 34, 'L', 2, '2021-07-16 07:24:57', '2021-07-16 07:24:57'),
(111, 34, 'S', 5, '2021-07-16 07:25:06', '2021-07-16 07:25:06'),
(112, 34, 'S', 0, '2021-07-16 07:25:16', '2021-07-16 07:25:16'),
(113, 34, 'XL', 0, '2021-07-16 07:25:26', '2021-07-16 07:25:26'),
(114, 35, 'S', 2, '2021-07-16 07:25:36', '2021-07-16 07:25:36'),
(115, 35, 'L', 2, '2021-07-16 07:25:56', '2021-07-16 07:25:56'),
(116, 35, 'L', 2, '2021-07-16 07:26:09', '2021-07-16 07:26:09'),
(117, 35, 'XL', 0, '2021-07-16 07:26:19', '2021-07-16 07:26:19'),
(118, 35, 'M', 2, '2021-07-16 07:26:29', '2021-07-16 07:26:29'),
(119, 36, 'S', 0, '2021-07-16 07:29:15', '2021-07-16 07:29:15'),
(120, 36, 'M', 2, '2021-07-16 07:29:27', '2021-07-16 07:29:27'),
(121, 36, 'L', 5, '2021-07-16 07:29:39', '2021-07-16 07:29:39'),
(122, 36, 'XL', 0, '2021-07-16 07:29:52', '2021-07-16 07:29:52'),
(123, 37, 'S', 0, '2021-07-16 07:30:02', '2021-07-16 07:30:02'),
(124, 37, 'M', 2, '2021-07-16 07:30:13', '2021-07-16 07:30:13'),
(125, 37, 'L', 0, '2021-07-16 07:30:29', '2021-07-16 07:30:29'),
(126, 37, 'XL', 1, '2021-07-16 07:30:45', '2021-07-16 07:30:45'),
(127, 38, 'S', 5, '2021-07-16 07:32:13', '2021-07-16 07:32:13'),
(128, 38, 'M', 1, '2021-07-16 07:32:25', '2021-07-16 09:18:30'),
(129, 38, 'M', 0, '2021-07-16 07:33:00', '2021-07-16 09:18:30'),
(130, 38, 'L', 5, '2021-07-16 07:33:16', '2021-07-16 07:33:16'),
(131, 38, 'XL', 0, '2021-07-16 07:33:27', '2021-07-16 07:33:27'),
(132, 39, 'All Size', 12, '2021-07-16 07:34:17', '2021-07-16 07:34:17'),
(133, 40, 'All Size', 20, '2021-07-16 07:34:38', '2021-07-16 07:34:38'),
(134, 41, 'All Size', 15, '2021-07-16 07:34:51', '2021-07-16 07:34:51'),
(135, 42, 'All Size', 30, '2021-07-16 07:36:01', '2021-07-16 07:36:01'),
(136, 43, 'All Size', 23, '2021-07-16 07:36:45', '2021-07-16 07:36:45'),
(137, 44, 'All Size', 7, '2021-07-16 07:38:43', '2021-07-16 07:38:43'),
(138, 45, '7', 1, '2021-07-16 07:39:03', '2021-07-16 07:39:03'),
(139, 46, 'All Size', 12, '2021-07-16 07:40:17', '2021-07-16 07:40:17'),
(140, 47, 'All Size', 7, '2021-07-16 07:40:31', '2021-07-16 07:40:31'),
(141, 48, 'All Size', 17, '2021-07-16 07:40:54', '2021-07-16 07:40:54'),
(142, 48, 'All Size', 85, '2021-07-16 07:41:24', '2021-07-16 07:41:24'),
(143, 49, 'All Size', 5, '2021-07-16 07:41:57', '2021-07-16 07:41:57'),
(144, 50, 'All Size', 47, '2021-07-16 07:42:18', '2021-07-16 09:18:30'),
(145, 51, 'All Size', 39, '2021-07-16 07:42:40', '2021-07-16 09:18:30'),
(146, 52, 'All Size', 52, '2021-07-16 07:42:59', '2021-07-16 07:42:59'),
(147, 53, 'All Size', 43, '2021-07-16 07:43:13', '2021-07-16 07:43:13'),
(148, 54, 'All Size', 54, '2021-07-16 07:43:35', '2021-07-16 07:43:35'),
(149, 55, 'All Size', 50, '2021-07-16 07:43:54', '2021-07-16 07:43:54'),
(150, 56, 'All Size', 53, '2021-07-16 07:44:12', '2021-07-16 07:44:12'),
(151, 57, 'All Size', 32, '2021-07-16 07:44:26', '2021-07-16 07:44:26'),
(152, 58, 'All Size', 52, '2021-07-16 07:44:50', '2021-07-16 07:44:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Customer',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$BLMejk.LiNf4ZlWk/JirieCgTncZb0aQDat0UJGDbeXrxS45cixc2', 'Admin', NULL, NULL, NULL),
(2, 'Dawn Roe', 'dawnroe@gmail.com', NULL, '$2y$10$11KYLQ96fskMgGpgtrwjhumBV.3B9RLrJg7WPcRXj9bIOc04eOZwq', 'Customer', NULL, NULL, NULL),
(3, 'John Doe', 'john_doe@gmail.com', NULL, '$2y$10$hV1ioYYCWHUYlNuPKGPHcekzXxiEBbu5Lh2cO37n163w.e/wHsvay', 'Customer', NULL, NULL, NULL),
(4, 'Emillie Norton', 'emillie_norton@gmail.com', NULL, '$2y$10$Jbr48UluHnri1aprRKC6DOp3CnNNyrLq6H5cY388Ax2fQq/drnVcO', 'Customer', NULL, NULL, NULL),
(5, 'indah', 'indah@gmail.com', NULL, '$2y$10$G9q.M.8gS6ZVpBAC5THveeUvWJF3edh7yTDzvF/uKrLJ2.zFfzo5m', 'Customer', NULL, '2021-07-16 04:31:42', '2021-07-16 04:31:42');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stocks_product_id_index` (`product_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT untuk tabel `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
