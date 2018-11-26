-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 26 Novembre 2018 à 16:03
-- Version du serveur :  5.7.24-0ubuntu0.16.04.1
-- Version de PHP :  7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projet`
--

-- --------------------------------------------------------

--
-- Structure de la table `favorie`
--

CREATE TABLE `favorie` (
  `Id` int(11) NOT NULL,
  `user_Id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `resume` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `favorie`
--

INSERT INTO `favorie` (`Id`, `user_Id`, `name`, `resume`) VALUES
(2, 3, 'Death Note', 'Inspiré du célèbre manga japonais écrit par Tsugumi Ohba et illustré par Takeshi Obata, Death Note suit un lycéen qui trouve un carnet doté d\'un pouvoir surnaturel : quiconque le possède condamne à mort ceux dont il y inscrit le nom en pensant à leur visage. Enivré par un sentiment de toute-puissance quasi divine, le jeune homme commence à tuer ceux qu\'il estime indignes de vivre.'),
(20, 1, 'One Piece', 'Gold Roger est le seigneur des pirates. À sa mort, une grande vague de piraterie s\'abat sur le monde. Ces pirates partent à la recherche du One Piece, le fabuleux trésor amassé par Gold Roger durant tout sa vie. Notre histoire commence dans un petit village dans lequel une bande de pirates réside depuis un an. Monkey D. Luffy, notre héros, est un petit garçon qui rêve de devenir pirate et demande inlassablement à Shanks le Roux, le chef des pirates, de le prendre dans son équipage. Celui-ci refuse évidemment à chaque fois en le tournant en ridicule. Un jour, Luffy mange par erreur le trésor des pirates qui n\'est autre que l\'un des fruits du démon, qui ont la réputation de donner des pouvoirs spéciaux. C\'est ainsi que Luffy devient un homme élastique. Toutefois, le mangeur d\'un fruit du démon se retrouve dans l\'incapacité de nager... Dix ans plus tard, nous retrouvons Luffy qui décide de prendre la mer à la recherche d\'un équipage à lui et avec pour objectif de devenir le seigneur des pirates !'),
(22, 5, 'One Piece', 'Gold Roger est le seigneur des pirates. À sa mort, une grande vague de piraterie s\'abat sur le monde. Ces pirates partent à la recherche du One Piece, le fabuleux trésor amassé par Gold Roger durant tout sa vie. Notre histoire commence dans un petit village dans lequel une bande de pirates réside depuis un an. Monkey D. Luffy, notre héros, est un petit garçon qui rêve de devenir pirate et demande inlassablement à Shanks le Roux, le chef des pirates, de le prendre dans son équipage. Celui-ci refuse évidemment à chaque fois en le tournant en ridicule. Un jour, Luffy mange par erreur le trésor des pirates qui n\'est autre que l\'un des fruits du démon, qui ont la réputation de donner des pouvoirs spéciaux. C\'est ainsi que Luffy devient un homme élastique. Toutefois, le mangeur d\'un fruit du démon se retrouve dans l\'incapacité de nager... Dix ans plus tard, nous retrouvons Luffy qui décide de prendre la mer à la recherche d\'un équipage à lui et avec pour objectif de devenir le seigneur des pirates !'),
(23, 5, 'Death Note', 'Inspiré du célèbre manga japonais écrit par Tsugumi Ohba et illustré par Takeshi Obata, Death Note suit un lycéen qui trouve un carnet doté d\'un pouvoir surnaturel : quiconque le possède condamne à mort ceux dont il y inscrit le nom en pensant à leur visage. Enivré par un sentiment de toute-puissance quasi divine, le jeune homme commence à tuer ceux qu\'il estime indignes de vivre.'),
(25, 1, 'Kuroko no basket', 'Le collège Teiko a vu en son sein se développer plusieurs équipes de basket-ball qui ont su lui conférer une renommée nationale. L\'une d\'entre elles s\'est particulièrement démarquée grâce aux cinq jeunes prodiges qui la composaient et qui virent leur groupe appelé la Génération des miracles. Toutefois, une rumeur circule concernant la présence fantomatique d\'un sixième joueur reconnu par les cinq prodiges. Alors que l\'année scolaire débute au lycée Seirin, les clubs cherchent à recruter de nouveaux membres. Le club de basket voit notamment débarquer deux recrues inespérées : Taiga Kagami, un adolescent au regard incisif ayant pu apprendre le basket à sa source lors de ses études en Amérique, et Tetsuya Kuroko, le fameux sixième homme de la Génération des miracles. Bien qu\'au commencement les deux futurs partenaires cherchent à évaluer leurs capacités respectives, l\'alchimie s\'opère entre eux, leur permettant de former alors un duo explosif qui verra tôt ou tard les cinq autres prodiges de la Génération des miracles se dresser sur leur route.');

-- --------------------------------------------------------

--
-- Structure de la table `mangas`
--

CREATE TABLE `mangas` (
  `Id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `resume` text NOT NULL,
  `date` varchar(100) NOT NULL,
  `img` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mangas`
--

INSERT INTO `mangas` (`Id`, `name`, `resume`, `date`, `img`, `user_id`) VALUES
(1, 'One Piece', 'Gold Roger est le seigneur des pirates. À sa mort, une grande vague de piraterie s\'abat sur le monde. Ces pirates partent à la recherche du One Piece, le fabuleux trésor amassé par Gold Roger durant tout sa vie. Notre histoire commence dans un petit village dans lequel une bande de pirates réside depuis un an. Monkey D. Luffy, notre héros, est un petit garçon qui rêve de devenir pirate et demande inlassablement à Shanks le Roux, le chef des pirates, de le prendre dans son équipage. Celui-ci refuse évidemment à chaque fois en le tournant en ridicule. Un jour, Luffy mange par erreur le trésor des pirates qui n\'est autre que l\'un des fruits du démon, qui ont la réputation de donner des pouvoirs spéciaux. C\'est ainsi que Luffy devient un homme élastique. Toutefois, le mangeur d\'un fruit du démon se retrouve dans l\'incapacité de nager... Dix ans plus tard, nous retrouvons Luffy qui décide de prendre la mer à la recherche d\'un équipage à lui et avec pour objectif de devenir le seigneur des pirates !', 'One Piece est un manga créé par Eiichirō Oda en 1997', 'onepiece.jpg', 1),
(2, 'Death Note', 'Inspiré du célèbre manga japonais écrit par Tsugumi Ohba et illustré par Takeshi Obata, Death Note suit un lycéen qui trouve un carnet doté d\'un pouvoir surnaturel : quiconque le possède condamne à mort ceux dont il y inscrit le nom en pensant à leur visage. Enivré par un sentiment de toute-puissance quasi divine, le jeune homme commence à tuer ceux qu\'il estime indignes de vivre.', ' ANNÉES DE PRODUCTION : 2006 - 2007', 'death.jpg', 1),
(3, 'Kuroko no basket', 'Le collège Teiko a vu en son sein se développer plusieurs équipes de basket-ball qui ont su lui conférer une renommée nationale. L\'une d\'entre elles s\'est particulièrement démarquée grâce aux cinq jeunes prodiges qui la composaient et qui virent leur groupe appelé la Génération des miracles. Toutefois, une rumeur circule concernant la présence fantomatique d\'un sixième joueur reconnu par les cinq prodiges. Alors que l\'année scolaire débute au lycée Seirin, les clubs cherchent à recruter de nouveaux membres. Le club de basket voit notamment débarquer deux recrues inespérées : Taiga Kagami, un adolescent au regard incisif ayant pu apprendre le basket à sa source lors de ses études en Amérique, et Tetsuya Kuroko, le fameux sixième homme de la Génération des miracles. Bien qu\'au commencement les deux futurs partenaires cherchent à évaluer leurs capacités respectives, l\'alchimie s\'opère entre eux, leur permettant de former alors un duo explosif qui verra tôt ou tard les cinq autres prodiges de la Génération des miracles se dresser sur leur route. ', '  ANNÉE DE PRODUCTION : 2012', 'kuru.jpg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `FirstName` varchar(40) NOT NULL,
  `LastName` varchar(40) NOT NULL,
  `Mail` varchar(40) NOT NULL,
  `Password` varchar(140) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`Id`, `FirstName`, `LastName`, `Mail`, `Password`) VALUES
(1, 'Alan', 'Perreira', 'add@hotmail.fr', '$2y$11$42dc711ec6b955ae0fedeuVOL16cOkNtguVStvB.iepJfJ/tA6pxi'),
(3, 'lucy', 'artefilia', 'lucy@hotmail.fr', '$2y$11$a9ca2e301fe210f98513cu0QBLppDTwEYJB.kRp/Fe6ycqoqu61Du'),
(4, 'jean', 'Amazan', 'bubu@hotmail.fr', '$2y$11$a764f2f6894ecba65028fe/nlbpG1EBPoSQosD9xQmXsfO2jJy1S6'),
(5, 'Thibaut', 'Monesma', 'thib@gmail.com', '$2y$11$4b1cbd3e749f03fe1fadfusle8PcDh3Qb/hI8aUyX7xt/BiBk0z2O'),
(6, 'jury', 'monsieur', 'jury@hotmail.fr', '$2y$11$df5ab780842442e4b5d6debzKPl.xpwyUqK27rLR2bPh.q.Ukbhge');

-- --------------------------------------------------------

--
-- Structure de la table `userAvis`
--

CREATE TABLE `userAvis` (
  `Id` int(11) NOT NULL,
  `user_Id` int(11) NOT NULL,
  `avis` text NOT NULL,
  `mangas_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `userAvis`
--

INSERT INTO `userAvis` (`Id`, `user_Id`, `avis`, `mangas_Id`) VALUES
(2, 1, 'One piece c\'est le meilleur mangas de l\'univers !!!', 1),
(9, 1, 'yeeah', 2);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `favorie`
--
ALTER TABLE `favorie`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `mangas`
--
ALTER TABLE `mangas`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `userAvis`
--
ALTER TABLE `userAvis`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `favorie`
--
ALTER TABLE `favorie`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT pour la table `mangas`
--
ALTER TABLE `mangas`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `userAvis`
--
ALTER TABLE `userAvis`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
