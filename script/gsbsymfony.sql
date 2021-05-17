-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 17 mai 2021 à 13:25
-- Version du serveur :  5.7.24
-- Version de PHP : 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gsbsymfony`
--

-- --------------------------------------------------------

--
-- Structure de la table `delegue`
--

CREATE TABLE `delegue` (
  `id` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `delegue`
--

INSERT INTO `delegue` (`id`, `password`, `username`) VALUES
(3, '$2y$13$B9SsazDdLZ02aRnuD.oRruurgcB2PQEUENI4zDklQht1DQZKIwp6G', 'lcantin');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `praticien`
--

CREATE TABLE `praticien` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `nom` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coef_notoriete` double NOT NULL,
  `coef_confiance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `praticien`
--

INSERT INTO `praticien` (`id`, `type_id`, `nom`, `prenom`, `adresse`, `cp`, `ville`, `coef_notoriete`, `coef_confiance`) VALUES
(101, 101, 'Marques', 'René', '3, rue de Allard\n69 579 Duvalnec', '96019', 'Delmas-sur-Jean', 3, 2),
(102, 102, 'Berger', 'Michèle', '66, chemin Madeleine Neveu\n11504 Dos Santos-sur-Mer', '35 175', 'Boulay-sur-Mer', 2, 2),
(103, 103, 'Weiss', 'Diane', '5, rue de Pierre\n43 151 LegerVille', '96 822', 'Olivier', 2, 3),
(104, 101, 'Roux', 'Éléonore', '70, boulevard Raymond Le Gall\n00519 Monnierboeuf', '43004', 'Gerard-sur-Aubert', 1, 3),
(105, 102, 'Salmon', 'Nath', '32, impasse Sylvie Lopez\n33294 Herveboeuf', '79 162', 'Letellierboeuf', 2, 3),
(106, 103, 'Pasquier', 'Xavier', '9, rue de Maillet\n91046 Aubry', '39561', 'Leclerc', 1, 2),
(107, 101, 'Cousin', 'Constance', '58, place Clement\n32 982 Maillardboeuf', '62 455', 'BousquetVille', 1, 1),
(108, 102, 'Klein', 'Dominique', '9, chemin Charles Samson\n24 330 Lebreton', '94 940', 'Descamps', 2, 3),
(109, 103, 'Maury', 'Alphonse', '15, place de Bonneau\n73 879 Devaux', '90615', 'Bruneau', 2, 2),
(110, 101, 'Gonzalez', 'Aurore', 'boulevard de Durand\n91653 Mercier', '94 809', 'Marchalnec', 2, 3),
(111, 102, 'Grondin', 'Frédéric', 'impasse Tristan Andre\n02708 Potier', '76 833', 'Baron', 3, 2),
(112, 103, 'Fischer', 'Sylvie', '4, chemin de Bonnet\n19189 Vincent', '05 580', 'Legros', 2, 3),
(113, 101, 'Bruneau', 'Lucas', 'impasse Thomas\n16508 Bazin-sur-Masson', '67 862', 'Barbe', 2, 1),
(114, 102, 'Denis', 'Isaac', '396, avenue Louis Thomas\n21605 ChretienBourg', '59 287', 'Leconte-sur-Leconte', 3, 3),
(115, 103, 'Bazin', 'Olivier', '65, avenue Lacroix\n58 922 Loiseaudan', '32 553', 'Julien', 2, 2),
(116, 101, 'Thibault', 'David', '201, rue Alexandre Garnier\n59 557 Potiernec', '40 281', 'Bouvet', 2, 3),
(117, 102, 'Duhamel', 'Agathe', '29, impasse Adrien Cohen\n69585 Faivre-sur-Roger', '09010', 'Regnier-sur-Mer', 3, 1),
(118, 103, 'Labbe', 'Nicolas', '455, rue de David\n16 238 Jolydan', '33 424', 'FerreiraVille', 1, 3),
(119, 101, 'Verdier', 'Christophe', '71, avenue de Rodrigues\n04455 GosselinVille', '14 466', 'Meyerdan', 1, 3),
(120, 102, 'Albert', 'Sylvie', '27, boulevard Lenoir\n63 260 Goncalves', '87 057', 'Le Rouxboeuf', 2, 1),
(121, 103, 'Robin', 'Claudine', '3, place Normand\n67 130 Lemaire', '45 739', 'Verdier', 1, 1),
(122, 101, 'Henry', 'Capucine', '4, chemin Lorraine Renard\n26 491 Jacquot', '50 377', 'Delaunay', 3, 1),
(123, 102, 'Schneider', 'Patrick', '227, place Constance Lefort\n83 171 Ribeiro', '04 001', 'Alexandre', 2, 3),
(124, 103, 'Philippe', 'Raymond', 'chemin David Durand\n51 689 Dumont', '88569', 'Francois', 2, 2),
(125, 101, 'Joubert', 'Henriette', '44, rue Patricia Ferrand\n16051 De Sousa-sur-Baron', '41256', 'Daniel-sur-Berthelot', 2, 1),
(126, 102, 'Buisson', 'William', '40, boulevard Élisabeth Faivre\n09 628 Robin-sur-Caron', '84 024', 'Poirier-sur-Breton', 2, 1),
(127, 103, 'Gimenez', 'Louise', '911, boulevard Augustin Lecomte\n04903 Mahe-sur-Diallo', '58153', 'Etienne', 1, 1),
(128, 101, 'Antoine', 'Marie', '24, rue Marine Diaz\n10675 Vallet-les-Bains', '42 271', 'Giraud', 1, 1),
(129, 102, 'Leroux', 'Isaac', '43, boulevard de Lefort\n35710 Tanguyboeuf', '78 358', 'Verdier', 3, 2),
(130, 103, 'Guyon', 'Benoît', '25, boulevard Thomas\n38 917 Benard-la-Forêt', '31 398', 'Bourgeois', 2, 3),
(131, 101, 'Gomes', 'Roger', '916, avenue Gros\n59 260 GalletVille', '68 710', 'GalletVille', 3, 3),
(132, 102, 'Rodrigues', 'Bernard', '29, chemin de Samson\n49 722 Lamy', '04321', 'Dupuis-sur-Guerin', 3, 1),
(133, 103, 'Thierry', 'Noël', '97, chemin Fabre\n61705 Georges', '05 176', 'Laine', 1, 1),
(134, 101, 'Diaz', 'Patrick', '184, rue Samson\n28 014 Delaunay', '31 263', 'Bazin', 1, 2),
(135, 102, 'Moreno', 'Denis', '47, chemin Sophie Prevost\n49441 Legendre', '67 245', 'Navarronec', 1, 1),
(136, 103, 'Renault', 'Rémy', '1, boulevard Alain Bonnet\n97392 Faure', '72 819', 'Carlier-sur-Navarro', 1, 3),
(137, 101, 'Bonnet', 'Adélaïde', '4, avenue de Pichon\n84 501 Fleury', '69 265', 'Begue', 3, 1),
(138, 102, 'Perrin', 'Tristan', '78, rue Boucher\n60 534 Legranddan', '78 506', 'Pons-sur-Lebrun', 2, 3),
(139, 103, 'Denis', 'Françoise', 'avenue Cohen\n09 110 Philippe-sur-Tessier', '16762', 'Arnaud', 3, 2),
(140, 101, 'Peltier', 'Hugues', '3, impasse Tessier\n12386 MarchalVille', '07 800', 'Millet', 3, 3),
(141, 102, 'Neveu', 'Lucy', '2, rue Carlier\n65803 Le Goff', '89 138', 'Buisson-sur-Nguyen', 3, 2),
(142, 103, 'Baron', 'Adélaïde', '62, rue de Fouquet\n30510 Lefort', '61 963', 'Dufour-les-Bains', 1, 2),
(143, 101, 'Rousseau', 'Benoît', '10, impasse Barbier\n09 519 Martineau-sur-Mer', '72347', 'PayetBourg', 2, 3),
(144, 102, 'Neveu', 'Agathe', 'avenue de Marie\n56200 Mariondan', '37110', 'LeleuVille', 2, 2),
(145, 103, 'Gonzalez', 'Margot', '35, boulevard Martin\n00349 Boulay-sur-Dumas', '21 700', 'Giraud', 3, 1),
(146, 101, 'Dos Santos', 'Roger', '86, place Duhamel\n39 304 Macenec', '20 805', 'Guillon', 2, 3),
(147, 102, 'Brunel', 'Daniel', '7, impasse Pierre Lombard\n37 971 Raynaud', '47187', 'Teixeiraboeuf', 1, 1),
(148, 103, 'Giraud', 'Émilie', '68, rue Grenier\n48 387 PrevostVille', '06 241', 'Vidal', 1, 1),
(149, 101, 'Morel', 'Alfred', '51, rue Chauvin\n32 689 Faurenec', '52085', 'Lefebvre', 3, 2),
(150, 102, 'Robin', 'Louise', 'chemin Nicolas\n97237 Allard', '15548', 'Fernandez', 1, 3),
(151, 103, 'Ferreira', 'Agathe', 'boulevard Guillot\n46 372 Neveu', '16081', 'MeunierVille', 1, 3),
(152, 101, 'Texier', 'Édith', '15, avenue Colette Gaillard\n05 696 Dupontboeuf', '49755', 'Garcia', 2, 3),
(153, 102, 'Rossi', 'Zacharie', '51, avenue de Lambert\n37126 Gros', '48153', 'Ferreira', 3, 1),
(154, 103, 'Renaud', 'William', '55, rue Leclercq\n88 543 Lelievre-la-Forêt', '50 935', 'Guibert-sur-Marin', 2, 1),
(155, 101, 'Girard', 'Rémy', '27, impasse de Clerc\n01 143 Marchal', '60793', 'Carpentier-sur-Mer', 1, 2),
(156, 102, 'Chevalier', 'Christophe', '561, impasse de Boucher\n88 515 Rousseau-sur-Simon', '24 392', 'Robin', 3, 2),
(157, 103, 'Hardy', 'Olivier', '17, rue de Verdier\n80 890 Mathieu', '30 707', 'Coste', 1, 2),
(158, 101, 'Humbert', 'Pénélope', '99, rue Hubert\n54 882 Clerc', '42 623', 'Tessiernec', 3, 1),
(159, 102, 'Fabre', 'Maurice', '168, chemin de Gimenez\n40 793 Sauvage', '48595', 'Meyer-la-Forêt', 1, 3),
(160, 103, 'Hamon', 'Cécile', '65, rue Laurent Adam\n16 157 RiouVille', '90363', 'ChevalierBourg', 1, 1),
(161, 101, 'Lopez', 'Sébastien', '59, impasse Albert\n40459 Louis-sur-Chretien', '58751', 'Fabrenec', 3, 3),
(162, 102, 'De Oliveira', 'Catherine', '7, rue de Lemonnier\n31 546 Daniel', '60 490', 'Marechal', 1, 1),
(163, 103, 'Le Gall', 'Bernard', '74, avenue de Marty\n97 831 Allard', '36148', 'RousseauBourg', 1, 2),
(164, 101, 'Dubois', 'Thibaut', '186, place Charles Giraud\n51858 Ramos-la-Forêt', '31 198', 'NormandBourg', 1, 1),
(165, 102, 'Fischer', 'Franck', '72, place Raymond\n09 417 Cousin', '10 208', 'Masse', 3, 2),
(166, 103, 'Lebrun', 'Maurice', 'impasse de Rossi\n76 939 Perezboeuf', '36 115', 'Ollivier-sur-Antoine', 3, 1),
(167, 101, 'Hebert', 'Adèle', '80, rue de Techer\n28987 Lopes', '52925', 'Le Goff-les-Bains', 1, 1),
(168, 102, 'Dupont', 'Marine', '228, chemin Agnès Gay\n80395 Launay', '22923', 'Pons', 3, 2),
(169, 103, 'Mathieu', 'Laurent', '918, boulevard de Perrin\n04 849 Le Roux-sur-Martineau', '28240', 'Briand', 3, 2),
(170, 101, 'Bernier', 'Roland', 'boulevard de Auger\n23761 Lecoqnec', '81 061', 'Reynaud', 1, 1),
(171, 102, 'Richard', 'Alexandria', '399, boulevard de Courtois\n63650 Barthelemyboeuf', '34691', 'Pagesdan', 2, 1),
(172, 103, 'Carre', 'Jeannine', '8, rue Launay\n83 838 Grenier-sur-Julien', '93 549', 'Lefevre-sur-Millet', 2, 1),
(173, 101, 'Munoz', 'Benjamin', '14, avenue de Legros\n33634 Henry-sur-Mer', '33513', 'Simon-sur-Gilles', 2, 2),
(174, 102, 'Texier', 'Aurore', 'impasse de Alves\n61556 LevyVille', '16337', 'Loiseau-la-Forêt', 1, 2),
(175, 103, 'Barbier', 'Valentine', '989, chemin Patricia Besnard\n42 852 Rolland', '56088', 'Parent', 2, 2),
(176, 101, 'Fischer', 'Gérard', '949, boulevard Hebert\n39 588 Sauvage-la-Forêt', '52402', 'Pasquier', 2, 2),
(177, 102, 'Pires', 'Aurélie', '14, rue Hernandez\n48 508 Pelletier', '14 749', 'Albert-la-Forêt', 2, 2),
(178, 103, 'Neveu', 'Émile', 'rue Gilles Bruneau\n27 183 Jacob', '12386', 'Moreno', 1, 3),
(179, 101, 'Bazin', 'Arnaude', '733, avenue Victor Imbert\n50 949 Fouquet', '32277', 'Barthelemy-sur-Raynaud', 2, 1),
(180, 102, 'Perrin', 'Lucie', '67, place de Marchal\n12 857 DupreVille', '33027', 'Ferrandboeuf', 1, 1),
(181, 103, 'Gregoire', 'Jean', '474, place Ferreira\n49 768 Renard-sur-Lucas', '48204', 'BaudryVille', 1, 1),
(182, 101, 'Duval', 'Bernard', '11, impasse Aurélie Seguin\n53403 Thomasnec', '95 389', 'Benard', 3, 1),
(183, 102, 'Bazin', 'Colette', 'avenue de Marques\n45907 Legros', '83 207', 'Munoz', 1, 2),
(184, 103, 'Thomas', 'Gérard', '76, avenue Frédéric Dupont\n29 074 Hamel', '87780', 'Gaudin', 1, 3),
(185, 101, 'Roger', 'Valentine', '75, rue Bonneau\n25 945 De Oliveira', '36990', 'Lebrun', 2, 3),
(186, 102, 'Imbert', 'Julien', '52, rue Herve\n94 530 Blot', '07825', 'Bouchet', 3, 3),
(187, 103, 'Perez', 'Gérard', '21, boulevard Hugues Michaud\n35980 Diallo', '06409', 'Jean', 3, 2),
(188, 101, 'Navarro', 'Alex', '78, avenue Marchal\n02677 Michaud', '60 054', 'Mallet', 2, 3),
(189, 102, 'De Sousa', 'Maurice', '58, boulevard Begue\n51882 Gregoire-la-Forêt', '68644', 'Chretiennec', 1, 3),
(190, 103, 'Sauvage', 'Diane', '89, avenue de Morvan\n59 985 Alves', '99 276', 'Andre-sur-Chauvin', 1, 3),
(191, 101, 'Martinez', 'Eugène', '68, boulevard de Arnaud\n43245 OllivierVille', '84 325', 'Bigot', 2, 2),
(192, 102, 'Voisin', 'Emmanuel', 'impasse de Devaux\n61661 Lacombe-la-Forêt', '14654', 'Guillon', 3, 2),
(193, 103, 'Moulin', 'Antoine', '1, impasse Nicolas\n47 980 Alexandre', '04 885', 'Launay', 3, 2),
(194, 101, 'Ruiz', 'Jean', '5, avenue de Laurent\n78 211 Brunet', '40 638', 'Pons-sur-Mer', 3, 3),
(195, 102, 'Roger', 'Denise', '72, place Henriette Parent\n48 705 Brun', '54333', 'Jean', 2, 2),
(196, 103, 'Baron', 'Bernard', '1, avenue de Royer\n11 744 Charpentier', '39 961', 'Lopes', 3, 1),
(197, 101, 'Diallo', 'Gabriel', '97, avenue de Payet\n12153 Normand', '18005', 'Gerard', 3, 1),
(198, 102, 'Vidal', 'Anne', '69, impasse Thierry Thibault\n43 176 Bouvier', '09 043', 'Morel', 1, 1),
(199, 103, 'Meyer', 'Alix', 'place Antoine Maurice\n19513 Renault', '28105', 'Aubert', 1, 2),
(200, 101, 'Launay', 'Eugène', '986, place De Sousa\n10 386 Blot', '05044', 'Leclercboeuf', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `rapport_visite`
--

CREATE TABLE `rapport_visite` (
  `id` int(11) NOT NULL,
  `visiteur_id` int(11) NOT NULL,
  `bilan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_visite` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_rapport` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `etat` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `rapport_visite`
--

INSERT INTO `rapport_visite` (`id`, `visiteur_id`, `bilan`, `date_visite`, `date_rapport`, `etat`) VALUES
(1, 1, 'A quae libero soluta fugit. Facere dicta ut similique repellat consequuntur repellendus. Earum corrupti aut et temporibus earum accusamus.', '1972-04-07', '1982-06-12', 0),
(2, 2, 'Velit fuga fugiat nostrum voluptas. Ut aut sunt adipisci ad voluptatem voluptas quo. Numquam culpa architecto ut occaecati sit fugit qui dolorem.', '1975-07-01', '1997-12-17', 1),
(3, 3, 'Laudantium ea voluptatum esse. Est hic dolores sint ratione ea nesciunt doloribus quisquam. Animi suscipit magni dolores doloremque voluptates sunt. Eligendi sint explicabo iusto mollitia reprehenderit.', '1986-12-25', '2008-04-05', 0),
(4, 1, 'Quam ex eum numquam nulla praesentium recusandae. Molestias quis sit reprehenderit fugiat vitae sunt. Officia temporibus alias impedit quibusdam ducimus. Illum deleniti delectus sit. Similique asperiores omnis officiis voluptates libero mollitia.', '2011-11-02', '2001-09-25', 1),
(5, 2, 'Dolores nam accusamus quo aut. Laborum pariatur dolorem dolor facilis ducimus vero. Quia quo expedita aliquid debitis maxime vel qui.', '1972-09-20', '2013-03-14', 1),
(6, 3, 'Ut nisi voluptatem aliquid ut incidunt. Quae officia aut velit iure voluptatem aut et.', '1992-03-03', '2012-02-24', 1),
(7, 1, 'Excepturi omnis placeat voluptatum voluptatum unde eum dolorum. Earum architecto magnam voluptatem repudiandae culpa voluptas et. Ratione perferendis non reiciendis sit dolor.', '2010-02-22', '2009-09-14', 1),
(8, 2, 'Sunt ut at unde sunt est totam aliquid. Et dolore similique accusamus eum suscipit et. Quaerat nobis ut id alias nihil. Officia unde vel sint et.', '1980-11-25', '2012-06-12', 0),
(9, 3, 'Voluptatem omnis voluptatem non modi recusandae ducimus modi saepe. Architecto expedita aut doloremque numquam amet. Voluptas corrupti sit sit ut. Voluptas dolores architecto a temporibus neque. Eligendi eum ipsa perferendis ut.', '1985-10-12', '2009-05-24', 1),
(10, 1, 'Illum animi delectus fugiat nesciunt. Voluptatem qui nemo odit nihil sed nisi delectus. Nulla laudantium voluptatum ut ab eum doloremque qui.', '1985-07-24', '1992-11-04', 1),
(11, 2, 'Voluptates nulla minima libero est soluta. Numquam repudiandae dolorem doloribus iusto. Sapiente reprehenderit voluptas alias. Cum sunt sed qui voluptates molestiae. Libero alias assumenda ut sit. Vitae nam fugit sed rem nesciunt.', '2006-05-24', '2020-01-03', 1),
(12, 3, 'Perspiciatis amet aut provident unde eaque. Repellendus quo accusantium aut repellat saepe asperiores dolores. Aut sapiente et eum. Consequatur dicta excepturi facere sed aut sit itaque.', '1991-08-11', '2014-02-05', 1),
(13, 1, 'Incidunt velit nihil et sit quasi laborum voluptas. Et ex minus sed quis saepe est. Deserunt ipsum eveniet molestias pariatur impedit quaerat ea optio.', '1994-03-22', '1976-08-31', 0),
(14, 2, 'Quod quis id voluptas non laboriosam est. Ut odit voluptatem asperiores aliquid. Odit natus illum labore quia culpa aut.', '1972-09-12', '2011-06-24', 1),
(15, 3, 'Sequi et et sed ut voluptatem sapiente atque eius. Excepturi voluptas exercitationem ut accusantium maiores. Non perspiciatis aliquam in amet dolore commodi.', '2010-11-06', '2010-03-13', 0),
(16, 1, 'Ea nisi voluptatibus reprehenderit omnis culpa. Fuga ad ea nihil non. Commodi quisquam aspernatur quis officia.', '2012-04-29', '2011-10-20', 1),
(17, 2, 'Quasi neque voluptatem tenetur sequi aliquam quis. Ratione quas nobis voluptates nam. Architecto sed ut corporis sed. Aut qui quam sit ad aut. Perspiciatis voluptatem placeat eius sed.', '2004-03-16', '1978-06-30', 0),
(18, 3, 'Alias commodi qui autem dolorum id veritatis ab. Eveniet veritatis et labore cum. Quo porro consequuntur consequatur rerum provident.', '1990-07-02', '1989-02-12', 1),
(19, 1, 'Ut quia qui autem exercitationem nisi labore. Nisi et nisi possimus. Aut veniam ut voluptatem deleniti possimus nam.', '2008-06-26', '1997-10-18', 0),
(20, 2, 'Asperiores quos iusto voluptatem voluptatum. Iusto corrupti qui consequatur et in. Quasi eius ut eveniet sint perferendis error quos. At itaque consequatur architecto dolor nostrum velit deleniti.', '2019-03-28', '2002-04-10', 0),
(21, 3, 'Velit neque in nam tempore. Qui aperiam deleniti quis aut ea. Ipsa ab voluptas eum rerum et ut porro voluptatum. Sapiente cumque fugit est odio sint non.', '1976-04-11', '1981-01-12', 1),
(22, 1, 'Eum id ab alias. Temporibus sit tenetur vel quis repellat autem. Quas odio voluptatem quo quae. Dicta vel modi adipisci qui est veniam. Ad odio ab in sint enim a voluptatem. Est qui iste voluptas dolores et voluptas natus.', '1979-11-23', '1981-06-13', 0),
(23, 2, 'Ab quo reprehenderit maxime. Autem ipsam recusandae quis ut nihil odio. Repellat natus dolorem molestiae aut. Modi tempora ullam molestiae molestiae. Dignissimos amet vitae aut nulla.', '1982-09-10', '1986-10-30', 1),
(24, 3, 'Delectus quo explicabo sint unde. Dolores id consequuntur suscipit ad voluptatum enim. Nulla rerum aliquam recusandae sed. Ad est ad quia et illum in. Quod dolores omnis deserunt facilis quos sint sed. Deleniti maiores et impedit et quos.', '1983-02-25', '1994-04-08', 0),
(25, 1, 'Et autem aut omnis quos ut. Nihil ad non delectus et. Quod libero et aut necessitatibus voluptas qui deserunt adipisci. Eum quis tempore aut sed. Maxime recusandae corrupti esse dolor nostrum.', '2002-08-06', '1982-07-10', 0),
(26, 2, 'Eos eos quidem aut natus molestias qui totam. Labore autem qui totam. Laudantium eum at perspiciatis consectetur omnis in aut. Quis non cupiditate quia blanditiis sit.', '1995-02-08', '2009-01-16', 0),
(27, 3, 'Quasi voluptas earum laudantium. Veniam facere sit reiciendis veniam sint. Numquam laudantium dolorum non qui cum repellendus voluptas placeat. Totam temporibus sapiente assumenda et unde.', '2001-10-20', '1985-04-30', 0),
(28, 1, 'Quam perspiciatis exercitationem aspernatur. Voluptas qui laboriosam modi culpa. Repellat quibusdam quis nam aut. Doloremque quia voluptas hic fugit. Amet aut repellendus eum veniam ut. Ab omnis a sunt molestias ut reiciendis aut.', '1992-01-09', '2001-11-26', 1),
(29, 2, 'Placeat sit inventore hic numquam fugit. Fugiat voluptatum et iste odio ex perspiciatis. Excepturi tenetur consequuntur aliquid vel ut suscipit. Ducimus optio repellendus deleniti inventore soluta quod. Doloremque ut tempora nesciunt natus autem.', '1994-11-24', '1975-03-14', 1),
(30, 3, 'Velit quae laboriosam debitis iste. Rerum laboriosam hic natus ut id. Beatae voluptatibus in accusantium rerum debitis qui sint. Quod velit suscipit architecto dolor dicta qui dolor.', '1986-09-04', '1980-08-30', 1),
(31, 1, 'Assumenda iure odit ut. Delectus accusamus quia aperiam quod qui. Et blanditiis soluta iusto consequatur voluptatibus esse possimus.', '1998-08-03', '2007-01-18', 1),
(32, 2, 'Enim est et autem dolor sed. Dicta optio itaque sed consectetur. Voluptas eligendi quia repellendus aliquid hic.', '2008-12-23', '2015-12-08', 1),
(33, 3, 'Nulla mollitia officiis ut expedita repellat vero eum. At eaque voluptas aut nulla ut sed deserunt. Excepturi porro eum aut voluptate ea assumenda aliquam. Ab eum impedit possimus commodi laudantium. Temporibus sit aut ratione doloribus nulla.', '2020-05-30', '1970-01-11', 1),
(34, 1, 'Quos sed totam atque ex omnis. Dignissimos ullam rem natus dolor id perspiciatis porro omnis. Unde explicabo rerum tempore quod et odit. Qui voluptas sunt distinctio qui eveniet ab.', '2003-05-12', '2005-11-10', 1),
(35, 2, 'Provident omnis in eius ut dicta. Itaque sed ut vitae et ex. Quo voluptatem omnis omnis quisquam. Qui at a adipisci eum. Aspernatur aperiam est sint. Qui quam in eos excepturi repellendus. Esse hic et provident.', '1973-10-14', '1996-08-20', 0),
(36, 3, 'Non et omnis molestiae in accusantium molestiae rem autem. Sed qui illo autem voluptatibus labore. Maxime officia rerum non inventore. Velit facere aut voluptas aperiam ipsum.', '2016-05-09', '2009-06-04', 0),
(37, 1, 'Ut et minus deserunt. Consequuntur itaque dolor illo harum. Praesentium dolore qui dolores aliquam laborum voluptas dolores aspernatur.', '1970-08-17', '2012-10-21', 1),
(38, 2, 'Consectetur modi minus voluptates et eligendi. Vel asperiores amet sint vero ipsam est quo. Illo alias repudiandae exercitationem totam sunt ut. Ipsam ut soluta expedita et sed.', '2007-10-10', '1996-06-24', 0),
(39, 3, 'Hic cum eligendi dolorem corporis. Eum id sit maiores alias sed quibusdam. Omnis et in sunt eaque perferendis magnam aliquam.', '1983-10-27', '2019-10-26', 0),
(40, 1, 'Placeat est sapiente iure excepturi et officia. Molestiae nemo assumenda soluta natus. Dolor voluptate error non sint dicta nihil ex. Odio aspernatur architecto ut nobis atque corrupti hic. Excepturi sed architecto magni explicabo.', '2012-05-06', '2009-01-18', 0),
(41, 2, 'Error aliquid omnis aut et. Esse culpa aut sint cum consequatur cumque. Consequatur nemo soluta officia nesciunt placeat reiciendis aut. Vero vel laboriosam asperiores rem sed ut iste.', '1972-04-26', '2009-03-11', 1),
(42, 3, 'Amet eaque dolorem et. Suscipit commodi vero et tempore. Soluta quasi eos ea et alias. Sapiente minima possimus ea ratione facilis rem iusto.', '2011-01-29', '2007-04-23', 1),
(43, 1, 'Odio quod natus et maxime modi nihil enim rerum. Odit voluptatem labore saepe ea amet. Soluta ducimus beatae dolorem maiores perferendis.', '2008-06-06', '1971-11-28', 1),
(44, 2, 'Facilis aut accusantium corrupti magni molestias voluptatem. Quo similique commodi at. Dolorem quae et aspernatur aspernatur officiis. Voluptatem quibusdam unde rerum facere nobis quam.', '1987-01-03', '1971-05-25', 0),
(45, 3, 'Voluptatum impedit id et qui pariatur aut omnis. Architecto labore voluptatem cumque et deleniti animi consectetur. Quae excepturi quo ea et quo.', '2004-08-24', '1981-10-05', 0),
(46, 1, 'Deleniti quis perspiciatis est autem ab. Quos modi eius atque voluptatem. Qui molestiae id cumque esse. Sit enim incidunt magni consectetur maxime et aperiam.', '2010-01-28', '1973-01-13', 1),
(47, 2, 'Facilis deserunt qui ipsum vitae ad eligendi doloremque. Qui et excepturi quos animi. Cupiditate sint esse est perferendis nostrum. Facilis aut aliquid ullam iusto facere.', '1975-03-18', '1978-09-16', 0),
(48, 3, 'Dolores consequatur et reprehenderit nulla. Et placeat non nihil repellendus repudiandae cumque consectetur. Modi tempore aut veritatis et.', '2014-01-08', '2016-09-14', 1),
(49, 1, 'Eligendi eos quo quisquam et ex qui modi sunt. Repellendus explicabo voluptate officia quaerat assumenda dicta natus ex. Quasi quam dolorem voluptatem. Maiores sed commodi non animi officiis aliquam et. Accusantium quia quis iusto quasi ut amet.', '2017-01-08', '1991-10-26', 1),
(50, 2, 'Et ipsa recusandae est non. Nisi est quasi totam nobis. Et maiores consequatur officiis officia. Praesentium cupiditate assumenda qui voluptas quia asperiores consequatur quidem.', '1974-03-20', '1988-08-26', 1),
(51, 3, 'Asperiores tempore minima qui sed repudiandae nemo et. Quae rem dolorem ipsam minus nisi excepturi. Ea quaerat facere aut repudiandae provident qui aut. Soluta doloremque dolor dolores et earum. Dolorem excepturi placeat nobis aut deserunt velit nemo.', '2013-12-04', '2009-06-29', 0),
(52, 1, 'Exercitationem officiis et non omnis. Ut explicabo reprehenderit distinctio at. Deserunt in accusantium ducimus occaecati quidem. Est fugiat voluptas quos doloribus nisi rerum praesentium.', '1987-09-03', '1991-04-10', 1),
(53, 2, 'Dolore incidunt sunt non odit id occaecati. Voluptatum assumenda saepe porro corrupti ipsa. Nobis fugiat eum eaque repellat. Qui numquam porro et dolorem est. Quod ea quis est. Aut delectus reiciendis quo quos vel reiciendis commodi.', '1982-09-29', '1976-02-04', 1),
(54, 3, 'Et magnam odio sequi fugit. Aut occaecati voluptatem qui aliquam. Non hic ut neque eaque repellat quisquam. Omnis quia doloribus dolore. Ut reprehenderit eaque molestias. Rerum minus suscipit quia labore.', '1975-11-23', '1980-07-29', 0),
(55, 1, 'Quis et illo ipsum autem et accusamus. Rem aliquam vel excepturi assumenda dolore ipsum. Error et quia voluptatem.', '1996-12-15', '1994-04-25', 0),
(56, 2, 'Voluptatum voluptas nobis eos et. Repellendus dolores eum sed ipsum. Ut similique eveniet nam corrupti aliquid.', '1996-04-28', '2001-12-05', 0),
(57, 3, 'Maxime eum voluptas itaque sed soluta. Nulla provident neque qui est tempore. Enim autem ut alias sequi facilis illo.', '1982-10-30', '2016-07-08', 0),
(58, 1, 'Quis praesentium nisi tempora id nobis natus. In eligendi rerum suscipit quaerat sit. Rerum sit dignissimos aut porro eum. Voluptas sit iure repellat voluptatem occaecati.', '1997-04-04', '1991-02-24', 1),
(59, 2, 'Hic sed repellendus et ex reiciendis dicta. Voluptatibus accusamus cum deleniti est hic. Voluptatem sit velit pariatur voluptas.', '2018-10-16', '1988-03-27', 0),
(60, 3, 'Ut quasi facilis omnis laboriosam omnis non delectus. Itaque tempora necessitatibus provident sapiente.', '2005-02-24', '1985-01-10', 1),
(61, 1, 'Aperiam optio distinctio laboriosam assumenda neque ducimus tempore iste. Odit vero omnis aliquid. Saepe qui optio voluptas nostrum et. Odio hic laboriosam accusamus est laudantium. Dolorum sapiente voluptas nisi quae quae tenetur quidem.', '1993-04-16', '2002-04-29', 0),
(62, 2, 'Ad quis eius unde nesciunt. Alias voluptate non molestias blanditiis. Ut cumque ut non eaque distinctio. Voluptatem esse et minima explicabo. Harum delectus nesciunt totam quod qui praesentium.', '2005-01-07', '1972-12-24', 1),
(63, 3, 'Nihil est ipsam occaecati molestias esse ullam deleniti. Eveniet cum ut voluptas placeat laudantium et et. Omnis est suscipit in voluptatem. Vel pariatur aut ullam.', '1996-01-27', '2013-08-22', 1),
(64, 1, 'Exercitationem aut modi officia hic. Ipsum sint blanditiis maiores est officiis. Distinctio non molestias provident aut. Nemo tempore quisquam nihil dolorem ullam iure.', '1990-09-13', '2014-10-27', 1),
(65, 2, 'Debitis hic quisquam qui sed aut quas pariatur. Molestiae praesentium maxime veritatis architecto sed quasi et et. Porro laboriosam quia saepe laudantium deserunt ducimus explicabo. In dolorum sed impedit porro dicta sit corporis.', '2007-02-14', '2020-01-24', 0),
(66, 3, 'Quis beatae nulla eos nobis at. Quae est ut libero omnis. Vero exercitationem iste vel deleniti porro et autem. Est magnam itaque alias corrupti placeat aut.', '1981-01-19', '1983-05-02', 0),
(67, 1, 'Accusamus laborum amet veritatis laboriosam minima. Tempora vel repudiandae est quidem sunt illum cumque est. Id reiciendis rerum repudiandae consequuntur voluptatibus eum iste.', '2007-10-16', '1990-03-26', 0),
(68, 2, 'Nesciunt autem ut officia. Maiores nisi doloribus distinctio culpa. Ut qui soluta et perspiciatis voluptatem aut. Ex repellendus reiciendis voluptatem et velit debitis. Necessitatibus et dolorum aut nobis.', '2002-07-12', '1976-03-19', 0),
(69, 3, 'Enim alias magnam vero et. Cumque soluta odio cum quia vel. Omnis aut et animi facere. Repudiandae deserunt vitae quas qui tempora est ut pariatur.', '1974-01-16', '1971-03-05', 0),
(70, 1, 'At est eum enim voluptatem voluptate porro. Earum id quis error dolor ut. Vero aspernatur animi blanditiis.', '2013-08-10', '2019-10-14', 0),
(71, 2, 'Ut ea est ut perspiciatis molestiae. Asperiores quia quo iste est esse. Quae ducimus voluptatum et numquam.', '2008-05-11', '1997-08-20', 0),
(72, 3, 'Illo et consequatur possimus sed voluptates. Quis aut quam quia qui ut. Asperiores et ut eaque ratione atque voluptatum. Esse et qui quia inventore tempore minima explicabo. Incidunt qui quaerat eveniet nam doloribus.', '1974-01-25', '1996-10-26', 1),
(73, 1, 'Dicta ducimus architecto voluptas soluta eum fugit et. Id sapiente quo dolorem non quae itaque voluptas. Ut voluptatibus eius illo et qui. Qui at totam at ea. Dolorum sunt harum beatae ea tempora nisi ut et. Voluptas nostrum et numquam dicta.', '2011-12-03', '2005-12-31', 0),
(74, 2, 'Unde neque maiores iusto debitis. Temporibus tempora eveniet labore expedita autem est dolorum deserunt. Et placeat possimus eius est non voluptatem. Nesciunt voluptatem repellat et ea vel cupiditate voluptate.', '2010-01-01', '1994-10-22', 0),
(75, 3, 'Quia ea omnis et sint assumenda qui. Blanditiis qui et et eveniet cumque. Accusamus expedita vero dolores eaque est quo. Amet et repudiandae aut harum dolore et illo.', '1975-06-28', '2016-03-22', 1),
(76, 1, 'Qui quidem autem facere minima similique nam tempore dicta. Non voluptas suscipit temporibus laborum. Eius eos rerum non aliquid velit molestias adipisci.', '1973-07-20', '1984-07-24', 0),
(77, 2, 'Voluptate quia rem consectetur dolore. Quia corrupti molestias maxime magni. Ut quia ut qui ex.', '1994-10-13', '1973-09-01', 1),
(78, 3, 'Velit est culpa inventore non voluptatem est nobis. Voluptate a reiciendis blanditiis labore sit dolor. In nihil enim rem quibusdam sequi dolore. Sunt voluptatem aut cupiditate at.', '1979-06-17', '2021-01-15', 1),
(79, 1, 'Voluptas dolores culpa distinctio dolorem dicta. Sapiente odio voluptatem aut expedita aut totam consectetur. Ut mollitia accusantium voluptas cumque. Magni ut quia nam error. Deserunt saepe non et adipisci eveniet reprehenderit voluptatem.', '2012-09-14', '1975-03-11', 0),
(80, 2, 'Sed maiores magni et. A et doloribus laudantium deserunt asperiores maiores dignissimos. Aspernatur eum aut nesciunt fuga et quas alias. Maiores harum omnis non et. Fuga ipsa repellat quod culpa sit. Saepe aut quae qui adipisci soluta iste.', '2010-01-23', '1976-03-15', 0),
(81, 3, 'At expedita at repudiandae est porro nihil id. In natus vel beatae perspiciatis. Rerum neque ducimus dolores illo quo. Accusamus assumenda provident voluptate dolores dolorem.', '1978-12-17', '2018-03-08', 1),
(82, 1, 'Autem voluptates quas autem minus ex quia tempore. Quasi consequatur eveniet quisquam voluptas. Ratione tempore quasi sapiente aperiam cum rem nostrum. Consectetur sit dolorem consequatur aspernatur aperiam vel.', '2007-07-11', '2011-07-02', 1),
(83, 2, 'Reiciendis ipsam debitis tempora esse. Illum necessitatibus iusto ut saepe omnis. Omnis beatae ea enim ut et aut et.', '1990-03-28', '2004-10-07', 0),
(84, 3, 'Ut sunt sit atque ullam rerum. Consectetur quam quia dolore autem nisi. Ab est non eum quo. Voluptatem nisi et voluptas quaerat. Atque delectus libero voluptas quia maxime. Dolorum ut tenetur blanditiis quos. Dignissimos et voluptas amet ipsam nesciunt.', '1985-07-07', '2017-02-16', 1),
(85, 1, 'Dignissimos quia nobis cumque eum ipsum quibusdam voluptate. Fugiat maxime ipsam aut aliquid nemo. Vitae nisi doloremque optio enim alias necessitatibus aut. Officia quasi dolores accusantium deserunt sint voluptates itaque.', '1993-11-23', '1986-08-31', 1),
(86, 2, 'Voluptates nulla reprehenderit optio odio eveniet facilis. Itaque sed alias aut dignissimos sint quos et. Beatae est harum voluptatem iusto possimus odio accusantium porro. Et blanditiis qui quisquam eos non aut nihil.', '1983-08-02', '2014-09-05', 0),
(87, 3, 'Perspiciatis quas incidunt maiores minima modi. Expedita et natus sit molestias deleniti placeat. Sequi voluptatem est veritatis doloribus. Aut adipisci rem earum ab laborum impedit.', '2018-06-20', '1972-06-23', 1),
(88, 1, 'Velit numquam sit qui corporis eum explicabo dicta accusantium. Cumque eius nemo consequatur iste. Iusto dolorem incidunt natus facere reprehenderit qui minima.', '2000-10-22', '2000-07-03', 0),
(89, 2, 'Eveniet sapiente vero animi et sed qui. Et et culpa dolorem commodi voluptates sequi reprehenderit. Odit minima ad inventore veniam. Minima qui nulla facere incidunt aut.', '1984-03-30', '1977-05-25', 1),
(90, 3, 'Aliquam iusto dolore id reiciendis similique voluptas nesciunt. At sed qui neque autem. Cum qui occaecati amet neque id temporibus ea. Deserunt inventore nam sint voluptas. Aut accusantium numquam dolor dolores.', '2011-03-24', '1998-03-02', 0),
(91, 1, 'Quae eum facilis ratione vitae sunt beatae odit dolores. Aut illum error similique rem. Quae enim velit iste ipsa rerum. Tempora recusandae doloribus deleniti veritatis et eum ea non.', '1982-03-16', '1980-02-26', 1),
(92, 2, 'Aut repudiandae tenetur est numquam blanditiis amet quis. Sint beatae vitae tempore possimus molestiae eos. Commodi est iure quis. Corporis corrupti vel iste.', '2013-09-16', '1984-04-29', 1),
(93, 3, 'Corrupti minima harum omnis. Architecto similique consequuntur impedit sint omnis expedita. Quae repellat porro ipsum est earum cumque qui quia.', '1977-03-06', '2006-02-03', 0),
(94, 1, 'Quas dolor voluptas voluptate sint culpa non officia. Consequatur commodi ratione quia. Et et ut earum accusantium eos. Consequatur et consequuntur expedita distinctio ad totam quidem.', '1980-10-11', '2008-05-20', 1),
(95, 2, 'Ea sed aut modi ipsam rem mollitia. Delectus placeat deleniti eos nam deserunt veniam. Mollitia ut assumenda repellat quia ut laborum reprehenderit. Quia iure velit sunt quisquam repellat dolore harum.', '1999-11-19', '2010-09-24', 1),
(96, 3, 'Similique totam qui nihil magnam ut sed consequatur sed. Molestias et beatae nulla dolores doloribus et. Libero deserunt dicta eaque. Consequatur sint voluptates voluptatem reiciendis.', '2020-11-26', '1977-07-15', 1),
(97, 1, 'Et commodi aliquid cum quisquam sit aut. Nostrum qui sed quasi corrupti. Id odio doloribus delectus culpa sed quibusdam.', '1995-12-03', '2020-04-20', 0),
(98, 2, 'Eligendi voluptatem sit debitis quo quia rerum. Dolorem maiores deserunt iste delectus. Nihil et quidem quo aperiam iusto asperiores voluptate.', '2016-01-19', '1981-07-12', 0),
(99, 3, 'Iste cum repudiandae optio quis est voluptas omnis. Labore nihil rem ipsa reprehenderit omnis tempore. Incidunt aut voluptatem fugit quas eum natus eligendi.', '1985-08-29', '1987-11-17', 1),
(100, 1, 'Sequi quo rerum dolore odio tempore perferendis eum non. Pariatur ad rem quae et. Est sed exercitationem et et. At tempore facere cum quis nostrum aut. Consequatur dolores velit nostrum eligendi. Cumque et sunt nemo sequi eligendi et nulla.', '1995-02-26', '2015-05-16', 0),
(101, 9, 'fun', 'ttt', 'ttt', 1),
(102, 9, 'fun', '2021-04-07', '2021-04-08', 0),
(103, 2, 'fun', '10/06/2021', '11/06/2021', 0);

-- --------------------------------------------------------

--
-- Structure de la table `type_praticien`
--

CREATE TABLE `type_praticien` (
  `id` int(11) NOT NULL,
  `libelle` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lieu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type_praticien`
--

INSERT INTO `type_praticien` (`id`, `libelle`, `lieu`) VALUES
(101, 'reprehenderit', 'Gaudin-sur-Morvan'),
(102, 'facilis', 'GregoireBourg'),
(103, 'aliquam', 'Renaud'),
(104, 'voluptas', 'Joseph-sur-Gay'),
(105, 'amet', 'Labbe'),
(106, 'nemo', 'Aubrydan'),
(107, 'at', 'Marteldan'),
(108, 'maiores', 'Guillonboeuf'),
(109, 'excepturi', 'Guichard'),
(110, 'culpa', 'Benard'),
(111, 'quam', 'Schneider-sur-Mer'),
(112, 'cupiditate', 'Ramos-les-Bains'),
(113, 'suscipit', 'Gomez'),
(114, 'quos', 'Delorme-sur-Mer'),
(115, 'non', 'Petit'),
(116, 'nesciunt', 'Boulanger-la-Forêt'),
(117, 'id', 'Brunet-les-Bains'),
(118, 'quia', 'Giraud'),
(119, 'voluptatem', 'CousinVille'),
(120, 'ut', 'Collet'),
(121, 'tempora', 'Leblanc-sur-Francois'),
(122, 'et', 'Boulaynec'),
(123, 'beatae', 'Marion-sur-Hardy'),
(124, 'perspiciatis', 'Blot'),
(125, 'voluptas', 'Chauveau-sur-Charpentier'),
(126, 'et', 'Bazinnec'),
(127, 'repellendus', 'Pelletier'),
(128, 'possimus', 'Duhamel'),
(129, 'omnis', 'Tessier'),
(130, 'deleniti', 'Wagner'),
(131, 'quis', 'Royer'),
(132, 'ut', 'Mary'),
(133, 'saepe', 'Antoine'),
(134, 'impedit', 'Cohen-les-Bains'),
(135, 'doloremque', 'Teixeira-sur-Guillou'),
(136, 'quo', 'RousselVille'),
(137, 'sed', 'Vaillantdan'),
(138, 'deserunt', 'Da Costa'),
(139, 'et', 'Rousseau'),
(140, 'veniam', 'RichardVille'),
(141, 'fuga', 'Sauvagenec'),
(142, 'qui', 'Vallee-la-Forêt'),
(143, 'omnis', 'Gomez-la-Forêt'),
(144, 'expedita', 'Vallee-les-Bains'),
(145, 'rem', 'Roger-sur-Guibert'),
(146, 'iure', 'Bousquet'),
(147, 'fugiat', 'Lemoine-sur-Perez'),
(148, 'soluta', 'Rocher'),
(149, 'nam', 'AubertBourg'),
(150, 'iure', 'Marteldan'),
(151, 'sit', 'Ruiz'),
(152, 'alias', 'Albert-sur-Rolland'),
(153, 'est', 'Dupuis-sur-Lecoq'),
(154, 'porro', 'LemaireVille'),
(155, 'qui', 'Lemaireboeuf'),
(156, 'et', 'Guibert'),
(157, 'autem', 'Gregoire'),
(158, 'necessitatibus', 'Roux'),
(159, 'voluptatem', 'Rodriguez-la-Forêt'),
(160, 'aliquam', 'Grondin'),
(161, 'nemo', 'Delaunayboeuf'),
(162, 'error', 'Mathieu'),
(163, 'atque', 'Leveque-sur-Mer'),
(164, 'voluptates', 'Tanguy'),
(165, 'hic', 'Perez'),
(166, 'tempora', 'Gaudin-les-Bains'),
(167, 'modi', 'Barthelemy-les-Bains'),
(168, 'illo', 'Breton'),
(169, 'perspiciatis', 'Riviere'),
(170, 'aliquam', 'Devaux-les-Bains'),
(171, 'quo', 'LegrandBourg'),
(172, 'ut', 'Jacquot'),
(173, 'nesciunt', 'Joseph'),
(174, 'molestiae', 'Le Goff-sur-Hamel'),
(175, 'itaque', 'Garcia-sur-Marchal'),
(176, 'magnam', 'Fleury-sur-Bouvet'),
(177, 'voluptatum', 'Perrot-les-Bains'),
(178, 'expedita', 'Delorme-les-Bains'),
(179, 'excepturi', 'Grenier'),
(180, 'quia', 'Barthelemy'),
(181, 'et', 'Lucas-la-Forêt'),
(182, 'eius', 'Gautierdan'),
(183, 'temporibus', 'Gomeznec'),
(184, 'laboriosam', 'Blot'),
(185, 'vitae', 'FrancoisVille'),
(186, 'dolor', 'Le Gall-sur-Brunet'),
(187, 'dolores', 'Carre-sur-Legendre'),
(188, 'sequi', 'Marin-sur-Michel'),
(189, 'nemo', 'Becker'),
(190, 'eum', 'Boutin'),
(191, 'magnam', 'Prevostboeuf'),
(192, 'aut', 'Lombard'),
(193, 'ducimus', 'LegerVille'),
(194, 'laboriosam', 'Sanchez-sur-Rodrigues'),
(195, 'numquam', 'Bourgeois'),
(196, 'recusandae', 'PichonVille'),
(197, 'animi', 'Collin-la-Forêt'),
(198, 'reiciendis', 'Leclerc-sur-Mer'),
(199, 'labore', 'Petit'),
(200, 'fuga', 'Philippe');

-- --------------------------------------------------------

--
-- Structure de la table `visiteur`
--

CREATE TABLE `visiteur` (
  `id` int(11) NOT NULL,
  `praticien_id` int(11) NOT NULL,
  `nom` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mdp` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `visiteur`
--

INSERT INTO `visiteur` (`id`, `praticien_id`, `nom`, `prenom`, `adresse`, `cp`, `ville`, `login`, `mdp`) VALUES
(1, 101, 'Couturier', 'Gilbert', 'boulevard de Colin\n44 973 Colas', '70 882', 'Launay', 'aut', 's}rzfoPYjxMp8\'olGa,]'),
(2, 102, 'Maurice', 'Alain', '97, rue de Chretien\n68182 Bodin', '46662', 'RenaudVille', 'sint', '`gnPfc\"c#'),
(3, 103, 'Meunier', 'Astrid', '9, avenue Ledoux\n45879 MasseVille', '21 382', 'Roynec', 'vero', 'Irj9twzu.`PpZ~cC&uo'),
(4, 101, 'Rey', 'Gilles', 'place Alexandrie Da Costa\n22 168 Thierry', '61 611', 'Herve', 'sapiente', ']AeWxT5%F|W4>s[J[u]IAmn'),
(5, 102, 'Guillaume', 'Odette', '61, chemin Boutin\n33897 Martins', '73267', 'MaceVille', 'consequatur', 'pr\'/L\\ZRv|,2c\\%<ZJUBL'),
(6, 103, 'Louis', 'Grégoire', '70, boulevard de Camus\n34 432 Duboisboeuf', '15 032', 'Boutin-sur-Mer', 'qui', '2_FKk]A*f7uXvm0ms}~'),
(7, 101, 'Le Goff', 'Adélaïde', '379, rue Bertin\n61 690 Legendre', '00 855', 'Turpin-sur-Guilbert', 'est', 'tNPpo$\\31E&Ys'),
(8, 102, 'Levy', 'Margaux', '218, chemin de Diaz\n19848 Seguin', '50042', 'Evrard-sur-Muller', 'dolor', 'w1PBteb9l4xE8Et;`t1'),
(9, 103, 'Richard', 'Noël', '316, chemin Claudine Lemaire\n08725 Fontaine', '75540', 'Lacombe', 'minima', '<M~mdZ\'QJ\"'),
(10, 101, 'Reynaud', 'Valérie', 'chemin Pons\n16836 Etienne', '56356', 'Michel-sur-Pruvost', 'est', 'Ux+g[!I.'),
(11, 102, 'Jacques', 'Roger', '56, impasse Bigot\n18728 Gomes-les-Bains', '77733', 'Paul-les-Bains', 'quaerat', 'W0!A#IV`Q4\"|'),
(12, 103, 'Teixeira', 'Élise', '68, boulevard de Lopes\n73733 Leclercq-les-Bains', '00429', 'Launay', 'nam', '5lQ\\M_gFag6#fe>'),
(13, 101, 'Sanchez', 'Patrick', 'place Thomas\n87731 Andre-sur-Mer', '46524', 'Guillot', 'est', 'BxA=Z?V6I0&!|g'),
(14, 102, 'Giraud', 'Thibaut', '12, avenue Jean Thibault\n55 794 Martinez', '70095', 'Guillon', 'nemo', 'l*\'LQb[L{/y/~:.b}C'),
(15, 103, 'Salmon', 'Xavier', 'impasse Collet\n20 994 Fournier-la-Forêt', '70243', 'Robinnec', 'ab', 'L~tpR!=Vo#kaHc'),
(16, 101, 'Bodin', 'Claude', '5, boulevard de Gros\n59 355 Renaud-la-Forêt', '72797', 'Bertrand', 'nihil', 'gFip3Nuf&F:W<ze\'rI'),
(17, 102, 'Vincent', 'Léon', '64, rue Sébastien Goncalves\n12698 Gimenez-la-Forêt', '70070', 'Lambert-sur-Boulanger', 'sit', 'GtL}?U|'),
(18, 103, 'Vallee', 'Danielle', '470, boulevard de Letellier\n66 259 Lucasdan', '94972', 'Rioudan', 'fuga', '2AH1v'),
(19, 101, 'Laurent', 'Charlotte', 'chemin de Poirier\n09598 PaulVille', '99116', 'Millet', 'voluptatem', 'I).iQ'),
(20, 102, 'Adam', 'Aurélie', '5, rue de Allard\n90 942 Chevallier', '93 315', 'Caron', 'aut', '-RGPY`6j-dx'),
(21, 103, 'Auger', 'Benoît', '5, avenue de Antoine\n86092 Schneider', '47 163', 'LangloisBourg', 'ab', 'pD22&*FMdx.-XuYV`fdS'),
(22, 101, 'Merle', 'Paul', '5, rue de Remy\n90421 FabreBourg', '64 382', 'Bousquet', 'autem', '>kes;;:PNKVYSVq'),
(23, 102, 'Hoareau', 'Antoine', 'chemin Launay\n58 328 Denisdan', '47881', 'MerleVille', 'debitis', 'ED?}G6X$L@a#F4k0'),
(24, 103, 'Bourgeois', 'Arthur', '4, chemin de Lemonnier\n85462 BarbierBourg', '51251', 'Chauvet-la-Forêt', 'saepe', 'bIJ5'),
(25, 101, 'Rolland', 'Matthieu', '82, place de Besnard\n94581 Gautier-sur-Briand', '62 209', 'Brunel-la-Forêt', 'adipisci', '\"5VI.`?p!9t'),
(26, 102, 'Hernandez', 'Xavier', '50, impasse de Pages\n52937 Lebrun', '88739', 'Charrier', 'mollitia', 'RIN}UC!@h=GWsZ02:d}BDf'),
(27, 103, 'Pires', 'Colette', '6, avenue Thierry Maillard\n50777 Marion', '51 108', 'Hardy-les-Bains', 'totam', '#,)-ibll44Y^Jwpab#A2F:+'),
(28, 101, 'Lecomte', 'Maggie', '55, avenue de Lopez\n08 507 Ollivier', '20 760', 'Oliviernec', 'nisi', 'gT-b`>A$(.wx1\\zqif'),
(29, 102, 'Boucher', 'Léon', '173, impasse de Tessier\n74 930 Maurice', '19 095', 'Lefevre', 'aut', '@vSi'),
(30, 103, 'Delmas', 'Richard', '92, rue Sophie Couturier\n05 181 Sauvage', '91466', 'PerrierVille', 'id', 'tXO2b1/|NJ##Kkv'),
(31, 101, 'Mace', 'Julien', 'boulevard Techer\n56 077 Humbert-sur-Mer', '04570', 'Fernandes', 'sit', 'LC2#Bkvw|!-|/_r;>n?Ky3'),
(32, 102, 'Rolland', 'Laetitia', '65, impasse Colas\n87 056 SalmonVille', '58510', 'Millet', 'aspernatur', '#(bk[B1((j'),
(33, 103, 'Labbe', 'Marine', '36, chemin Barthelemy\n85246 De Sousa', '93073', 'Carre-sur-Pichon', 'aut', 'J53\'):rSs]v~$QOMV'),
(34, 101, 'Lacombe', 'Margot', '404, impasse Virginie Mahe\n43167 Rodriguezdan', '15 346', 'Henry-la-Forêt', 'at', ']937YIiMtz,B)'),
(35, 102, 'Hardy', 'Christine', '8, impasse Maury\n06 617 Payet-sur-Olivier', '07394', 'Chevallier', 'illo', 'JW}=#&OA_Kf~:j-]'),
(36, 103, 'Moulin', 'Émile', 'place de Berger\n37197 Nicolasboeuf', '56 018', 'Raymond', 'ea', ']]K<XY:IA^/I2@d,1ae@7\\'),
(37, 101, 'Morel', 'Martine', '39, chemin Monique Huet\n74893 Sanchez-la-Forêt', '38 263', 'Mace-sur-Georges', 'sed', 'WvBRZd77]Dk>\'$]9l&m@o'),
(38, 102, 'Coulon', 'Margot', '291, avenue Schneider\n95111 Dupre', '90 939', 'Le Roux', 'sed', 'g2?FpT!JyA'),
(39, 103, 'Marin', 'Léon', '657, rue de Reynaud\n46 789 Noel', '04 069', 'Jourdandan', 'et', '!vt[AYKx11NDllYmSn^=HRI{H'),
(40, 101, 'Perrin', 'Véronique', '35, rue de Lecomte\n29493 Marchand', '94355', 'Nguyen-sur-Seguin', 'omnis', 'u5zv\"z.6WLB='),
(41, 102, 'Gilbert', 'Andrée', '18, impasse Inès Brunet\n55694 GauthierBourg', '26 907', 'Teixeira', 'iste', '3dzrF(]+;bzva,S>#cD;nCay)'),
(42, 103, 'Laporte', 'Léon', '84, impasse de Devaux\n08687 Chauveau', '35300', 'Descamps', 'officiis', 'W`ONPe'),
(43, 101, 'Carre', 'Matthieu', '67, chemin Laure Blondel\n76440 PerrotBourg', '02211', 'Thierrynec', 'nemo', 'C[X@j!MVh=X%ke'),
(44, 102, 'Chevallier', 'Arthur', '424, avenue Lucy Guillaume\n84465 Dupuy', '13 352', 'Thierry', 'occaecati', 'DC#2O[USDAdr;glfa}&Z'),
(45, 103, 'Camus', 'Simone', 'chemin Françoise Bazin\n85542 MorenoVille', '35139', 'Jacquesboeuf', 'voluptatum', '?7+3*SlP>lF'),
(46, 101, 'Pottier', 'Dominique', '116, impasse Élodie Bonnet\n97998 HerveBourg', '60550', 'Ollivier', 'commodi', '\"ODJ6Rz{2g\"RM>e}:*zZ0'),
(47, 102, 'Mercier', 'David', '98, boulevard Leclerc\n98 114 Poulain', '62 954', 'Lemonnier', 'est', '~v4g=N7;LhzotR'),
(48, 103, 'Louis', 'Adrien', '808, impasse Jeanne Lefebvre\n21 691 Poirier', '53 154', 'Tanguy-sur-Gauthier', 'qui', '7s4R#d!zQq'),
(49, 101, 'Delmas', 'André', '97, chemin Leblanc\n57 209 Lecomte', '82544', 'Aubert', 'laboriosam', 'wrlO|J8a.tmF==#wQF*{w6^\'@'),
(50, 102, 'Lejeune', 'Franck', '58, boulevard Henry\n30266 Laporte-les-Bains', '34874', 'Thomas', 'ut', '2!]rC?bTw'),
(51, 103, 'Marques', 'Arnaude', '7, impasse Lecomte\n04 473 Nicolasdan', '50879', 'Valentin', 'optio', '!,iy^T.'),
(52, 101, 'Guyot', 'Raymond', '34, place Adrienne Lebrun\n37 109 Marchal-la-Forêt', '66 215', 'Rey-sur-Robin', 'accusamus', 'EffrcexLFN0y4NOv/@B]mv8'),
(53, 102, 'Pruvost', 'Victor', '14, place de Morvan\n39477 Guyon', '53970', 'Martinez', 'iure', 'kRZrb!F68MEM_y8GDw'),
(54, 103, 'Toussaint', 'Astrid', '570, chemin Raymond Allain\n10 235 Roy', '99697', 'Maillet', 'non', 'bk.6sB7Zc-?*E-\";)yt2-f'),
(55, 101, 'Bouvet', 'Paul', '838, boulevard de Diaz\n93 164 Pons-sur-Aubry', '18948', 'Faivre', 'expedita', 'ewa(Z_gVTwumo'),
(56, 102, 'Guyon', 'Éléonore', '79, rue de Lamy\n29153 Mahe-sur-Gallet', '36 416', 'Blot-sur-Caron', 'nisi', '6*cZ*4f-NmcLP<yBk\"='),
(57, 103, 'Valentin', 'Antoine', '11, chemin Timothée Hoareau\n03 594 Blanchard', '58 023', 'Clement', 'cum', 'OB*,6r=XXN#h,EI'),
(58, 101, 'Georges', 'Mathilde', 'rue Jacques Mahe\n20512 Bonnin', '95880', 'Bonnin', 'officia', '7W/zx]GW3L,Qs`u~8tU`bmn\"'),
(59, 102, 'Aubert', 'Sébastien', '14, place Dumont\n10798 Guibert', '78 637', 'Nguyen', 'corporis', 'LbJ_+/OhQ@\"L?oalH<~`pB8Z'),
(60, 103, 'Blanchard', 'Victoire', 'chemin de Lesage\n66853 Monnier', '38 173', 'Bonneau', 'totam', 'na>L$9?_\\UgL'),
(61, 101, 'Boucher', 'Colette', 'boulevard Tristan Chauvin\n98 921 Vallet', '78546', 'Parent', 'accusantium', 'ZF$u/tW)/i/5QS4j'),
(62, 102, 'Leblanc', 'Arthur', '37, chemin Poirier\n64 600 Bouchet-sur-Huet', '47204', 'Marion', 'velit', '>fl!`;8KBuX$t(6l6AR\"'),
(63, 103, 'Ribeiro', 'Michelle', '88, rue Georges Launay\n56593 Leveque', '76 650', 'Bernard-sur-Perrot', 'error', 'u<#$4ZS=I/yt;q2%N'),
(64, 101, 'Guillon', 'Isabelle', '3, impasse de Masson\n34 284 Seguin', '82567', 'De Sousa-les-Bains', 'est', 'pYC{?v!_GvU\"'),
(65, 102, 'Legros', 'Laurence', '689, rue Mary\n91822 Lebon', '90790', 'Gosselin', 'blanditiis', '&eL#:b^|'),
(66, 103, 'Deschamps', 'Manon', '20, rue Honoré Traore\n97 383 Schmittdan', '36956', 'Francois-sur-Mer', 'modi', 'Mo\'h9{u\'l'),
(67, 101, 'Blot', 'Patrick', '23, avenue Gilbert\n94921 LesageBourg', '69960', 'Bazin-sur-Leroy', 'molestiae', '-a)3@]eD%<i5Jm7=f^*yO'),
(68, 102, 'Philippe', 'Daniel', '58, chemin Lucas Turpin\n75 182 Courtois', '58 410', 'Guicharddan', 'corporis', '^95pf`n\'p+[:L2Qvq<4`Q'),
(69, 103, 'Roussel', 'Frédérique', '296, avenue Renée Guillon\n49 969 Navarro', '00554', 'Georges-sur-Menard', 'quia', '\\~w|;!d&SP.h'),
(70, 101, 'Simon', 'Juliette', '634, boulevard Lejeune\n33580 Pottier', '12 100', 'Gaudin-les-Bains', 'excepturi', '(q=@zVXxNOnD*36M'),
(71, 102, 'Martel', 'Louis', '51, avenue Lagarde\n94 791 Blanchet', '78 779', 'Daniel', 'voluptatem', 'E%19b8>Bp8'),
(72, 103, 'Ferreira', 'Laurence', '93, rue Le Goff\n18804 Potier', '45332', 'Blanchet', 'suscipit', ']l8IE'),
(73, 101, 'Leclerc', 'Valérie', 'rue de Jacquot\n04616 Tessier-sur-Mer', '91 006', 'Dupuy', 'esse', 'stsrj-U__X'),
(74, 102, 'Aubry', 'Luc', '4, impasse Goncalves\n31951 Torres', '06 528', 'Julien-sur-Mer', 'eum', ')M\\=H\"uOQ[?*Mi@0{^p5'),
(75, 103, 'Lecomte', 'Diane', '39, impasse Guillou\n26274 Gilbertboeuf', '70 313', 'Carre', 'quasi', '6K1T?>n~f,PSQeT=puH'),
(76, 101, 'Lecoq', 'Eugène', '763, rue de Cohen\n63 179 Maurice', '46 051', 'Lebrun', 'voluptatem', 'kjtHYVZJOMPRZyAP3lbr('),
(77, 102, 'Lecoq', 'Émile', '37, boulevard de Guillou\n40733 Vaillant-sur-Pires', '46 195', 'DurandBourg', 'eveniet', '{Z>!xV'),
(78, 103, 'Weiss', 'Gabriel', '3, avenue Alves\n39 061 Lopes', '50 788', 'Didierboeuf', 'nihil', '>^l0*o0'),
(79, 101, 'Ollivier', 'Frédéric', 'rue Valette\n35388 Letellier-sur-Charpentier', '32 300', 'Guilbert', 'sequi', 't7D4)2]2ZYF6@xj}fA'),
(80, 102, 'Legrand', 'Thomas', 'place Françoise Morel\n11 916 Pons', '54732', 'Michaud', 'laudantium', 'M6.Pv1V+u5-K\'MCG1d3'),
(81, 103, 'Maillot', 'Auguste', '70, rue Dumont\n40 563 Lefevre-les-Bains', '93 155', 'FleuryBourg', 'ut', '&/OV4.!'),
(82, 101, 'Pruvost', 'Marcelle', '6, rue de Chauvet\n13 816 Ribeiro-sur-Leclercq', '22 880', 'Lagarde-sur-Mer', 'autem', ',6GvglEn#lUDBdV[k*'),
(83, 102, 'Maillet', 'Marianne', '69, rue Martinez\n71992 Picard', '48 336', 'Joubert', 'error', 'fIg.`gOF{n'),
(84, 103, 'Moreau', 'Michèle', '78, rue Meunier\n88 505 Rousset', '84648', 'Vincent', 'voluptatem', 'QRon'),
(85, 101, 'Buisson', 'Suzanne', '92, rue Colin\n86 537 Ferrand', '18 212', 'Lemaire', 'aperiam', 'BK+x)oNfJPkQ|{hh48'),
(86, 102, 'Dijoux', 'Nicole', '73, place Guillou\n89906 Brunel-sur-Verdier', '73125', 'Peltier', 'et', '_d[k'),
(87, 103, 'Boutin', 'Daniel', '28, boulevard Nicolas Bertrand\n13983 Francois-sur-Alexandre', '95 454', 'Leclerc', 'maiores', '[[oKD;f0J9&BT&sS2tS|~2gA^'),
(88, 101, 'Turpin', 'Augustin', '48, impasse Chantal Girard\n92 609 Lenoir-la-Forêt', '75 312', 'Michaud-sur-Lefort', 'omnis', 'W.uLm6E$xGB[*!gn^qpr'),
(89, 102, 'Becker', 'Mathilde', '60, impasse de Daniel\n94372 Menard', '29530', 'Ledoux-sur-Nicolas', 'odio', 'NnQl>Zv%lpTl=;>'),
(90, 103, 'Legros', 'Sabine', '97, impasse de Lamy\n64249 PichonVille', '00906', 'Lesage', 'iste', 'fW)i|gmCpEo'),
(91, 101, 'Rousset', 'Gérard', '396, avenue de Jean\n70 416 Carlier', '04 164', 'Hamel-sur-Mercier', 'enim', ',V~]\')hIB#s'),
(92, 102, 'Langlois', 'Antoinette', '53, place Paulette Remy\n66831 Bruneauboeuf', '43212', 'Roussel-sur-Mer', 'ea', '`DTJF=;pB55^'),
(93, 103, 'Le Gall', 'Claudine', '60, boulevard Bertrand\n64 536 Delannoy-sur-Etienne', '62 638', 'Guillon-sur-Mer', 'itaque', 'sbDr!mgt]6d~~T}UN-PN'),
(94, 101, 'Delannoy', 'Margot', '90, rue Alexandre Fernandez\n51 096 Gilles', '40 325', 'LefortBourg', 'autem', '\\~txOj,.@)G62xOdF'),
(95, 102, 'Letellier', 'Thomas', '8, place Arthur Hamon\n10830 Mahe', '25593', 'Bousquet-les-Bains', 'quaerat', 'gZ$db?nwG?Q~\\NSo2or_Nr!'),
(96, 103, 'Rousseau', 'Robert', '911, rue de Cohen\n33721 Gilbert-sur-Mer', '18328', 'Poulain', 'alias', '#ZqLVNv#ivw/G`IGqlZMra\';p'),
(97, 101, 'Bigot', 'Julien', '3, rue Riou\n16 520 Brunet', '52341', 'Pottier-les-Bains', 'quaerat', 'rn^fy{q(b\\3OU[G|fZq'),
(98, 102, 'Leclercq', 'Matthieu', '13, rue de Lemoine\n48862 Rousseau', '63752', 'Mallet-sur-Mer', 'ex', 'A^bNZ~M4'),
(99, 103, 'Cousin', 'Timothée', '73, chemin Allard\n54021 Menard', '03 827', 'Vasseur', 'fuga', '##?J9S<5pVC3X[Z0!'),
(100, 101, 'Jacquot', 'Claire', '80, boulevard Bourdon\n82641 Delmas', '17 261', 'Benoitnec', 'quasi', 'B&zlN]W8J,,du');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `delegue`
--
ALTER TABLE `delegue`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `praticien`
--
ALTER TABLE `praticien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D9A27D3C54C8C93` (`type_id`);

--
-- Index pour la table `rapport_visite`
--
ALTER TABLE `rapport_visite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D1D741717F72333D` (`visiteur_id`);

--
-- Index pour la table `type_praticien`
--
ALTER TABLE `type_praticien`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `visiteur`
--
ALTER TABLE `visiteur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4EA587B82391866B` (`praticien_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `delegue`
--
ALTER TABLE `delegue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `praticien`
--
ALTER TABLE `praticien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT pour la table `rapport_visite`
--
ALTER TABLE `rapport_visite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT pour la table `type_praticien`
--
ALTER TABLE `type_praticien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT pour la table `visiteur`
--
ALTER TABLE `visiteur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `praticien`
--
ALTER TABLE `praticien`
  ADD CONSTRAINT `FK_D9A27D3C54C8C93` FOREIGN KEY (`type_id`) REFERENCES `type_praticien` (`id`);

--
-- Contraintes pour la table `rapport_visite`
--
ALTER TABLE `rapport_visite`
  ADD CONSTRAINT `FK_D1D741717F72333D` FOREIGN KEY (`visiteur_id`) REFERENCES `visiteur` (`id`);

--
-- Contraintes pour la table `visiteur`
--
ALTER TABLE `visiteur`
  ADD CONSTRAINT `FK_4EA587B82391866B` FOREIGN KEY (`praticien_id`) REFERENCES `praticien` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
