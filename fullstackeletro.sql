-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 24-Out-2020 às 01:37
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fullstackeletro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE IF NOT EXISTS `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` varchar(255) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `produto` varchar(255) NOT NULL,
  `unitario` float NOT NULL,
  `quantidade` int(11) NOT NULL,
  `total` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`id`, `cliente`, `endereco`, `tel`, `produto`, `unitario`, `quantidade`, `total`) VALUES
(1, 'Maria', 'AV Paulista 598', '11-98988-5246', 'Geladeira Duas Portas', 4019, 1, 4019),
(2, 'josé', 'AV Marechal tito 1200', '11-5848-2744', 'Microondas Brastemp', 690, 2, 1380),
(3, 'joão', 'Av Guilher cotching', '11-96363-2525', 'Fogão 4 Bocas', 700, 4, 2800),
(4, 'katia', 'av washington luiz', '11-98456-5858', 'Lava-Louças Brastemp branca Premium', 1200, 2, 2400);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE IF NOT EXISTS `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `preco` float NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `preco`, `imagem`) VALUES
(2, 'geladeira', 'Geladeira Frost Free Brastemp', 5019, 'Imagens/Geladeira1.png'),
(3, 'geladeira', 'Geladeira Duas Portas', 4019, 'Imagens/Geladeira2.png'),
(4, 'geladeira', 'Geladeira Consul', 2100, 'Imagens/Geladeira3.png'),
(5, 'lavaroupas', 'Lava Roupas Brastemp', 2700, 'Imagens/Lava%20roupas.png'),
(6, 'lavaroupas', 'Lava Roupas Consul', 2300, 'Lava%20roupas%202.png'),
(7, 'fogao', 'Fogão Simples', 550, 'Imagens/Fog%C3%A3o%201.png'),
(8, 'fogao', 'Fogão 4 Bocas', 700, 'Imagens/Fog%C3%A3o%202.png'),
(9, 'lavaloucas', 'Lava-Loucas Brastemp branca Premium', 1200, 'Imagens/Fog%C3%A3o%203.png'),
(10, 'microondas', 'Microondas Simples', 325, 'Imagens/Microondas%201.png'),
(11, 'microondas', 'Microondas Consul', 669, 'Imagens/Microondas%202.png'),
(12, 'microondas', 'Microondas Brastemp', 690, 'Imagens/Microondas%203.png'),
(13, 'lavaloucas', 'Lavadora De loucas Electrolux', 1100, 'Imagens/n%C3%A3o%20sei.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
