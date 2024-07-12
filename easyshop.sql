-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 12 juil. 2024 à 17:58
-- Version du serveur : 8.0.31
-- Version de PHP : 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `easyshop`
--

-- --------------------------------------------------------

--
-- Structure de la table `achats`
--

DROP TABLE IF EXISTS `achats`;
CREATE TABLE IF NOT EXISTS `achats` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `produit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantité` int NOT NULL,
  `couleur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taille` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int NOT NULL,
  `Transaction_Ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `produit_id` bigint UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `achats_user_id_foreign` (`user_id`),
  KEY `achats_produit_id_foreign` (`produit_id`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `achats`
--

INSERT INTO `achats` (`id`, `user_id`, `produit`, `quantité`, `couleur`, `taille`, `total`, `Transaction_Ref`, `created_at`, `updated_at`, `produit_id`) VALUES
(101, 3, 'Robe rose longuette', 1, 'Bleue', 'XXL', 12000, 'prYJkJlpk', '2024-07-12 12:26:51', '2024-07-12 12:26:51', 43),
(100, 3, 'Essentials', 2, 'Noire', 'XL', 11000, 'prYJkJlpk', '2024-07-12 12:26:51', '2024-07-12 12:26:51', 1),
(99, 3, 'Souris alentour coloré', 1, 'Rouge', 'Pas besoin', 4000, 'e-8pmseFz', '2024-07-12 09:25:21', '2024-07-12 09:25:21', 37),
(98, 3, 'Talon-Brillantine', 1, 'Blanc', '41-42', 25000, 'e-8pmseFz', '2024-07-12 09:25:21', '2024-07-12 09:25:21', 8),
(97, 3, 'Essentials', 1, 'Jaune', 'XL', 11000, 'e-8pmseFz', '2024-07-12 09:25:21', '2024-07-12 09:25:21', 1),
(96, 3, 'Asus-Pc', 1, 'Jaune', '14pouces', 160000, 'e-8pmseFz', '2024-07-12 09:25:21', '2024-07-12 09:25:21', 39),
(95, 3, 'AirFoxe', 1, 'Bleue', '41-42', 15000, 'e-8pmseFz', '2024-07-12 09:25:20', '2024-07-12 09:25:20', 49),
(94, 6, 'Hp Pavillon', 2, 'Blanc', '15,6pouces', 150000, '3g2x5dGBl', '2024-07-11 08:52:43', '2024-07-11 08:52:43', 50),
(91, 6, 'Complet Raillé', 1, 'Bleue', 'L', 9000, '3g2x5dGBl', '2024-07-11 08:52:42', '2024-07-11 08:52:42', 45),
(92, 6, 'AireNike', 1, 'Noire', '42-43', 17000, '3g2x5dGBl', '2024-07-11 08:52:42', '2024-07-11 08:52:42', 4),
(93, 6, 'Tapette Adidas', 1, 'Bleue', '42-43', 5000, '3g2x5dGBl', '2024-07-11 08:52:43', '2024-07-11 08:52:43', 40);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `Nom`, `created_at`, `updated_at`) VALUES
(1, 'Chaussures', '2024-06-03 08:02:22', '2024-06-03 08:02:22'),
(2, 'Vetements', '2024-06-03 08:02:53', '2024-07-04 08:15:33'),
(3, 'Outils_Informatiques', '2024-06-03 08:03:30', '2024-06-12 07:23:02');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2024_05_31_105455_create_produits_table', 1),
(2, '2024_05_31_110321_add_image_to_produits', 2),
(3, '2024_06_03_093652_create_categories_table', 3),
(4, '2024_06_10_160904_add_to_produits', 4),
(5, '2024_06_10_163443_modify_column_stock', 5),
(6, '2024_06_10_164955_modify_column_stock', 6),
(7, '2024_06_10_165857_modify_column_description', 7),
(8, '2024_06_10_170158_add_column_description', 8),
(9, '2024_06_11_093452_dd_column_description', 9),
(10, '2024_06_11_093645_dd_column_description', 10),
(11, '2024_06_11_093754_add_column_description', 11),
(12, '2024_06_11_095029_dd_column_description', 12),
(13, '2024_06_18_111827_add_to_users', 13),
(14, '2024_06_18_171141_add_to_users', 14),
(15, '2024_06_26_164849_create_achats_table', 15),
(16, '2024_06_27_055947_mod_achats', 16),
(17, '2024_06_27_061207_modi_achats', 17);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

DROP TABLE IF EXISTS `produits`;
CREATE TABLE IF NOT EXISTS `produits` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Prix` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorie_id` bigint UNSIGNED DEFAULT NULL,
  `Stock_disponible` int DEFAULT NULL,
  `Description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `produits_categorie_id_foreign` (`categorie_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id`, `Nom`, `Prix`, `created_at`, `updated_at`, `image`, `categorie_id`, `Stock_disponible`, `Description`) VALUES
(1, 'Essentials', 11000, '2024-05-31 10:07:15', '2024-07-12 12:26:51', 'blog/wj0eJJSVKmNJf8sL3Wxx0EKirZQp9x68uLvItoxq.jpg', 2, 6, 'Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam. Dolore diam stet rebum sed tempor kasd eirmod. Takimata kasd ipsum accusam sadipscing, eos dolores sit no ut diam consetetur duo justo est, sit sanctus diam tempor aliquyam eirmod nonumy rebum dolor accusam, ipsum kasd eos consetetur at sit rebum, diam kasd invidunt tempor lorem, ipsum lorem elitr sanctus eirmod takimata dolor ea invidunt.\r\n                            Dolore magna est eirmod sanctus dolor, amet diam et eirmod et ipsum. Amet dolore tempor consetetur sed lorem dolor sit lorem tempor. Gubergren amet amet labore sadipscing clita clita diam clita. Sea amet et sed ipsum lorem elitr et, amet et labore voluptua sit rebum. Ea erat sed et diam takimata sed justo. Magna takimata justo et amet magna et.'),
(2, 'Dior', 9000, '2024-05-31 10:58:24', '2024-07-08 11:23:56', 'blog/xgMEKgw4uE4HKRg2Faw3TZob5DwabN8arqkGTTq7.jpg', 2, 17, 'Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam. Dolore diam stet rebum sed tempor kasd eirmod. Takimata kasd ipsum accusam sadipscing, eos dolores sit no ut diam consetetur duo justo est, sit sanctus diam tempor aliquyam eirmod nonumy rebum dolor accusam, ipsum kasd eos consetetur at sit rebum, diam kasd invidunt tempor lorem, ipsum lorem elitr sanctus eirmod takimata dolor ea invidunt.\r\n                            Dolore magna est eirmod sanctus dolor, amet diam et eirmod et ipsum. Amet dolore tempor consetetur sed lorem dolor sit lorem tempor. Gubergren amet amet labore sadipscing clita clita diam clita. Sea amet et sed ipsum lorem elitr et, amet et labore voluptua sit rebum. Ea erat sed et diam takimata sed justo. Magna takimata justo et amet magna et.'),
(4, 'AireNike', 17000, '2024-05-31 13:56:59', '2024-07-11 08:52:42', 'blog/rMhjFtXgtBEJQ7mdNGu044q5fvIGggecTzoQqwRV.jpg', 1, 12, 'Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam. Dolore diam stet rebum sed tempor kasd eirmod. Takimata kasd ipsum accusam sadipscing, eos dolores sit no ut diam consetetur duo justo est, sit sanctus diam tempor aliquyam eirmod nonumy rebum dolor accusam, ipsum kasd eos consetetur at sit rebum, diam kasd invidunt tempor lorem, ipsum lorem elitr sanctus eirmod takimata dolor ea invidunt.\r\n                            Dolore magna est eirmod sanctus dolor, amet diam et eirmod et ipsum. Amet dolore tempor consetetur sed lorem dolor sit lorem tempor. Gubergren amet amet labore sadipscing clita clita diam clita. Sea amet et sed ipsum lorem elitr et, amet et labore voluptua sit rebum. Ea erat sed et diam takimata sed justo. Magna takimata justo et amet magna et.'),
(5, 'Louis-Vuitton', 16000, '2024-05-31 13:59:16', '2024-07-08 11:22:43', 'blog/uB8Urnxny7ei6hfvEmu5egdPP45D5yMgHiKBeDym.jpg', 1, 12, 'Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam. Dolore diam stet rebum sed tempor kasd eirmod. Takimata kasd ipsum accusam sadipscing, eos dolores sit no ut diam consetetur duo justo est, sit sanctus diam tempor aliquyam eirmod nonumy rebum dolor accusam, ipsum kasd eos consetetur at sit rebum, diam kasd invidunt tempor lorem, ipsum lorem elitr sanctus eirmod takimata dolor ea invidunt.\r\n                            Dolore magna est eirmod sanctus dolor, amet diam et eirmod et ipsum. Amet dolore tempor consetetur sed lorem dolor sit lorem tempor. Gubergren amet amet labore sadipscing clita clita diam clita. Sea amet et sed ipsum lorem elitr et, amet et labore voluptua sit rebum. Ea erat sed et diam takimata sed justo. Magna takimata justo et amet magna et.'),
(7, 'Air-Jordan', 14000, '2024-05-31 14:03:33', '2024-07-08 11:22:15', 'blog/0BkwVSGnGZhpIfeuMaijqpXB5ScBzl0XUslOMaoG.jpg', 1, 15, 'Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam. Dolore diam stet rebum sed tempor kasd eirmod. Takimata kasd ipsum accusam sadipscing, eos dolores sit no ut diam consetetur duo justo est, sit sanctus diam tempor aliquyam eirmod nonumy rebum dolor accusam, ipsum kasd eos consetetur at sit rebum, diam kasd invidunt tempor lorem, ipsum lorem elitr sanctus eirmod takimata dolor ea invidunt.\r\n                            Dolore magna est eirmod sanctus dolor, amet diam et eirmod et ipsum. Amet dolore tempor consetetur sed lorem dolor sit lorem tempor. Gubergren amet amet labore sadipscing clita clita diam clita. Sea amet et sed ipsum lorem elitr et, amet et labore voluptua sit rebum. Ea erat sed et diam takimata sed justo. Magna takimata justo et amet magna et.'),
(8, 'Talon-Brillantine', 25000, '2024-06-01 15:07:56', '2024-07-12 09:25:21', 'blog/RCqYzkjbzgHZVpN6tyU2dkQlN16ld1bsZFgDUlYw.jpg', 1, 13, 'Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invdiam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam.'),
(20, 'Tapette-Balenciaga', 5000, '2024-06-03 15:03:39', '2024-06-12 09:33:07', 'blog/5TNHasB39Lu9UelDkcwhY2hVOcoZtNVEYEuJ1m6e.jpg', 1, 19, 'Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invdiam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam.'),
(21, 'Tapette kitto facon', 6000, '2024-06-03 15:04:26', '2024-06-17 13:20:44', 'blog/wynDFP6DUpnL50xdJO8L9nYpBuXQsjVoFzNTCw7O.jpg', 1, 34, 'Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invdiam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam.'),
(22, 'Tapette-Zara', 5000, '2024-06-03 15:05:06', '2024-07-08 11:17:59', 'blog/6vaQl8dZXYUoQn5WC2e8BvNZcEokpZFzaJ6WA50p.jpg', 1, 26, 'Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam. Dolore diam stet rebum sed tempor kasd eirmod. Takimata kasd ipsum accusam sadipscing, eos dolores sit no ut diam consetetur duo justo est, sit sanctus diam tempor aliquyam eirmod nonumy rebum dolor accusam, ipsum kasd eos consetetur at sit rebum, diam kasd invidunt tempor lorem, ipsum lorem elitr sanctus eirmod takimata dolor ea invidunt.\r\n                            Dolore magna est eirmod sanctus dolor, amet diam et eirmod et ipsum. Amet dolore tempor consetetur sed lorem dolor sit lorem tempor. Gubergren amet amet labore sadipscing clita clita diam clita. Sea amet et sed ipsum lorem elitr et, amet et labore voluptua sit rebum. Ea erat sed et diam takimata sed justo. Magna takimata justo et amet magna et.'),
(23, 'LosAngeles', 7000, '2024-06-03 15:08:09', '2024-07-11 08:28:38', 'blog/tnn8HDKvdfwXZiEe3skFgTCJHT2GxIBkiclxmpNY.jpg', 2, 26, 'Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam. Dolore diam stet rebum sed tempor kasd eirmod. Takimata kasd ipsum accusam sadipscing, eos dolores sit no ut diam consetetur duo justo est, sit sanctus diam tempor aliquyam eirmod nonumy rebum dolor accusam, ipsum kasd eos consetetur at sit rebum, diam kasd invidunt tempor lorem, ipsum lorem elitr sanctus eirmod takimata dolor ea invidunt.\r\n                            Dolore magna est eirmod sanctus dolor, amet diam et eirmod et ipsum. Amet dolore tempor consetetur sed lorem dolor sit lorem tempor. Gubergren amet amet labore sadipscing clita clita diam clita. Sea amet et sed ipsum lorem elitr et, amet et labore voluptua sit rebum. Ea erat sed et diam takimata sed justo. Magna takimata justo et amet magna et.'),
(24, 'Tinkpad', 170000, '2024-06-03 15:09:42', '2024-07-11 07:58:33', 'blog/KnV7m4ReIh7Zdm36Ac2ArKaLIRggCq6tKv19asnC.jpg', 3, 26, 'Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam. Dolore diam stet rebum sed tempor kasd eirmod. Takimata kasd ipsum accusam sadipscing, eos dolores sit no ut diam consetetur duo justo est, sit sanctus diam tempor aliquyam eirmod nonumy rebum dolor accusam, ipsum kasd eos consetetur at sit rebum, diam kasd invidunt tempor lorem, ipsum lorem elitr sanctus eirmod takimata dolor ea invidunt.\r\n                            Dolore magna est eirmod sanctus dolor, amet diam et eirmod et ipsum. Amet dolore tempor consetetur sed lorem dolor sit lorem tempor. Gubergren amet amet labore sadipscing clita clita diam clita. Sea amet et sed ipsum lorem elitr et, amet et labore voluptua sit rebum. Ea erat sed et diam takimata sed justo. Magna takimata justo et amet magna et.'),
(26, 'Mac-pc', 210000, '2024-06-03 15:12:34', '2024-07-08 11:15:38', 'blog/LaBS5315QybPnW5rjjkeOHXxYLxl1jZd8Z7Xn9aa.jpg', 3, 25, 'Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam. Dolore diam stet rebum sed tempor kasd eirmod. Takimata kasd ipsum accusam sadipscing, eos dolores sit no ut diam consetetur duo justo est, sit sanctus diam tempor aliquyam eirmod nonumy rebum dolor accusam, ipsum kasd eos consetetur at sit rebum, diam kasd invidunt tempor lorem, ipsum lorem elitr sanctus eirmod takimata dolor ea invidunt.\r\n                            Dolore magna est eirmod sanctus dolor, amet diam et eirmod et ipsum. Amet dolore tempor consetetur sed lorem dolor sit lorem tempor. Gubergren amet amet labore sadipscing clita clita diam clita. Sea amet et sed ipsum lorem elitr et, amet et labore voluptua sit rebum. Ea erat sed et diam takimata sed justo. Magna takimata justo et amet magna et.'),
(27, 'Clavier', 9000, '2024-06-03 15:16:57', '2024-07-08 11:14:48', 'blog/tk9pTOx5o2G4MEoahOGmDTGcZEAvYXciWwbI8tKc.jpg', 3, 16, 'Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam. Dolore diam stet rebum sed tempor kasd eirmod. Takimata kasd ipsum accusam sadipscing, eos dolores sit no ut diam consetetur duo justo est, sit sanctus diam tempor aliquyam eirmod nonumy rebum dolor accusam, ipsum kasd eos consetetur at sit rebum, diam kasd invidunt tempor lorem, ipsum lorem elitr sanctus eirmod takimata dolor ea invidunt.\r\n                            Dolore magna est eirmod sanctus dolor, amet diam et eirmod et ipsum. Amet dolore tempor consetetur sed lorem dolor sit lorem tempor. Gubergren amet amet labore sadipscing clita clita diam clita. Sea amet et sed ipsum lorem elitr et, amet et labore voluptua sit rebum. Ea erat sed et diam takimata sed justo. Magna takimata justo et amet magna et.'),
(28, 'Souris', 6000, '2024-06-03 15:18:22', '2024-07-11 08:28:38', 'blog/PxbStPeSAkrsQdswE5rZdpp7mKJ3H2IRCWgKjiLz.jpg', 3, 19, 'Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam. Dolore diam stet rebum sed tempor kasd eirmod. Takimata kasd ipsum accusam sadipscing, eos dolores sit no ut diam consetetur duo justo est, sit sanctus diam tempor aliquyam eirmod nonumy rebum dolor accusam, ipsum kasd eos consetetur at sit rebum, diam kasd invidunt tempor lorem, ipsum lorem elitr sanctus eirmod takimata dolor ea invidunt.\r\n                            Dolore magna est eirmod sanctus dolor, amet diam et eirmod et ipsum. Amet dolore tempor consetetur sed lorem dolor sit lorem tempor. Gubergren amet amet labore sadipscing clita clita diam clita. Sea amet et sed ipsum lorem elitr et, amet et labore voluptua sit rebum. Ea erat sed et diam takimata sed justo. Magna takimata justo et amet magna et.'),
(49, 'AirFoxe', 15000, '2024-07-04 09:00:15', '2024-07-12 14:51:44', 'blog/c604YE262Zoou7RPkaiPDpnblOcUQDf9lKbsmqT9.jpg', 1, 13, 'Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam. Dolore diam stet rebum sed tempor kasd eirmod. Takimata kasd ipsum accusam sadipscing, eos dolores sit no ut diam consetetur duo justo est, sit sanctus diam tempor aliquyam eirmod nonumy rebum dolor accusam, ipsum kasd eos consetetur at sit rebum, diam kasd invidunt tempor lorem, ipsum lorem elitr sanctus eirmod takimata dolor ea invidunt.\r\n                            Dolore magna est eirmod sanctus dolor, amet diam et eirmod et ipsum. Amet dolore tempor consetetur sed lorem dolor sit lorem tempor. Gubergren amet amet labore sadipscing clita clita diam clita. Sea amet et sed ipsum lorem elitr et, amet et labore voluptua sit rebum. Ea erat sed et diam takimata sed justo. Magna takimata justo et amet magna et.'),
(38, 'Robe tradi', 8000, '2024-06-17 14:54:51', '2024-07-11 09:28:03', 'blog/4b0nW9GV2JxgjouR3ueDDzX8zO7a8rzMsq25W32y.jpg', 2, 0, 'Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam. Dolore diam stet rebum sed tempor kasd eirmod. Takimata kasd ipsum accusam sadipscing, eos dolores sit no ut diam consetetur duo justo est, sit sanctus diam tempor aliquyam eirmod nonumy rebum dolor accusam, ipsum kasd eos consetetur at sit rebum, diam kasd invidunt tempor lorem, ipsum lorem elitr sanctus eirmod takimata dolor ea invidunt.\r\n                            Dolore magna est eirmod sanctus dolor, amet diam et eirmod et ipsum. Amet dolore tempor consetetur sed lorem dolor sit lorem tempor. Gubergren amet amet labore sadipscing clita clita dia\r\nm clita. Sea amet et sed ipsum lorem elitr et, amet et labore voluptua sit rebum. Ea erat sed et diam takimata sed justo. Magna takimata justo et amet magna et.'),
(45, 'Complet Raillé', 9000, '2024-06-18 07:12:52', '2024-07-11 08:52:42', 'blog/5cHoANdc60IzgaQBJmVMlFpVkR2IP1uFc32ealDZ.jpg', 2, 9, 'Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam. Dolore diam stet rebum sed tempor kasd eirmod. Takimata kasd ipsum accusam sadipscing, eos dolores sit no ut diam consetetur duo justo est, sit sanctus diam tempor aliquyam eirmod nonumy rebum dolor accusam, ipsum kasd eos consetetur at sit rebum, diam kasd invidunt tempor lorem, ipsum lorem elitr sanctus eirmod takimata dolor ea invidunt.\r\n                            Dolore magna est eirmod sanctus dolor, amet diam et eirmod et ipsum. Amet dolore tempor consetetur sed lorem dolor sit lorem tempor. Gubergren amet amet labore sadipscing clita clita diam clita. Sea amet et sed ipsum lorem elitr et, amet et labore voluptua sit rebum. Ea erat sed et diam takimata sed justo. Magna takimata justo et amet magna et.'),
(43, 'Robe rose longuette', 12000, '2024-06-17 15:03:31', '2024-07-12 12:26:51', 'blog/dTPGypP4msRfvq3XiTNwNB4rROjY2s7wD1GlHiRM.jpg', 2, 21, 'Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam. Dolore diam stet rebum sed tempor kasd eirmod.'),
(47, 'Clavier light', 8000, '2024-06-18 07:22:30', '2024-07-08 11:00:32', 'blog/wPgwq3yoObDhQuZCsKa2gQvSfRuorAhyF5cF7iYt.jpg', 3, 21, 'Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam. Dolore diam stet rebum sed tempor kasd eirmod. Takimata kasd ipsum accusam sadipscing, eos dolores sit no ut diam consetetur duo justo est, sit sanctus diam tempor aliquyam eirmod nonumy rebum dolor accusam, ipsum kasd eos consetetur at sit rebum, diam kasd invidunt tempor lorem, ipsum lorem elitr sanctus eirmod takimata dolor ea invidunt.\r\n                            Dolore magna est eirmod sanctus dolor, amet diam et eirmod et ipsum. Amet dolore tempor consetetur sed lorem dolor sit lorem tempor. Gubergren amet amet labore sadipscing clita clita diam clita. Sea amet et sed ipsum lorem elitr et, amet et labore voluptua sit rebum. Ea erat sed et diam takimata sed justo. Magna takimata justo et amet magna et.'),
(40, 'Tapette-Adidas', 5000, '2024-06-17 14:58:58', '2024-07-12 11:31:00', 'blog/YApOcZ5MFHtaf4JqEozlNkF4GTc9DErPKPxJYSPA.jpg', 1, 0, 'Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam. Dolore diam stet rebum sed tempor kasd eirmod. Takimata kasd ipsum accusam sadipscing, eos dolores sit no ut diam consetetur duo justo est, sit sanctus diam tempor aliquyam eirmod nonumy rebum dolor accusam, ipsum kasd eos consetetur at sit rebum, diam kasd invidunt tempor lorem, ipsum lorem elitr sanctus eirmod takimata dolor ea invidunt.\r\n                            Dolore magna est eirmod sanctus dolor, amet diam et eirmod et ipsum. Amet dolore tempor consetetur sed lorem dolor sit lorem tempor. Gubergren amet amet labore sadipscing clita clita diam clita. Sea amet et sed ipsum lorem elitr et, amet et labore voluptua sit rebum. Ea erat sed et diam takimata sed justo. Magna takimata justo et amet magna et.'),
(37, 'Souris alentour coloré', 4000, '2024-06-17 14:53:27', '2024-07-12 09:25:21', 'blog/6R5jj8yuNPpsdx6qtKONSR2x6zdC6clsqZiwEcVH.jpg', 3, 23, 'Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam. Dolore diam stet rebum sed tempor kasd eirmod.'),
(39, 'Asus-Pc', 160000, '2024-06-17 14:56:11', '2024-07-12 09:25:21', 'blog/pf96FwhM4iB4J85mtUt472Hg5jY2ScOcqu05xWVy.jpg', 3, 12, 'Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam. Dolore diam stet rebum sed tempor kasd eirmod. Takimata kasd ipsum accusam sadipscing, eos dolores sit no ut diam consetetur duo justo est, sit sanctus diam tempor aliquyam eirmod nonumy rebum dolor accusam, ipsum kasd eos consetetur at sit rebum, diam kasd invidunt tempor lorem, ipsum lorem elitr sanctus eirmod takimata dolor ea invidunt.\r\n                            Dolore magna est eirmod sanctus dolor, amet diam et eirmod et ipsum. Amet dolore tempor consetetur sed lorem dolor sit lorem tempor. Gubergren amet amet labore sadipscing clita clita diam clita. Sea amet et sed ipsum lorem elitr et, amet et labore voluptua sit rebum. Ea erat sed et diam takimata sed justo. Magna takimata justo et amet magna et.'),
(50, 'Hp Pavillon', 150000, '2024-07-11 08:46:34', '2024-07-11 08:54:49', 'blog/t0sVuORecxKrSnbYTjBmL0RLVwOYVf9BBl8LSAwd.jpg', 3, 0, 'L\'ordinateur portable HP Pavilion que je propose est un modèle récent et performant, parfait pour les utilisations bureautiques, multimédia et même pour les tâches légères de création de contenu. Doté d\'un processeur Intel Core i5 de dernière génération, il offre une puissance de calcul plus que suffisante pour faire tourner vos applications favorites sans ralentissement. Avec ses 8 Go de mémoire vive et son disque dur de 500 Go, vous disposerez d\'espace de stockage et de mémoire amplement suffisants pour vos fichiers, photos et vidéos. L\'écran Full HD de 15,6 pouces vous garantit une excellente qualité d\'affichage pour profiter pleinement de vos contenus multimédia. Équipé du système d\'exploitation Windows 10, cet ordinateur portable HP Pavilion est prêt à l\'emploi et vous permettra de naviguer sur Internet, travailler et vous divertir en toute fluidité. N\'hésitez pas à me contacter pour en savoir plus sur cet ordinateur portable haut de gamme à un prix très compétitif.');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secondname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rôle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `categorie_id` bigint UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_categorie_id_foreign` (`categorie_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `secondname`, `email`, `rôle`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `categorie_id`) VALUES
(2, 'ketikoua', 'Maxwell', 'ketikouam@gmail.com', 'admin', NULL, '$2y$10$vFkOEUx7R2i8zR8K8qkBdOqS94kj1bpwhlb30ZhOz37ZEL.8MjZeu', NULL, '2024-06-18 13:06:04', '2024-06-20 08:22:20', NULL),
(3, 'Yessoufou', 'Imedade', 'yessoufou@gmail.com', 'user', NULL, '$2y$10$sOGnyzqGOB9.28fn0mhuI.Rqi37iSR6/NkzEbSNmd6x2VCzXCx95K', NULL, '2024-06-20 08:30:14', '2024-06-20 08:30:14', NULL),
(4, 'Ola', 'Atana', 'atanda@gmail.com', 'user', NULL, '$2y$10$syLvr6Xii2gVDwDDUZ3/Fe9W3g7CWwAgmeTqVraF3mho3jbOtV9aS', NULL, '2024-06-20 14:41:53', '2024-06-20 14:41:53', NULL),
(5, 'adam', 'adm', 'ketikoua@gmail.com', 'user', NULL, '$2y$10$7vXWT0/NVW6.65jWQIIMDeDEhj.gElCEPHM2Yk8EGcy3MvuhAh0FK', NULL, '2024-07-05 11:51:24', '2024-07-05 11:51:24', NULL),
(6, 'Atanda', 'Olamide', 'yessouf@gmail.com', 'user', NULL, '$2y$10$lc8swYZ9wNhjSFzNZ3.0Yep0EHuGpyxLEmtBw3RaCnp7asCXidYHS', NULL, '2024-07-11 06:55:52', '2024-07-11 06:55:52', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
