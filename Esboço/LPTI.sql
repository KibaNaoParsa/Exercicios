-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 06-Mar-2019 às 17:20
-- Versão do servidor: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `GELLDIS`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `EVENTO`
--

CREATE TABLE `EVENTO` (
  `idEVENTO` int(11) NOT NULL,
  `nome` varchar(60) CHARACTER SET utf16 NOT NULL,
  `numouvintes` int(11) NOT NULL,
  `numtrabalhos` int(11) NOT NULL,
  `numtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `EVENTO`
--

INSERT INTO `EVENTO` (`idEVENTO`, `nome`, `numouvintes`, `numtrabalhos`, `numtotal`) VALUES
(1, 'blablabla1', 1, 1, 2),
(2, 'blablabla2', 0, 0, 0),
(3, 'blablabla3', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `INSCRITO`
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
  `idEVENTO` int(11) NOT NULL,
  `situacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `INSCRITO`
--

INSERT INTO `INSCRITO` (`idINSCRITO`, `nome`, `cpf`, `instituicao`, `email`, `tipo`, `titulo`, `artigo`, `idEVENTO`, `situacao`) VALUES
(1, 'Elyas Correa Nogueira', '11729034683', 'CEFET-MG', 'elyasnog@gmail.com', 0, NULL, NULL, 1, 0),
(2, 'Elyas Correa Nogueira', '11111111111', 'CEFET-MG', 'elyasnog@gmail.com', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore ', 'Adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus. \r\n								Quam nulla porttitor massa id. \r\n								Praesent elementum facilisis leo vel fringilla. \r\n								Semper viverra nam libero justo. \r\n								Bibendum arcu vitae elementum curabitur vitae nunc sed velit dignissim. \r\n								Et odio pellentesque diam volutpat commodo sed egestas egestas. \r\n								Ipsum dolor sit amet consectetur adipiscing elit pellentesque habitant. \r\n								Ultricies tristique nulla aliquet enim tortor. \r\n								Velit scelerisque in dictum non consectetur a erat nam at. \r\n								Condimentum mattis pellentesque id nibh tortor. \r\n								Ac turpis egestas maecenas pharetra convallis posuere morbi leo urna. \r\n								Faucibus ornare suspendisse sed nisi lacus sed viverra tellus. \r\n								Non pulvinar neque laoreet suspendisse. \r\n								Ipsum suspendisse ultrices gravida dictum fusce ut. \r\n								Vitae congue eu consequat ac felis. \r\n								Aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant. \r\n								Tincidunt praesent semper feugiat nibh sed pulvinar proin gravida hendrerit. \r\n								Pulvinar etiam non quam lacus suspendisse faucibus interdum.', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `EVENTO`
--
ALTER TABLE `EVENTO`
  ADD PRIMARY KEY (`idEVENTO`);

--
-- Indexes for table `INSCRITO`
--
ALTER TABLE `INSCRITO`
  ADD PRIMARY KEY (`idINSCRITO`),
  ADD KEY `idEVENTO` (`idEVENTO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `EVENTO`
--
ALTER TABLE `EVENTO`
  MODIFY `idEVENTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `INSCRITO`
--
ALTER TABLE `INSCRITO`
  MODIFY `idINSCRITO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `INSCRITO`
--
ALTER TABLE `INSCRITO`
  ADD CONSTRAINT `INSCRITO_ibfk_1` FOREIGN KEY (`idEVENTO`) REFERENCES `EVENTO` (`idEVENTO`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
