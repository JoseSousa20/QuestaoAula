-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 12-Nov-2020 às 10:24
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teams`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipas`
--

CREATE TABLE `equipas` (
  `id_equipa` int(11) NOT NULL,
  `designacao` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designacao_curta` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `localidade` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `equipas`
--

INSERT INTO `equipas` (`id_equipa`, `designacao`, `designacao_curta`, `localidade`) VALUES
(1, 'Clube Desportivo das Aves', 'CDA', 'Vila das Aves'),
(2, 'Vitoria Sport Clube', 'VSC', 'Guimarães '),
(3, 'Sporting Clube de Braga', 'SCB', 'Braga');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogadores`
--

CREATE TABLE `jogadores` (
  `id_jogador` int(11) NOT NULL,
  `nome` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nacionalidade` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_nascimento` date NOT NULL,
  `id_equipa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `jogadores`
--

INSERT INTO `jogadores` (`id_jogador`, `nome`, `nacionalidade`, `data_nascimento`, `id_equipa`) VALUES
(1, 'José Sousa', 'Portuguesa ', '2003-10-20', 1),
(2, 'Manuel Pereira', 'Portuguesa', '1990-05-31', 1),
(3, 'João Neto', 'Angolano', '2000-06-11', 1),
(4, 'Henrique Ferreira ', 'Brasileira', '0000-00-00', 1),
(5, 'Eduardo Oleiro', 'Portuguesa', '1994-08-24', 1),
(6, 'Tamar Damásio', 'Angolano', '1997-01-05', 2),
(7, 'André Lameira', 'Portuguesa', '1996-09-21', 2),
(8, 'Lisandro Cadavez', 'Argentino', '1989-12-01', 2),
(9, 'Emanuel  Castanho', 'Portuguesa', '1999-04-20', 2),
(10, 'Moisés Colaço', 'Portuguesa', '1998-11-25', 2),
(11, 'Gabrielly Campos', 'Brasileira', '1997-02-03', 3),
(12, 'Kaio Vargas', 'Brasileira', '1995-03-23', 3),
(13, 'Luan Quintana', 'Angolano', '1992-11-23', 3),
(14, 'Artur Reis', 'Portuguesa', '1995-10-24', 3),
(15, 'Yannick Leal', 'Portuguesa', '1997-12-21', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `equipas`
--
ALTER TABLE `equipas`
  ADD PRIMARY KEY (`id_equipa`);

--
-- Indexes for table `jogadores`
--
ALTER TABLE `jogadores`
  ADD PRIMARY KEY (`id_jogador`),
  ADD KEY `id_equipa` (`id_equipa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `equipas`
--
ALTER TABLE `equipas`
  MODIFY `id_equipa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jogadores`
--
ALTER TABLE `jogadores`
  MODIFY `id_jogador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
