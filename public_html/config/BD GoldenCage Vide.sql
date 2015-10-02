-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Ven 18 Avril 2014 à 11:20
-- Version du serveur: 5.5.24-log
-- Version de PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `goldencage`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `cin` int(8) NOT NULL,
  PRIMARY KEY (`cin`),
  UNIQUE KEY `cin` (`cin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `cin` int(8) NOT NULL,
  PRIMARY KEY (`cin`),
  UNIQUE KEY `cin` (`cin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE IF NOT EXISTS `commentaire` (
  `idcommentaire` int(10) NOT NULL AUTO_INCREMENT,
  `idoffre` int(10) NOT NULL,
  `cin` int(8) NOT NULL,
  `textecommentaire` varchar(250) NOT NULL,
  `datecommentaire` date NOT NULL,
  PRIMARY KEY (`idcommentaire`),
  KEY `cin` (`cin`),
  KEY `idoffre` (`idoffre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `comptes`
--

CREATE TABLE IF NOT EXISTS `comptes` (
  `idcompte` int(10) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `motdepasse` varchar(30) NOT NULL,
  `typecompte` varchar(30) NOT NULL,
  `statut` varchar(30) NOT NULL,
  PRIMARY KEY (`idcompte`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Structure de la table `galeriephoto`
--

CREATE TABLE IF NOT EXISTS `galeriephoto` (
  `idphoto` int(10) NOT NULL AUTO_INCREMENT,
  `idoffre` int(10) NOT NULL,
  `image` longblob NOT NULL,
  PRIMARY KEY (`idphoto`),
  KEY `idoffre` (`idoffre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `galerievideo`
--

CREATE TABLE IF NOT EXISTS `galerievideo` (
  `idvideo` int(10) NOT NULL,
  `idoffre` int(10) NOT NULL,
  `urlvideo` varchar(250) NOT NULL,
  PRIMARY KEY (`idvideo`),
  KEY `idoffre` (`idoffre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `offres`
--

CREATE TABLE IF NOT EXISTS `offres` (
  `idoffre` int(10) NOT NULL AUTO_INCREMENT,
  `idservice` int(10) NOT NULL,
  `cin` int(8) NOT NULL,
  `libelle` varchar(30) NOT NULL,
  `adresse` varchar(250) NOT NULL,
  `description` varchar(500) NOT NULL,
  `datecreation` date NOT NULL,
  `prix` int(11) NOT NULL,
  `note` int(11) NOT NULL,
  `nbrvisite` int(11) NOT NULL,
  PRIMARY KEY (`idoffre`),
  KEY `idservice` (`idservice`),
  KEY `cin` (`cin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE IF NOT EXISTS `personne` (
  `cin` int(8) NOT NULL,
  `idcompte` int(10) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `adresse` varchar(200) NOT NULL,
  `email` varchar(30) NOT NULL,
  `telephone` int(20) NOT NULL,
  `photo` blob NOT NULL,
  PRIMARY KEY (`cin`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `cin` (`cin`),
  KEY `idcompte` (`idcompte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `prestataire`
--

CREATE TABLE IF NOT EXISTS `prestataire` (
  `cin` int(8) NOT NULL,
  `nomespace` varchar(30) NOT NULL,
  PRIMARY KEY (`cin`),
  UNIQUE KEY `nomespace` (`nomespace`),
  UNIQUE KEY `cin` (`cin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reclamation`
--

CREATE TABLE IF NOT EXISTS `reclamation` (
  `idreclamation` int(10) NOT NULL AUTO_INCREMENT,
  `cin` int(8) NOT NULL,
  `textereclamation` varchar(250) NOT NULL,
  `etat` varchar(20) NOT NULL,
  `datereclamation` date NOT NULL,
  PRIMARY KEY (`idreclamation`),
  KEY `cin` (`cin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE IF NOT EXISTS `reservation` (
  `idreservation` int(10) NOT NULL AUTO_INCREMENT,
  `cin` int(8) NOT NULL,
  `idoffre` int(10) NOT NULL,
  `detail` varchar(500) NOT NULL,
  `heurdebut` varchar(5) NOT NULL,
  `heurfin` varchar(5) NOT NULL,
  `datereservation` date NOT NULL,
  PRIMARY KEY (`idreservation`),
  KEY `cin` (`cin`),
  KEY `idoffre` (`idoffre`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `idservice` int(10) NOT NULL AUTO_INCREMENT,
  `nomservice` varchar(30) NOT NULL,
  PRIMARY KEY (`idservice`),
  UNIQUE KEY `nomservice` (`nomservice`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `services`
--

INSERT INTO `services` (`idservice`, `nomservice`) VALUES
(3, 'Coiffure et maquillage'),
(2, 'Costume'),
(5, 'Patisserie'),
(8, 'Photographe'),
(1, 'Robe'),
(4, 'Salle de fête'),
(6, 'Troupe Musicale'),
(7, 'Voyage');

-- --------------------------------------------------------

--
-- Structure de la table `taches`
--

CREATE TABLE IF NOT EXISTS `taches` (
  `idtache` int(10) NOT NULL AUTO_INCREMENT,
  `cin` int(8) NOT NULL,
  `textetache` varchar(250) NOT NULL,
  `datetache` date NOT NULL,
  PRIMARY KEY (`idtache`),
  KEY `cin` (`cin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`cin`) REFERENCES `personne` (`cin`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`cin`) REFERENCES `personne` (`cin`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `commentaire_ibfk_1` FOREIGN KEY (`cin`) REFERENCES `client` (`cin`) ON UPDATE CASCADE,
  ADD CONSTRAINT `commentaire_ibfk_2` FOREIGN KEY (`idoffre`) REFERENCES `offres` (`idoffre`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `galeriephoto`
--
ALTER TABLE `galeriephoto`
  ADD CONSTRAINT `galeriephoto_ibfk_1` FOREIGN KEY (`idoffre`) REFERENCES `offres` (`idoffre`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `galerievideo`
--
ALTER TABLE `galerievideo`
  ADD CONSTRAINT `galerievideo_ibfk_1` FOREIGN KEY (`idoffre`) REFERENCES `offres` (`idoffre`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `offres`
--
ALTER TABLE `offres`
  ADD CONSTRAINT `offres_ibfk_1` FOREIGN KEY (`idservice`) REFERENCES `services` (`idservice`) ON UPDATE CASCADE,
  ADD CONSTRAINT `offres_ibfk_2` FOREIGN KEY (`cin`) REFERENCES `prestataire` (`cin`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `personne`
--
ALTER TABLE `personne`
  ADD CONSTRAINT `personne_ibfk_1` FOREIGN KEY (`idcompte`) REFERENCES `comptes` (`idcompte`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `prestataire`
--
ALTER TABLE `prestataire`
  ADD CONSTRAINT `prestataire_ibfk_1` FOREIGN KEY (`cin`) REFERENCES `personne` (`cin`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `reclamation`
--
ALTER TABLE `reclamation`
  ADD CONSTRAINT `reclamation_ibfk_1` FOREIGN KEY (`cin`) REFERENCES `client` (`cin`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`cin`) REFERENCES `client` (`cin`) ON UPDATE CASCADE,
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`idoffre`) REFERENCES `offres` (`idoffre`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `taches`
--
ALTER TABLE `taches`
  ADD CONSTRAINT `taches_ibfk_1` FOREIGN KEY (`cin`) REFERENCES `client` (`cin`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
