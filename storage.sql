-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 19-Abr-2022 às 13:06
-- Versão do servidor: 8.0.28
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidatos`
--

DROP TABLE IF EXISTS `candidatos`;
CREATE TABLE IF NOT EXISTS `candidatos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipe`
--

DROP TABLE IF EXISTS `equipe`;
CREATE TABLE IF NOT EXISTS `equipe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `herois`
--

DROP TABLE IF EXISTS `herois`;
CREATE TABLE IF NOT EXISTS `herois` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `caracteristicas` text,
  `habilidades` text,
  `poderes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `herois`
--

INSERT INTO `herois` (`id`, `nome`, `caracteristicas`, `habilidades`, `poderes`) VALUES
(1, 'Superman', ' Suas células funcionam como uma super bateria, que absorvem e armazenam energia / radiação solar amarela, sendo o combustível para ativar suas habilidades sobre-humanas.', 'Perícia em Jornalismo Investigativo e Combate Corporal.', 'Visão de Calor, Super Força, Cura sobre Humana, Super Velocidade.'),
(2, 'Batman', 'Possui um alto nível de inteligência, possuindo uma mente brilhante e analítica, praticamente inigualável.', 'É perito em acrobacias, realizando proezas de equilíbrio, agilidade e coordenação.', 'Não possui poderes.'),
(3, 'Thor', 'Deus do trovão.', 'Manipulação de energia dentre elas a eletricidade e trovão.', 'Força divina, Resistencia e Super Velocidade.'),
(4, 'Hulk', 'Bruce Banner é um cientista genial que devido a exposição de radiação gama, se transforma em um monstro verde quando irritado ou agitado.', 'Mutação.', 'Super Força.'),
(5, 'Viúva Negra', 'Natasha Romanoff é uma ex-espiã russa, que se tornou agente da S.H.I.E.L.D, que em tradução e a Superintendência Humana de Intervenção, Espionagem, Logística e Dissuasão dos Estados Unidos.', 'A Viúva Negra é mestre em artes maciais como boxe, karatê, muay thai e várias outras.', 'Não possui poderes.'),
(6, 'Pantera Negra', 'A identidade secreta do personagem é T’Challa, o rei de Wakanda, um país fictício na África.', 'Proficiência em Artes Maciais. ', 'Não possui poderes.'),
(7, 'Flash', 'Pode criar, convocar, e manipular um tipo de energia que se origina de um reino dimensional diferente, a Força da Aceleração, uma força de energia extra dimensional vagamente definida, a partir do qual a maioria dos indivíduos movidos a super velocidade retiram seus poderes.', 'Soco de Massa Infinita, Aceleração e Deslocamento Temporal.', 'Super Velocidade. '),
(8, 'Aquamen', 'Sua biologia é adaptada ao ambiente oceânico profundo, podendo respirar debaixo de água, suportar as pressões e o frio, e só pode passar certo tempo limitado fora da água.', 'Perícia em estratégia e Combate Armado e Desarmado.', 'Super Velocidade, Cura Sobre-Humana, Visão Noturna, Super Força.'),
(9, 'Capitão America', 'Ganhou super força e velocidade depois de receber um injeção de uma espécie de soro de super soldado.', 'Perícia em Estratégia, Combate Corpo a Corpo, Artes Maciais.', 'Super Velocidade, Super Força e resistência sobre humana.'),
(10, 'Doutor Manhattan', 'Era o Dr. Jon Osterman, um grande físico, antes sofrer um acidente em seu laboratório e virar o Dr. Manhattan.', 'Forma única de percepção de tempo, conseguindo observar o todo, presente, passado, futuro.', 'Teleporte, força super-humana, telecinese e manipulação da matéria.'),
(11, 'Deadpool', 'Deadpool, cujo nome verdadeiro é Wade Winston Wilson, é um mercenário canadense marcado por ser falastrão, violento e principalmente por ser comediante e a partir ficou conhecido como o \"mercenário tagarela\".', 'Perícia em Armas e Artes Maciais. ', 'Incrível fator de cura. '),
(14, 'Cavaleiro da Lua', 'No decorrer de toda sua vida, Marc Spector acabou por tornar-se um exímio combatente corpo-a-corpo. É um atleta de nível olímpico e excelente estrategista.', 'Durante a lua cheia, por exemplo,o Cavaleiro da Lua tem suas habilidades incrivelmente ampliadas, podendo, por exemplo, suportar um peso de duas toneladas e se tornar quase invisível.', 'Força sobre-humana, alta resistência. '),
(15, 'Wolverine', 'Ele é um mutante que possui sentidos afiados, capacidades físicas aprimoradas.', 'Habilidade regenerativa poderosa conhecida como fator de cura e três garras retratáveis ​​de osso em cada mão', 'Super força, resistência, velocidade, cura.'),
(16, 'Motoqueiro Fantasma', 'Como Motoqueiro Fantasma: Possui uma necessidade obsessiva em vingar os inocentes, caso não seja controlado pelo hospedeiro essa vingança se torna excessiva podendo prejudicar muitos outros inocentes no processo', 'Olhar de Penitência, seu olhar fixo nos olhos de um individuo faz ele sofrer toda dor que já causou aos outros.', 'Manipulação do Fogo-Infernal, pode projetar e controlar a energia, podendo causar tanto danos à alma como fisicamente. A energia é incapaz de ferir pessoas inocentes.'),
(17, 'Tocha Humana', 'Em consequência da exposição aos raios cósmicos que sofreu durante um voo espacial, Johnny Storm adquiriu o poder de envolver seu corpo em chamas.', 'Consegue controlar o fogo.', 'Voar, controle do fogo, velocidade.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vingadores`
--

DROP TABLE IF EXISTS `vingadores`;
CREATE TABLE IF NOT EXISTS `vingadores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
