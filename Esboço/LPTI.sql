-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 27/02/2019 às 17:16
-- Versão do servidor: 5.7.24-0ubuntu0.18.04.1
-- Versão do PHP: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `LPTI`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `EVENTO`
--

CREATE TABLE `EVENTO` (
  `idEVENTO` int(11) NOT NULL,
  `nome` varchar(60) CHARACTER SET utf16 NOT NULL,
  `numouvintes` int(11) NOT NULL,
  `numtrabalhos` int(11) NOT NULL,
  `numtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `EVENTO`
--

INSERT INTO `EVENTO` (`idEVENTO`, `nome`, `numouvintes`, `numtrabalhos`, `numtotal`) VALUES
(1, 'blablabla1', 0, 0, 0),
(2, 'blablabla2', 0, 0, 0),
(3, 'blablabla3', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `INSCRITO`
--

CREATE TABLE `INSCRITO` (
  `idINSCRITO` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `instituicao` varchar(100) NOT NULL,
  `email` varchar(70) NOT NULL,
  `tipo` int(11) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `artigo` text,
  `idEVENTO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `EVENTO`
--
ALTER TABLE `EVENTO`
  ADD PRIMARY KEY (`idEVENTO`);

--
-- Índices de tabela `INSCRITO`
--
ALTER TABLE `INSCRITO`
  ADD PRIMARY KEY (`idINSCRITO`),
  ADD KEY `idEVENTO` (`idEVENTO`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `EVENTO`
--
ALTER TABLE `EVENTO`
  MODIFY `idEVENTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `INSCRITO`
--
ALTER TABLE `INSCRITO`
  MODIFY `idINSCRITO` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `INSCRITO`
--
ALTER TABLE `INSCRITO`
  ADD CONSTRAINT `INSCRITO_ibfk_1` FOREIGN KEY (`idEVENTO`) REFERENCES `EVENTO` (`idEVENTO`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
