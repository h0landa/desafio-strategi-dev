-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 22-Abr-2022 às 00:11
-- Versão do servidor: 8.0.28
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `storage`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alembic_version`
--

DROP TABLE IF EXISTS `alembic_version`;
CREATE TABLE IF NOT EXISTS `alembic_version` (
  `version_num` varchar(32) NOT NULL,
  PRIMARY KEY (`version_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidatos`
--

DROP TABLE IF EXISTS `candidatos`;
CREATE TABLE IF NOT EXISTS `candidatos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `path` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipe`
--

DROP TABLE IF EXISTS `equipe`;
CREATE TABLE IF NOT EXISTS `equipe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `path` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `herois`
--

DROP TABLE IF EXISTS `herois`;
CREATE TABLE IF NOT EXISTS `herois` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `descrição` text NOT NULL,
  `path` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=839 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `herois`
--

INSERT INTO `herois` (`id`, `nome`, `descrição`, `path`) VALUES
(739, '3-D Man', '', 'http://i.annihil.us/u/prod/marvel/i/mg/c/e0/535fecbbb9784.jpg'),
(740, 'A-Bomb (HAS)', 'Rick Jones has been Hulk\'s best bud since day one, but now he\'s more than a friend...he\'s a teammate! Transformed by a Gamma energy explosion, A-Bomb\'s thick, armored skin is just as strong and powerful as it is blue. And when he curls into action, he uses it like a giant bowling ball of destruction! ', 'http://i.annihil.us/u/prod/marvel/i/mg/3/20/5232158de5b16.jpg'),
(741, 'A.I.M.', 'AIM is a terrorist organization bent on destroying the world.', 'http://i.annihil.us/u/prod/marvel/i/mg/6/20/52602f21f29ec.jpg'),
(742, 'Aaron Stack', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(743, 'Abomination (Emil Blonsky)', 'Formerly known as Emil Blonsky, a spy of Soviet Yugoslavian origin working for the KGB, the Abomination gained his powers after receiving a dose of gamma radiation similar to that which transformed Bruce Banner into the incredible Hulk.', 'http://i.annihil.us/u/prod/marvel/i/mg/9/50/4ce18691cbf04.jpg'),
(744, 'Abomination (Ultimate)', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(745, 'Absorbing Man', '', 'http://i.annihil.us/u/prod/marvel/i/mg/1/b0/5269678709fb7.jpg'),
(746, 'Abyss', '', 'http://i.annihil.us/u/prod/marvel/i/mg/9/30/535feab462a64.jpg'),
(747, 'Abyss (Age of Apocalypse)', '', 'http://i.annihil.us/u/prod/marvel/i/mg/3/80/4c00358ec7548.jpg'),
(748, 'Adam Destine', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(749, 'Adam Warlock', 'Adam Warlock is an artificially created human who was born in a cocoon at a scientific complex called The Beehive.', 'http://i.annihil.us/u/prod/marvel/i/mg/a/f0/5202887448860.jpg'),
(750, 'Aegis (Trey Rollins)', '', 'http://i.annihil.us/u/prod/marvel/i/mg/5/e0/4c0035c9c425d.gif'),
(751, 'Aero (Aero)', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(752, 'Agatha Harkness', '', 'http://i.annihil.us/u/prod/marvel/i/mg/c/a0/4ce5a9bf70e19.jpg'),
(753, 'Agent Brand', '', 'http://i.annihil.us/u/prod/marvel/i/mg/4/60/52695285d6e7e.jpg'),
(754, 'Agent X (Nijo)', 'Originally a partner of the mind-altering assassin Black Swan, Nijo spied on Deadpool as part of the Swan\'s plan to exact revenge for Deadpool falsely taking credit for the Swan\'s assassination of the Four Winds crime family, which included Nijo\'s brother.', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(755, 'Agent Zero', '', 'http://i.annihil.us/u/prod/marvel/i/mg/f/60/4c0042121d790.jpg'),
(756, 'Agents of Atlas', '', 'http://i.annihil.us/u/prod/marvel/i/mg/9/a0/4ce18a834b7f5.jpg'),
(757, 'Aginar', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(758, 'Air-Walker (Gabriel Lan)', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(759, 'Ajak', '', 'http://i.annihil.us/u/prod/marvel/i/mg/2/80/4c002f35c5215.jpg'),
(760, 'Ajaxis', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/70/4c0035adc7d3a.jpg'),
(761, 'Akemi', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(762, 'Alain', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(763, 'Albert Cleary', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(764, 'Albion', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(765, 'Alex Power', '', 'http://i.annihil.us/u/prod/marvel/i/mg/9/50/4ce5a385a2e82.jpg'),
(766, 'Alex Wilder', 'Despite being the only one of the Runaways without any superhuman abilities or tech, Alex Wilder became the de facto leader of the group due to his natural leadership skills and intellect, as well as prodigy-level logic and strategy.', 'http://i.annihil.us/u/prod/marvel/i/mg/2/c0/4c00377144d5a.jpg'),
(767, 'Alexa Mendez', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(768, 'Alexander Pierce', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(769, 'Alice', '', 'http://i.annihil.us/u/prod/marvel/i/mg/6/70/4cd061e6d6573.jpg'),
(770, 'Alicia Masters', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/4c003d40ac7ae.jpg'),
(771, 'Alpha Flight', '', 'http://i.annihil.us/u/prod/marvel/i/mg/1/60/52695277ee088.jpg'),
(772, 'Alpha Flight (Ultimate)', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(773, 'Alvin Maker', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(774, 'Amadeus Cho', '', 'http://i.annihil.us/u/prod/marvel/i/mg/3/80/520288b9cb581.jpg'),
(775, 'Amanda Sefton', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(776, 'Amazoness', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(777, 'American Eagle (Jason Strongbow)', '', 'http://i.annihil.us/u/prod/marvel/i/mg/f/80/4ce5a6d8b8f2a.jpg'),
(778, 'Amiko', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(779, 'Amora', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(780, 'Amphibian (Earth-712)', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(781, 'Amun', 'Amun is a ruthless teenage assassin, employed by the Sisterhood of the Wasp to serve under the mage Vincent after Araña interrupted the ritual to initiate the Wasp\'s new chosen one.', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(782, 'Ancient One', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/b0/4ce59ea2103ac.jpg'),
(783, 'Ancient One (Ultimate)', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(784, 'Angel (Angel Salvadore)', 'Driven out of home by her abusive step-father, fourteen-year old Angel Salvadore slept in the woods, where her mutant nature manifested itself in the form of a protective cocoon.', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(785, 'Angel (Thomas Halloway)', '', 'http://i.annihil.us/u/prod/marvel/i/mg/d/03/531769834b15f.jpg'),
(786, 'Angel (Ultimate)', '', 'http://i.annihil.us/u/prod/marvel/i/mg/4/50/531769ae4399f.jpg'),
(787, 'Angel (Warren Worthington III)', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(788, 'Angela (Aldrif Odinsdottir)', '', 'http://i.annihil.us/u/prod/marvel/i/mg/7/00/545a82f59dd73.jpg'),
(789, 'Anita Blake', '', 'http://i.annihil.us/u/prod/marvel/i/mg/2/a0/4c0038fa14452.jpg'),
(790, 'Anne Marie Hoag', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(791, 'Annihilus', '', 'http://i.annihil.us/u/prod/marvel/i/mg/5/f0/528d31f20a2f6.jpg'),
(792, 'Anole', '', 'http://i.annihil.us/u/prod/marvel/i/mg/9/20/4c002e635ddd9.jpg'),
(793, 'Ant-Man (Eric O\'Grady)', '', 'http://i.annihil.us/u/prod/marvel/i/mg/9/c0/53176aa9df48d.jpg'),
(794, 'Ant-Man (Hank Pym)', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(795, 'Ant-Man (Scott Lang)', '', 'http://i.annihil.us/u/prod/marvel/i/mg/e/20/52696868356a0.jpg'),
(796, 'Anthem', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(797, 'Apocalypse', '', 'http://i.annihil.us/u/prod/marvel/i/mg/f/e0/526166076a1d0.jpg'),
(798, 'Apocalypse (Ultimate)', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(799, 'Aqueduct', '', 'http://i.annihil.us/u/prod/marvel/i/mg/5/50/4c0035b3630cd.jpg'),
(800, 'Arachne', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/70/5269526591794.jpg'),
(801, 'Araٌa', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(802, 'Arcade', '', 'http://i.annihil.us/u/prod/marvel/i/mg/2/a0/4c0042091ab69.jpg'),
(803, 'Arcana', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(804, 'Archangel', '', 'http://i.annihil.us/u/prod/marvel/i/mg/8/03/526165ed93180.jpg'),
(805, 'Arclight', '', 'http://i.annihil.us/u/prod/marvel/i/mg/5/f0/4c0042067fd8b.jpg'),
(806, 'Ares', '', 'http://i.annihil.us/u/prod/marvel/i/mg/c/10/535ff3daea603.jpg'),
(807, 'Argent', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(808, 'Armadillo', '', 'http://i.annihil.us/u/prod/marvel/i/mg/2/40/4c0032754da02.jpg'),
(809, 'Armor (Hisako Ichiki)', '', 'http://i.annihil.us/u/prod/marvel/i/mg/9/20/4c002e6cbf990.jpg'),
(810, 'Armory', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(811, 'Arnim Zola', 'The frail, dwarfish Arnim Zola was born in 1930s Switzerland where he became the world\'s leading biochemist and genetic engineer.', 'http://i.annihil.us/u/prod/marvel/i/mg/8/b0/4c00393a4cb7c.jpg'),
(812, 'Arsenic', '', 'http://i.annihil.us/u/prod/marvel/i/mg/8/c0/4c00359a2be7b.jpg'),
(813, 'Artiee', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(814, 'Asgardian', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(815, 'Askew-Tronics', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(816, 'Asylum', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(817, 'Atlas (Team)', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(818, 'Attuma', 'Attuma was born into the tribe of Homo mermanus who eschewed civilization to live as nomadic barbarians. For some unrecorded reason, Attuma was endowed with strength far surpassing that of his people.', 'http://i.annihil.us/u/prod/marvel/i/mg/9/90/4ce5a862a6c48.jpg'),
(819, 'Aurora', '', 'http://i.annihil.us/u/prod/marvel/i/mg/f/10/4c004203f1072.jpg'),
(820, 'Avalanche', '', 'http://i.annihil.us/u/prod/marvel/i/mg/f/10/4c0042010d383.jpg'),
(821, 'Avengers', 'Earth\'s Mightiest Heroes joined forces to take on threats that were too big for any one hero to tackle. With a roster that has included Captain America, Iron Man, Ant-Man, Hulk, Thor, Wasp and dozens more over the years, the Avengers have come to be regarded as Earth\'s No. 1 team.', 'http://i.annihil.us/u/prod/marvel/i/mg/9/20/5102c774ebae7.jpg'),
(822, 'Avengers (Ultimate)', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(823, 'Azazel (Mutant)', 'A mutant from biblical times, Azazel is the ruler of the Neyaphem and claims that the Earth and everything on it belongs to him.', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(824, 'Balder', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/f0/4ce5a7c2814ba.gif'),
(825, 'Banshee', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/03/52740e4619f54.jpg'),
(826, 'Banshee (Theresa Rourke)', 'The daughter of former X-Men member Sean Cassidy, a.k.a. Banshee, and Maeve Rourke, Theresa Rourke was raised by her first cousin once removed, mutant terrorist Thomas Cassidy, a.k.a. Black Tom.', 'http://i.annihil.us/u/prod/marvel/i/mg/b/c0/4ce5a1a50e56b.jpg'),
(827, 'Baron Mordo (Karl Mordo)', 'Born in 1921, Karl Mordo was the son of Nikolai Mordo.  He vowed that, as the second Baron Mordo, he would achieve his father’s hopes and more.', 'http://i.annihil.us/u/prod/marvel/i/mg/f/90/4ce5a86dba8a8.jpg'),
(828, 'Baron Strucker', '', 'http://i.annihil.us/u/prod/marvel/i/mg/8/80/4c0041fb5a90d.jpg'),
(829, 'Baron Zemo (Heinrich Zemo)', '', 'http://i.annihil.us/u/prod/marvel/i/mg/9/60/4c0041f84c9fe.jpg'),
(830, 'Baron Zemo (Helmut Zemo)', '', 'http://i.annihil.us/u/prod/marvel/i/mg/5/a0/4c0035890fb0a.jpg'),
(831, 'Baroness S\'Bak', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(832, 'Barracuda', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(833, 'Bart Rozum', '', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(834, 'Bastion', '', 'http://i.annihil.us/u/prod/marvel/i/mg/d/80/52695253215f4.jpg'),
(835, 'Batroc the Leaper', '', 'http://i.annihil.us/u/prod/marvel/i/mg/c/80/4ce59eb840da5.gif'),
(836, 'Battering Ram', '', 'http://i.annihil.us/u/prod/marvel/i/mg/f/60/4c002e0305708.gif'),
(837, 'Battlestar', 'Lamar Hoskins was once a wrestler who was given superhuman strength by the Power Broker.', 'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg'),
(838, 'Beak', '', 'http://i.annihil.us/u/prod/marvel/i/mg/5/90/4c0040b8329ad.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vingadores`
--

DROP TABLE IF EXISTS `vingadores`;
CREATE TABLE IF NOT EXISTS `vingadores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `path` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
