-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 01 juil. 2022 à 10:37
-- Version du serveur : 10.4.20-MariaDB
-- Version de PHP : 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `park`
--

-- --------------------------------------------------------

--
-- Structure de la table `carburant`
--

CREATE TABLE `carburant` (
  `MTr` varchar(40) NOT NULL,
  `DATE` date NOT NULL,
  `DESTINATION` varchar(40) NOT NULL,
  `KM` int(40) NOT NULL,
  `N°SUCHE` int(40) NOT NULL,
  `PRIX` float(11,2) NOT NULL,
  `UTILISATEUR` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `carburant`
--

INSERT INTO `carburant` (`MTr`, `DATE`, `DESTINATION`, `KM`, `N°SUCHE`, `PRIX`, `UTILISATEUR`) VALUES
('J206112', '2022-06-08', 'CASA', 5432, 423241, 2057.00, 'AYMAN ZAHIR'),
('J218515', '2022-06-24', 'BOULMAN', 4000, 2385, 300.00, 'ALI ANSARI'),
('J206452', '2022-06-23', 'BOUMIA', 4600, 78587, 668.00, 'ADSLAM JABRI'),
('J206112', '2022-06-09', 'WARZAZAT', 500, 795689, 600.00, 'MERIAM LACHIR'),
('J206452', '2022-06-20', 'LAYOUN', 7301, 3475792, 1200.00, 'MOHMD CHWALI'),
('J206112', '2022-05-08', 'GLMIMA', 1903, 78586, 650.00, 'ALI ANSARI'),
('J218515', '2022-05-03', 'SLA', 1901, 768574578, 650.00, 'ADSLAM JABRI'),
('J206112', '2022-04-21', 'MARAKCH', 4100, 7686878, 3000.00, 'ADSLAM JABRI'),
('J211905', '2022-06-11', 'RICH', 1234, 4343, 400.00, 'ADSLAM JABRI'),
('J218515', '2022-06-04', 'RICH', 5945, 7879, 4000.00, 'ALI ANSARI'),
('J217313', '2022-06-15', 'GULMIMA', 5902, 343232, 2300.00, 'ADSLAM JABRI'),
('k201111', '2022-06-09', 'RICH', 45, 6867867, 300.00, 'ADSLAM JABRI');

-- --------------------------------------------------------

--
-- Structure de la table `chauffeur`
--

CREATE TABLE `chauffeur` (
  `CIN` varchar(40) NOT NULL,
  `prenom` varchar(40) NOT NULL,
  `nom` varchar(40) NOT NULL,
  `grade` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `chauffeur`
--

INSERT INTO `chauffeur` (`CIN`, `prenom`, `nom`, `grade`) VALUES
('V131E323', 'abdslam', 'abdlghanio', 'technician'),
('v3234', 'ALI', 'ANSARI', 'technician'),
('VA36352', 'Ayman', 'zahir', 'technician'),
('VA36356', 'Ahmed', 'Alaoui', 'technician');

-- --------------------------------------------------------

--
-- Structure de la table `vehicules`
--

CREATE TABLE `vehicules` (
  `MTr` varchar(40) NOT NULL,
  `Marque` varchar(40) NOT NULL,
  `MODELE` varchar(40) NOT NULL,
  `TYPE` varchar(40) NOT NULL,
  `GENRE` varchar(40) NOT NULL,
  `NCHASSIS` varchar(40) NOT NULL,
  `DMC` date NOT NULL,
  `CARBURANT` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `vehicules`
--

INSERT INTO `vehicules` (`MTr`, `Marque`, `MODELE`, `TYPE`, `GENRE`, `NCHASSIS`, `DMC`, `CARBURANT`) VALUES
('J206112', 'Touareg wolkz ', 'PICK-UP', 'HSDVH6', 'VEHICULE TOURISME', 'ZF37T9HPOGJ846778 ', '2017-11-07', 'GASOIL'),
('J206452 ', 'Peugeot bipper ', 'PICK-UP', 'HSDVH6', 'VEHICULE TOURISME', 'VF3DD9HJCGJ725539', '2016-08-16', 'GASOIL'),
('J206453', 'Peugeot 301', 'PICK-UP', 'HSDVH6', 'VEHICULE TOURISME', 'WVGZZZ7PZG026258', '2017-12-07', 'GASOIL'),
('J211903 ', 'Peugeot Partner ', 'PICK-UP', 'HSDVH6', 'VEHICULE TOURISME', 'ZFA22300006543947', '2017-11-07', 'GASOIL'),
('J211905 ', 'Fiat Fioreno ', 'PICK-UP', 'HSDVH6', 'VEHICULE TOURISME', ' ZFA22500006H56946 ', '2018-08-29', 'GASOIL'),
('J217313 ', 'Dacia Logan ', 'PICK-UP', 'HSDVH6', 'VEHICULE TOURISME', 'UU14SDAW461102450', '2018-08-28', 'GASOIL'),
('J218514 ', 'Peugeot301', 'PICK-UP  ', 'HSDVH6   ', 'VEHICULE TOURISME', 'VF3DD9HJJ663675', '2018-11-12', 'GASOIL'),
('J218515', 'Renault Master', 'PICK-UP', 'HSDVH6', ' VEHICULE TOURISME', 'VF1MAFECC58851430', '2018-11-12', 'GASOIL'),
('k201111', 'AUDI', '2022', 'DD', 'VEHICULE TOURISME', 'YJON', '2022-06-25', 'GASOIL');

-- --------------------------------------------------------

--
-- Structure de la table `vidange`
--

CREATE TABLE `vidange` (
  `MTr` varchar(40) NOT NULL,
  `TOTAL` int(20) NOT NULL,
  `TYPE` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `vidange`
--

INSERT INTO `vidange` (`MTr`, `TOTAL`, `TYPE`) VALUES
('J206112', 0, 0),
('J206452 ', 6593, 1),
('J206453', 0, 0),
('J211903 ', 0, 0),
('J211905 ', 1343, 0),
('J217313 ', 0, 1),
('J218514 ', 0, 0),
('J218515', 0, 1),
('k201111', 45, 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `chauffeur`
--
ALTER TABLE `chauffeur`
  ADD PRIMARY KEY (`CIN`);

--
-- Index pour la table `vehicules`
--
ALTER TABLE `vehicules`
  ADD PRIMARY KEY (`MTr`);

--
-- Index pour la table `vidange`
--
ALTER TABLE `vidange`
  ADD PRIMARY KEY (`MTr`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
