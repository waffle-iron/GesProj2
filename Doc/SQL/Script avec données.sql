-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 10 Mai 2017 à 15:30
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.6.4

DROP DATABASE IF EXISTS db_formation;
CREATE DATABASE db_formation DEFAULT CHARACTER SET latin1 COLLATE latin1_general_cs;
USE db_formation;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `db_formation`
--

-- --------------------------------------------------------

--
-- Structure de la table `instruit`
--

CREATE TABLE IF NOT EXISTS `instruit` (
  `idFormateur` int(11) NOT NULL,
  `idFormation` int(11) NOT NULL,
  PRIMARY KEY (`idFormateur`,`idFormation`),
  KEY `FK_instruit_idFormation` (`idFormation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

-- --------------------------------------------------------

--
-- Structure de la table `t_etudiant`
--

CREATE TABLE IF NOT EXISTS `t_etudiant` (
  `idEtudiant` int(11) NOT NULL AUTO_INCREMENT,
  `etuNom` varchar(50) COLLATE latin1_general_cs DEFAULT NULL,
  `etuPrenom` varchar(50) COLLATE latin1_general_cs DEFAULT NULL,
  `etuAdresse` varchar(255) COLLATE latin1_general_cs DEFAULT NULL,
  `etuEmail` varchar(70) COLLATE latin1_general_cs DEFAULT NULL,
  `etuTelephone` varchar(12) COLLATE latin1_general_cs DEFAULT NULL,
  PRIMARY KEY (`idEtudiant`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs AUTO_INCREMENT=101 ;

--
-- Contenu de la table `t_etudiant`
--

INSERT INTO `t_etudiant` (`idEtudiant`, `etuNom`, `etuPrenom`, `etuAdresse`, `etuEmail`, `etuTelephone`) VALUES
(1, 'Gerard', 'Ethan', '1174, Thiré, Rue Isabey 97', 'tatiana.maurice@etml.educanet2.ch', '078.456.45.1'),
(2, 'Lemaire', 'Émilie', '1618, Villers-lès-Nancy, Avenue du Général-Tripier 22', 'marion.marques@etml.educanet2.ch', '078.891.26.5'),
(3, 'Da costa', 'Yanis', '1096, Villeneuvette, Rue Geoffroy-Saint-Hilaire 39', 'noemie.bigot@etml.educanet2.ch', '079.179.90.7'),
(4, 'Humbert', 'Julien', '1913, Ploemeur, Place Alfred-Sauvy 84', 'gilbert.fortin@etml.educanet2.ch', '075.630.74.7'),
(5, 'Leon', 'Jeanne', '1425, Vitteaux, Place Jacques-Rueff 44', 'eva.marty@etml.educanet2.ch', '078.138.89.4'),
(6, 'Ferreira', 'Alicia', '1878, Rimbez-et-Baudiets, Rue de Grenelle 7', 'killian.da.silva@etml.educanet2.ch', '077.211.10.5'),
(7, 'Schmitt', 'Timothée', '1300, Villers-sur-Auchy, Rue Fourcroy 24', 'davy.chapuis@etml.educanet2.ch', '076.023.95.1'),
(8, 'Lefevre', 'Arthur', '1990, Saint-Germain-sur-Bresle, Rue Ernest-Hemingway 75', 'francoise.adam@etml.educanet2.ch', '077.773.86.3'),
(9, 'Mas', 'Tatiana', '1464, Saint-Yon, Rue Déodat-de-Séverac 38', 'matheo.regnier@etml.educanet2.ch', '079.710.69.0'),
(10, 'Meunier', 'Lana', '1940, Fontaine-lès-Dijon, Cité de la Chapelle 79', 'loane.guillou@etml.educanet2.ch', '076.223.29.8'),
(11, 'Jourdain', 'Ethan', '1619, Saint-Étienne-de-Chigny, Cité Hermel 66', 'paul.arnaud@etml.educanet2.ch', '078.970.78.0'),
(12, 'Guillon', 'Maïwenn', '1953, Saint-Nicolas-la-Chapelle, Rue Froidevaux 14', 'esteban.klein@etml.educanet2.ch', '076.240.75.6'),
(13, 'Marty', 'Célia', '1237, Septème, Rue de Bazeilles 60', 'theo.vidal@etml.educanet2.ch', '075.328.86.3'),
(14, 'Bigot', 'Nicolas', '1383, Vazerac, Rue des Balkans 15', 'cloe.vial@etml.educanet2.ch', '077.139.03.9'),
(15, 'Langlois', 'Émile', '1000, Vendeuvre-du-Poitou, Rue Cauchy 40', 'anael.roques@etml.educanet2.ch', '075.018.20.5'),
(16, 'Da costa', 'Marine', '1701, Bois-Colombes, Rue du Général-de-Castelnau 27', 'ethan.gomes@etml.educanet2.ch', '075.365.37.7'),
(17, 'Castel', 'Justine', '1458, Villegouge, Rue Beauregard 74', 'guillaume.picot@etml.educanet2.ch', '078.718.44.2'),
(18, 'Comte', 'Constant', '1964, Paris 4ème, Place Francis-Poulenc 39', 'zacharis.laine@etml.educanet2.ch', '079.975.27.0'),
(19, 'Gras', 'Juliette', '1385, Donzy, Passage des Acacias 68', 'erwan.baudry@etml.educanet2.ch', '076.093.80.7'),
(20, 'Lebrun', 'Simon', '1957, Wambercourt, Rue Dareau 61', 'lamia.guillaume@etml.educanet2.ch', '077.534.35.7'),
(21, 'Jacques', 'Enzo', '1305, Pléneuf-Val-André, Villa Albert-Robida 52', 'florian.le.corre@etml.educanet2.ch', '077.864.46.6'),
(22, 'Lamy', 'Gabriel', '1281, Vix, Rue Cassette 70', 'marwane.leclerc@etml.educanet2.ch', '078.925.68.6'),
(23, 'Andrieux', 'Théo', '1228, Colombes, Passage Doisy 7', 'louise.simon@etml.educanet2.ch', '078.207.27.6'),
(24, 'Marques', 'Marion', '1109, Oignies, Rue Fernand-Foureau 79', 'maxime.gilles@etml.educanet2.ch', '077.058.42.6'),
(25, 'Carre', 'Guillemette', '1335, Saint-Pierre-de-Chignac, Place Émile-Landrin 76', 'lou.bourgeois@etml.educanet2.ch', '078.372.85.2'),
(26, 'Jacquot', 'Margot', '1230, Wolfersdorf, Rue de l\\''Est 23', 'sara.leveque@etml.educanet2.ch', '079.563.82.1'),
(27, 'Tournier', 'Mattéo', '1865, Yzeures-sur-Creuse, Rue Fabert 57', 'lilou.fouquet@etml.educanet2.ch', '079.052.84.7'),
(28, 'Charles', 'Juliette', '1904, Thivars, Rue Albert-Malet 49', 'amelie.carlier@etml.educanet2.ch', '077.726.54.9'),
(29, 'Adam', 'Rémi', '1645, Le Vivier-sur-Mer, Rue Abel-Gance 11', 'louna.charbonnier@etml.educanet2.ch', '075.616.46.6'),
(30, 'Pons', 'Antonin', '1998, Sigournais, Rue du Dahomey 25', 'yanis.cousin@etml.educanet2.ch', '079.468.23.9'),
(31, 'Collet', 'Marine', '2000, Poligny, Villa Dufresne 63', 'sara.couturier@etml.educanet2.ch', '077.296.54.8'),
(32, 'Deschamps', 'Florian', '1551, Saint-Genis-l\\''Argentière, Impasse Dombasle 81', 'emilie.hernandez@etml.educanet2.ch', '076.878.57.5'),
(33, 'Levy', 'Candice', '1395, Paillencourt, Rue du Faubourg-Saint-Honoré 86', 'louis.noel@etml.educanet2.ch', '078.530.61.6'),
(34, 'Pichon', 'Jordan', '1843, Brive-la-Gaillarde, Place Henri-Krasucki 54', 'corentin.ferrer@etml.educanet2.ch', '079.830.94.6'),
(35, 'Guignard', 'Justine', '1405, Thonnance-les-Moulins, Rue Guy-de-Maupassant 77', 'antonin.guerin@etml.educanet2.ch', '078.972.36.5'),
(36, 'Le guen', 'Maéva', '1740, Santeuil, Impasse Alexandre-Lécuyer 20', 'tatiana.gillet@etml.educanet2.ch', '077.115.77.2'),
(37, 'Alves', 'Jasmine', '1613, Montreuil-Bonnin, Villa des Aigrettes 1', 'yuna.gay@etml.educanet2.ch', '077.660.44.3'),
(38, 'Lemoine', 'Nolan', '1531, Tourtoirac, Rue Gossec 62', 'tristan.laroche@etml.educanet2.ch', '077.645.43.9'),
(39, 'Lemaire', 'Jade', '1692, Wittisheim, Rue des Haies 46', 'celia.petit@etml.educanet2.ch', '075.311.55.4'),
(40, 'Diaz', 'Cloé', '1075, Quinsac, Rue Faustin-Hélie 89', 'yanis.leonard@etml.educanet2.ch', '078.676.33.8'),
(41, 'Thiebaut', 'Jasmine', '1400, Valleroy, Impasse Florimont 10', 'capucine.cochet@etml.educanet2.ch', '076.509.33.9'),
(42, 'Toussaint', 'Roméo', '1171, Jumilhac-le-Grand, Rue de la Félicité 39', 'margaux.germain@etml.educanet2.ch', '078.781.22.3'),
(43, 'Valentin', 'Clémence', '1895, Le Mans, Avenue de France 79', 'florian.mas@etml.educanet2.ch', '077.798.31.1'),
(44, 'Ribeiro', 'Rose', '1368, Saint-Genis-les-Ollières, Rue Francoeur 79', 'mathieu.legrand@etml.educanet2.ch', '076.184.92.4'),
(45, 'Buisson', 'Léa', '1325, Seignelay, Rue des Capucines 40', 'angelina.garnier@etml.educanet2.ch', '075.127.42.1'),
(46, 'Dupre', 'Romain', '1218, Vignol, Rue de la Chapelle 47', 'alexandre.david@etml.educanet2.ch', '078.006.56.1'),
(47, 'Lopez', 'Lou', '1472, Isle, Allée des Frères-Voisin 12', 'kevin.dubois@etml.educanet2.ch', '079.488.92.2'),
(48, 'Chartier', 'Louis', '1547, Vy-lès-Lure, Boulevard Davout 73', 'leon.marie@etml.educanet2.ch', '076.136.19.8'),
(49, 'Schmitt', 'Fabrice', '1879, Molières-sur-Cèze, Rue de l\\''Égalité 87', 'corentin.moreau@etml.educanet2.ch', '075.242.82.3'),
(50, 'Robert', 'Julien', '1215, Villers-Saint-Christophe, Pont Alexandre-III 1', 'amine.carpentier@etml.educanet2.ch', '077.382.22.4'),
(51, 'Benoit', 'Alicia', '1050, Virey, Rue du Général-Archinard 59', 'felix.granger@etml.educanet2.ch', '075.633.70.2'),
(52, 'Albert', 'Bienvenue', '1819, Longueau, Rue de la Dhuis 94', 'antonin.godard@etml.educanet2.ch', '077.311.96.6'),
(53, 'Munoz', 'Lauriane', '1185, Tournay, Rue Fernand-Braudel 41', 'pauline.bouchard@etml.educanet2.ch', '077.945.52.6'),
(54, 'Gaudin', 'Lucas', '1076, Neufgrange, Rue Benjamin-Franklin 25', 'erwan.fontaine@etml.educanet2.ch', '079.735.83.1'),
(55, 'Benoist', 'Léonard', '1825, Cargèse, Rue Caillaux 6', 'esteban.cousin@etml.educanet2.ch', '075.478.93.9'),
(56, 'Fontaine', 'Lucie', '1522, La Villeneuve-en-Chevrie, Rue Danton 44', 'nolan.leon@etml.educanet2.ch', '078.814.57.7'),
(57, 'Charrier', 'Maïwenn', '1094, Vieugy, Rue Henri-Murger 89', 'kevin.weber@etml.educanet2.ch', '078.608.89.8'),
(58, 'Muller', 'Charlotte', '1038, Saint-Pierre-Azif, Rue du Capitaine-Ménard 51', 'constant.legendre@etml.educanet2.ch', '079.215.21.4'),
(59, 'Brunel', 'Bastien', '1436, Panazol, Cité Dupetit-Thouars 35', 'jeanne.perrot@etml.educanet2.ch', '078.385.67.7'),
(60, 'Ricard', 'Margot', '1079, Vermelles, Rue de l\\''Industrie 20', 'lana.pons@etml.educanet2.ch', '078.741.75.4'),
(61, 'Dubreuil', 'Océane', '1912, Saint-Hippolyte, Rue David-d\\''Angers 85', 'jordan.jung@etml.educanet2.ch', '077.158.69.8'),
(62, 'Ruiz', 'Salomé', '1827, Valsonne, Impasse de l\\''Enfant-Jésus 20', 'diego.evrard@etml.educanet2.ch', '077.963.40.9'),
(63, 'Petitjean', 'Diego', '1534, Saint-Georges-de-Rouelley, Rue de la Guadeloupe 83', 'lauriane.merlin@etml.educanet2.ch', '076.194.66.7'),
(64, 'Michaud', 'Thomas', '1895, Bagneux, Rue des Jardiniers 82', 'clemence.besson@etml.educanet2.ch', '079.798.13.3'),
(65, 'Leveque', 'Nathan', '1999, Surques, Rue de la Cavalerie 89', 'louise.walter@etml.educanet2.ch', '076.722.25.3'),
(66, 'Gros', 'Yasmine', '1811, Saint-James, Cour de la Ferme-Saint-Lazare 72', 'romeo.delorme@etml.educanet2.ch', '077.603.24.8'),
(67, 'Bodin', 'Titouan', '1039, Voimhaut, Rue de la Gare-de-Reuilly 15', 'sarah.lambert@etml.educanet2.ch', '079.582.23.1'),
(68, 'Roger', 'Clément', '1404, Tendron, Rue Adolphe-Jullien 12', 'gabriel.leblond@etml.educanet2.ch', '077.872.56.5'),
(69, 'Morin', 'Mélissa', '1011, Marly-le-Roi, Rue de Jarente 45', 'simon.berthier@etml.educanet2.ch', '077.294.78.8'),
(70, 'Vial', 'Mélissa', '1650, Vertamboz, Rue Jacob 52', 'alexia.gillet@etml.educanet2.ch', '076.042.89.3'),
(71, 'Grandjean', 'Noë', '1066, Vyt-lès-Belvoir, Passage de l\\''Industrie 13', 'kilian.prevost@etml.educanet2.ch', '075.627.82.6'),
(72, 'Drouet', 'Julien', '1247, La Queue-lès-Yvelines, Rue du Douanier-Rousseau 61', 'paul.hardy@etml.educanet2.ch', '075.363.90.7'),
(73, 'Mace', 'Catherine', '1805, Labège, Rue Albert-Camus 91', 'nolan.chapuis@etml.educanet2.ch', '076.488.23.0'),
(74, 'Leon', 'Jasmine', '1002, Vernouillet, Rue de Belfort 54', 'ambre.hamel@etml.educanet2.ch', '077.003.23.1'),
(75, 'Carlier', 'Lina', '1688, Vielle-Soubiran, Passage du Désir 87', 'zoe.lesage@etml.educanet2.ch', '078.297.39.6'),
(76, 'Blondeau', 'Tatiana', '1429, Neuilly-sur-Seine, Rue Gustave-Charpentier 22', 'erwan.poisson@etml.educanet2.ch', '075.356.35.1'),
(77, 'Collet', 'Lilou', '1633, Vandeléville, Rue François-Truffaut 44', 'celia.lamy@etml.educanet2.ch', '077.769.03.0'),
(78, 'Jourdan', 'Maïwenn', '1401, Le Vézier, Avenue Georges-Risler 23', 'diego.godin@etml.educanet2.ch', '076.974.72.4'),
(79, 'Monier', 'Arthur', '1830, Saint-Salvy-de-la-Balme, Rue Firmin-Gémier 22', 'lorenzo.leger@etml.educanet2.ch', '079.830.19.6'),
(80, 'Fernandes', 'Alexandre', '1289, Mesnil-Verclives, Rue Abel-Rabaud 98', 'elena.lagarde@etml.educanet2.ch', '078.381.50.0'),
(81, 'Blanchet', 'Élouan', '1516, Vautebis, Allée Georges-Rouault 19', 'marwane.francois@etml.educanet2.ch', '075.435.02.8'),
(82, 'Charpentier', 'Lou', '1603, Trégrom, Place Étienne-Pernet 74', 'nina.descamps@etml.educanet2.ch', '077.463.89.7'),
(83, 'Barbe', 'Julien', '1535, Verdun-sur-Garonne, Rue Calmels-Prolongée 80', 'clemence.favier@etml.educanet2.ch', '077.695.73.1'),
(84, 'Besse', 'Dimitri', '1102, Valence-d\\''Albigeois, Rue Caulaincourt 44', 'melissa.gueguen@etml.educanet2.ch', '078.910.81.5'),
(85, 'Husson', 'Fanny', '1505, Saint-Mitre-les-Remparts, Rue des Guillemites 86', 'celia.ferre@etml.educanet2.ch', '078.765.87.2'),
(86, 'Blondeau', 'Bastien', '1305, Yonval, Cour Damoye 25', 'theo.guerin@etml.educanet2.ch', '076.378.19.5'),
(87, 'Barthelemy', 'Clara', '1358, Westrehem, Rue Fleury 63', 'remi.morel@etml.educanet2.ch', '077.596.27.0'),
(88, 'Masse', 'Yasmine', '1796, Guidel, Rue Gît-Le-C?ur 32', 'anna.besson@etml.educanet2.ch', '076.091.51.0'),
(89, 'Faivre', 'Amélie', '1573, Voelfling-lès-Bouzonville, Rue Franquet 78', 'elsa.bonhomme@etml.educanet2.ch', '075.625.46.3'),
(90, 'Camus', 'Malo', '1342, Wintzenheim, Rue Gaston-Tissandier 86', 'matteo.prigent@etml.educanet2.ch', '078.832.31.1'),
(91, 'Dias', 'Hugo', '1944, Le Gillieux, Rue François-Miron 28', 'gilbert.duchemin@etml.educanet2.ch', '075.816.63.1'),
(92, 'Fabre', 'Rosalie', '1514, Pont Croix, Rue Ernest-Lefèvre 84', 'chloe.bernier@etml.educanet2.ch', '075.215.14.0'),
(93, 'Favre', 'Gilbert', '1470, Tilly-la-Campagne, Rue Albert-Bayet 93', 'alexia.moreau@etml.educanet2.ch', '077.248.22.1'),
(94, 'Delaunay', 'Sarah', '1730, Vicq-sur-Gartempe, Avenue du Général-Sarrail 20', 'nina.vallee@etml.educanet2.ch', '078.576.90.8'),
(95, 'Ribeiro', 'Mohamed', '1650, Saint-Martin-de-Crau, Rue Ernest-Lavisse 80', 'mehdi.bousquet@etml.educanet2.ch', '076.979.77.4'),
(96, 'Morin', 'Jeanne', '1284, Rion-des-Landes, Rue Henri-Monnier 63', 'arthur.roche@etml.educanet2.ch', '079.884.74.3'),
(97, 'Petit', 'Capucine', '1602, Montamisé, Rue des Écoles 73', 'lou.lagarde@etml.educanet2.ch', '076.170.51.1'),
(98, 'Guy', 'Erwan', '1845, La Bernerie-en-Retz, Impasse du Gué 72', 'colin.blin@etml.educanet2.ch', '078.571.63.2'),
(99, 'Guillon', 'Capucine', '1852, Bretteville-sur-Odon, Avenue Barbey-d\\''Aurevilly 28', 'mathis.pages@etml.educanet2.ch', '076.320.38.5'),
(100, 'Tellier', 'Léa', '1907, Seysses-Savès, Boulevard du Fort-de-Vaux 76', 'anna.richard@etml.educanet2.ch', '079.906.16.9');

-- --------------------------------------------------------

--
-- Structure de la table `t_formateur`
--

CREATE TABLE IF NOT EXISTS `t_formateur` (
  `idFormateur` int(11) NOT NULL AUTO_INCREMENT,
  `formateurNom` varchar(50) COLLATE latin1_general_cs DEFAULT NULL,
  `formateurPrenom` varchar(50) COLLATE latin1_general_cs DEFAULT NULL,
  `formateurAdresse` varchar(255) COLLATE latin1_general_cs DEFAULT NULL,
  `formateurEmail` varchar(255) COLLATE latin1_general_cs DEFAULT NULL,
  `formateurTelephone` varchar(12) COLLATE latin1_general_cs DEFAULT NULL,
  `formateurTitres` varchar(255) COLLATE latin1_general_cs DEFAULT NULL,
  PRIMARY KEY (`idFormateur`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs AUTO_INCREMENT=26 ;

--
-- Contenu de la table `t_formateur`
--

INSERT INTO `t_formateur` (`idFormateur`, `formateurNom`, `formateurPrenom`, `formateurAdresse`, `formateurEmail`, `formateurTelephone`, `formateurTitres`) VALUES
(1, 'Royer', 'Eva', '1983, Saint-Domet, Rue Drouot 23', 'eva.royer@vd.ch', '079.739.04.7', 'Bachelor en informatique'),
(2, 'Gervais', 'Léon', '1381, Bouchemaine, Rue du Général-Bertrand 90', 'leon.gervais@vd.ch', '076.989.30.8', 'Bachelor HEP'),
(3, 'Dupuy', 'Maryam', '1639, Saint-Maurice-d''Ételan, Rue des Immeubles-Industriels 38', 'maryam.dupuy@vd.ch', '076.688.50.9', 'Bachelor en informatique'),
(4, 'Leroux', 'Nevin', '1452, Le Valtin, Rue des Irlandais 51', 'nevin.leroux@vd.ch', '077.549.15.3', 'Diplome de l''ETML'),
(5, 'Bouchard', 'Amandine', '1835, Sailly, Rue Capron 97', 'amandine.bouchard@vd.ch', '076.782.03.7', 'Bachelor en informatique'),
(6, 'Breton', 'Tristan', '1726, Plourivo, Rue du Capitaine-Ménard 58', 'tristan.breton@vd.ch', '075.664.82.6', 'Bachelor HEP'),
(7, 'Tran', 'Nina', '1862, Saint-Léger, Rue Aimé-Lavy 5', 'nina.tran@vd.ch', '075.290.55.5', 'Diplome de l''ETML'),
(8, 'Guibert', 'Marion', '1275, Uhart-Mixe, Rue Deguerry 11', 'marion.guibert@vd.ch', '079.132.02.1', 'Bachelor en informatique'),
(9, 'Prevot', 'Alexia', '1884, Zevaco, Quai des Célestins 77', 'alexia.prevot@vd.ch', '076.365.42.9', 'Bachelor HEP'),
(10, 'Boyer', 'Amaury', '1894, Saint-Georges-d''Orques, Villa des Aigrettes 42', 'amaury.Boyer@vd.ch', '078.526.16.3', 'Diplome de l''ETML'),
(11, 'Faure', 'Valentin', '1006, Piana, Cité Jandelle 5', 'valentin.Faure@vd.ch', '075.760.54.2', 'Bachelor en informatique'),
(12, 'Fortin', 'Jasmine', '1469, Ventabren, Villa Baumann 74', 'jasmine.fortin@vd.ch', '079.051.11.7', 'Bachelor HEP'),
(13, 'Salmon', 'Amaury', '1409, Villespassans, Rue de Calais 7', 'amaury.salmon@vd.ch', '079.997.01.5', 'Diplome de l''ETML'),
(14, 'Laurent', 'Élisa', '1531, Montagnac, Avenue Gabriel 63', 'elisa.laurent@vd.ch', '076.360.59.8', 'Bachelor en informatique'),
(15, 'Granier', 'Agathe', '1346, Saint-Mars-Vieux-Maisons, Rue du Docteur-Lancereaux 74', 'agathe.granier@vd.ch', '078.615.85.7', 'Diplome de l''ETML'),
(16, 'Ferrer', 'Léo', '2000, Bihorel, Rue du Dôme 2', 'léo.ferrer@vd.ch', '075.421.67.4', 'Diplome de l''ETML'),
(17, 'Torres', 'Lamia', '1314, Montpellier, Avenue de l''Abbé-Roussel 90', 'lamina.torres@vd.ch', '079.672.11.0', 'Diplome de l''ETML'),
(18, 'Henry', 'Mathéo', '1046, Nuillé-sur-Vicoin, Rue du Capitaine-Ferber 64', 'matheo.henry@vd.ch', '079.478.23.3', 'Bachelor en informatique'),
(19, 'Lopez', 'Erwan', '1755, Recquignies, Rue d''Édimbourg 17', 'erwan.lopez@vd.ch', '078.941.48.8', 'Bachelor HEP'),
(20, 'Guichard', 'Baptiste', '1007, Saint-Mars-Vieux-Maisons, Rue Forceval 68', 'baptiste.guichard@vd.ch', '079.758.08.7', 'Diplome de l''ETML'),
(21, 'Rousset', 'Mathieu', '1155, Villy-le-Bas, Rue de Franqueville 25', 'mathieu.rousset@vd.ch', '079.988.41.2', 'Diplome de l''ETML'),
(22, 'Camus', 'Lina', '1375, Vauvillers, Rue Édouard-Lockroy 48', 'Lina.camus@vd.ch', '076.445.28.8', 'Bachelor HEP'),
(23, 'Lacroix', 'Jordan', '1577, Lachapelle-sous-Rougemont, Rue Gustave-Geffroy 50', 'jordan.lacroix@vd.ch', '076.769.42.9', 'Diplome de l''ETML'),
(24, 'Paris', 'Emma', '1820, Biarritz, Rue de l''Abbé-Roger-Derry 81', 'adrien.lombard@vd.ch', '075.046.29.7', 'Diplome de l''ETML'),
(25, 'Roche', 'Yanis', '1004, La Paquelais, Rue Irénée-Blanc 61', 'yanis.roches@vd.ch', '077.372.95.0', 'Bachelor HEP');

-- --------------------------------------------------------

--
-- Structure de la table `t_formations`
--

CREATE TABLE IF NOT EXISTS `t_formations` (
  `idFormation` int(11) NOT NULL AUTO_INCREMENT,
  `forTitre` varchar(50) COLLATE latin1_general_cs DEFAULT NULL,
  `forDescription` varchar(255) COLLATE latin1_general_cs DEFAULT NULL,
  `forDate` datetime DEFAULT NULL,
  `forDuree` int(11) DEFAULT NULL,
  `forPrix` int(11) DEFAULT NULL,
  `forTypeFormation` varchar(50) COLLATE latin1_general_cs DEFAULT NULL,
  `forAdresse` varchar(50) COLLATE latin1_general_cs DEFAULT NULL,
  PRIMARY KEY (`idFormation`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs AUTO_INCREMENT=21 ;

--
-- Contenu de la table `t_formations`
--

INSERT INTO `t_formations` (`idFormation`, `forTitre`, `forDescription`, `forDate`, `forDuree`, `forPrix`, `forTypeFormation`, `forAdresse`) VALUES
(1, 'Scrum', 'Cours pour connaître une méthode de gestion de projet "agile"', '2017-12-04 00:00:00', 16, 500, 'Interne', '1004, Lausanne, Rue de Sébeillon 12'),
(2, 'Bureautique', 'Cours pour maitriser les outils de la suite Office', '2017-08-28 00:00:00', 5, 1500, 'Interne', '1509, Viefvillers, Rue d''Abbeville 71'),
(3, 'WebStatique', 'Cours pour créer un site web en HTML et CSS', '2018-06-04 00:00:00', 8, 2350, 'Externe', '1004, Lausanne, Rue de Sébeillon 12'),
(4, 'WebSession', 'Cours pour faire ajouter de la prog en php', '2017-12-06 00:00:00', 2, 450, 'Interne', '1802, Fontenay-le-Fleury, Rue de la Faisanderie 16'),
(5, 'WebDynamiqueDB', 'Cours pour relier une base de données à un site web', '2017-07-02 00:00:00', 17, 800, 'Externe', '1882, Nieul-sur-Mer, Rue du Capitaine-Tarron 27'),
(6, 'Données', 'Cours pour reconnaitre et trier des données', '2017-11-15 00:00:00', 56, 4560, 'Externe', '1004, Lausanne, Rue de Sébeillon 12'),
(7, 'ImplementerUnModele', 'Cours pour savoir modéliser les données', '2017-09-19 00:00:00', 40, 4562, 'Interne', '1104, Seysses, Place de l''Europe 33'),
(8, 'SQLTraiterDB', 'Cours pour créer une base de données', '2017-11-16 00:00:00', 9, 1470, 'Externe', '1004, Lausanne, Rue de Sébeillon 12'),
(9, 'Hardware', 'Cours pour apprendre les composants d''un ordinateur', '2017-08-28 00:00:00', 7, 550, 'Interne', '1004, Lausanne, Rue de Sébeillon 12'),
(10, 'HardwareOsAdvanced', 'cours pour connaitre la fonction des composants d''un ordinateur', '2018-04-11 00:00:00', 22, 7000, 'Interne', '1949, Tournebu, Rue Francisque-Gay 56'),
(11, 'ProjetMandatAutonome', 'Cours pour savoir gérer les projets', '2017-12-24 00:00:00', 13, 1000, 'Externe', '1022, Marseille, Rue Guillaume-Tell 33'),
(12, 'ProjetInformatique', 'cours pour connaitre la fonction des composants d''un ordinateur', '2017-10-22 00:00:00', 14, 3500, 'Externe', '1201, Saint-Sauveur, Rue Caulaincourt 75'),
(13, 'ReseauPME', 'Cours pour apprendre les composants d''un réseau informatique', '2018-03-11 00:00:00', 18, 4000, 'Externe', '1004, Lausanne, Rue de Sébeillon 12'),
(14, 'ComposantReseau', 'Cours pour approfondire les connaissances sur le composants réseaux', '2017-09-18 00:00:00', 20, 5480, 'Interne', '1004, Lausanne, Rue de Sébeillon 12'),
(15, 'PeripheriquesReseau', 'Cours pour savoir configurer les éléments réseaux', '2018-03-29 00:00:00', 17, 445, 'Interne', '1848, Antorpe, Rue Herschel 74'),
(16, 'RelierUneEntrepriseAInternet', 'Cours pour savoir comment une entreprise peut s''assurer un accès intenet', '2018-05-21 00:00:00', 11, 2450, 'Externe', '1004, Lausanne, Rue de Sébeillon 12'),
(17, 'ExploitationServeur', 'Cours pour savoir assurer des services de manière redondante', '2017-10-16 00:00:00', 18, 5250, 'Interne', '1970, Val-d''Isère, Rue de l''Hirondelle 61'),
(18, 'ProgrammationProcedurale', 'Cours pour avoir une approche de la programmation', '2018-05-20 00:00:00', 8, 3500, 'Externe', '1004, Lausanne, Rue de Sébeillon 12'),
(19, 'ProgrammationOrienteeObjets', 'Cours pour faire de la programmation avec un interface graphique', '2018-05-27 00:00:00', 5, 1550, 'Interne', '1686, Vétrigne, Avenue de la Chapelle 60'),
(20, 'ImplementerOrienteObjets', 'Cours pour apprendre à faire des classes', '2018-05-21 00:00:00', 7, 100, 'Externe', '1686, Vétrigne, Avenue de la Chapelle 60');

-- --------------------------------------------------------

--
-- Structure de la table `t_inscriptions`
--

CREATE TABLE IF NOT EXISTS `t_inscriptions` (
  `idInscriptions` int(11) NOT NULL AUTO_INCREMENT,
  `insParticipants` varchar(255) COLLATE latin1_general_cs DEFAULT NULL,
  `insFormations` varchar(255) COLLATE latin1_general_cs DEFAULT NULL,
  `insDates` varchar(255) COLLATE latin1_general_cs DEFAULT NULL,
  `idEtudiant` int(11) DEFAULT NULL,
  `idFormation` int(11) DEFAULT NULL,
  PRIMARY KEY (`idInscriptions`),
  KEY `FK_t_inscriptions_idEtudiant` (`idEtudiant`),
  KEY `FK_t_inscriptions_idFormation` (`idFormation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs AUTO_INCREMENT=1 ;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `instruit`
--
ALTER TABLE `instruit`
  ADD CONSTRAINT `FK_instruit_idFormation` FOREIGN KEY (`idFormation`) REFERENCES `t_formations` (`idFormation`),
  ADD CONSTRAINT `FK_instruit_idFormateur` FOREIGN KEY (`idFormateur`) REFERENCES `t_formateur` (`idFormateur`);

--
-- Contraintes pour la table `t_inscriptions`
--
ALTER TABLE `t_inscriptions`
  ADD CONSTRAINT `FK_t_inscriptions_idFormation` FOREIGN KEY (`idFormation`) REFERENCES `t_formations` (`idFormation`),
  ADD CONSTRAINT `FK_t_inscriptions_idEtudiant` FOREIGN KEY (`idEtudiant`) REFERENCES `t_etudiant` (`idEtudiant`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
