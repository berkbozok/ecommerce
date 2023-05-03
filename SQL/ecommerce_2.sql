-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2023 at 11:47 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) DEFAULT NULL,
  `countryCode` varchar(255) NOT NULL,
  `administrativeArea` varchar(255) DEFAULT NULL,
  `locality` varchar(255) DEFAULT NULL,
  `dependentLocality` varchar(255) DEFAULT NULL,
  `postalCode` varchar(255) DEFAULT NULL,
  `sortingCode` varchar(255) DEFAULT NULL,
  `addressLine1` varchar(255) DEFAULT NULL,
  `addressLine2` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `organizationTaxId` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `pluginId` int(11) DEFAULT NULL,
  `heading` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `unread` tinyint(1) NOT NULL DEFAULT 1,
  `dateRead` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assetindexdata`
--

CREATE TABLE `assetindexdata` (
  `id` int(11) NOT NULL,
  `sessionId` int(11) NOT NULL,
  `volumeId` int(11) NOT NULL,
  `uri` text DEFAULT NULL,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `isDir` tinyint(1) DEFAULT 0,
  `recordId` int(11) DEFAULT NULL,
  `isSkipped` tinyint(1) DEFAULT 0,
  `inProgress` tinyint(1) DEFAULT 0,
  `completed` tinyint(1) DEFAULT 0,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assetindexingsessions`
--

CREATE TABLE `assetindexingsessions` (
  `id` int(11) NOT NULL,
  `indexedVolumes` text DEFAULT NULL,
  `totalEntries` int(11) DEFAULT NULL,
  `processedEntries` int(11) NOT NULL DEFAULT 0,
  `cacheRemoteImages` tinyint(1) DEFAULT NULL,
  `listEmptyFolders` tinyint(1) DEFAULT 0,
  `isCli` tinyint(1) DEFAULT 0,
  `actionRequired` tinyint(1) DEFAULT 0,
  `processIfRootEmpty` tinyint(1) DEFAULT 0,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` int(11) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `uploaderId` int(11) DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `kind` varchar(50) NOT NULL DEFAULT 'unknown',
  `alt` text DEFAULT NULL,
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `focalPoint` varchar(13) DEFAULT NULL,
  `deletedWithVolume` tinyint(1) DEFAULT NULL,
  `keptFile` tinyint(1) DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `volumeId`, `folderId`, `uploaderId`, `filename`, `kind`, `alt`, `width`, `height`, `size`, `focalPoint`, `deletedWithVolume`, `keptFile`, `dateModified`, `dateCreated`, `dateUpdated`) VALUES
(2, 1, 1, NULL, 'Delete.svg', 'image', NULL, 14, 16, 2057, NULL, NULL, NULL, '2023-04-30 15:31:52', '2023-05-01 20:02:29', '2023-05-01 20:02:29'),
(3, 1, 1, NULL, 'first.jpg', 'image', NULL, 1000, 1000, 77228, NULL, NULL, NULL, '2023-04-30 19:26:14', '2023-05-01 20:02:30', '2023-05-01 20:02:30'),
(4, 1, 1, NULL, 'fourth.jpg', 'image', NULL, 1000, 1000, 72466, NULL, NULL, NULL, '2023-04-30 19:27:18', '2023-05-01 20:02:30', '2023-05-01 20:02:30'),
(5, 1, 1, NULL, 'Group-14.png', 'image', NULL, 22, 20, 549, NULL, NULL, NULL, '2023-04-30 05:07:52', '2023-05-01 20:02:30', '2023-05-01 20:02:30'),
(6, 1, 1, NULL, 'Left.svg', 'image', NULL, 13, 20, 225, NULL, NULL, NULL, '2023-04-30 15:14:01', '2023-05-01 20:02:31', '2023-05-01 20:02:31'),
(7, 1, 1, NULL, 'Menu.svg', 'image', NULL, 16, 15, 321, NULL, NULL, NULL, '2023-04-30 15:31:55', '2023-05-01 20:02:31', '2023-05-01 20:02:31'),
(8, 1, 1, NULL, 'minus.svg', 'image', NULL, 12, 4, 769, NULL, NULL, NULL, '2023-04-30 15:24:51', '2023-05-01 20:02:31', '2023-05-01 20:02:31'),
(9, 1, 1, NULL, 'Oval.png', 'image', NULL, 50, 50, 5950, NULL, NULL, NULL, '2023-04-30 05:08:06', '2023-05-01 20:02:31', '2023-05-01 20:02:31'),
(10, 1, 1, NULL, 'plus.svg', 'image', NULL, 12, 12, 1449, NULL, NULL, NULL, '2023-04-30 15:24:56', '2023-05-01 20:02:31', '2023-05-01 20:02:31'),
(11, 1, 1, NULL, 'Rectangle-1.png', 'image', NULL, 50, 50, 4660, NULL, NULL, NULL, '2023-04-30 15:31:49', '2023-05-01 20:02:31', '2023-05-01 20:02:31'),
(12, 1, 1, NULL, 'Right.svg', 'image', NULL, 13, 20, 224, NULL, NULL, NULL, '2023-04-30 15:14:01', '2023-05-01 20:02:32', '2023-05-01 20:02:32'),
(13, 1, 1, NULL, 'second.jpg', 'image', NULL, 1000, 1000, 103177, NULL, NULL, NULL, '2023-04-30 19:26:40', '2023-05-01 20:02:32', '2023-05-01 20:02:32'),
(14, 1, 1, NULL, 'third.jpg', 'image', NULL, 1000, 1000, 74963, NULL, NULL, NULL, '2023-04-30 19:27:02', '2023-05-01 20:02:32', '2023-05-01 20:02:32'),
(15, 1, 1, NULL, 'WhiteCart.png', 'image', NULL, 18, 16, 356, NULL, NULL, NULL, '2023-04-30 15:31:58', '2023-05-01 20:02:32', '2023-05-01 20:02:32');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categorygroups`
--

CREATE TABLE `categorygroups` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `defaultPlacement` enum('beginning','end') NOT NULL DEFAULT 'end',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categorygroups_sites`
--

CREATE TABLE `categorygroups_sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT 1,
  `uriFormat` text DEFAULT NULL,
  `template` varchar(500) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `changedattributes`
--

CREATE TABLE `changedattributes` (
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `attribute` varchar(255) NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `changedattributes`
--

INSERT INTO `changedattributes` (`elementId`, `siteId`, `attribute`, `dateUpdated`, `propagated`, `userId`) VALUES
(21, 1, 'postDate', '2023-05-01 20:11:59', 0, 1),
(21, 1, 'slug', '2023-05-01 20:11:14', 0, 1),
(21, 1, 'title', '2023-05-02 01:11:17', 0, 1),
(21, 1, 'uri', '2023-05-01 20:11:14', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `changedfields`
--

CREATE TABLE `changedfields` (
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `changedfields`
--

INSERT INTO `changedfields` (`elementId`, `siteId`, `fieldId`, `dateUpdated`, `propagated`, `userId`) VALUES
(21, 1, 8, '2023-05-01 20:11:35', 0, 1),
(21, 1, 9, '2023-05-02 01:11:17', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_productDescription_vqdvihfj` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_productDescription_vqdvihfj`) VALUES
(1, 1, 1, NULL, '2023-05-01 19:56:37', '2023-05-01 19:56:37', '554e3575-e60a-4675-b078-61f75820c8a8', NULL),
(2, 2, 1, 'Delete', '2023-05-01 20:02:29', '2023-05-01 20:02:29', 'cf004955-bf9a-42f9-8b60-1fdb76760b24', NULL),
(3, 3, 1, 'First', '2023-05-01 20:02:30', '2023-05-01 20:02:30', 'e9a79176-b3b4-44de-8eb3-54c10f544586', NULL),
(4, 4, 1, 'Fourth', '2023-05-01 20:02:30', '2023-05-01 20:02:30', '211b4268-dad6-4447-b417-e59f116c5900', NULL),
(5, 5, 1, 'Group 14', '2023-05-01 20:02:30', '2023-05-01 20:02:30', 'b2c0a032-cd37-4e0a-a5af-bf0a0b165881', NULL),
(6, 6, 1, 'Left', '2023-05-01 20:02:31', '2023-05-01 20:02:31', '19d8703f-1581-44c9-8526-32537baf5318', NULL),
(7, 7, 1, 'Menu', '2023-05-01 20:02:31', '2023-05-01 20:02:31', 'ba37e987-e687-433d-997d-76a1a23e31b7', NULL),
(8, 8, 1, 'Minus', '2023-05-01 20:02:31', '2023-05-01 20:02:31', '4a97571c-93dc-4ac8-b4d2-ef823b3ec579', NULL),
(9, 9, 1, 'Oval', '2023-05-01 20:02:31', '2023-05-01 20:02:31', 'e4d77f90-9d04-4efd-a72e-9ae0c23ab48d', NULL),
(10, 10, 1, 'Plus', '2023-05-01 20:02:31', '2023-05-01 20:02:31', 'c6fc463f-b87a-43a0-b81d-3dec7dffd6c2', NULL),
(11, 11, 1, 'Rectangle 1', '2023-05-01 20:02:31', '2023-05-01 20:02:31', 'e783fb05-ba34-48b1-9e8c-142ed3b5ffbb', NULL),
(12, 12, 1, 'Right', '2023-05-01 20:02:32', '2023-05-01 20:02:32', '0e88175e-1a45-4eaf-84d3-b102e4c4b667', NULL),
(13, 13, 1, 'Second', '2023-05-01 20:02:32', '2023-05-01 20:02:32', 'cd05838e-257a-4895-9e59-a5edbe873b43', NULL),
(14, 14, 1, 'Third', '2023-05-01 20:02:32', '2023-05-01 20:02:32', '023f077b-cdb2-45fc-b419-899afcaa9426', NULL),
(15, 15, 1, 'White Cart', '2023-05-01 20:02:32', '2023-05-01 20:02:32', 'abb3ff86-b2c1-495f-a9f9-7226dcaf5106', NULL),
(16, 16, 1, 'Homepage', '2023-05-01 20:02:57', '2023-05-01 20:02:57', 'bd37d748-b7fb-4add-af0f-e56e4f186a47', NULL),
(17, 17, 1, 'Homepage', '2023-05-01 20:02:57', '2023-05-01 20:02:57', 'ef263fc8-2396-48ea-97c3-53ef8f1a297a', NULL),
(18, 18, 1, 'Homepage', '2023-05-01 20:02:57', '2023-05-01 20:02:57', '34a09a3f-80d4-49ce-8306-b081b899e460', NULL),
(19, 19, 1, NULL, '2023-05-01 20:03:46', '2023-05-01 20:13:28', '0eedba5a-d2ed-4e61-9d0d-c829fd1e8ee6', NULL),
(20, 20, 1, NULL, '2023-05-01 20:09:59', '2023-05-01 20:13:47', '1fb39416-a3d7-4721-87ef-88e1529033bb', NULL),
(21, 21, 1, 'Fall Limited Edition Sneakers', '2023-05-01 20:11:03', '2023-05-02 01:11:17', 'e8bcd802-9943-41d3-83da-1d756d781ef3', 'These low-profile sneakers are your perfect casual wear companion. Featuring a durable rubber outer sole, they’ll withstand everything the weather can offer.'),
(22, 22, 1, 'Product title', '2023-05-01 20:11:59', '2023-05-01 20:11:59', '1e4fafec-8546-49ce-819c-03f64809ee40', 'Lorem ipsum dolar amit.'),
(23, 23, 1, NULL, '2023-05-01 20:12:05', '2023-05-01 20:12:05', '226b081b-f597-4eba-a9cf-5bacb46793fc', NULL),
(25, 25, 1, 'Fall Limited Edition Sneakers', '2023-05-02 01:11:17', '2023-05-02 01:11:17', '89352666-625c-482b-b8ef-eba62cbcdf73', 'These low-profile sneakers are your perfect casual wear companion. Featuring a durable rubber outer sole, they’ll withstand everything the weather can offer.');

-- --------------------------------------------------------

--
-- Table structure for table `craftidtokens`
--

CREATE TABLE `craftidtokens` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `accessToken` text NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deprecationerrors`
--

CREATE TABLE `deprecationerrors` (
  `id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `fingerprint` varchar(255) NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) NOT NULL,
  `line` smallint(6) UNSIGNED DEFAULT NULL,
  `message` text DEFAULT NULL,
  `traces` text DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drafts`
--

CREATE TABLE `drafts` (
  `id` int(11) NOT NULL,
  `canonicalId` int(11) DEFAULT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `provisional` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `notes` text DEFAULT NULL,
  `trackChanges` tinyint(1) NOT NULL DEFAULT 0,
  `dateLastMerged` datetime DEFAULT NULL,
  `saved` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `drafts`
--

INSERT INTO `drafts` (`id`, `canonicalId`, `creatorId`, `provisional`, `name`, `notes`, `trackChanges`, `dateLastMerged`, `saved`) VALUES
(2, NULL, 1, 0, 'First draft', NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `elements`
--

CREATE TABLE `elements` (
  `id` int(11) NOT NULL,
  `canonicalId` int(11) DEFAULT NULL,
  `draftId` int(11) DEFAULT NULL,
  `revisionId` int(11) DEFAULT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `archived` tinyint(1) NOT NULL DEFAULT 0,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateLastMerged` datetime DEFAULT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `elements`
--

INSERT INTO `elements` (`id`, `canonicalId`, `draftId`, `revisionId`, `fieldLayoutId`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `dateLastMerged`, `dateDeleted`, `uid`) VALUES
(1, NULL, NULL, NULL, NULL, 'craft\\elements\\User', 1, 0, '2023-05-01 19:56:37', '2023-05-01 19:56:37', NULL, NULL, '5f0c5776-d675-4255-afbe-303c7c678da1'),
(2, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2023-05-01 20:02:29', '2023-05-01 20:02:29', NULL, NULL, '2d5544d1-0fbe-4a2a-8316-e3608ad84479'),
(3, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2023-05-01 20:02:30', '2023-05-01 20:02:30', NULL, NULL, '233a7bec-9f77-46b5-b671-06d9628948a1'),
(4, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2023-05-01 20:02:30', '2023-05-01 20:02:30', NULL, NULL, 'ca748f07-92f0-47f8-b308-137ecff0bc91'),
(5, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2023-05-01 20:02:30', '2023-05-01 20:02:30', NULL, NULL, '3c65cd2b-6a81-40bc-8acd-ae99beb7cb59'),
(6, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2023-05-01 20:02:31', '2023-05-01 20:02:31', NULL, NULL, '4433af15-0b34-4fca-9fd1-ec5f3b61a010'),
(7, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2023-05-01 20:02:31', '2023-05-01 20:02:31', NULL, NULL, '25cbbb4e-fc15-4ae6-b7c5-5af6f3855c47'),
(8, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2023-05-01 20:02:31', '2023-05-01 20:02:31', NULL, NULL, '370889b8-2e59-4f2b-981f-d25fb0bc11e5'),
(9, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2023-05-01 20:02:31', '2023-05-01 20:02:31', NULL, NULL, 'ec20d545-a1d1-45d2-8630-23e3eab04b5a'),
(10, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2023-05-01 20:02:31', '2023-05-01 20:02:31', NULL, NULL, '7a9e1d12-9bb9-4cd1-9715-7925089aaa2a'),
(11, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2023-05-01 20:02:31', '2023-05-01 20:02:31', NULL, NULL, '2a33a008-9038-4941-8e77-5d19a7e0d0b4'),
(12, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2023-05-01 20:02:32', '2023-05-01 20:02:32', NULL, NULL, '39d630df-cc1f-4c42-bbaa-366d3fcd4c1a'),
(13, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2023-05-01 20:02:32', '2023-05-01 20:02:32', NULL, NULL, '926dcf01-854c-4d64-922e-c227f304f1d6'),
(14, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2023-05-01 20:02:32', '2023-05-01 20:02:32', NULL, NULL, '052d66e9-ba0c-46af-a8b5-82983ffe906f'),
(15, NULL, NULL, NULL, 1, 'craft\\elements\\Asset', 1, 0, '2023-05-01 20:02:32', '2023-05-01 20:02:32', NULL, NULL, 'd9251a44-fbc5-4a94-950b-3a9137330971'),
(16, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2023-05-01 20:02:57', '2023-05-01 20:02:57', NULL, NULL, 'e8038cc2-20c0-441f-95d5-73c11837a110'),
(17, 16, NULL, 1, 2, 'craft\\elements\\Entry', 1, 0, '2023-05-01 20:02:57', '2023-05-01 20:02:57', NULL, NULL, 'b095ffdf-038f-4e41-ab55-21849a4f2d4d'),
(18, 16, NULL, 2, 2, 'craft\\elements\\Entry', 1, 0, '2023-05-01 20:02:57', '2023-05-01 20:02:57', NULL, NULL, '6c2c0f3b-ca0d-4150-a52f-699de694ec50'),
(19, NULL, NULL, NULL, 5, 'craft\\elements\\GlobalSet', 1, 0, '2023-05-01 20:03:46', '2023-05-01 20:13:28', NULL, NULL, 'f70a1745-e97c-4cf5-95ff-acd81fe65d67'),
(20, NULL, NULL, NULL, 4, 'craft\\elements\\GlobalSet', 1, 0, '2023-05-01 20:09:59', '2023-05-01 20:13:47', NULL, NULL, 'fb846f56-6f24-4e5b-b24d-0ec86f396365'),
(21, NULL, NULL, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2023-05-01 20:11:03', '2023-05-02 01:11:17', NULL, NULL, 'b115e499-f29f-4ec1-ae24-4ada7f69ac5b'),
(22, 21, NULL, 3, 3, 'craft\\elements\\Entry', 1, 0, '2023-05-01 20:11:59', '2023-05-01 20:11:59', NULL, NULL, '07a149ee-629b-4a0e-a901-131d66963eb5'),
(23, NULL, 2, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2023-05-01 20:12:05', '2023-05-01 20:12:05', NULL, NULL, 'b76f3e37-3963-42d2-b687-25f368942009'),
(25, 21, NULL, 4, 3, 'craft\\elements\\Entry', 1, 0, '2023-05-02 01:11:17', '2023-05-02 01:11:17', NULL, NULL, '448e881c-8ad2-45cd-b3db-425843d06adc');

-- --------------------------------------------------------

--
-- Table structure for table `elements_sites`
--

CREATE TABLE `elements_sites` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `elements_sites`
--

INSERT INTO `elements_sites` (`id`, `elementId`, `siteId`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, NULL, NULL, 1, '2023-05-01 19:56:37', '2023-05-01 19:56:37', 'e6a73550-3531-42ff-a697-83b38d4bfecd'),
(2, 2, 1, NULL, NULL, 1, '2023-05-01 20:02:29', '2023-05-01 20:02:29', '645d6956-12d4-4fb3-961d-b4509da0e889'),
(3, 3, 1, NULL, NULL, 1, '2023-05-01 20:02:30', '2023-05-01 20:02:30', '6f2f451a-6402-40b4-8aed-ab6c494a31c9'),
(4, 4, 1, NULL, NULL, 1, '2023-05-01 20:02:30', '2023-05-01 20:02:30', '164faeee-dfe8-4e55-8420-1c4d0d6c48fa'),
(5, 5, 1, NULL, NULL, 1, '2023-05-01 20:02:30', '2023-05-01 20:02:30', 'fbf744af-6add-4801-83f3-7430c12e3129'),
(6, 6, 1, NULL, NULL, 1, '2023-05-01 20:02:31', '2023-05-01 20:02:31', 'a46614b7-e767-4f9f-9343-89c7b71524e6'),
(7, 7, 1, NULL, NULL, 1, '2023-05-01 20:02:31', '2023-05-01 20:02:31', '9b18c0e5-ce82-46c9-9599-36d6bb1b0859'),
(8, 8, 1, NULL, NULL, 1, '2023-05-01 20:02:31', '2023-05-01 20:02:31', '27ff6c39-d400-45f3-8cd8-412049998ae4'),
(9, 9, 1, NULL, NULL, 1, '2023-05-01 20:02:31', '2023-05-01 20:02:31', '0a84711a-7053-41e5-97ba-fbc4de446a7d'),
(10, 10, 1, NULL, NULL, 1, '2023-05-01 20:02:31', '2023-05-01 20:02:31', '0c8609aa-067c-4b5f-b00f-f4ee654efca4'),
(11, 11, 1, NULL, NULL, 1, '2023-05-01 20:02:31', '2023-05-01 20:02:31', 'e7298ea2-ccf5-4b77-9870-39cb35d32094'),
(12, 12, 1, NULL, NULL, 1, '2023-05-01 20:02:32', '2023-05-01 20:02:32', '27cd9dcc-bb68-409e-90fe-066e46c3ca9a'),
(13, 13, 1, NULL, NULL, 1, '2023-05-01 20:02:32', '2023-05-01 20:02:32', 'cac924be-bb69-47c7-8b5a-b0f8039e9e7a'),
(14, 14, 1, NULL, NULL, 1, '2023-05-01 20:02:32', '2023-05-01 20:02:32', '15e1acb7-4674-444c-bd31-7d7648add2a9'),
(15, 15, 1, NULL, NULL, 1, '2023-05-01 20:02:32', '2023-05-01 20:02:32', 'b444762a-79c1-44b0-afb4-1671de23c68f'),
(16, 16, 1, 'homepage', '__home__', 1, '2023-05-01 20:02:57', '2023-05-01 20:02:57', 'd30eb92b-1ba4-4072-aafc-c480b40d3cc3'),
(17, 17, 1, 'homepage', '__home__', 1, '2023-05-01 20:02:57', '2023-05-01 20:02:57', '04466512-06e9-4433-9e66-445c78f8f215'),
(18, 18, 1, 'homepage', '__home__', 1, '2023-05-01 20:02:57', '2023-05-01 20:02:57', '1c30e98c-f3cf-45a6-a72a-b0c10ce1ccdc'),
(19, 19, 1, NULL, NULL, 1, '2023-05-01 20:03:46', '2023-05-01 20:03:46', '94a7cff2-1092-4404-b455-5170ed1bfc2a'),
(20, 20, 1, NULL, NULL, 1, '2023-05-01 20:09:59', '2023-05-01 20:09:59', 'c38e9080-f7a4-4ae8-bf91-bb4023cb4a35'),
(21, 21, 1, 'product-title', 'products/product-title', 1, '2023-05-01 20:11:03', '2023-05-01 20:11:14', '2c441c60-4f51-4b0d-b042-1c07e0048dee'),
(22, 22, 1, 'product-title', 'products/product-title', 1, '2023-05-01 20:11:59', '2023-05-01 20:11:59', '1a5f5107-8f08-4298-b0d6-41b5aa35a24d'),
(23, 23, 1, '__temp_afuoqacvyxkwqaefdmoewotvlehnvkvnesoc', 'products/__temp_afuoqacvyxkwqaefdmoewotvlehnvkvnesoc', 1, '2023-05-01 20:12:05', '2023-05-01 20:12:05', '16302f5e-4f5b-4b2c-82d0-457f1dc62fe5'),
(25, 25, 1, 'product-title', 'products/product-title', 1, '2023-05-02 01:11:17', '2023-05-02 01:11:17', '96fae3d7-3706-419c-8bd2-066ecffa5b38');

-- --------------------------------------------------------

--
-- Table structure for table `entries`
--

CREATE TABLE `entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `typeId` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `deletedWithEntryType` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `entries`
--

INSERT INTO `entries` (`id`, `sectionId`, `parentId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `deletedWithEntryType`, `dateCreated`, `dateUpdated`) VALUES
(16, 1, NULL, 1, NULL, '2023-05-01 20:02:00', NULL, NULL, '2023-05-01 20:02:57', '2023-05-01 20:02:57'),
(17, 1, NULL, 1, NULL, '2023-05-01 20:02:00', NULL, NULL, '2023-05-01 20:02:57', '2023-05-01 20:02:57'),
(18, 1, NULL, 1, NULL, '2023-05-01 20:02:00', NULL, NULL, '2023-05-01 20:02:57', '2023-05-01 20:02:57'),
(21, 2, NULL, 2, 1, '2023-05-01 20:11:00', NULL, NULL, '2023-05-01 20:11:03', '2023-05-01 20:11:59'),
(22, 2, NULL, 2, 1, '2023-05-01 20:11:00', NULL, NULL, '2023-05-01 20:11:59', '2023-05-01 20:11:59'),
(23, 2, NULL, 2, 1, '2023-05-01 20:12:05', NULL, NULL, '2023-05-01 20:12:05', '2023-05-01 20:12:05'),
(25, 2, NULL, 2, 1, '2023-05-01 20:11:00', NULL, NULL, '2023-05-02 01:11:17', '2023-05-02 01:11:17');

-- --------------------------------------------------------

--
-- Table structure for table `entrytypes`
--

CREATE TABLE `entrytypes` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `hasTitleField` tinyint(1) NOT NULL DEFAULT 1,
  `titleTranslationMethod` varchar(255) NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text DEFAULT NULL,
  `titleFormat` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `entrytypes`
--

INSERT INTO `entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleTranslationMethod`, `titleTranslationKeyFormat`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 2, 'Homepage', 'homepage', 0, 'site', NULL, '{section.name|raw}', 1, '2023-05-01 20:02:57', '2023-05-01 20:02:57', NULL, '53c2cac6-4022-4c80-955f-aef3f99d5778'),
(2, 2, 3, 'Default', 'default', 1, 'site', NULL, NULL, 1, '2023-05-01 20:03:16', '2023-05-01 20:03:16', NULL, 'c11daede-73be-44f6-8abe-008cc7f7734d');

-- --------------------------------------------------------

--
-- Table structure for table `fieldgroups`
--

CREATE TABLE `fieldgroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `fieldgroups`
--

INSERT INTO `fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'Common', '2023-05-01 19:56:37', '2023-05-01 19:56:37', NULL, 'f53dc786-7687-4afd-a997-e1cb66d92893'),
(2, 'Globals', '2023-05-01 20:03:53', '2023-05-01 20:03:53', NULL, 'ea828d13-254f-4b0e-94a7-a506df8589ed'),
(3, 'Product', '2023-05-01 20:07:04', '2023-05-01 20:07:04', NULL, 'e7c76b8c-0680-425f-8eb9-db56956ed4a5');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayoutfields`
--

CREATE TABLE `fieldlayoutfields` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `fieldlayoutfields`
--

INSERT INTO `fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 4, 4, 2, 0, 0, '2023-05-01 20:09:59', '2023-05-01 20:09:59', '61dfb5ae-660f-447e-84a9-c01581ad46c0'),
(2, 4, 4, 3, 0, 1, '2023-05-01 20:09:59', '2023-05-01 20:09:59', 'c9658d5f-24f5-410e-8b36-9f85ec7369a3'),
(3, 5, 5, 6, 0, 0, '2023-05-01 20:10:34', '2023-05-01 20:10:34', '1e555dda-36e9-4d19-a41b-68d941f31658'),
(4, 5, 5, 7, 0, 1, '2023-05-01 20:10:34', '2023-05-01 20:10:34', '09abff3d-2b31-4c6d-852e-00a7c104d112'),
(5, 5, 5, 5, 0, 2, '2023-05-01 20:10:34', '2023-05-01 20:10:34', '1e1fd073-53ae-421c-8d16-6104d50efea7'),
(6, 5, 5, 1, 0, 3, '2023-05-01 20:10:34', '2023-05-01 20:10:34', 'a1e899f8-2014-47a4-b62c-4266d17ff543'),
(7, 5, 5, 10, 0, 4, '2023-05-01 20:10:34', '2023-05-01 20:10:34', 'b5c31fda-cd56-40b6-8a21-d8ce6531c482'),
(8, 5, 5, 11, 0, 5, '2023-05-01 20:10:34', '2023-05-01 20:10:34', '2bc34f9a-7a34-4aa1-ac95-354ac5cb123b'),
(9, 5, 5, 4, 0, 6, '2023-05-01 20:10:34', '2023-05-01 20:10:34', '0e683a0d-bb06-4d16-8dd5-6357a6988901'),
(10, 5, 5, 12, 0, 7, '2023-05-01 20:10:34', '2023-05-01 20:10:34', '7ade66d7-86f6-4822-b447-bfb732b2ec6a'),
(11, 3, 6, 8, 0, 1, '2023-05-01 20:10:55', '2023-05-01 20:10:55', '47013bf5-7aeb-41c6-b5f8-aa1f7f4723e4'),
(12, 3, 6, 9, 0, 2, '2023-05-01 20:10:55', '2023-05-01 20:10:55', 'afa1dc52-7892-457e-975e-8492b8a149c6');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayouts`
--

CREATE TABLE `fieldlayouts` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `fieldlayouts`
--

INSERT INTO `fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'craft\\elements\\Asset', '2023-05-01 20:02:07', '2023-05-01 20:02:07', NULL, '2658aa06-5a9f-473a-8a6c-5d61cc783a09'),
(2, 'craft\\elements\\Entry', '2023-05-01 20:02:57', '2023-05-01 20:02:57', NULL, 'f183705f-cabd-4073-9346-e50f9a927d05'),
(3, 'craft\\elements\\Entry', '2023-05-01 20:03:16', '2023-05-01 20:03:16', NULL, '98e3822d-1f15-4ada-8bc0-e0948a571409'),
(4, 'craft\\elements\\GlobalSet', '2023-05-01 20:09:59', '2023-05-01 20:09:59', NULL, '3547eaa3-4492-4f65-b3ad-678bfecdc2d0'),
(5, 'craft\\elements\\GlobalSet', '2023-05-01 20:10:34', '2023-05-01 20:10:34', NULL, '1f49e617-2b4b-4c21-a62b-01303039b78f');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayouttabs`
--

CREATE TABLE `fieldlayouttabs` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `settings` text DEFAULT NULL,
  `elements` text DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `fieldlayouttabs`
--

INSERT INTO `fieldlayouttabs` (`id`, `layoutId`, `name`, `settings`, `elements`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\assets\\\\AssetTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"5bbe8576-e66a-4e4a-8974-1b13a8b2e86e\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\assets\\\\AltField\",\"attribute\":\"alt\",\"requirable\":true,\"class\":null,\"rows\":null,\"cols\":null,\"name\":null,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"72a25e68-3316-4ee7-9fd3-614bfd5d5940\",\"userCondition\":null,\"elementCondition\":null}]', 1, '2023-05-01 20:02:07', '2023-05-01 20:02:07', '0835a456-8651-4e63-9680-a4978cb75992'),
(2, 2, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"3b86e0ac-277b-40bd-ac1d-85c4f4461fc0\",\"userCondition\":null,\"elementCondition\":null}]', 1, '2023-05-01 20:02:57', '2023-05-01 20:02:57', '99ff54f6-8c7b-4dbf-91a2-9449b0c1e298'),
(4, 4, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"9eafa226-7049-4834-b0e5-4a338f9d411e\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"98e40c01-feab-42be-b39e-7c47fdbc195d\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"f6550ec3-9fd0-4fc4-9173-dd4c40f9f35e\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"eb8fb94e-2982-453f-9072-17588c12b586\"}]', 1, '2023-05-01 20:09:59', '2023-05-01 20:09:59', 'b5771228-8f89-468c-9a1f-e5589b8c705f'),
(5, 5, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"3e970d0d-427c-4bfb-98ff-e12281b354da\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"1d7f58e5-54d5-4aa6-967a-3dfd63ca925a\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"37968fac-e452-406a-81dd-9c3fe74355d0\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"e713e7b2-5884-4fad-bc4e-01590a029dda\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"4734fd69-2a6a-4f88-80fc-89893d1bd28c\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"9cb01ad1-a8c0-4dcd-acaa-32209d678735\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"c1252a6c-b932-49a0-bf32-d1b472827da2\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"553c2fb7-c6c3-4466-8c23-78667efb8a02\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"989877cd-f17f-4ea9-b3e0-2ce4ad244ffd\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"1382385e-830e-49f2-a4cc-3f3f001b35b0\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"c3f58fb4-93ad-4b21-8338-f8684f20b03d\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"71b0acc2-f231-4338-95a4-31669ce9eafc\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"bdaa05b2-de70-4428-b7c2-a5260bcbe4ca\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"8eaa0347-b87d-4296-a253-c46c6b96189d\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"5e26ca9e-e35a-47a6-b155-40783811697e\"}]', 1, '2023-05-01 20:10:34', '2023-05-01 20:10:34', '5ef82da4-8ef9-4d41-becc-ed3172b6c9be'),
(6, 3, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"06942faf-b971-4417-ac11-20b47ae955b0\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"eb56fdf5-395f-4786-bf8d-04654ceeb99c\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"a830dc15-0621-48c6-9ebf-9da4338a2edb\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"70f0909a-b0d7-48b5-975d-6eb1345c6ce2\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"30c28c2e-1470-49f5-b706-b58b419a54e6\"}]', 1, '2023-05-01 20:10:55', '2023-05-01 20:10:55', '3e471472-dec7-449a-939e-92d79c4cafa2');

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` int(11) NOT NULL,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(64) NOT NULL,
  `context` varchar(255) NOT NULL DEFAULT 'global',
  `columnSuffix` char(8) DEFAULT NULL,
  `instructions` text DEFAULT NULL,
  `searchable` tinyint(1) NOT NULL DEFAULT 1,
  `translationMethod` varchar(255) NOT NULL DEFAULT 'none',
  `translationKeyFormat` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `settings` text DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `groupId`, `name`, `handle`, `context`, `columnSuffix`, `instructions`, `searchable`, `translationMethod`, `translationKeyFormat`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 2, 'Menu', 'menu', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":null,\"branchLimit\":null,\"defaultUploadLocationSource\":\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\",\"defaultUploadLocationSubpath\":null,\"localizeRelations\":false,\"maintainHierarchy\":false,\"maxRelations\":1,\"minRelations\":null,\"previewMode\":\"full\",\"restrictFiles\":false,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\",\"restrictedLocationSubpath\":null,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Asset\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"},\"selectionLabel\":null,\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2023-05-01 20:04:07', '2023-05-01 20:04:07', '553c2fb7-c6c3-4466-8c23-78667efb8a02'),
(2, 2, 'Cart image', 'cartImage', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":null,\"branchLimit\":null,\"defaultUploadLocationSource\":\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\",\"defaultUploadLocationSubpath\":null,\"localizeRelations\":false,\"maintainHierarchy\":false,\"maxRelations\":1,\"minRelations\":null,\"previewMode\":\"full\",\"restrictFiles\":false,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\",\"restrictedLocationSubpath\":null,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Asset\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"},\"selectionLabel\":null,\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2023-05-01 20:05:00', '2023-05-01 20:05:00', '98e40c01-feab-42be-b39e-7c47fdbc195d'),
(3, 2, 'Profile image', 'profileImage', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":null,\"branchLimit\":null,\"defaultUploadLocationSource\":\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\",\"defaultUploadLocationSubpath\":null,\"localizeRelations\":false,\"maintainHierarchy\":false,\"maxRelations\":1,\"minRelations\":null,\"previewMode\":\"full\",\"restrictFiles\":false,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\",\"restrictedLocationSubpath\":null,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Asset\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"},\"selectionLabel\":null,\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2023-05-01 20:05:30', '2023-05-01 20:05:30', 'eb8fb94e-2982-453f-9072-17588c12b586'),
(4, 2, 'Product Thumb Nail', 'productThumbNail', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":null,\"branchLimit\":null,\"defaultUploadLocationSource\":\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\",\"defaultUploadLocationSubpath\":null,\"localizeRelations\":false,\"maintainHierarchy\":false,\"maxRelations\":1,\"minRelations\":null,\"previewMode\":\"full\",\"restrictFiles\":false,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\",\"restrictedLocationSubpath\":null,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Asset\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"},\"selectionLabel\":null,\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2023-05-01 20:06:00', '2023-05-01 20:06:00', 'bdaa05b2-de70-4428-b7c2-a5260bcbe4ca'),
(5, 2, 'Delete', 'delete', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":null,\"branchLimit\":null,\"defaultUploadLocationSource\":\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\",\"defaultUploadLocationSubpath\":null,\"localizeRelations\":false,\"maintainHierarchy\":false,\"maxRelations\":1,\"minRelations\":null,\"previewMode\":\"full\",\"restrictFiles\":false,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\",\"restrictedLocationSubpath\":null,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Asset\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"},\"selectionLabel\":null,\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2023-05-01 20:06:16', '2023-05-01 20:06:16', '9cb01ad1-a8c0-4dcd-acaa-32209d678735'),
(6, 2, 'Arrow left', 'arrowLeft', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":null,\"branchLimit\":null,\"defaultUploadLocationSource\":\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\",\"defaultUploadLocationSubpath\":null,\"localizeRelations\":false,\"maintainHierarchy\":false,\"maxRelations\":1,\"minRelations\":null,\"previewMode\":\"full\",\"restrictFiles\":false,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\",\"restrictedLocationSubpath\":null,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Asset\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"},\"selectionLabel\":null,\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2023-05-01 20:06:40', '2023-05-01 20:06:40', '1d7f58e5-54d5-4aa6-967a-3dfd63ca925a'),
(7, 2, 'Arrow right', 'arrowRight', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":null,\"branchLimit\":null,\"defaultUploadLocationSource\":\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\",\"defaultUploadLocationSubpath\":null,\"localizeRelations\":false,\"maintainHierarchy\":false,\"maxRelations\":1,\"minRelations\":null,\"previewMode\":\"full\",\"restrictFiles\":false,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\",\"restrictedLocationSubpath\":null,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Asset\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"},\"selectionLabel\":null,\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2023-05-01 20:06:54', '2023-05-01 20:06:54', 'e713e7b2-5884-4fad-bc4e-01590a029dda'),
(8, 3, 'Product images', 'productImages', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":null,\"branchLimit\":null,\"defaultUploadLocationSource\":\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\",\"defaultUploadLocationSubpath\":null,\"localizeRelations\":false,\"maintainHierarchy\":false,\"maxRelations\":null,\"minRelations\":null,\"previewMode\":\"full\",\"restrictFiles\":false,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\",\"restrictedLocationSubpath\":null,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Asset\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"},\"selectionLabel\":null,\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2023-05-01 20:07:16', '2023-05-01 20:07:16', 'a830dc15-0621-48c6-9ebf-9da4338a2edb'),
(9, 3, 'Product description', 'productDescription', 'global', 'vqdvihfj', NULL, 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":true,\"placeholder\":null,\"uiMode\":\"normal\"}', '2023-05-01 20:07:49', '2023-05-01 20:07:49', '30c28c2e-1470-49f5-b706-b58b419a54e6'),
(10, 2, 'Minus', 'minus', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":null,\"branchLimit\":null,\"defaultUploadLocationSource\":\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\",\"defaultUploadLocationSubpath\":null,\"localizeRelations\":false,\"maintainHierarchy\":false,\"maxRelations\":1,\"minRelations\":null,\"previewMode\":\"full\",\"restrictFiles\":false,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\",\"restrictedLocationSubpath\":null,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Asset\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"},\"selectionLabel\":null,\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2023-05-01 20:08:12', '2023-05-01 20:08:12', '1382385e-830e-49f2-a4cc-3f3f001b35b0'),
(11, 2, 'Plus', 'plus', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":null,\"branchLimit\":null,\"defaultUploadLocationSource\":\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\",\"defaultUploadLocationSubpath\":null,\"localizeRelations\":false,\"maintainHierarchy\":false,\"maxRelations\":1,\"minRelations\":null,\"previewMode\":\"full\",\"restrictFiles\":false,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\",\"restrictedLocationSubpath\":null,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Asset\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"},\"selectionLabel\":null,\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2023-05-01 20:08:30', '2023-05-01 20:08:30', 'b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994'),
(12, 2, 'White cart', 'whiteCart', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":null,\"branchLimit\":null,\"defaultUploadLocationSource\":\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\",\"defaultUploadLocationSubpath\":null,\"localizeRelations\":false,\"maintainHierarchy\":false,\"maxRelations\":1,\"minRelations\":null,\"previewMode\":\"full\",\"restrictFiles\":false,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\",\"restrictedLocationSubpath\":null,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Asset\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"},\"selectionLabel\":null,\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2023-05-01 20:08:57', '2023-05-01 20:08:57', '5e26ca9e-e35a-47a6-b155-40783811697e');

-- --------------------------------------------------------

--
-- Table structure for table `globalsets`
--

CREATE TABLE `globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `globalsets`
--

INSERT INTO `globalsets` (`id`, `name`, `handle`, `fieldLayoutId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(19, 'Icons', 'icons', 5, 1, '2023-05-01 20:03:46', '2023-05-01 20:10:35', 'f70a1745-e97c-4cf5-95ff-acd81fe65d67'),
(20, 'Header', 'header', 4, 2, '2023-05-01 20:09:59', '2023-05-01 20:09:59', 'fb846f56-6f24-4e5b-b24d-0ec86f396365');

-- --------------------------------------------------------

--
-- Table structure for table `gqlschemas`
--

CREATE TABLE `gqlschemas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `scope` text DEFAULT NULL,
  `isPublic` tinyint(1) NOT NULL DEFAULT 0,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gqltokens`
--

CREATE TABLE `gqltokens` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `accessToken` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `expiryDate` datetime DEFAULT NULL,
  `lastUsed` datetime DEFAULT NULL,
  `schemaId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `imagetransformindex`
--

CREATE TABLE `imagetransformindex` (
  `id` int(11) NOT NULL,
  `assetId` int(11) NOT NULL,
  `transformer` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `transformString` varchar(255) NOT NULL,
  `fileExists` tinyint(1) NOT NULL DEFAULT 0,
  `inProgress` tinyint(1) NOT NULL DEFAULT 0,
  `error` tinyint(1) NOT NULL DEFAULT 0,
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `imagetransformindex`
--

INSERT INTO `imagetransformindex` (`id`, `assetId`, `transformer`, `filename`, `format`, `transformString`, `fileExists`, `inProgress`, `error`, `dateIndexed`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 12, 'craft\\imagetransforms\\ImageTransformer', 'Right.svg', NULL, '_22x34_crop_center-center_none', 1, 0, 0, '2023-05-01 20:02:35', '2023-05-01 20:02:35', '2023-05-01 20:02:35', 'b77ea5bc-c260-4635-b980-f2136e98d4b5'),
(2, 12, 'craft\\imagetransforms\\ImageTransformer', 'Right.svg', NULL, '_44x68_crop_center-center_none', 1, 0, 0, '2023-05-01 20:02:35', '2023-05-01 20:02:35', '2023-05-01 20:02:35', '2573fd9a-8f99-4e27-a81d-def2f1e63bab'),
(3, 13, 'craft\\imagetransforms\\ImageTransformer', 'second.jpg', NULL, '_34x34_crop_center-center_none', 1, 0, 0, '2023-05-01 20:02:35', '2023-05-01 20:02:35', '2023-05-01 20:02:35', '11e693f6-8e43-49b6-94f4-86e1b25b5e74'),
(4, 13, 'craft\\imagetransforms\\ImageTransformer', 'second.jpg', NULL, '_68x68_crop_center-center_none', 1, 0, 0, '2023-05-01 20:02:35', '2023-05-01 20:02:35', '2023-05-01 20:02:35', '0859e8cb-8f0b-4bf1-8f5f-da1066a8d031'),
(5, 14, 'craft\\imagetransforms\\ImageTransformer', 'third.jpg', NULL, '_34x34_crop_center-center_none', 1, 0, 0, '2023-05-01 20:02:35', '2023-05-01 20:02:35', '2023-05-01 20:02:35', 'b27cc351-8c35-45e3-8083-ed7b5414714b'),
(6, 14, 'craft\\imagetransforms\\ImageTransformer', 'third.jpg', NULL, '_68x68_crop_center-center_none', 1, 0, 0, '2023-05-01 20:02:35', '2023-05-01 20:02:35', '2023-05-01 20:02:35', '491bb0cd-a697-4cad-99bd-433db89215b6'),
(7, 15, 'craft\\imagetransforms\\ImageTransformer', 'WhiteCart.png', NULL, '_34x30_crop_center-center_none', 1, 0, 0, '2023-05-01 20:02:35', '2023-05-01 20:02:35', '2023-05-01 20:02:35', '62cb7f58-d695-4758-aa3a-a9063f731d26'),
(8, 15, 'craft\\imagetransforms\\ImageTransformer', 'WhiteCart.png', NULL, '_68x60_crop_center-center_none', 1, 0, 0, '2023-05-01 20:02:35', '2023-05-01 20:02:35', '2023-05-01 20:02:35', 'bfab2092-5f42-4b19-b752-f847dccfcdf1'),
(9, 6, 'craft\\imagetransforms\\ImageTransformer', 'Left.svg', NULL, '_22x34_crop_center-center_none', 1, 0, 0, '2023-05-01 20:02:35', '2023-05-01 20:02:35', '2023-05-01 20:02:35', '509fcb48-1742-4a65-91b9-b86f8b07465a'),
(10, 6, 'craft\\imagetransforms\\ImageTransformer', 'Left.svg', NULL, '_44x68_crop_center-center_none', 1, 0, 0, '2023-05-01 20:02:35', '2023-05-01 20:02:35', '2023-05-01 20:02:35', '0e9a46fd-0d19-4e1f-94ea-0e8cde3ea995'),
(11, 7, 'craft\\imagetransforms\\ImageTransformer', 'Menu.svg', NULL, '_34x31_crop_center-center_none', 1, 0, 0, '2023-05-01 20:02:35', '2023-05-01 20:02:35', '2023-05-01 20:02:35', '5ae8a64b-55c4-464f-8e93-9d0ec95fd398'),
(12, 7, 'craft\\imagetransforms\\ImageTransformer', 'Menu.svg', NULL, '_68x63_crop_center-center_none', 1, 0, 0, '2023-05-01 20:02:35', '2023-05-01 20:02:35', '2023-05-01 20:02:35', 'a3aeb121-40ff-49a2-a6d5-a4fd39e861a3'),
(13, 8, 'craft\\imagetransforms\\ImageTransformer', 'minus.svg', NULL, '_34x11_crop_center-center_none', 1, 0, 0, '2023-05-01 20:02:35', '2023-05-01 20:02:35', '2023-05-01 20:02:35', '5b90a7b9-fc29-4692-bb79-e43f0ba60549'),
(14, 8, 'craft\\imagetransforms\\ImageTransformer', 'minus.svg', NULL, '_68x22_crop_center-center_none', 1, 0, 0, '2023-05-01 20:02:35', '2023-05-01 20:02:35', '2023-05-01 20:02:35', '58cc42ed-3caf-42ba-839d-e7ccd334ecd2'),
(15, 9, 'craft\\imagetransforms\\ImageTransformer', 'Oval.png', NULL, '_34x34_crop_center-center_none', 1, 0, 0, '2023-05-01 20:02:35', '2023-05-01 20:02:35', '2023-05-01 20:02:35', 'fbed2845-5004-40d3-b17f-5eab34bfa93f'),
(16, 9, 'craft\\imagetransforms\\ImageTransformer', 'Oval.png', NULL, '_68x68_crop_center-center_none', 1, 0, 0, '2023-05-01 20:02:35', '2023-05-01 20:02:35', '2023-05-01 20:02:35', 'c6bd2ad1-670b-4aad-a3bc-b9376563cb74'),
(17, 10, 'craft\\imagetransforms\\ImageTransformer', 'plus.svg', NULL, '_34x34_crop_center-center_none', 1, 0, 0, '2023-05-01 20:02:35', '2023-05-01 20:02:35', '2023-05-01 20:02:35', '4be46634-a770-448f-8198-718a3a8c9608'),
(18, 10, 'craft\\imagetransforms\\ImageTransformer', 'plus.svg', NULL, '_68x68_crop_center-center_none', 1, 0, 0, '2023-05-01 20:02:35', '2023-05-01 20:02:35', '2023-05-01 20:02:35', '7be10747-3d3b-4468-8f7b-01ec9384c8f7'),
(19, 11, 'craft\\imagetransforms\\ImageTransformer', 'Rectangle-1.png', NULL, '_34x34_crop_center-center_none', 1, 0, 0, '2023-05-01 20:02:35', '2023-05-01 20:02:35', '2023-05-01 20:02:35', '167662e2-e146-44e4-8608-1a2562fca1c6'),
(20, 11, 'craft\\imagetransforms\\ImageTransformer', 'Rectangle-1.png', NULL, '_68x68_crop_center-center_none', 1, 0, 0, '2023-05-01 20:02:35', '2023-05-01 20:02:35', '2023-05-01 20:02:35', '81f25289-7bde-47fa-925d-ff3ab0e05cd0'),
(21, 3, 'craft\\imagetransforms\\ImageTransformer', 'first.jpg', NULL, '_34x34_crop_center-center_none', 1, 0, 0, '2023-05-01 20:02:35', '2023-05-01 20:02:35', '2023-05-01 20:02:35', 'd5cd702c-63c7-4cec-967c-071f4492645a'),
(22, 3, 'craft\\imagetransforms\\ImageTransformer', 'first.jpg', NULL, '_68x68_crop_center-center_none', 1, 0, 0, '2023-05-01 20:02:35', '2023-05-01 20:02:35', '2023-05-01 20:02:35', '704475f8-21c6-441e-8e10-6b8e6f42beb1'),
(23, 4, 'craft\\imagetransforms\\ImageTransformer', 'fourth.jpg', NULL, '_34x34_crop_center-center_none', 1, 0, 0, '2023-05-01 20:02:35', '2023-05-01 20:02:35', '2023-05-01 20:02:35', '5eebde76-7765-40c8-8e50-ee7a8ecb0953'),
(24, 4, 'craft\\imagetransforms\\ImageTransformer', 'fourth.jpg', NULL, '_68x68_crop_center-center_none', 1, 0, 0, '2023-05-01 20:02:35', '2023-05-01 20:02:35', '2023-05-01 20:02:35', '8f76ce34-73b8-4b6c-ae4b-d415c4b185aa'),
(25, 5, 'craft\\imagetransforms\\ImageTransformer', 'Group-14.png', NULL, '_34x30_crop_center-center_none', 1, 0, 0, '2023-05-01 20:02:35', '2023-05-01 20:02:35', '2023-05-01 20:02:35', '80a77322-8e24-4183-8d73-28e0a0bda592'),
(26, 5, 'craft\\imagetransforms\\ImageTransformer', 'Group-14.png', NULL, '_68x61_crop_center-center_none', 1, 0, 0, '2023-05-01 20:02:35', '2023-05-01 20:02:35', '2023-05-01 20:02:35', 'fe97ee6c-5bf1-4199-9dbd-4db43740bf0e'),
(27, 2, 'craft\\imagetransforms\\ImageTransformer', 'Delete.svg', NULL, '_29x34_crop_center-center_none', 1, 0, 0, '2023-05-01 20:02:35', '2023-05-01 20:02:35', '2023-05-01 20:02:35', '73456343-e1c1-4e59-945d-5b27141bc0ce'),
(28, 2, 'craft\\imagetransforms\\ImageTransformer', 'Delete.svg', NULL, '_59x68_crop_center-center_none', 1, 0, 0, '2023-05-01 20:02:35', '2023-05-01 20:02:35', '2023-05-01 20:02:35', 'c3aa97c3-af06-4a6d-858a-1f3f3b031bf2');

-- --------------------------------------------------------

--
-- Table structure for table `imagetransforms`
--

CREATE TABLE `imagetransforms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `mode` enum('stretch','fit','crop','letterbox') NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') NOT NULL DEFAULT 'center-center',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `interlace` enum('none','line','plane','partition') NOT NULL DEFAULT 'none',
  `fill` varchar(11) DEFAULT NULL,
  `upscale` tinyint(1) NOT NULL DEFAULT 1,
  `parameterChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `version` varchar(50) NOT NULL,
  `schemaVersion` varchar(15) NOT NULL,
  `maintenance` tinyint(1) NOT NULL DEFAULT 0,
  `configVersion` char(12) NOT NULL DEFAULT '000000000000',
  `fieldVersion` char(12) NOT NULL DEFAULT '000000000000',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `version`, `schemaVersion`, `maintenance`, `configVersion`, `fieldVersion`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '4.4.8', '4.4.0.4', 0, 'mtpfmzmlicnc', '3@htvljzggqw', '2023-05-01 19:56:37', '2023-05-01 20:10:55', 'b1ae30d5-5f1c-4748-99a6-f01590e75988');

-- --------------------------------------------------------

--
-- Table structure for table `matrixblocks`
--

CREATE TABLE `matrixblocks` (
  `id` int(11) NOT NULL,
  `primaryOwnerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `matrixblocks_owners`
--

CREATE TABLE `matrixblocks_owners` (
  `blockId` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `matrixblocktypes`
--

CREATE TABLE `matrixblocktypes` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `track` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `track`, `name`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'craft', 'Install', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '60228fa8-7a43-4d76-8c22-ba92ca694072'),
(2, 'craft', 'm210121_145800_asset_indexing_changes', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2c8cde31-42be-496f-8247-3be0ffa14759'),
(3, 'craft', 'm210624_222934_drop_deprecated_tables', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '52c3a692-a707-44ed-a395-f147f455f2ba'),
(4, 'craft', 'm210724_180756_rename_source_cols', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '814d72fc-73ea-497a-93b3-e865db36f6c7'),
(5, 'craft', 'm210809_124211_remove_superfluous_uids', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2023-05-01 19:56:37', 'b0fbb969-34c8-48c6-8dc1-8ddac5a4ab7d'),
(6, 'craft', 'm210817_014201_universal_users', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2023-05-01 19:56:37', 'ede72ed5-4d8c-4ac2-98f7-2676c31a9502'),
(7, 'craft', 'm210904_132612_store_element_source_settings_in_project_config', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '5ece07c9-ecc5-4595-985a-13ae17ecc83b'),
(8, 'craft', 'm211115_135500_image_transformers', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '16e62c76-8a68-410a-a3fe-3409689fdd14'),
(9, 'craft', 'm211201_131000_filesystems', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '003d66ac-6da8-4381-9b59-296c8349da5d'),
(10, 'craft', 'm220103_043103_tab_conditions', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '37a055fd-7ac3-4676-bdab-a30a52455326'),
(11, 'craft', 'm220104_003433_asset_alt_text', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2023-05-01 19:56:37', 'd354801e-9412-4c6e-bc6d-2d6b43bf6e26'),
(12, 'craft', 'm220123_213619_update_permissions', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2023-05-01 19:56:37', 'd6b95baf-1f92-4509-ac48-9f86b9f6f409'),
(13, 'craft', 'm220126_003432_addresses', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '5d93fc6f-474f-4af5-bdb3-5ee3b177ab5f'),
(14, 'craft', 'm220209_095604_add_indexes', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2023-05-01 19:56:37', 'c351e6f0-2af3-42f5-8b3c-8896deaf3322'),
(15, 'craft', 'm220213_015220_matrixblocks_owners_table', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '3a31b7ac-653e-4d34-8fc5-b7285d011e9b'),
(16, 'craft', 'm220214_000000_truncate_sessions', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '69d59dd1-29cd-4af5-a83f-7b49b60b80ca'),
(17, 'craft', 'm220222_122159_full_names', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2023-05-01 19:56:37', 'da702ade-ad43-4303-bf2d-dfe8e60b9bd1'),
(18, 'craft', 'm220223_180559_nullable_address_owner', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2023-05-01 19:56:37', 'ece4c24b-c36c-4109-b4a6-d9deb1cadd8e'),
(19, 'craft', 'm220225_165000_transform_filesystems', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2023-05-01 19:56:37', 'f7892a18-892d-41a5-a635-e63f86cbb3b9'),
(20, 'craft', 'm220309_152006_rename_field_layout_elements', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '9aecc016-f116-4461-81e9-16d731a28de0'),
(21, 'craft', 'm220314_211928_field_layout_element_uids', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '20096efe-0864-407d-83a7-4a9ea8087f27'),
(22, 'craft', 'm220316_123800_transform_fs_subpath', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '379d6f0e-8866-4d8c-b6e2-3fb7b082f46f'),
(23, 'craft', 'm220317_174250_release_all_jobs', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '23adb70f-8d86-4af8-9587-fd0652da107d'),
(24, 'craft', 'm220330_150000_add_site_gql_schema_components', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2a6094a4-8f8e-4614-ae2d-021b2bcb8687'),
(25, 'craft', 'm220413_024536_site_enabled_string', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '28ad86a8-b839-4a67-a2f9-220f5f7b87a7'),
(26, 'craft', 'm221027_160703_add_image_transform_fill', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2023-05-01 19:56:37', 'bf57fdfe-f603-40a4-9861-b1c8e693fb48'),
(27, 'craft', 'm221028_130548_add_canonical_id_index', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '27b04ddc-7621-4d87-ab08-ff0acb9a1630'),
(28, 'craft', 'm221118_003031_drop_element_fks', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2023-05-01 19:56:37', 'e3897a91-dd61-4109-858c-ee345bba0805'),
(29, 'craft', 'm230131_120713_asset_indexing_session_new_options', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2023-05-01 19:56:37', 'dbce2253-f99e-4f00-94c8-2a0aebed0808'),
(30, 'craft', 'm230226_013114_drop_plugin_license_columns', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2023-05-01 19:56:37', '9e1c9bd9-edec-41aa-8377-ac672e4d6bd9');

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

CREATE TABLE `plugins` (
  `id` int(11) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `schemaVersion` varchar(255) NOT NULL,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projectconfig`
--

CREATE TABLE `projectconfig` (
  `path` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `projectconfig`
--

INSERT INTO `projectconfig` (`path`, `value`) VALUES
('dateModified', '1682971855'),
('email.fromEmail', '\"berk_bozok@live.com\"'),
('email.fromName', '\"Ecommerce\"'),
('email.transportType', '\"craft\\\\mail\\\\transportadapters\\\\Sendmail\"'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.fieldLayouts.f183705f-cabd-4073-9346-e50f9a927d05.tabs.0.elementCondition', 'null'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.fieldLayouts.f183705f-cabd-4073-9346-e50f9a927d05.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.fieldLayouts.f183705f-cabd-4073-9346-e50f9a927d05.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.fieldLayouts.f183705f-cabd-4073-9346-e50f9a927d05.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.fieldLayouts.f183705f-cabd-4073-9346-e50f9a927d05.tabs.0.elements.0.class', 'null'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.fieldLayouts.f183705f-cabd-4073-9346-e50f9a927d05.tabs.0.elements.0.disabled', 'false'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.fieldLayouts.f183705f-cabd-4073-9346-e50f9a927d05.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.fieldLayouts.f183705f-cabd-4073-9346-e50f9a927d05.tabs.0.elements.0.id', 'null'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.fieldLayouts.f183705f-cabd-4073-9346-e50f9a927d05.tabs.0.elements.0.instructions', 'null'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.fieldLayouts.f183705f-cabd-4073-9346-e50f9a927d05.tabs.0.elements.0.label', 'null'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.fieldLayouts.f183705f-cabd-4073-9346-e50f9a927d05.tabs.0.elements.0.max', 'null'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.fieldLayouts.f183705f-cabd-4073-9346-e50f9a927d05.tabs.0.elements.0.min', 'null'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.fieldLayouts.f183705f-cabd-4073-9346-e50f9a927d05.tabs.0.elements.0.name', 'null'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.fieldLayouts.f183705f-cabd-4073-9346-e50f9a927d05.tabs.0.elements.0.orientation', 'null'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.fieldLayouts.f183705f-cabd-4073-9346-e50f9a927d05.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.fieldLayouts.f183705f-cabd-4073-9346-e50f9a927d05.tabs.0.elements.0.readonly', 'false'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.fieldLayouts.f183705f-cabd-4073-9346-e50f9a927d05.tabs.0.elements.0.requirable', 'false'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.fieldLayouts.f183705f-cabd-4073-9346-e50f9a927d05.tabs.0.elements.0.size', 'null'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.fieldLayouts.f183705f-cabd-4073-9346-e50f9a927d05.tabs.0.elements.0.step', 'null'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.fieldLayouts.f183705f-cabd-4073-9346-e50f9a927d05.tabs.0.elements.0.tip', 'null'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.fieldLayouts.f183705f-cabd-4073-9346-e50f9a927d05.tabs.0.elements.0.title', 'null'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.fieldLayouts.f183705f-cabd-4073-9346-e50f9a927d05.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.fieldLayouts.f183705f-cabd-4073-9346-e50f9a927d05.tabs.0.elements.0.uid', '\"3b86e0ac-277b-40bd-ac1d-85c4f4461fc0\"'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.fieldLayouts.f183705f-cabd-4073-9346-e50f9a927d05.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.fieldLayouts.f183705f-cabd-4073-9346-e50f9a927d05.tabs.0.elements.0.warning', 'null'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.fieldLayouts.f183705f-cabd-4073-9346-e50f9a927d05.tabs.0.elements.0.width', '100'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.fieldLayouts.f183705f-cabd-4073-9346-e50f9a927d05.tabs.0.name', '\"Content\"'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.fieldLayouts.f183705f-cabd-4073-9346-e50f9a927d05.tabs.0.uid', '\"99ff54f6-8c7b-4dbf-91a2-9449b0c1e298\"'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.fieldLayouts.f183705f-cabd-4073-9346-e50f9a927d05.tabs.0.userCondition', 'null'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.handle', '\"homepage\"'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.hasTitleField', 'false'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.name', '\"Homepage\"'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.section', '\"1140d0f5-4482-44ba-a81e-1f6076eed8d0\"'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.sortOrder', '1'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.titleTranslationKeyFormat', 'null'),
('entryTypes.53c2cac6-4022-4c80-955f-aef3f99d5778.titleTranslationMethod', '\"site\"'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elementCondition', 'null'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.0.class', 'null'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.0.disabled', 'false'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.0.id', 'null'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.0.instructions', 'null'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.0.label', 'null'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.0.max', 'null'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.0.min', 'null'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.0.name', 'null'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.0.orientation', 'null'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.0.readonly', 'false'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.0.requirable', 'false'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.0.size', 'null'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.0.step', 'null'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.0.tip', 'null'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.0.title', 'null'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.0.uid', '\"06942faf-b971-4417-ac11-20b47ae955b0\"'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.0.warning', 'null'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.0.width', '100'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.1.fieldUid', '\"a830dc15-0621-48c6-9ebf-9da4338a2edb\"'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.1.instructions', 'null'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.1.label', 'null'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.1.required', 'false'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.1.tip', 'null'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.1.uid', '\"eb56fdf5-395f-4786-bf8d-04654ceeb99c\"'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.1.warning', 'null'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.1.width', '100'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.2.fieldUid', '\"30c28c2e-1470-49f5-b706-b58b419a54e6\"'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.2.instructions', 'null'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.2.label', 'null'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.2.required', 'false'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.2.tip', 'null'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.2.uid', '\"70f0909a-b0d7-48b5-975d-6eb1345c6ce2\"'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.2.warning', 'null'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.elements.2.width', '100'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.name', '\"Content\"'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.uid', '\"3e471472-dec7-449a-939e-92d79c4cafa2\"'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.fieldLayouts.98e3822d-1f15-4ada-8bc0-e0948a571409.tabs.0.userCondition', 'null'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.handle', '\"default\"'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.hasTitleField', 'true'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.name', '\"Default\"'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.section', '\"9f8f4c76-91d2-407c-a055-99823e753319\"'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.sortOrder', '1'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.titleFormat', 'null'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.titleTranslationKeyFormat', 'null'),
('entryTypes.c11daede-73be-44f6-8abe-008cc7f7734d.titleTranslationMethod', '\"site\"'),
('fieldGroups.e7c76b8c-0680-425f-8eb9-db56956ed4a5.name', '\"Product\"'),
('fieldGroups.ea828d13-254f-4b0e-94a7-a506df8589ed.name', '\"Globals\"'),
('fieldGroups.f53dc786-7687-4afd-a997-e1cb66d92893.name', '\"Common\"'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.columnSuffix', 'null'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.contentColumnType', '\"string\"'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.fieldGroup', '\"ea828d13-254f-4b0e-94a7-a506df8589ed\"'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.handle', '\"minus\"'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.instructions', 'null'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.name', '\"Minus\"'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.searchable', 'false'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.settings.allowedKinds', 'null'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.settings.allowSelfRelations', 'false'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.settings.allowSubfolders', 'false'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.settings.allowUploads', 'true'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.settings.branchLimit', 'null'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.settings.defaultUploadLocationSource', '\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\"'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.settings.defaultUploadLocationSubpath', 'null'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.settings.localizeRelations', 'false'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.settings.maintainHierarchy', 'false'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.settings.maxRelations', '1'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.settings.minRelations', 'null'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.settings.previewMode', '\"full\"'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.settings.restrictedDefaultUploadSubpath', 'null'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.settings.restrictedLocationSource', '\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\"'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.settings.restrictedLocationSubpath', 'null'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.settings.restrictFiles', 'false'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.settings.restrictLocation', 'false'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.settings.selectionCondition.__assoc__.0.0', '\"elementType\"'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.settings.selectionCondition.__assoc__.0.1', '\"craft\\\\elements\\\\Asset\"'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.settings.selectionCondition.__assoc__.1.0', '\"fieldContext\"'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.settings.selectionCondition.__assoc__.1.1', '\"global\"'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.settings.selectionCondition.__assoc__.2.0', '\"class\"'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.settings.selectionCondition.__assoc__.2.1', '\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.settings.selectionLabel', 'null'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.settings.showSiteMenu', 'false'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.settings.showUnpermittedFiles', 'false'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.settings.showUnpermittedVolumes', 'false'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.settings.sources', '\"*\"'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.settings.targetSiteId', 'null'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.settings.validateRelatedElements', 'false'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.settings.viewMode', '\"list\"'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.translationKeyFormat', 'null'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.translationMethod', '\"site\"'),
('fields.1382385e-830e-49f2-a4cc-3f3f001b35b0.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.columnSuffix', 'null'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.contentColumnType', '\"string\"'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.fieldGroup', '\"ea828d13-254f-4b0e-94a7-a506df8589ed\"'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.handle', '\"arrowLeft\"'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.instructions', 'null'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.name', '\"Arrow left\"'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.searchable', 'false'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.settings.allowedKinds', 'null'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.settings.allowSelfRelations', 'false'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.settings.allowSubfolders', 'false'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.settings.allowUploads', 'true'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.settings.branchLimit', 'null'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.settings.defaultUploadLocationSource', '\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\"'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.settings.defaultUploadLocationSubpath', 'null'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.settings.localizeRelations', 'false'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.settings.maintainHierarchy', 'false'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.settings.maxRelations', '1'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.settings.minRelations', 'null'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.settings.previewMode', '\"full\"'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.settings.restrictedDefaultUploadSubpath', 'null'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.settings.restrictedLocationSource', '\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\"'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.settings.restrictedLocationSubpath', 'null'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.settings.restrictFiles', 'false'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.settings.restrictLocation', 'false'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.settings.selectionCondition.__assoc__.0.0', '\"elementType\"'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.settings.selectionCondition.__assoc__.0.1', '\"craft\\\\elements\\\\Asset\"'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.settings.selectionCondition.__assoc__.1.0', '\"fieldContext\"'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.settings.selectionCondition.__assoc__.1.1', '\"global\"'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.settings.selectionCondition.__assoc__.2.0', '\"class\"'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.settings.selectionCondition.__assoc__.2.1', '\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.settings.selectionLabel', 'null'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.settings.showSiteMenu', 'false'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.settings.showUnpermittedFiles', 'false'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.settings.showUnpermittedVolumes', 'false'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.settings.sources', '\"*\"'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.settings.targetSiteId', 'null'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.settings.validateRelatedElements', 'false'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.settings.viewMode', '\"list\"'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.translationKeyFormat', 'null'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.translationMethod', '\"site\"'),
('fields.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.30c28c2e-1470-49f5-b706-b58b419a54e6.columnSuffix', '\"vqdvihfj\"'),
('fields.30c28c2e-1470-49f5-b706-b58b419a54e6.contentColumnType', '\"text\"'),
('fields.30c28c2e-1470-49f5-b706-b58b419a54e6.fieldGroup', '\"e7c76b8c-0680-425f-8eb9-db56956ed4a5\"'),
('fields.30c28c2e-1470-49f5-b706-b58b419a54e6.handle', '\"productDescription\"'),
('fields.30c28c2e-1470-49f5-b706-b58b419a54e6.instructions', 'null'),
('fields.30c28c2e-1470-49f5-b706-b58b419a54e6.name', '\"Product description\"'),
('fields.30c28c2e-1470-49f5-b706-b58b419a54e6.searchable', 'false'),
('fields.30c28c2e-1470-49f5-b706-b58b419a54e6.settings.byteLimit', 'null'),
('fields.30c28c2e-1470-49f5-b706-b58b419a54e6.settings.charLimit', 'null'),
('fields.30c28c2e-1470-49f5-b706-b58b419a54e6.settings.code', 'false'),
('fields.30c28c2e-1470-49f5-b706-b58b419a54e6.settings.columnType', 'null'),
('fields.30c28c2e-1470-49f5-b706-b58b419a54e6.settings.initialRows', '4'),
('fields.30c28c2e-1470-49f5-b706-b58b419a54e6.settings.multiline', 'true'),
('fields.30c28c2e-1470-49f5-b706-b58b419a54e6.settings.placeholder', 'null'),
('fields.30c28c2e-1470-49f5-b706-b58b419a54e6.settings.uiMode', '\"normal\"'),
('fields.30c28c2e-1470-49f5-b706-b58b419a54e6.translationKeyFormat', 'null'),
('fields.30c28c2e-1470-49f5-b706-b58b419a54e6.translationMethod', '\"none\"'),
('fields.30c28c2e-1470-49f5-b706-b58b419a54e6.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.columnSuffix', 'null'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.contentColumnType', '\"string\"'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.fieldGroup', '\"ea828d13-254f-4b0e-94a7-a506df8589ed\"'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.handle', '\"menu\"'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.instructions', 'null'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.name', '\"Menu\"'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.searchable', 'false'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.settings.allowedKinds', 'null'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.settings.allowSelfRelations', 'false'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.settings.allowSubfolders', 'false'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.settings.allowUploads', 'true'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.settings.branchLimit', 'null'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.settings.defaultUploadLocationSource', '\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\"'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.settings.defaultUploadLocationSubpath', 'null'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.settings.localizeRelations', 'false'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.settings.maintainHierarchy', 'false'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.settings.maxRelations', '1'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.settings.minRelations', 'null'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.settings.previewMode', '\"full\"'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.settings.restrictedDefaultUploadSubpath', 'null'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.settings.restrictedLocationSource', '\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\"'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.settings.restrictedLocationSubpath', 'null'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.settings.restrictFiles', 'false'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.settings.restrictLocation', 'false'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.settings.selectionCondition.__assoc__.0.0', '\"elementType\"'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.settings.selectionCondition.__assoc__.0.1', '\"craft\\\\elements\\\\Asset\"'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.settings.selectionCondition.__assoc__.1.0', '\"fieldContext\"'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.settings.selectionCondition.__assoc__.1.1', '\"global\"'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.settings.selectionCondition.__assoc__.2.0', '\"class\"'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.settings.selectionCondition.__assoc__.2.1', '\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.settings.selectionLabel', 'null'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.settings.showSiteMenu', 'false'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.settings.showUnpermittedFiles', 'false'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.settings.showUnpermittedVolumes', 'false'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.settings.sources', '\"*\"'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.settings.targetSiteId', 'null'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.settings.validateRelatedElements', 'false'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.settings.viewMode', '\"list\"'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.translationKeyFormat', 'null'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.translationMethod', '\"site\"'),
('fields.553c2fb7-c6c3-4466-8c23-78667efb8a02.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.columnSuffix', 'null'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.contentColumnType', '\"string\"'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.fieldGroup', '\"ea828d13-254f-4b0e-94a7-a506df8589ed\"'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.handle', '\"whiteCart\"'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.instructions', 'null'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.name', '\"White cart\"'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.searchable', 'false'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.settings.allowedKinds', 'null'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.settings.allowSelfRelations', 'false'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.settings.allowSubfolders', 'false'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.settings.allowUploads', 'true'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.settings.branchLimit', 'null'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.settings.defaultUploadLocationSource', '\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\"'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.settings.defaultUploadLocationSubpath', 'null'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.settings.localizeRelations', 'false'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.settings.maintainHierarchy', 'false'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.settings.maxRelations', '1'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.settings.minRelations', 'null'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.settings.previewMode', '\"full\"'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.settings.restrictedDefaultUploadSubpath', 'null'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.settings.restrictedLocationSource', '\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\"'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.settings.restrictedLocationSubpath', 'null'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.settings.restrictFiles', 'false'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.settings.restrictLocation', 'false'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.settings.selectionCondition.__assoc__.0.0', '\"elementType\"'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.settings.selectionCondition.__assoc__.0.1', '\"craft\\\\elements\\\\Asset\"'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.settings.selectionCondition.__assoc__.1.0', '\"fieldContext\"'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.settings.selectionCondition.__assoc__.1.1', '\"global\"'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.settings.selectionCondition.__assoc__.2.0', '\"class\"'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.settings.selectionCondition.__assoc__.2.1', '\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.settings.selectionLabel', 'null'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.settings.showSiteMenu', 'false'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.settings.showUnpermittedFiles', 'false'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.settings.showUnpermittedVolumes', 'false'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.settings.sources', '\"*\"'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.settings.targetSiteId', 'null'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.settings.validateRelatedElements', 'false'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.settings.viewMode', '\"list\"'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.translationKeyFormat', 'null'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.translationMethod', '\"site\"'),
('fields.5e26ca9e-e35a-47a6-b155-40783811697e.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.columnSuffix', 'null'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.contentColumnType', '\"string\"'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.fieldGroup', '\"ea828d13-254f-4b0e-94a7-a506df8589ed\"'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.handle', '\"cartImage\"'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.instructions', 'null'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.name', '\"Cart image\"'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.searchable', 'false'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.settings.allowedKinds', 'null'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.settings.allowSelfRelations', 'false'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.settings.allowSubfolders', 'false'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.settings.allowUploads', 'true'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.settings.branchLimit', 'null'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.settings.defaultUploadLocationSource', '\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\"'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.settings.defaultUploadLocationSubpath', 'null'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.settings.localizeRelations', 'false'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.settings.maintainHierarchy', 'false'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.settings.maxRelations', '1'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.settings.minRelations', 'null'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.settings.previewMode', '\"full\"'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.settings.restrictedDefaultUploadSubpath', 'null'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.settings.restrictedLocationSource', '\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\"'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.settings.restrictedLocationSubpath', 'null'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.settings.restrictFiles', 'false'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.settings.restrictLocation', 'false'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.settings.selectionCondition.__assoc__.0.0', '\"elementType\"'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.settings.selectionCondition.__assoc__.0.1', '\"craft\\\\elements\\\\Asset\"'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.settings.selectionCondition.__assoc__.1.0', '\"fieldContext\"'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.settings.selectionCondition.__assoc__.1.1', '\"global\"'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.settings.selectionCondition.__assoc__.2.0', '\"class\"'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.settings.selectionCondition.__assoc__.2.1', '\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.settings.selectionLabel', 'null'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.settings.showSiteMenu', 'false'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.settings.showUnpermittedFiles', 'false'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.settings.showUnpermittedVolumes', 'false'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.settings.sources', '\"*\"'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.settings.targetSiteId', 'null'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.settings.validateRelatedElements', 'false'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.settings.viewMode', '\"list\"'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.translationKeyFormat', 'null'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.translationMethod', '\"site\"'),
('fields.98e40c01-feab-42be-b39e-7c47fdbc195d.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.columnSuffix', 'null'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.contentColumnType', '\"string\"'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.fieldGroup', '\"ea828d13-254f-4b0e-94a7-a506df8589ed\"'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.handle', '\"delete\"'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.instructions', 'null'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.name', '\"Delete\"'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.searchable', 'false'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.settings.allowedKinds', 'null'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.settings.allowSelfRelations', 'false'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.settings.allowSubfolders', 'false'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.settings.allowUploads', 'true'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.settings.branchLimit', 'null'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.settings.defaultUploadLocationSource', '\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\"'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.settings.defaultUploadLocationSubpath', 'null'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.settings.localizeRelations', 'false'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.settings.maintainHierarchy', 'false'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.settings.maxRelations', '1'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.settings.minRelations', 'null'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.settings.previewMode', '\"full\"'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.settings.restrictedDefaultUploadSubpath', 'null'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.settings.restrictedLocationSource', '\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\"'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.settings.restrictedLocationSubpath', 'null'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.settings.restrictFiles', 'false'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.settings.restrictLocation', 'false'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.settings.selectionCondition.__assoc__.0.0', '\"elementType\"'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.settings.selectionCondition.__assoc__.0.1', '\"craft\\\\elements\\\\Asset\"'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.settings.selectionCondition.__assoc__.1.0', '\"fieldContext\"'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.settings.selectionCondition.__assoc__.1.1', '\"global\"'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.settings.selectionCondition.__assoc__.2.0', '\"class\"'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.settings.selectionCondition.__assoc__.2.1', '\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.settings.selectionLabel', 'null'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.settings.showSiteMenu', 'false'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.settings.showUnpermittedFiles', 'false'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.settings.showUnpermittedVolumes', 'false'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.settings.sources', '\"*\"'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.settings.targetSiteId', 'null'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.settings.validateRelatedElements', 'false'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.settings.viewMode', '\"list\"'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.translationKeyFormat', 'null'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.translationMethod', '\"site\"'),
('fields.9cb01ad1-a8c0-4dcd-acaa-32209d678735.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.columnSuffix', 'null'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.contentColumnType', '\"string\"'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.fieldGroup', '\"e7c76b8c-0680-425f-8eb9-db56956ed4a5\"'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.handle', '\"productImages\"'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.instructions', 'null'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.name', '\"Product images\"'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.searchable', 'false'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.settings.allowedKinds', 'null'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.settings.allowSelfRelations', 'false'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.settings.allowSubfolders', 'false'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.settings.allowUploads', 'true'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.settings.branchLimit', 'null'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.settings.defaultUploadLocationSource', '\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\"'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.settings.defaultUploadLocationSubpath', 'null'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.settings.localizeRelations', 'false'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.settings.maintainHierarchy', 'false'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.settings.maxRelations', 'null'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.settings.minRelations', 'null'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.settings.previewMode', '\"full\"'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.settings.restrictedDefaultUploadSubpath', 'null'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.settings.restrictedLocationSource', '\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\"'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.settings.restrictedLocationSubpath', 'null'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.settings.restrictFiles', 'false'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.settings.restrictLocation', 'false'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.settings.selectionCondition.__assoc__.0.0', '\"elementType\"'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.settings.selectionCondition.__assoc__.0.1', '\"craft\\\\elements\\\\Asset\"'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.settings.selectionCondition.__assoc__.1.0', '\"fieldContext\"'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.settings.selectionCondition.__assoc__.1.1', '\"global\"'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.settings.selectionCondition.__assoc__.2.0', '\"class\"'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.settings.selectionCondition.__assoc__.2.1', '\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.settings.selectionLabel', 'null'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.settings.showSiteMenu', 'false'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.settings.showUnpermittedFiles', 'false'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.settings.showUnpermittedVolumes', 'false'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.settings.sources', '\"*\"'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.settings.targetSiteId', 'null'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.settings.validateRelatedElements', 'false'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.settings.viewMode', '\"list\"'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.translationKeyFormat', 'null'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.translationMethod', '\"site\"'),
('fields.a830dc15-0621-48c6-9ebf-9da4338a2edb.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.columnSuffix', 'null'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.contentColumnType', '\"string\"'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.fieldGroup', '\"ea828d13-254f-4b0e-94a7-a506df8589ed\"'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.handle', '\"plus\"'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.instructions', 'null'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.name', '\"Plus\"'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.searchable', 'false'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.settings.allowedKinds', 'null'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.settings.allowSelfRelations', 'false'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.settings.allowSubfolders', 'false'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.settings.allowUploads', 'true'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.settings.branchLimit', 'null'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.settings.defaultUploadLocationSource', '\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\"'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.settings.defaultUploadLocationSubpath', 'null'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.settings.localizeRelations', 'false'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.settings.maintainHierarchy', 'false'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.settings.maxRelations', '1'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.settings.minRelations', 'null'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.settings.previewMode', '\"full\"'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.settings.restrictedDefaultUploadSubpath', 'null'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.settings.restrictedLocationSource', '\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\"'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.settings.restrictedLocationSubpath', 'null'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.settings.restrictFiles', 'false'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.settings.restrictLocation', 'false'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.settings.selectionCondition.__assoc__.0.0', '\"elementType\"'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.settings.selectionCondition.__assoc__.0.1', '\"craft\\\\elements\\\\Asset\"'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.settings.selectionCondition.__assoc__.1.0', '\"fieldContext\"'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.settings.selectionCondition.__assoc__.1.1', '\"global\"'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.settings.selectionCondition.__assoc__.2.0', '\"class\"'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.settings.selectionCondition.__assoc__.2.1', '\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.settings.selectionLabel', 'null'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.settings.showSiteMenu', 'false'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.settings.showUnpermittedFiles', 'false'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.settings.showUnpermittedVolumes', 'false'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.settings.sources', '\"*\"'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.settings.targetSiteId', 'null'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.settings.validateRelatedElements', 'false'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.settings.viewMode', '\"list\"'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.translationKeyFormat', 'null'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.translationMethod', '\"site\"'),
('fields.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.columnSuffix', 'null'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.contentColumnType', '\"string\"'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.fieldGroup', '\"ea828d13-254f-4b0e-94a7-a506df8589ed\"'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.handle', '\"productThumbNail\"'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.instructions', 'null'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.name', '\"Product Thumb Nail\"'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.searchable', 'false'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.settings.allowedKinds', 'null'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.settings.allowSelfRelations', 'false'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.settings.allowSubfolders', 'false'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.settings.allowUploads', 'true'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.settings.branchLimit', 'null'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.settings.defaultUploadLocationSource', '\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\"'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.settings.defaultUploadLocationSubpath', 'null'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.settings.localizeRelations', 'false'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.settings.maintainHierarchy', 'false'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.settings.maxRelations', '1'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.settings.minRelations', 'null'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.settings.previewMode', '\"full\"'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.settings.restrictedDefaultUploadSubpath', 'null'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.settings.restrictedLocationSource', '\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\"'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.settings.restrictedLocationSubpath', 'null'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.settings.restrictFiles', 'false'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.settings.restrictLocation', 'false'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.settings.selectionCondition.__assoc__.0.0', '\"elementType\"'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.settings.selectionCondition.__assoc__.0.1', '\"craft\\\\elements\\\\Asset\"'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.settings.selectionCondition.__assoc__.1.0', '\"fieldContext\"'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.settings.selectionCondition.__assoc__.1.1', '\"global\"'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.settings.selectionCondition.__assoc__.2.0', '\"class\"'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.settings.selectionCondition.__assoc__.2.1', '\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.settings.selectionLabel', 'null'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.settings.showSiteMenu', 'false'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.settings.showUnpermittedFiles', 'false'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.settings.showUnpermittedVolumes', 'false'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.settings.sources', '\"*\"'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.settings.targetSiteId', 'null'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.settings.validateRelatedElements', 'false'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.settings.viewMode', '\"list\"'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.translationKeyFormat', 'null'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.translationMethod', '\"site\"'),
('fields.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.columnSuffix', 'null'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.contentColumnType', '\"string\"'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.fieldGroup', '\"ea828d13-254f-4b0e-94a7-a506df8589ed\"'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.handle', '\"arrowRight\"'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.instructions', 'null'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.name', '\"Arrow right\"'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.searchable', 'false'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.settings.allowedKinds', 'null'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.settings.allowSelfRelations', 'false'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.settings.allowSubfolders', 'false'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.settings.allowUploads', 'true'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.settings.branchLimit', 'null'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.settings.defaultUploadLocationSource', '\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\"'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.settings.defaultUploadLocationSubpath', 'null'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.settings.localizeRelations', 'false'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.settings.maintainHierarchy', 'false'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.settings.maxRelations', '1'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.settings.minRelations', 'null'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.settings.previewMode', '\"full\"'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.settings.restrictedDefaultUploadSubpath', 'null'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.settings.restrictedLocationSource', '\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\"'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.settings.restrictedLocationSubpath', 'null'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.settings.restrictFiles', 'false'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.settings.restrictLocation', 'false'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.settings.selectionCondition.__assoc__.0.0', '\"elementType\"'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.settings.selectionCondition.__assoc__.0.1', '\"craft\\\\elements\\\\Asset\"'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.settings.selectionCondition.__assoc__.1.0', '\"fieldContext\"'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.settings.selectionCondition.__assoc__.1.1', '\"global\"'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.settings.selectionCondition.__assoc__.2.0', '\"class\"'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.settings.selectionCondition.__assoc__.2.1', '\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.settings.selectionLabel', 'null'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.settings.showSiteMenu', 'false'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.settings.showUnpermittedFiles', 'false'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.settings.showUnpermittedVolumes', 'false'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.settings.sources', '\"*\"');
INSERT INTO `projectconfig` (`path`, `value`) VALUES
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.settings.targetSiteId', 'null'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.settings.validateRelatedElements', 'false'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.settings.viewMode', '\"list\"'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.translationKeyFormat', 'null'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.translationMethod', '\"site\"'),
('fields.e713e7b2-5884-4fad-bc4e-01590a029dda.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.columnSuffix', 'null'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.contentColumnType', '\"string\"'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.fieldGroup', '\"ea828d13-254f-4b0e-94a7-a506df8589ed\"'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.handle', '\"profileImage\"'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.instructions', 'null'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.name', '\"Profile image\"'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.searchable', 'false'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.settings.allowedKinds', 'null'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.settings.allowSelfRelations', 'false'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.settings.allowSubfolders', 'false'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.settings.allowUploads', 'true'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.settings.branchLimit', 'null'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.settings.defaultUploadLocationSource', '\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\"'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.settings.defaultUploadLocationSubpath', 'null'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.settings.localizeRelations', 'false'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.settings.maintainHierarchy', 'false'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.settings.maxRelations', '1'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.settings.minRelations', 'null'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.settings.previewMode', '\"full\"'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.settings.restrictedDefaultUploadSubpath', 'null'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.settings.restrictedLocationSource', '\"volume:5225e55c-2dfe-412f-bb89-9c7678c525ea\"'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.settings.restrictedLocationSubpath', 'null'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.settings.restrictFiles', 'false'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.settings.restrictLocation', 'false'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.settings.selectionCondition.__assoc__.0.0', '\"elementType\"'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.settings.selectionCondition.__assoc__.0.1', '\"craft\\\\elements\\\\Asset\"'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.settings.selectionCondition.__assoc__.1.0', '\"fieldContext\"'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.settings.selectionCondition.__assoc__.1.1', '\"global\"'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.settings.selectionCondition.__assoc__.2.0', '\"class\"'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.settings.selectionCondition.__assoc__.2.1', '\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.settings.selectionLabel', 'null'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.settings.showSiteMenu', 'false'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.settings.showUnpermittedFiles', 'false'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.settings.showUnpermittedVolumes', 'false'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.settings.sources', '\"*\"'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.settings.targetSiteId', 'null'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.settings.validateRelatedElements', 'false'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.settings.viewMode', '\"list\"'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.translationKeyFormat', 'null'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.translationMethod', '\"site\"'),
('fields.eb8fb94e-2982-453f-9072-17588c12b586.type', '\"craft\\\\fields\\\\Assets\"'),
('fs.images.hasUrls', 'true'),
('fs.images.name', '\"Images\"'),
('fs.images.settings.path', '\"$IMAGES_BASE_PATH\"'),
('fs.images.type', '\"craft\\\\fs\\\\Local\"'),
('fs.images.url', '\"$IMAGES_BASE_URL\"'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elementCondition', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.0.elementCondition', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.0.fieldUid', '\"1d7f58e5-54d5-4aa6-967a-3dfd63ca925a\"'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.0.instructions', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.0.label', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.0.required', 'false'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.0.tip', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.0.uid', '\"3e970d0d-427c-4bfb-98ff-e12281b354da\"'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.0.userCondition', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.0.warning', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.0.width', '100'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.1.elementCondition', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.1.fieldUid', '\"e713e7b2-5884-4fad-bc4e-01590a029dda\"'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.1.instructions', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.1.label', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.1.required', 'false'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.1.tip', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.1.uid', '\"37968fac-e452-406a-81dd-9c3fe74355d0\"'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.1.userCondition', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.1.warning', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.1.width', '100'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.2.elementCondition', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.2.fieldUid', '\"9cb01ad1-a8c0-4dcd-acaa-32209d678735\"'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.2.instructions', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.2.label', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.2.required', 'false'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.2.tip', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.2.uid', '\"4734fd69-2a6a-4f88-80fc-89893d1bd28c\"'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.2.userCondition', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.2.warning', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.2.width', '100'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.3.elementCondition', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.3.fieldUid', '\"553c2fb7-c6c3-4466-8c23-78667efb8a02\"'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.3.instructions', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.3.label', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.3.required', 'false'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.3.tip', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.3.uid', '\"c1252a6c-b932-49a0-bf32-d1b472827da2\"'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.3.userCondition', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.3.warning', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.3.width', '100'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.4.elementCondition', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.4.fieldUid', '\"1382385e-830e-49f2-a4cc-3f3f001b35b0\"'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.4.instructions', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.4.label', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.4.required', 'false'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.4.tip', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.4.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.4.uid', '\"989877cd-f17f-4ea9-b3e0-2ce4ad244ffd\"'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.4.userCondition', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.4.warning', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.4.width', '100'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.5.elementCondition', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.5.fieldUid', '\"b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994\"'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.5.instructions', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.5.label', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.5.required', 'false'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.5.tip', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.5.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.5.uid', '\"c3f58fb4-93ad-4b21-8338-f8684f20b03d\"'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.5.userCondition', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.5.warning', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.5.width', '100'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.6.elementCondition', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.6.fieldUid', '\"bdaa05b2-de70-4428-b7c2-a5260bcbe4ca\"'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.6.instructions', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.6.label', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.6.required', 'false'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.6.tip', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.6.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.6.uid', '\"71b0acc2-f231-4338-95a4-31669ce9eafc\"'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.6.userCondition', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.6.warning', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.6.width', '100'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.7.elementCondition', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.7.fieldUid', '\"5e26ca9e-e35a-47a6-b155-40783811697e\"'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.7.instructions', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.7.label', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.7.required', 'false'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.7.tip', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.7.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.7.uid', '\"8eaa0347-b87d-4296-a253-c46c6b96189d\"'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.7.userCondition', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.7.warning', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.elements.7.width', '100'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.name', '\"Content\"'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.uid', '\"5ef82da4-8ef9-4d41-becc-ed3172b6c9be\"'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.fieldLayouts.1f49e617-2b4b-4c21-a62b-01303039b78f.tabs.0.userCondition', 'null'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.handle', '\"icons\"'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.name', '\"Icons\"'),
('globalSets.f70a1745-e97c-4cf5-95ff-acd81fe65d67.sortOrder', '1'),
('globalSets.fb846f56-6f24-4e5b-b24d-0ec86f396365.fieldLayouts.3547eaa3-4492-4f65-b3ad-678bfecdc2d0.tabs.0.elementCondition', 'null'),
('globalSets.fb846f56-6f24-4e5b-b24d-0ec86f396365.fieldLayouts.3547eaa3-4492-4f65-b3ad-678bfecdc2d0.tabs.0.elements.0.elementCondition', 'null'),
('globalSets.fb846f56-6f24-4e5b-b24d-0ec86f396365.fieldLayouts.3547eaa3-4492-4f65-b3ad-678bfecdc2d0.tabs.0.elements.0.fieldUid', '\"98e40c01-feab-42be-b39e-7c47fdbc195d\"'),
('globalSets.fb846f56-6f24-4e5b-b24d-0ec86f396365.fieldLayouts.3547eaa3-4492-4f65-b3ad-678bfecdc2d0.tabs.0.elements.0.instructions', 'null'),
('globalSets.fb846f56-6f24-4e5b-b24d-0ec86f396365.fieldLayouts.3547eaa3-4492-4f65-b3ad-678bfecdc2d0.tabs.0.elements.0.label', 'null'),
('globalSets.fb846f56-6f24-4e5b-b24d-0ec86f396365.fieldLayouts.3547eaa3-4492-4f65-b3ad-678bfecdc2d0.tabs.0.elements.0.required', 'false'),
('globalSets.fb846f56-6f24-4e5b-b24d-0ec86f396365.fieldLayouts.3547eaa3-4492-4f65-b3ad-678bfecdc2d0.tabs.0.elements.0.tip', 'null'),
('globalSets.fb846f56-6f24-4e5b-b24d-0ec86f396365.fieldLayouts.3547eaa3-4492-4f65-b3ad-678bfecdc2d0.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.fb846f56-6f24-4e5b-b24d-0ec86f396365.fieldLayouts.3547eaa3-4492-4f65-b3ad-678bfecdc2d0.tabs.0.elements.0.uid', '\"9eafa226-7049-4834-b0e5-4a338f9d411e\"'),
('globalSets.fb846f56-6f24-4e5b-b24d-0ec86f396365.fieldLayouts.3547eaa3-4492-4f65-b3ad-678bfecdc2d0.tabs.0.elements.0.userCondition', 'null'),
('globalSets.fb846f56-6f24-4e5b-b24d-0ec86f396365.fieldLayouts.3547eaa3-4492-4f65-b3ad-678bfecdc2d0.tabs.0.elements.0.warning', 'null'),
('globalSets.fb846f56-6f24-4e5b-b24d-0ec86f396365.fieldLayouts.3547eaa3-4492-4f65-b3ad-678bfecdc2d0.tabs.0.elements.0.width', '100'),
('globalSets.fb846f56-6f24-4e5b-b24d-0ec86f396365.fieldLayouts.3547eaa3-4492-4f65-b3ad-678bfecdc2d0.tabs.0.elements.1.elementCondition', 'null'),
('globalSets.fb846f56-6f24-4e5b-b24d-0ec86f396365.fieldLayouts.3547eaa3-4492-4f65-b3ad-678bfecdc2d0.tabs.0.elements.1.fieldUid', '\"eb8fb94e-2982-453f-9072-17588c12b586\"'),
('globalSets.fb846f56-6f24-4e5b-b24d-0ec86f396365.fieldLayouts.3547eaa3-4492-4f65-b3ad-678bfecdc2d0.tabs.0.elements.1.instructions', 'null'),
('globalSets.fb846f56-6f24-4e5b-b24d-0ec86f396365.fieldLayouts.3547eaa3-4492-4f65-b3ad-678bfecdc2d0.tabs.0.elements.1.label', 'null'),
('globalSets.fb846f56-6f24-4e5b-b24d-0ec86f396365.fieldLayouts.3547eaa3-4492-4f65-b3ad-678bfecdc2d0.tabs.0.elements.1.required', 'false'),
('globalSets.fb846f56-6f24-4e5b-b24d-0ec86f396365.fieldLayouts.3547eaa3-4492-4f65-b3ad-678bfecdc2d0.tabs.0.elements.1.tip', 'null'),
('globalSets.fb846f56-6f24-4e5b-b24d-0ec86f396365.fieldLayouts.3547eaa3-4492-4f65-b3ad-678bfecdc2d0.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.fb846f56-6f24-4e5b-b24d-0ec86f396365.fieldLayouts.3547eaa3-4492-4f65-b3ad-678bfecdc2d0.tabs.0.elements.1.uid', '\"f6550ec3-9fd0-4fc4-9173-dd4c40f9f35e\"'),
('globalSets.fb846f56-6f24-4e5b-b24d-0ec86f396365.fieldLayouts.3547eaa3-4492-4f65-b3ad-678bfecdc2d0.tabs.0.elements.1.userCondition', 'null'),
('globalSets.fb846f56-6f24-4e5b-b24d-0ec86f396365.fieldLayouts.3547eaa3-4492-4f65-b3ad-678bfecdc2d0.tabs.0.elements.1.warning', 'null'),
('globalSets.fb846f56-6f24-4e5b-b24d-0ec86f396365.fieldLayouts.3547eaa3-4492-4f65-b3ad-678bfecdc2d0.tabs.0.elements.1.width', '100'),
('globalSets.fb846f56-6f24-4e5b-b24d-0ec86f396365.fieldLayouts.3547eaa3-4492-4f65-b3ad-678bfecdc2d0.tabs.0.name', '\"Content\"'),
('globalSets.fb846f56-6f24-4e5b-b24d-0ec86f396365.fieldLayouts.3547eaa3-4492-4f65-b3ad-678bfecdc2d0.tabs.0.uid', '\"b5771228-8f89-468c-9a1f-e5589b8c705f\"'),
('globalSets.fb846f56-6f24-4e5b-b24d-0ec86f396365.fieldLayouts.3547eaa3-4492-4f65-b3ad-678bfecdc2d0.tabs.0.userCondition', 'null'),
('globalSets.fb846f56-6f24-4e5b-b24d-0ec86f396365.handle', '\"header\"'),
('globalSets.fb846f56-6f24-4e5b-b24d-0ec86f396365.name', '\"Header\"'),
('globalSets.fb846f56-6f24-4e5b-b24d-0ec86f396365.sortOrder', '2'),
('meta.__names__.1140d0f5-4482-44ba-a81e-1f6076eed8d0', '\"Homepage\"'),
('meta.__names__.1382385e-830e-49f2-a4cc-3f3f001b35b0', '\"Minus\"'),
('meta.__names__.195af2c1-29c1-445a-92cf-85c9d9d40003', '\"Ecommerce\"'),
('meta.__names__.1d7f58e5-54d5-4aa6-967a-3dfd63ca925a', '\"Arrow left\"'),
('meta.__names__.30c28c2e-1470-49f5-b706-b58b419a54e6', '\"Product description\"'),
('meta.__names__.5225e55c-2dfe-412f-bb89-9c7678c525ea', '\"Images\"'),
('meta.__names__.53c2cac6-4022-4c80-955f-aef3f99d5778', '\"Homepage\"'),
('meta.__names__.553c2fb7-c6c3-4466-8c23-78667efb8a02', '\"Menu\"'),
('meta.__names__.5e26ca9e-e35a-47a6-b155-40783811697e', '\"White cart\"'),
('meta.__names__.98e40c01-feab-42be-b39e-7c47fdbc195d', '\"Cart image\"'),
('meta.__names__.9cb01ad1-a8c0-4dcd-acaa-32209d678735', '\"Delete\"'),
('meta.__names__.9f8f4c76-91d2-407c-a055-99823e753319', '\"Products\"'),
('meta.__names__.a830dc15-0621-48c6-9ebf-9da4338a2edb', '\"Product images\"'),
('meta.__names__.ade1f98c-05e2-4113-a4c7-c47d780aa8e0', '\"Ecommerce\"'),
('meta.__names__.b67386ab-fd2f-4b39-a1cd-b9d9fc2ac994', '\"Plus\"'),
('meta.__names__.bdaa05b2-de70-4428-b7c2-a5260bcbe4ca', '\"Product Thumb Nail\"'),
('meta.__names__.c11daede-73be-44f6-8abe-008cc7f7734d', '\"Default\"'),
('meta.__names__.e713e7b2-5884-4fad-bc4e-01590a029dda', '\"Arrow right\"'),
('meta.__names__.e7c76b8c-0680-425f-8eb9-db56956ed4a5', '\"Product\"'),
('meta.__names__.ea828d13-254f-4b0e-94a7-a506df8589ed', '\"Globals\"'),
('meta.__names__.eb8fb94e-2982-453f-9072-17588c12b586', '\"Profile image\"'),
('meta.__names__.f53dc786-7687-4afd-a997-e1cb66d92893', '\"Common\"'),
('meta.__names__.f70a1745-e97c-4cf5-95ff-acd81fe65d67', '\"Icons\"'),
('meta.__names__.fb846f56-6f24-4e5b-b24d-0ec86f396365', '\"Header\"'),
('sections.1140d0f5-4482-44ba-a81e-1f6076eed8d0.defaultPlacement', '\"end\"'),
('sections.1140d0f5-4482-44ba-a81e-1f6076eed8d0.enableVersioning', 'true'),
('sections.1140d0f5-4482-44ba-a81e-1f6076eed8d0.handle', '\"homepage\"'),
('sections.1140d0f5-4482-44ba-a81e-1f6076eed8d0.name', '\"Homepage\"'),
('sections.1140d0f5-4482-44ba-a81e-1f6076eed8d0.propagationMethod', '\"all\"'),
('sections.1140d0f5-4482-44ba-a81e-1f6076eed8d0.siteSettings.195af2c1-29c1-445a-92cf-85c9d9d40003.enabledByDefault', 'true'),
('sections.1140d0f5-4482-44ba-a81e-1f6076eed8d0.siteSettings.195af2c1-29c1-445a-92cf-85c9d9d40003.hasUrls', 'true'),
('sections.1140d0f5-4482-44ba-a81e-1f6076eed8d0.siteSettings.195af2c1-29c1-445a-92cf-85c9d9d40003.template', '\"index.twig\"'),
('sections.1140d0f5-4482-44ba-a81e-1f6076eed8d0.siteSettings.195af2c1-29c1-445a-92cf-85c9d9d40003.uriFormat', '\"__home__\"'),
('sections.1140d0f5-4482-44ba-a81e-1f6076eed8d0.type', '\"single\"'),
('sections.9f8f4c76-91d2-407c-a055-99823e753319.defaultPlacement', '\"beginning\"'),
('sections.9f8f4c76-91d2-407c-a055-99823e753319.enableVersioning', 'true'),
('sections.9f8f4c76-91d2-407c-a055-99823e753319.handle', '\"products\"'),
('sections.9f8f4c76-91d2-407c-a055-99823e753319.name', '\"Products\"'),
('sections.9f8f4c76-91d2-407c-a055-99823e753319.propagationMethod', '\"all\"'),
('sections.9f8f4c76-91d2-407c-a055-99823e753319.siteSettings.195af2c1-29c1-445a-92cf-85c9d9d40003.enabledByDefault', 'true'),
('sections.9f8f4c76-91d2-407c-a055-99823e753319.siteSettings.195af2c1-29c1-445a-92cf-85c9d9d40003.hasUrls', 'true'),
('sections.9f8f4c76-91d2-407c-a055-99823e753319.siteSettings.195af2c1-29c1-445a-92cf-85c9d9d40003.template', '\"product.twig\"'),
('sections.9f8f4c76-91d2-407c-a055-99823e753319.siteSettings.195af2c1-29c1-445a-92cf-85c9d9d40003.uriFormat', '\"products/{slug}\"'),
('sections.9f8f4c76-91d2-407c-a055-99823e753319.structure.maxLevels', '1'),
('sections.9f8f4c76-91d2-407c-a055-99823e753319.structure.uid', '\"5be6401f-da0d-43f3-b792-4caa00609da7\"'),
('sections.9f8f4c76-91d2-407c-a055-99823e753319.type', '\"structure\"'),
('siteGroups.ade1f98c-05e2-4113-a4c7-c47d780aa8e0.name', '\"Ecommerce\"'),
('sites.195af2c1-29c1-445a-92cf-85c9d9d40003.baseUrl', '\"@web/\"'),
('sites.195af2c1-29c1-445a-92cf-85c9d9d40003.handle', '\"default\"'),
('sites.195af2c1-29c1-445a-92cf-85c9d9d40003.hasUrls', 'true'),
('sites.195af2c1-29c1-445a-92cf-85c9d9d40003.language', '\"en-GB\"'),
('sites.195af2c1-29c1-445a-92cf-85c9d9d40003.name', '\"Ecommerce\"'),
('sites.195af2c1-29c1-445a-92cf-85c9d9d40003.primary', 'true'),
('sites.195af2c1-29c1-445a-92cf-85c9d9d40003.siteGroup', '\"ade1f98c-05e2-4113-a4c7-c47d780aa8e0\"'),
('sites.195af2c1-29c1-445a-92cf-85c9d9d40003.sortOrder', '1'),
('system.edition', '\"solo\"'),
('system.live', 'true'),
('system.name', '\"Ecommerce\"'),
('system.schemaVersion', '\"4.4.0.4\"'),
('system.timeZone', '\"America/Los_Angeles\"'),
('users.allowPublicRegistration', 'false'),
('users.defaultGroup', 'null'),
('users.photoSubpath', 'null'),
('users.photoVolumeUid', 'null'),
('users.requireEmailVerification', 'true'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elementCondition', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.0.autocapitalize', 'true'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.0.autocomplete', 'false'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.0.autocorrect', 'true'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.0.class', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.0.disabled', 'false'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.0.elementCondition', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.0.id', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.0.instructions', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.0.label', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.0.max', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.0.min', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.0.name', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.0.orientation', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.0.placeholder', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.0.readonly', 'false'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.0.requirable', 'false'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.0.size', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.0.step', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.0.tip', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.0.title', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\assets\\\\AssetTitleField\"'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.0.uid', '\"5bbe8576-e66a-4e4a-8974-1b13a8b2e86e\"'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.0.userCondition', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.0.warning', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.0.width', '100'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.1.attribute', '\"alt\"'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.1.class', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.1.cols', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.1.disabled', 'false'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.1.elementCondition', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.1.id', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.1.instructions', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.1.label', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.1.name', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.1.orientation', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.1.placeholder', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.1.readonly', 'false'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.1.requirable', 'true'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.1.required', 'false'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.1.rows', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.1.tip', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.1.title', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\assets\\\\AltField\"'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.1.uid', '\"72a25e68-3316-4ee7-9fd3-614bfd5d5940\"'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.1.userCondition', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.1.warning', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.elements.1.width', '100'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.name', '\"Content\"'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.uid', '\"0835a456-8651-4e63-9680-a4978cb75992\"'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fieldLayouts.2658aa06-5a9f-473a-8a6c-5d61cc783a09.tabs.0.userCondition', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.fs', '\"images\"'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.handle', '\"images\"'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.name', '\"Images\"'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.sortOrder', '1'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.titleTranslationKeyFormat', 'null'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.titleTranslationMethod', '\"site\"'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.transformFs', '\"\"'),
('volumes.5225e55c-2dfe-412f-bb89-9c7678c525ea.transformSubpath', '\"\"');

-- --------------------------------------------------------

--
-- Table structure for table `queue`
--

CREATE TABLE `queue` (
  `id` int(11) NOT NULL,
  `channel` varchar(255) NOT NULL DEFAULT 'queue',
  `job` longblob NOT NULL,
  `description` text DEFAULT NULL,
  `timePushed` int(11) NOT NULL,
  `ttr` int(11) NOT NULL,
  `delay` int(11) NOT NULL DEFAULT 0,
  `priority` int(11) UNSIGNED NOT NULL DEFAULT 1024,
  `dateReserved` datetime DEFAULT NULL,
  `timeUpdated` int(11) DEFAULT NULL,
  `progress` smallint(6) NOT NULL DEFAULT 0,
  `progressLabel` varchar(255) DEFAULT NULL,
  `attempt` int(11) DEFAULT NULL,
  `fail` tinyint(1) DEFAULT 0,
  `dateFailed` datetime DEFAULT NULL,
  `error` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE `relations` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceSiteId` int(11) DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `relations`
--

INSERT INTO `relations` (`id`, `fieldId`, `sourceId`, `sourceSiteId`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 8, 21, NULL, 13, 2, '2023-05-01 20:11:33', '2023-05-01 20:11:35', '068d5594-1abc-4a18-a656-76f4b1dcef0d'),
(2, 8, 21, NULL, 14, 3, '2023-05-01 20:11:33', '2023-05-01 20:11:35', '7462f15c-35f9-4d00-a7e2-dd80651f1e3e'),
(3, 8, 21, NULL, 3, 1, '2023-05-01 20:11:33', '2023-05-01 20:11:35', 'edfb0d0f-9073-4d06-875c-d805d32dd864'),
(4, 8, 21, NULL, 4, 4, '2023-05-01 20:11:33', '2023-05-01 20:11:33', '6ad220a8-9bda-41f7-9bee-58f946b10913'),
(5, 8, 22, NULL, 3, 1, '2023-05-01 20:11:59', '2023-05-01 20:11:59', '0ca67d9c-00be-43ac-a3d0-eccd515d4f1b'),
(6, 8, 22, NULL, 13, 2, '2023-05-01 20:11:59', '2023-05-01 20:11:59', 'e0598e0f-bc2d-4356-8a60-5320614b5785'),
(7, 8, 22, NULL, 14, 3, '2023-05-01 20:11:59', '2023-05-01 20:11:59', 'cd54c224-72e6-4167-aaba-2350e9d396cc'),
(8, 8, 22, NULL, 4, 4, '2023-05-01 20:11:59', '2023-05-01 20:11:59', '5674111d-4893-4d41-8625-5c5cd5168f31'),
(9, 6, 19, NULL, 6, 1, '2023-05-01 20:13:28', '2023-05-01 20:13:28', '6d3c8f26-45c7-4ce4-8cd5-8ee7dac1e19c'),
(10, 7, 19, NULL, 12, 1, '2023-05-01 20:13:28', '2023-05-01 20:13:28', '8deaa1a4-ea70-412f-b97a-016ca07c3410'),
(11, 5, 19, NULL, 2, 1, '2023-05-01 20:13:28', '2023-05-01 20:13:28', 'a56efaf3-4a88-4070-bd1a-61d47b3465b0'),
(12, 1, 19, NULL, 7, 1, '2023-05-01 20:13:28', '2023-05-01 20:13:28', '723443ce-e404-403a-be46-5b6ead0638a6'),
(13, 10, 19, NULL, 8, 1, '2023-05-01 20:13:28', '2023-05-01 20:13:28', '9e2c518f-d627-471b-b382-840512d6a479'),
(14, 11, 19, NULL, 10, 1, '2023-05-01 20:13:28', '2023-05-01 20:13:28', '341378f4-be53-4d03-b343-e6ad6148d910'),
(15, 4, 19, NULL, 3, 1, '2023-05-01 20:13:28', '2023-05-01 20:13:28', '0d3ad991-c308-4f17-b2ca-be5b1ff4f953'),
(16, 12, 19, NULL, 15, 1, '2023-05-01 20:13:28', '2023-05-01 20:13:28', 'c3e8e041-94b6-407b-8af3-1208936a1d2d'),
(17, 2, 20, NULL, 5, 1, '2023-05-01 20:13:47', '2023-05-01 20:13:47', 'aafa0e31-0155-41d5-a8cc-d8d69aa804df'),
(18, 3, 20, NULL, 9, 1, '2023-05-01 20:13:47', '2023-05-01 20:13:47', 'f44da57b-b87b-49f3-86e3-bbc99b2855e2'),
(23, 8, 25, NULL, 3, 1, '2023-05-02 01:11:17', '2023-05-02 01:11:17', '93c0a4c0-4d0c-4b83-a09f-08ae9e669db8'),
(24, 8, 25, NULL, 13, 2, '2023-05-02 01:11:17', '2023-05-02 01:11:17', 'a755fb69-1487-41d6-b87b-d45f6b715d4d'),
(25, 8, 25, NULL, 14, 3, '2023-05-02 01:11:17', '2023-05-02 01:11:17', '5e1efb28-5757-40ae-9c8c-542b6d8715b8'),
(26, 8, 25, NULL, 4, 4, '2023-05-02 01:11:17', '2023-05-02 01:11:17', 'c6834d81-5dc9-4540-a4b5-6e276d2cd222');

-- --------------------------------------------------------

--
-- Table structure for table `resourcepaths`
--

CREATE TABLE `resourcepaths` (
  `hash` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `resourcepaths`
--

INSERT INTO `resourcepaths` (`hash`, `path`) VALUES
('10329a2d', '@craft/web/assets/datepickeri18n/dist'),
('14ab9eb4', '@craft/web/assets/feed/dist'),
('1695f847', '@craft/web/assets/vue/dist'),
('1e3913ea', '@craft/web/assets/jquerypayment/dist'),
('1e6acc88', '@craft/web/assets/jquerytouchevents/dist'),
('2262c934', '@craft/web/assets/picturefill/dist'),
('2b5201c', '@craft/web/assets/velocity/dist'),
('2bbea3f0', '@craft/web/assets/craftsupport/dist'),
('2dc59e01', '@craft/web/assets/axios/dist'),
('30c14575', '@craft/web/assets/xregexp/dist'),
('36b7630c', '@craft/web/assets/conditionbuilder/dist'),
('42702834', '@craft/web/assets/jqueryui/dist'),
('4897b822', '@bower/jquery/dist'),
('4d77a7ca', '@craft/web/assets/elementresizedetector/dist'),
('5783ddf6', '@craft/web/assets/prismjs/dist'),
('5c0bfe9f', '@craft/web/assets/fileupload/dist'),
('6de8b87f', '@craft/web/assets/dashboard/dist'),
('793e3af0', '@craft/web/assets/htmx/dist'),
('815176a0', '@craft/web/assets/fieldsettings/dist'),
('833f1f61', '@craft/web/assets/selectize/dist'),
('842aa543', '@craft/web/assets/tailwindreset/dist'),
('8738a396', '@craft/web/assets/iframeresizer/dist'),
('8c59aa21', '@craft/web/assets/d3/dist'),
('932a4203', '@craft/web/assets/clearcaches/dist'),
('93950885', '@craft/web/assets/assetindexes/dist'),
('950964b8', '@craft/web/assets/updateswidget/dist'),
('966c8c68', '@craft/web/assets/cp/dist'),
('9f17bc15', '@craft/web/assets/pluginstore/dist'),
('b2a81797', '@craft/web/assets/recententries/dist'),
('d58585e3', '@craft/web/assets/utilities/dist'),
('dcb4229c', '@craft/web/assets/fabric/dist'),
('f406158b', '@craft/web/assets/garnish/dist'),
('fd63959', '@craft/web/assets/editsection/dist');

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` int(11) NOT NULL,
  `canonicalId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `canonicalId`, `creatorId`, `num`, `notes`) VALUES
(1, 16, 1, 1, NULL),
(2, 16, 1, 2, NULL),
(3, 21, 1, 1, ''),
(4, 21, 1, 2, 'Applied “Draft 1”');

-- --------------------------------------------------------

--
-- Table structure for table `searchindex`
--

CREATE TABLE `searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `searchindex`
--

INSERT INTO `searchindex` (`elementId`, `attribute`, `fieldId`, `siteId`, `keywords`) VALUES
(1, 'email', 0, 1, ' berk bozok live com '),
(1, 'firstname', 0, 1, ''),
(1, 'fullname', 0, 1, ''),
(1, 'lastname', 0, 1, ''),
(1, 'slug', 0, 1, ''),
(1, 'username', 0, 1, ' admin '),
(2, 'alt', 0, 1, ''),
(2, 'extension', 0, 1, ' svg '),
(2, 'filename', 0, 1, ' delete svg '),
(2, 'kind', 0, 1, ' image '),
(2, 'slug', 0, 1, ''),
(2, 'title', 0, 1, ' delete '),
(3, 'alt', 0, 1, ''),
(3, 'extension', 0, 1, ' jpg '),
(3, 'filename', 0, 1, ' first jpg '),
(3, 'kind', 0, 1, ' image '),
(3, 'slug', 0, 1, ''),
(3, 'title', 0, 1, ' first '),
(4, 'alt', 0, 1, ''),
(4, 'extension', 0, 1, ' jpg '),
(4, 'filename', 0, 1, ' fourth jpg '),
(4, 'kind', 0, 1, ' image '),
(4, 'slug', 0, 1, ''),
(4, 'title', 0, 1, ' fourth '),
(5, 'alt', 0, 1, ''),
(5, 'extension', 0, 1, ' png '),
(5, 'filename', 0, 1, ' group 14 png '),
(5, 'kind', 0, 1, ' image '),
(5, 'slug', 0, 1, ''),
(5, 'title', 0, 1, ' group 14 '),
(6, 'alt', 0, 1, ''),
(6, 'extension', 0, 1, ' svg '),
(6, 'filename', 0, 1, ' left svg '),
(6, 'kind', 0, 1, ' image '),
(6, 'slug', 0, 1, ''),
(6, 'title', 0, 1, ' left '),
(7, 'alt', 0, 1, ''),
(7, 'extension', 0, 1, ' svg '),
(7, 'filename', 0, 1, ' menu svg '),
(7, 'kind', 0, 1, ' image '),
(7, 'slug', 0, 1, ''),
(7, 'title', 0, 1, ' menu '),
(8, 'alt', 0, 1, ''),
(8, 'extension', 0, 1, ' svg '),
(8, 'filename', 0, 1, ' minus svg '),
(8, 'kind', 0, 1, ' image '),
(8, 'slug', 0, 1, ''),
(8, 'title', 0, 1, ' minus '),
(9, 'alt', 0, 1, ''),
(9, 'extension', 0, 1, ' png '),
(9, 'filename', 0, 1, ' oval png '),
(9, 'kind', 0, 1, ' image '),
(9, 'slug', 0, 1, ''),
(9, 'title', 0, 1, ' oval '),
(10, 'alt', 0, 1, ''),
(10, 'extension', 0, 1, ' svg '),
(10, 'filename', 0, 1, ' plus svg '),
(10, 'kind', 0, 1, ' image '),
(10, 'slug', 0, 1, ''),
(10, 'title', 0, 1, ' plus '),
(11, 'alt', 0, 1, ''),
(11, 'extension', 0, 1, ' png '),
(11, 'filename', 0, 1, ' rectangle 1 png '),
(11, 'kind', 0, 1, ' image '),
(11, 'slug', 0, 1, ''),
(11, 'title', 0, 1, ' rectangle 1 '),
(12, 'alt', 0, 1, ''),
(12, 'extension', 0, 1, ' svg '),
(12, 'filename', 0, 1, ' right svg '),
(12, 'kind', 0, 1, ' image '),
(12, 'slug', 0, 1, ''),
(12, 'title', 0, 1, ' right '),
(13, 'alt', 0, 1, ''),
(13, 'extension', 0, 1, ' jpg '),
(13, 'filename', 0, 1, ' second jpg '),
(13, 'kind', 0, 1, ' image '),
(13, 'slug', 0, 1, ''),
(13, 'title', 0, 1, ' second '),
(14, 'alt', 0, 1, ''),
(14, 'extension', 0, 1, ' jpg '),
(14, 'filename', 0, 1, ' third jpg '),
(14, 'kind', 0, 1, ' image '),
(14, 'slug', 0, 1, ''),
(14, 'title', 0, 1, ' third '),
(15, 'alt', 0, 1, ''),
(15, 'extension', 0, 1, ' png '),
(15, 'filename', 0, 1, ' whitecart png '),
(15, 'kind', 0, 1, ' image '),
(15, 'slug', 0, 1, ''),
(15, 'title', 0, 1, ' white cart '),
(16, 'slug', 0, 1, ' homepage '),
(16, 'title', 0, 1, ' homepage '),
(19, 'slug', 0, 1, ''),
(20, 'slug', 0, 1, ''),
(21, 'slug', 0, 1, ' product title '),
(21, 'title', 0, 1, ' fall limited edition sneakers '),
(23, 'slug', 0, 1, ' temp afuoqacvyxkwqaefdmoewotvlehnvkvnesoc '),
(23, 'title', 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `type` enum('single','channel','structure') NOT NULL DEFAULT 'channel',
  `enableVersioning` tinyint(1) NOT NULL DEFAULT 0,
  `propagationMethod` varchar(255) NOT NULL DEFAULT 'all',
  `defaultPlacement` enum('beginning','end') NOT NULL DEFAULT 'end',
  `previewTargets` text DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `structureId`, `name`, `handle`, `type`, `enableVersioning`, `propagationMethod`, `defaultPlacement`, `previewTargets`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, 'Homepage', 'homepage', 'single', 1, 'all', 'end', NULL, '2023-05-01 20:02:57', '2023-05-01 20:02:57', NULL, '1140d0f5-4482-44ba-a81e-1f6076eed8d0'),
(2, 1, 'Products', 'products', 'structure', 1, 'all', 'beginning', NULL, '2023-05-01 20:03:16', '2023-05-01 20:03:16', NULL, '9f8f4c76-91d2-407c-a055-99823e753319');

-- --------------------------------------------------------

--
-- Table structure for table `sections_sites`
--

CREATE TABLE `sections_sites` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT 1,
  `uriFormat` text DEFAULT NULL,
  `template` varchar(500) DEFAULT NULL,
  `enabledByDefault` tinyint(1) NOT NULL DEFAULT 1,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sections_sites`
--

INSERT INTO `sections_sites` (`id`, `sectionId`, `siteId`, `hasUrls`, `uriFormat`, `template`, `enabledByDefault`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 1, '__home__', 'index.twig', 1, '2023-05-01 20:02:57', '2023-05-01 20:02:57', 'a47ac402-7cfd-4e9a-bb40-49b56f6215e5'),
(2, 2, 1, 1, 'products/{slug}', 'product.twig', 1, '2023-05-01 20:03:16', '2023-05-01 20:03:16', '07af8122-8c04-4bb4-8c18-f861fb56850a');

-- --------------------------------------------------------

--
-- Table structure for table `sequences`
--

CREATE TABLE `sequences` (
  `name` varchar(255) NOT NULL,
  `next` int(11) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `token` char(100) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shunnedmessages`
--

CREATE TABLE `shunnedmessages` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sitegroups`
--

CREATE TABLE `sitegroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sitegroups`
--

INSERT INTO `sitegroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'Ecommerce', '2023-05-01 19:56:37', '2023-05-01 19:56:37', NULL, 'ade1f98c-05e2-4113-a4c7-c47d780aa8e0');

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE `sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `enabled` varchar(255) NOT NULL DEFAULT 'true',
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `language` varchar(12) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT 0,
  `baseUrl` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`id`, `groupId`, `primary`, `enabled`, `name`, `handle`, `language`, `hasUrls`, `baseUrl`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 1, 'true', 'Ecommerce', 'default', 'en-GB', 1, '@web/', 1, '2023-05-01 19:56:37', '2023-05-01 19:56:37', NULL, '195af2c1-29c1-445a-92cf-85c9d9d40003');

-- --------------------------------------------------------

--
-- Table structure for table `structureelements`
--

CREATE TABLE `structureelements` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) UNSIGNED DEFAULT NULL,
  `lft` int(11) UNSIGNED NOT NULL,
  `rgt` int(11) UNSIGNED NOT NULL,
  `level` smallint(6) UNSIGNED NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `structureelements`
--

INSERT INTO `structureelements` (`id`, `structureId`, `elementId`, `root`, `lft`, `rgt`, `level`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, NULL, 1, 1, 6, 0, '2023-05-01 20:11:03', '2023-05-01 20:12:05', '975833e8-ce3e-48bc-ac1d-c701ba1363ba'),
(2, 1, 21, 1, 4, 5, 1, '2023-05-01 20:11:03', '2023-05-01 20:12:05', '88e56a34-1c1e-4bce-8472-cca96e404fda'),
(3, 1, 23, 1, 2, 3, 1, '2023-05-01 20:12:05', '2023-05-01 20:12:05', '3c038f2f-396b-4e88-af4d-f1ec37c1e4dd');

-- --------------------------------------------------------

--
-- Table structure for table `structures`
--

CREATE TABLE `structures` (
  `id` int(11) NOT NULL,
  `maxLevels` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `structures`
--

INSERT INTO `structures` (`id`, `maxLevels`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, '2023-05-01 20:03:16', '2023-05-01 20:03:16', NULL, '5be6401f-da0d-43f3-b792-4caa00609da7');

-- --------------------------------------------------------

--
-- Table structure for table `systemmessages`
--

CREATE TABLE `systemmessages` (
  `id` int(11) NOT NULL,
  `language` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taggroups`
--

CREATE TABLE `taggroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `token` char(32) NOT NULL,
  `route` text DEFAULT NULL,
  `usageLimit` tinyint(3) UNSIGNED DEFAULT NULL,
  `usageCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usergroups`
--

CREATE TABLE `usergroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usergroups_users`
--

CREATE TABLE `usergroups_users` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions`
--

CREATE TABLE `userpermissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions_usergroups`
--

CREATE TABLE `userpermissions_usergroups` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions_users`
--

CREATE TABLE `userpermissions_users` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpreferences`
--

CREATE TABLE `userpreferences` (
  `userId` int(11) NOT NULL,
  `preferences` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `userpreferences`
--

INSERT INTO `userpreferences` (`userId`, `preferences`) VALUES
(1, '{\"language\":\"en-GB\"}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `photoId` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `pending` tinyint(1) NOT NULL DEFAULT 0,
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `suspended` tinyint(1) NOT NULL DEFAULT 0,
  `admin` tinyint(1) NOT NULL DEFAULT 0,
  `username` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIp` varchar(45) DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `hasDashboard` tinyint(1) NOT NULL DEFAULT 0,
  `verificationCode` varchar(255) DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) DEFAULT NULL,
  `passwordResetRequired` tinyint(1) NOT NULL DEFAULT 0,
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `photoId`, `active`, `pending`, `locked`, `suspended`, `admin`, `username`, `fullName`, `firstName`, `lastName`, `email`, `password`, `lastLoginDate`, `lastLoginAttemptIp`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `hasDashboard`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`) VALUES
(1, NULL, 1, 0, 0, 0, 1, 'admin', NULL, NULL, NULL, 'berk_bozok@live.com', '$2y$13$CwyqPcoAD9wb/aeHyoQrKutIeql.qkkebfQaM.IDvEKscCPIenZcq', '2023-05-03 19:25:47', NULL, NULL, NULL, '2023-05-01 20:00:00', NULL, 1, NULL, NULL, NULL, 0, '2023-05-01 19:56:37', '2023-05-01 19:56:37', '2023-05-03 19:25:47');

-- --------------------------------------------------------

--
-- Table structure for table `volumefolders`
--

CREATE TABLE `volumefolders` (
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `volumefolders`
--

INSERT INTO `volumefolders` (`id`, `parentId`, `volumeId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 1, 'Images', '', '2023-05-01 20:02:07', '2023-05-01 20:02:07', 'f2573271-d00c-4676-8811-c0604942d970'),
(2, NULL, NULL, 'Temporary filesystem', NULL, '2023-05-01 20:02:09', '2023-05-01 20:02:09', 'c852089f-5d56-4578-9769-c559903c0f17'),
(3, 2, NULL, 'user_1', 'user_1/', '2023-05-01 20:02:09', '2023-05-01 20:02:09', '58dd741a-742f-4a13-8cd0-b20f7f455481');

-- --------------------------------------------------------

--
-- Table structure for table `volumes`
--

CREATE TABLE `volumes` (
  `id` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fs` varchar(255) NOT NULL,
  `transformFs` varchar(255) DEFAULT NULL,
  `transformSubpath` varchar(255) DEFAULT NULL,
  `titleTranslationMethod` varchar(255) NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `volumes`
--

INSERT INTO `volumes` (`id`, `fieldLayoutId`, `name`, `handle`, `fs`, `transformFs`, `transformSubpath`, `titleTranslationMethod`, `titleTranslationKeyFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 'Images', 'images', 'images', '', '', 'site', NULL, 1, '2023-05-01 20:02:07', '2023-05-01 20:02:07', NULL, '5225e55c-2dfe-412f-bb89-9c7678c525ea');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `colspan` tinyint(3) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'craft\\widgets\\RecentEntries', 1, NULL, '{\"siteId\":1,\"section\":\"*\",\"limit\":10}', 1, '2023-05-01 20:00:09', '2023-05-01 20:00:09', '4c59e0b9-6fc6-46fe-9f44-27397b74ec0e'),
(2, 1, 'craft\\widgets\\CraftSupport', 2, NULL, '[]', 1, '2023-05-01 20:00:09', '2023-05-01 20:00:09', 'cd1048f4-d23b-425c-96d9-f67d4034ad9e'),
(3, 1, 'craft\\widgets\\Updates', 3, NULL, '[]', 1, '2023-05-01 20:00:09', '2023-05-01 20:00:09', 'b1cae098-ec15-48b0-ae4b-088378373610'),
(4, 1, 'craft\\widgets\\Feed', 4, NULL, '{\"url\":\"https:\\/\\/craftcms.com\\/news.rss\",\"title\":\"Craft News\",\"limit\":5}', 1, '2023-05-01 20:00:09', '2023-05-01 20:00:09', 'e3fe4a99-10c3-468a-9e70-1ac664e9232e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cyymyvmbvyegjewqrxoicwiozzyvyyvlihfi` (`ownerId`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_edddeudijwlmvbrakuusorudgkyqjsqkoqqp` (`userId`,`unread`,`dateRead`,`dateCreated`),
  ADD KEY `idx_swpejrkfpszjjgpdxbnqqubdubjatpvkhsan` (`dateRead`),
  ADD KEY `fk_ghinequtzgvcffyungzvxavbllzxiegxptrk` (`pluginId`);

--
-- Indexes for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_xlsvzjwphnaemjuxohecjoxmblvsofqrvmme` (`sessionId`,`volumeId`),
  ADD KEY `idx_fsbnlrqsiphrynjewhxtpuvtmmmpmbtkbnao` (`volumeId`);

--
-- Indexes for table `assetindexingsessions`
--
ALTER TABLE `assetindexingsessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mudxdenlfbumeohpjwfobtvqrjctdfartmej` (`filename`,`folderId`),
  ADD KEY `idx_bskqlgzzwacgwpavvdupvaikwcoefqlmblez` (`folderId`),
  ADD KEY `idx_blalvmqtauesaeddvgojqofxqjvmqbnzfobo` (`volumeId`),
  ADD KEY `fk_zvusdokxfoyftkmoyugeknyafbiumieamsyf` (`uploaderId`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rxqxciylxiotytmqiduofnzalgctoafeibyc` (`groupId`),
  ADD KEY `fk_kvamicbikaeoauysdcszdfhveiruqrfdbgdr` (`parentId`);

--
-- Indexes for table `categorygroups`
--
ALTER TABLE `categorygroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_axyayqxvdwvdpvqodyolbwytscdtmwvzeats` (`name`),
  ADD KEY `idx_vgrnnpzerfiabqwymnvbmltdhorqdztrikqy` (`handle`),
  ADD KEY `idx_dfnhnvswbuwdlihjtqvupxvpzdmsypahxdyp` (`structureId`),
  ADD KEY `idx_vgohuspyuxffmgnvcswixvkkmvglfmmbthhd` (`fieldLayoutId`),
  ADD KEY `idx_iqllfhbhxlrkkaiqlkfqcuimudpkouuguuel` (`dateDeleted`);

--
-- Indexes for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_mwnwchpwranyowbrkdsdnkgkswlixxdhvera` (`groupId`,`siteId`),
  ADD KEY `idx_cawcblbwlliqtnyujdcgsvwunekutuowankl` (`siteId`);

--
-- Indexes for table `changedattributes`
--
ALTER TABLE `changedattributes`
  ADD PRIMARY KEY (`elementId`,`siteId`,`attribute`),
  ADD KEY `idx_mmtkvhmsbtazteucipfyxpwwsulragvxujeb` (`elementId`,`siteId`,`dateUpdated`),
  ADD KEY `fk_jhimcdnqwgjlsmhrrxmionvgjbxpqlkhmcif` (`siteId`),
  ADD KEY `fk_gbjdsvutllfbtlaqxpopomjadaunnejlcpsd` (`userId`);

--
-- Indexes for table `changedfields`
--
ALTER TABLE `changedfields`
  ADD PRIMARY KEY (`elementId`,`siteId`,`fieldId`),
  ADD KEY `idx_ndijpgkylohigmwjzvhayyhbtemtapazmjyd` (`elementId`,`siteId`,`dateUpdated`),
  ADD KEY `fk_rhjvfgrqmrftrlhmcxilbfypbwaejydqtvxf` (`siteId`),
  ADD KEY `fk_klpqifkdiundrktuyzhasrqreofhcfsiawug` (`fieldId`),
  ADD KEY `fk_kezeeolgodgrpeuhyalsthihuchsuzubukzd` (`userId`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_opedfymimthfrsepyfkcdgvldxsopiefbtat` (`elementId`,`siteId`),
  ADD KEY `idx_iberlmcwcsifbojndpuasarcdjqeblvxupsc` (`siteId`),
  ADD KEY `idx_akttcugqrtakuxoevbvsxcmpnqiijhlnmbsq` (`title`);

--
-- Indexes for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sorrfkfrisawqauskpjjqysdqzqitzpzugte` (`userId`);

--
-- Indexes for table `deprecationerrors`
--
ALTER TABLE `deprecationerrors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_pbovjuuuzvctgpkbwjwibwkegbdawwomnvnr` (`key`,`fingerprint`);

--
-- Indexes for table `drafts`
--
ALTER TABLE `drafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_kiuovucyhcltufqzwhrpdyuggijviqgwmehv` (`creatorId`,`provisional`),
  ADD KEY `idx_uodbuyxetldclsfwfdibfrpsamfmjcylgdcf` (`saved`),
  ADD KEY `fk_vfqqowkmtcwwcmdghqvgeosielznbfdpfuag` (`canonicalId`);

--
-- Indexes for table `elements`
--
ALTER TABLE `elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vlrmrratbasjdbljszmgklnxhukhkwtzvewn` (`dateDeleted`),
  ADD KEY `idx_mlpzfdqjztvjsdxtenjozjvfpbmfeyxpalcf` (`fieldLayoutId`),
  ADD KEY `idx_fgxvjqvlgtkzopxnewggdsytrhvywllyffkw` (`type`),
  ADD KEY `idx_lprzbvvlkftgidqtvfkyrxxllnsxoubkyvfm` (`enabled`),
  ADD KEY `idx_spnvptpohaiwlsslvwczszglzdxxrllenxhr` (`canonicalId`),
  ADD KEY `idx_pdkhwqdeuoktaapphpubmambzzlcaogjkpxk` (`archived`,`dateCreated`),
  ADD KEY `idx_paefmwfbjgnivswqdqyupgondpeyytdtomnc` (`archived`,`dateDeleted`,`draftId`,`revisionId`,`canonicalId`),
  ADD KEY `idx_khxuwcswcaylsptzyfhltakzddtqscmhrjfe` (`archived`,`dateDeleted`,`draftId`,`revisionId`,`canonicalId`,`enabled`),
  ADD KEY `fk_fjoaaywsawmcpzqvutllyfymzcaiqulexsge` (`draftId`),
  ADD KEY `fk_ujpwbzeejwgzzaaubmkrhrqfzimeqaojgnug` (`revisionId`);

--
-- Indexes for table `elements_sites`
--
ALTER TABLE `elements_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_xcxvpuxbqkxdpuqyimeiolgqgdsgwnrczdjt` (`elementId`,`siteId`),
  ADD KEY `idx_upreyvdvqdrigpmakeoykeczxkfpzsnrcuse` (`siteId`),
  ADD KEY `idx_spwyveliwcjusjchzkmkggdsruwrhbwotwlq` (`slug`,`siteId`),
  ADD KEY `idx_citamuqagcsbyrijpfddzcauotkanixkunrn` (`enabled`),
  ADD KEY `idx_ppilyuxhmioqyrfrpeabsqvdtiupiiypdphc` (`uri`,`siteId`);

--
-- Indexes for table `entries`
--
ALTER TABLE `entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_zraypylsaetrdgryydzjcjwhtoobpqvaljip` (`postDate`),
  ADD KEY `idx_tiwahxawtjnnbrmxdlgtnwyfeaqegagbtott` (`expiryDate`),
  ADD KEY `idx_icihcoipakqmdrrxdorodkgchyksivoajhzn` (`authorId`),
  ADD KEY `idx_epvhcjsqghgebardxrsxvqzzsrfdakclsxpc` (`sectionId`),
  ADD KEY `idx_gjwfckrbwngdcziryftrrwvxgzpicsgjtfcd` (`typeId`),
  ADD KEY `fk_ajdujjiellvrbpphihbturbdpgtvifxfmyud` (`parentId`);

--
-- Indexes for table `entrytypes`
--
ALTER TABLE `entrytypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_zrxyqbsszrirbvphalfkqvsawhhctznhvpuh` (`name`,`sectionId`),
  ADD KEY `idx_bhzytwpszccciivasbpndzhvzdgnexaipfsv` (`handle`,`sectionId`),
  ADD KEY `idx_icampwdygrqkncyqrsxxndsbiruocedflkvb` (`sectionId`),
  ADD KEY `idx_ydwhamopvodhxofwheyidfnninazloezuirb` (`fieldLayoutId`),
  ADD KEY `idx_qgtdtuovfitjufyunkxuxtvrblvbybdumkqi` (`dateDeleted`);

--
-- Indexes for table `fieldgroups`
--
ALTER TABLE `fieldgroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_scelvyqebvumgunohssyaijyssqdybbzexsv` (`name`),
  ADD KEY `idx_yoljocvyrchqkbprmbferthiyutcbpxxttol` (`dateDeleted`,`name`);

--
-- Indexes for table `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_jfpabvqbxssndqxlntrafroryaqcbqlgbrnz` (`layoutId`,`fieldId`),
  ADD KEY `idx_iierubbhrfeisvuavlmzwitbsjcaslygllto` (`sortOrder`),
  ADD KEY `idx_zdpavabejdwvqjimwfheonvmnmdjvjvadynm` (`tabId`),
  ADD KEY `idx_ligkubkzxjfipktzsdvvthotglkrrxtteilj` (`fieldId`);

--
-- Indexes for table `fieldlayouts`
--
ALTER TABLE `fieldlayouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_crfcfylslrfdhufqbldybvwfkavtejabnfer` (`dateDeleted`),
  ADD KEY `idx_ahmhxvmfzmvxwwnyutatbkgtkdrkeshtccul` (`type`);

--
-- Indexes for table `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_xwgnxnkrbihxzigkrqkwbcrttgjaxuybylyc` (`sortOrder`),
  ADD KEY `idx_vosvqkuaufadziybayjmjrpkxwljspqgeidi` (`layoutId`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vzjcnfgvxeyvsxnickmcyafcpguahnlwihfg` (`handle`,`context`),
  ADD KEY `idx_sjocnxwzjmqadlgumbupgwbfmyfsirojlrgj` (`groupId`),
  ADD KEY `idx_dukxkqdvkzhzjrxjnjruiylfovksldmxuozc` (`context`);

--
-- Indexes for table `globalsets`
--
ALTER TABLE `globalsets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_erayijywpdealrfsuksuvwvbfobbwojctrxk` (`name`),
  ADD KEY `idx_ydtmmhmudcaoudwgshldhuvqjutzqucjsmec` (`handle`),
  ADD KEY `idx_qxmgzooctmczmfpewbjyiiwrcbrfrtbdubjh` (`fieldLayoutId`),
  ADD KEY `idx_tdhahumrwvamhkvpjgjxqljiofukhhdmbfxl` (`sortOrder`);

--
-- Indexes for table `gqlschemas`
--
ALTER TABLE `gqlschemas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gqltokens`
--
ALTER TABLE `gqltokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_muuoeueqwvcucbpipemhjpegjmhbpbgomofm` (`accessToken`),
  ADD UNIQUE KEY `idx_wrdutjcdtmeljgexjotdqamlcydyvstqwupr` (`name`),
  ADD KEY `fk_preaxoczmpwhvhnuetyuonqxguuouzqeuyfy` (`schemaId`);

--
-- Indexes for table `imagetransformindex`
--
ALTER TABLE `imagetransformindex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_hfmldstczxbytvyssouujyjldtxkiryjvjtt` (`assetId`,`transformString`);

--
-- Indexes for table `imagetransforms`
--
ALTER TABLE `imagetransforms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lhshhqnvmvanpoymuzffxozdsghfsnxfdrku` (`name`),
  ADD KEY `idx_xbvldzrculqsadzmiaoxuqffflgxbdbayhhl` (`handle`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matrixblocks`
--
ALTER TABLE `matrixblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_edtufqcuylloerpdcjigqceromspcvelvvla` (`primaryOwnerId`),
  ADD KEY `idx_zqvnyhhvwuenraptdbvrthtaaeneofrakpdh` (`fieldId`),
  ADD KEY `idx_kzzzymlrpxiqxpvhxiintfxpqowyfundosbh` (`typeId`);

--
-- Indexes for table `matrixblocks_owners`
--
ALTER TABLE `matrixblocks_owners`
  ADD PRIMARY KEY (`blockId`,`ownerId`),
  ADD KEY `fk_tmxlqgnswrondriiaitqguhidmzvugzohfga` (`ownerId`);

--
-- Indexes for table `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_kfycblsziwuoyiqnudozvrjflyxjlyqwadzf` (`name`,`fieldId`),
  ADD KEY `idx_ctwitrgjnuexlbkagwuyyuwwygyousqzpeww` (`handle`,`fieldId`),
  ADD KEY `idx_sxrbfhabodahrygpctukrnwgpapxvnrzqwtb` (`fieldId`),
  ADD KEY `idx_mrlzrxuzfwabiakocpxwbiuqpxvkeztwnshg` (`fieldLayoutId`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_uiasrjjknrldcwpskkkwhxkqpnosetdxwvno` (`track`,`name`);

--
-- Indexes for table `plugins`
--
ALTER TABLE `plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_jlqssyhqrrmfnfwcznnvpvqqzexdrjdkaeqo` (`handle`);

--
-- Indexes for table `projectconfig`
--
ALTER TABLE `projectconfig`
  ADD PRIMARY KEY (`path`);

--
-- Indexes for table `queue`
--
ALTER TABLE `queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_hcusdhmimkgqbzejuasbxbnwaivufoxmcawi` (`channel`,`fail`,`timeUpdated`,`timePushed`),
  ADD KEY `idx_rypgwovvcerrbglgzaiqrqepahivmbiphrge` (`channel`,`fail`,`timeUpdated`,`delay`);

--
-- Indexes for table `relations`
--
ALTER TABLE `relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_uynnriwbpgppcbseplzvbfbbwnqnbkaavrbh` (`fieldId`,`sourceId`,`sourceSiteId`,`targetId`),
  ADD KEY `idx_brsihzvvmczypzznfdanlqwszstzayepuhoe` (`sourceId`),
  ADD KEY `idx_elieihshyndxevcosiefnledsltnvrhxcoyq` (`targetId`),
  ADD KEY `idx_bxsglkksmlvynboqscnzdenbjaddixarvwiw` (`sourceSiteId`);

--
-- Indexes for table `resourcepaths`
--
ALTER TABLE `resourcepaths`
  ADD PRIMARY KEY (`hash`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_arlluignpgermgwwijbpjcpnqfsdicadxjtl` (`canonicalId`,`num`),
  ADD KEY `fk_sqfijvrgfoebbhsxeutquwhsxjohlknhviap` (`creatorId`);

--
-- Indexes for table `searchindex`
--
ALTER TABLE `searchindex`
  ADD PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`siteId`);
ALTER TABLE `searchindex` ADD FULLTEXT KEY `idx_uznuznkjedbhdneovswdhznmiwjkbomzoodq` (`keywords`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_xnfqqcimvgeopxiaavesbuycpehcjmviwkqy` (`handle`),
  ADD KEY `idx_zohyvgcwieprkqozjsbouauitktzuwbczllk` (`name`),
  ADD KEY `idx_kiiodrfbthtccjtihjymjhpoxmmweoiwisyo` (`structureId`),
  ADD KEY `idx_elnmptkivjyvajdolgmwyrfidblzromdpets` (`dateDeleted`);

--
-- Indexes for table `sections_sites`
--
ALTER TABLE `sections_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_eigygyvbyhuzedtldlsziurfyefpjyvbdbke` (`sectionId`,`siteId`),
  ADD KEY `idx_nidxrwfgoyockbmedgcdcvgzdjnfdayorsai` (`siteId`);

--
-- Indexes for table `sequences`
--
ALTER TABLE `sequences`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aiuvayjmomgmqdtzmnjqqzovluvdllhvgthl` (`uid`),
  ADD KEY `idx_owucigmmsxjyutrepipsnawkuxkgpadfrgju` (`token`),
  ADD KEY `idx_cskjkvsjyvcxgsjmgleeqhyrmkwypjgqvdbf` (`dateUpdated`),
  ADD KEY `idx_mqqrvdhogggccgaqbvddtxfxlkffhwettlvg` (`userId`);

--
-- Indexes for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_coiugvlldpxqpbrwpqqqdwrnqbsaiegqwjlu` (`userId`,`message`);

--
-- Indexes for table `sitegroups`
--
ALTER TABLE `sitegroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mujbpmfviorznrlsekpnvelyouqcjmbanbrw` (`name`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jdwfyyrdckcutmzghobsjcifsanfkkrveoib` (`dateDeleted`),
  ADD KEY `idx_vpsrqdgsxmdymutazawjhunhsencwlgwlauh` (`handle`),
  ADD KEY `idx_ngfludnmgyoapsuzretcnhkdymgchflqivep` (`sortOrder`),
  ADD KEY `fk_uoflgiqwjrcqsjwxxhxyuwdceclgnipwzwqc` (`groupId`);

--
-- Indexes for table `structureelements`
--
ALTER TABLE `structureelements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_gthklaoqvqyrxvmrdauvywsohmwydfwjjrmw` (`structureId`,`elementId`),
  ADD KEY `idx_wbweguxydprnuiguzbulipkryahzcuqlcjxc` (`root`),
  ADD KEY `idx_smeyffgxisxfahpkclfqvwijmnfpfuecuoki` (`lft`),
  ADD KEY `idx_cspgkvuzlmzxiiiwauuzbxpfygvakmwipxpa` (`rgt`),
  ADD KEY `idx_xtjpaiuurzeqlzqsikxpqmeiidkmlcfhxbqx` (`level`),
  ADD KEY `idx_slhkhyimetntbgziaummlughexqngluffzyy` (`elementId`);

--
-- Indexes for table `structures`
--
ALTER TABLE `structures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_etnuzdxwndhzzjufegxcrtzlatjuiuvmessp` (`dateDeleted`);

--
-- Indexes for table `systemmessages`
--
ALTER TABLE `systemmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_ykfqdzvfggjmizkuxnvxlnohgxiovdykduuc` (`key`,`language`),
  ADD KEY `idx_oxggaxnevinfjvbhpeqkktcpokzwxukfukhw` (`language`);

--
-- Indexes for table `taggroups`
--
ALTER TABLE `taggroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_yljmjrihkxodtlnbkkqklrlewbjimshoxmhc` (`name`),
  ADD KEY `idx_dnrudjpotqbljxwbpjanvjsrdvoehyftmfas` (`handle`),
  ADD KEY `idx_osqhuqqijuoxciwhnrhthasjngsqaptithcn` (`dateDeleted`),
  ADD KEY `fk_zxiwnbnpqspalopsuobbjmcluiddxkhwkthu` (`fieldLayoutId`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rpydrpdiashlnvpaczzogqxinlwwuzmzecjm` (`groupId`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_uttrplrnfndlrziyrjejcnjplstmxlfkfcvd` (`token`),
  ADD KEY `idx_ibhgysldptykfpvujcbgjywpisdgvozotxdt` (`expiryDate`);

--
-- Indexes for table `usergroups`
--
ALTER TABLE `usergroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ymefptjkbucfddoexhvfnuslkcfianhixjsh` (`handle`),
  ADD KEY `idx_blcykorbsxpxvtjgcyhzbrrcsrryvqiybusi` (`name`);

--
-- Indexes for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_zgvosqgjgugigiumwwldpgfwfmzqnikpvjrb` (`groupId`,`userId`),
  ADD KEY `idx_jqltwnpqhctvjazllgfdaydjjuirdznvncon` (`userId`);

--
-- Indexes for table `userpermissions`
--
ALTER TABLE `userpermissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_zjmcazyldawfdatujczczooruhvqzsujyapq` (`name`);

--
-- Indexes for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_lqgnavruxykcobvpfpvavuuxkjgmawgbcfrk` (`permissionId`,`groupId`),
  ADD KEY `idx_clxejunyflorbmdagbxazijlniuphyouoaic` (`groupId`);

--
-- Indexes for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_dyrnqrkjhjspadlpmpwamcgbrxfgvpqwmkjg` (`permissionId`,`userId`),
  ADD KEY `idx_lsdcypucpbayjrkpbrpgnfegdasclzjorgrc` (`userId`);

--
-- Indexes for table `userpreferences`
--
ALTER TABLE `userpreferences`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_wgdwavllzkyeqttjtflhpfxhzhbjrscqrmyx` (`active`),
  ADD KEY `idx_wsfbxtrtlrytjukswmggomicqgakbgzxwgbd` (`locked`),
  ADD KEY `idx_vhszxlrnhrfcvcuvxsgxwcxqjimaaozpqcie` (`pending`),
  ADD KEY `idx_kqyqkcibxqtrfhoxxtbxflpxgvimodsxvrka` (`suspended`),
  ADD KEY `idx_onfybxhsabotapdmpuxohgsgealowhbndzpl` (`verificationCode`),
  ADD KEY `idx_zphtuzcwryqtxshaigskeayskuehjuokwtno` (`email`),
  ADD KEY `idx_gzgpnlatnnrgtpbgpddrjotebmrdwwjocfsn` (`username`),
  ADD KEY `fk_frhbsryunaeivcvmuqtfotyhjpgtpqwnacza` (`photoId`);

--
-- Indexes for table `volumefolders`
--
ALTER TABLE `volumefolders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_qgorsiysepksgcwnyxgynopasejbfirfnvgy` (`name`,`parentId`,`volumeId`),
  ADD KEY `idx_kbewkiccjrbramnpvddcpzaqitycakakqarn` (`parentId`),
  ADD KEY `idx_knlegdxvqrjfavpvcuyraqhahckopqtznaqc` (`volumeId`);

--
-- Indexes for table `volumes`
--
ALTER TABLE `volumes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bkcqpzrbrogdjnlixvchxkaulumymqovkdqn` (`name`),
  ADD KEY `idx_gocnydxmkdyttdrxxmqhzlgqpsupgrmqbjmv` (`handle`),
  ADD KEY `idx_slfapssrrvsxpuxgiolodlazweiiaevdkjea` (`fieldLayoutId`),
  ADD KEY `idx_aoonbacqhqjfcdxbaadccplkaswwerffngbu` (`dateDeleted`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ipckivbotbpqwgudvkfjwshgoarvydxxafka` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `assetindexingsessions`
--
ALTER TABLE `assetindexingsessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categorygroups`
--
ALTER TABLE `categorygroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deprecationerrors`
--
ALTER TABLE `deprecationerrors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drafts`
--
ALTER TABLE `drafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `elements`
--
ALTER TABLE `elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `elements_sites`
--
ALTER TABLE `elements_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `entrytypes`
--
ALTER TABLE `entrytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fieldgroups`
--
ALTER TABLE `fieldgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `fieldlayouts`
--
ALTER TABLE `fieldlayouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `globalsets`
--
ALTER TABLE `globalsets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `gqlschemas`
--
ALTER TABLE `gqlschemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gqltokens`
--
ALTER TABLE `gqltokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imagetransformindex`
--
ALTER TABLE `imagetransformindex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `imagetransforms`
--
ALTER TABLE `imagetransforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `plugins`
--
ALTER TABLE `plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `queue`
--
ALTER TABLE `queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `relations`
--
ALTER TABLE `relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sections_sites`
--
ALTER TABLE `sections_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sitegroups`
--
ALTER TABLE `sitegroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `structureelements`
--
ALTER TABLE `structureelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `structures`
--
ALTER TABLE `structures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `systemmessages`
--
ALTER TABLE `systemmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taggroups`
--
ALTER TABLE `taggroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usergroups`
--
ALTER TABLE `usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions`
--
ALTER TABLE `userpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpreferences`
--
ALTER TABLE `userpreferences`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `volumefolders`
--
ALTER TABLE `volumefolders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `volumes`
--
ALTER TABLE `volumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `fk_cyymyvmbvyegjewqrxoicwiozzyvyyvlihfi` FOREIGN KEY (`ownerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_fxbwhpfjijgteakbwkkznywrpertameycieh` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `fk_ghinequtzgvcffyungzvxavbllzxiegxptrk` FOREIGN KEY (`pluginId`) REFERENCES `plugins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lbakhexvpipqezaytuyklithyipoawoahuzk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  ADD CONSTRAINT `fk_anderpzapsxtcdgmwgixyxzamqnltmbsjpwl` FOREIGN KEY (`sessionId`) REFERENCES `assetindexingsessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_qmriylnzcktwdvhuhjxajiqglmyaeklmqdlm` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `fk_egzvcwvoqvksdarrlksjdncytnejvajgrhzo` FOREIGN KEY (`folderId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lktndualfsdusxokjtwmyglgwmgnawjqofru` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_veeqkecimrjznymnwpazahydadsgeufjqemn` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_zvusdokxfoyftkmoyugeknyafbiumieamsyf` FOREIGN KEY (`uploaderId`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `fk_ieifsbdvltzhjspfdygsutfgykvkrrphfeka` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_kvamicbikaeoauysdcszdfhveiruqrfdbgdr` FOREIGN KEY (`parentId`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_zhrczwofixtkxulozbhkwbdgpnvfzhexfyug` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categorygroups`
--
ALTER TABLE `categorygroups`
  ADD CONSTRAINT `fk_luqgvndfpdswcfobpvcibkndtlzwbhrjjuer` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_zuvdfkubxdvtqgrspwyupltsgwuxciuotyts` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  ADD CONSTRAINT `fk_lunnobqfxzbuxreacxaiuosqequgftreatxr` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_rxllwhbwbuzgkbamhqcxyfdesefhhjgyhann` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `changedattributes`
--
ALTER TABLE `changedattributes`
  ADD CONSTRAINT `fk_gbjdsvutllfbtlaqxpopomjadaunnejlcpsd` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ijeyrecxcllcpbwftjqhnuwgqssqzgybiquv` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_jhimcdnqwgjlsmhrrxmionvgjbxpqlkhmcif` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `changedfields`
--
ALTER TABLE `changedfields`
  ADD CONSTRAINT `fk_ctzzfoxecorbtunqdwocicdsrqgtfryydflb` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_kezeeolgodgrpeuhyalsthihuchsuzubukzd` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_klpqifkdiundrktuyzhasrqreofhcfsiawug` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rhjvfgrqmrftrlhmcxilbfypbwaejydqtvxf` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `content`
--
ALTER TABLE `content`
  ADD CONSTRAINT `fk_bhfkfizomttvixagdjnjrrivwlgbnkxzdwti` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_qjzpvlmvxxnlgmpxryhwyddfnanlpvxnvukh` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  ADD CONSTRAINT `fk_sorrfkfrisawqauskpjjqysdqzqitzpzugte` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `drafts`
--
ALTER TABLE `drafts`
  ADD CONSTRAINT `fk_quoutdlecfrnnpfnjlgnxxpdkdtrxnncqagx` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vfqqowkmtcwwcmdghqvgeosielznbfdpfuag` FOREIGN KEY (`canonicalId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `elements`
--
ALTER TABLE `elements`
  ADD CONSTRAINT `fk_fjoaaywsawmcpzqvutllyfymzcaiqulexsge` FOREIGN KEY (`draftId`) REFERENCES `drafts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_irscbnrfbaytzejxikeioryzcviqzmpmzwfl` FOREIGN KEY (`canonicalId`) REFERENCES `elements` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_ujpwbzeejwgzzaaubmkrhrqfzimeqaojgnug` FOREIGN KEY (`revisionId`) REFERENCES `revisions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_wtkxtffobqqzblntrnbyjigfrxangelblvai` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `elements_sites`
--
ALTER TABLE `elements_sites`
  ADD CONSTRAINT `fk_ibqtxfunojxhmfrlutsxodzvxqujgzqbcegh` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_tdqwufnleleaeugurregrazyfcyiruyhaerx` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `entries`
--
ALTER TABLE `entries`
  ADD CONSTRAINT `fk_ajdujjiellvrbpphihbturbdpgtvifxfmyud` FOREIGN KEY (`parentId`) REFERENCES `entries` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_ecnbqgavhngaszwmxgwhnrwssgbsvanhnbqu` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ixyjdydbbdlzqxbqjofomgknjkgxhpuiofra` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ovihegluguiceinucoymoazdyqesubtatotx` FOREIGN KEY (`typeId`) REFERENCES `entrytypes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_sbambxebiqpiqnjdirwiwtyfytlgvkgdsnco` FOREIGN KEY (`authorId`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `entrytypes`
--
ALTER TABLE `entrytypes`
  ADD CONSTRAINT `fk_qprntrfhyzsvjgobivkziianyjibyxjtekds` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vwwxfpwgetseqpxfbuezkwwhythctnqialbw` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  ADD CONSTRAINT `fk_tltiklzrohgwkistrpfflorqkwjejihdzflz` FOREIGN KEY (`tabId`) REFERENCES `fieldlayouttabs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_uzwuwzjszwslzfzsonyqjipvbytdjjuwkzer` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ytntgtsvlsblajnoevyjtifntwwmqyvwhvsh` FOREIGN KEY (`layoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  ADD CONSTRAINT `fk_ezcejctwijbmmpxcovzrcnnazoaklsmmcnks` FOREIGN KEY (`layoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fields`
--
ALTER TABLE `fields`
  ADD CONSTRAINT `fk_psilbhybcvybtuxyszsljiqwzpkcegcfybbc` FOREIGN KEY (`groupId`) REFERENCES `fieldgroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `globalsets`
--
ALTER TABLE `globalsets`
  ADD CONSTRAINT `fk_bzpfriytntjxmraqogemefvlovkajhsmhhyn` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_zlvqtdqogcwrkbcpzfxtvwgnauiyxsmewavg` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `gqltokens`
--
ALTER TABLE `gqltokens`
  ADD CONSTRAINT `fk_preaxoczmpwhvhnuetyuonqxguuouzqeuyfy` FOREIGN KEY (`schemaId`) REFERENCES `gqlschemas` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `matrixblocks`
--
ALTER TABLE `matrixblocks`
  ADD CONSTRAINT `fk_iqwkaekixxhnnppcwvbiqrxrqikcnhabwqoc` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pbtxlsbkmgazbacilvwkvfchdthupqmxorxe` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_sgovrzoynbtxdfilolwsdygeofkrfimhnjqh` FOREIGN KEY (`typeId`) REFERENCES `matrixblocktypes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_xfrhjaoprdmyqjgcwmgsreioaonmuwgpjhxr` FOREIGN KEY (`primaryOwnerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `matrixblocks_owners`
--
ALTER TABLE `matrixblocks_owners`
  ADD CONSTRAINT `fk_neubdqcvvvdwffmikqibxdnjvmcbtnxkobub` FOREIGN KEY (`blockId`) REFERENCES `matrixblocks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_tmxlqgnswrondriiaitqguhidmzvugzohfga` FOREIGN KEY (`ownerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  ADD CONSTRAINT `fk_dgfxrjqbmaikzkljpvodxujislwrvgplzook` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_elrzmtfnqpagpxdaqombgbtyvrttxbtjftzu` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `relations`
--
ALTER TABLE `relations`
  ADD CONSTRAINT `fk_ldiasowreoyaovrsxtrpdvyvgjvtqvnbgymi` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_qwlerfhnjzgevmkqiijkfqhvdnjigvrqhndi` FOREIGN KEY (`sourceSiteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tukrlxkbrjukxcpdqxzwkdlekjhdcoaqhkyd` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `revisions`
--
ALTER TABLE `revisions`
  ADD CONSTRAINT `fk_sqfijvrgfoebbhsxeutquwhsxjohlknhviap` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_wjqryvozqampbmqcafqperkpxnaeoiadwaqc` FOREIGN KEY (`canonicalId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `fk_mmvqmbnzxsichphizoyrtlgfwzafohshmsmp` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sections_sites`
--
ALTER TABLE `sections_sites`
  ADD CONSTRAINT `fk_cifvioquxcvcioksadloeohhqtyosjpcfeuv` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_eiohafdoxkdstsrtzzxxdybfhwhivcsnfaug` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `fk_rqvjgkqzhxywrcfonwmiehtfxyjyobmlwmwm` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  ADD CONSTRAINT `fk_ibqntszpznlszkqehpxhmhrqzkrptkjtjofe` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sites`
--
ALTER TABLE `sites`
  ADD CONSTRAINT `fk_uoflgiqwjrcqsjwxxhxyuwdceclgnipwzwqc` FOREIGN KEY (`groupId`) REFERENCES `sitegroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `structureelements`
--
ALTER TABLE `structureelements`
  ADD CONSTRAINT `fk_pfxurkaczesrjcijlgqjlhknllrlgdvfawlg` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `taggroups`
--
ALTER TABLE `taggroups`
  ADD CONSTRAINT `fk_zxiwnbnpqspalopsuobbjmcluiddxkhwkthu` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `fk_oxlxqqfppkbvaujthdvqgzvmhhojxotvaoav` FOREIGN KEY (`groupId`) REFERENCES `taggroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_tatglztpmhafkujtjkvbktgooixdqnnuhfti` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  ADD CONSTRAINT `fk_pdxtwawwmfchibfbaaodjczflalbqvvwrmml` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vhtthibhycgkeqixqoumoitcvlzdglozvlqj` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  ADD CONSTRAINT `fk_pmegpjhiizkfnoxhydibdpfngoetjnzdxraa` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_zjjbhuuxshqqgmivqhcwhcrnjrndhdlwssfq` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  ADD CONSTRAINT `fk_hfdruoysachzsjsqaosrapfzfricaychfwui` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_mafadjbxxqssqrhqkzrjfbrccfwmcwliyfbd` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpreferences`
--
ALTER TABLE `userpreferences`
  ADD CONSTRAINT `fk_gwiczhoztmqctfrwswtzvzpypfjxtjldcqcj` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_frhbsryunaeivcvmuqtfotyhjpgtpqwnacza` FOREIGN KEY (`photoId`) REFERENCES `assets` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_pjovnyxpgreoaszxoatskyhhxzcosmspzcws` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `volumefolders`
--
ALTER TABLE `volumefolders`
  ADD CONSTRAINT `fk_bvbjyvnnivmsmnkiffgakvzjevuugwkylmrm` FOREIGN KEY (`parentId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_kicqtvzgllkcewekdqvjxwvbjdnnpcmjryvl` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `volumes`
--
ALTER TABLE `volumes`
  ADD CONSTRAINT `fk_vqqjynuxiqdjfhgomxgftglmiadxsrjbknpr` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `widgets`
--
ALTER TABLE `widgets`
  ADD CONSTRAINT `fk_iarbnbwcxqpfmcerzicbhnahwykigdjvmgot` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
