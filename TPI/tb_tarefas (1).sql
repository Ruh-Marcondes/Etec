-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 24-Jul-2019 às 19:30
-- Versão do servidor: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Tarefas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb tarefas`
--

CREATE TABLE `tb tarefas` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `descricao` varchar(60) DEFAULT NULL,
  `prazo` date DEFAULT NULL,
  `prioridade` int(1) NOT NULL,
  `concluida` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb tarefas`
--

INSERT INTO `tb tarefas` (`id`, `nome`, `descricao`, `prazo`, `prioridade`, `concluida`) VALUES
(1, 'ola', 'Sonooooooo', '0000-00-00', 0, 0),
(2, 'alo', 'fomeeeeeee', '0000-00-00', 1, 0),
(3, 'oiii', 'dormir', '0000-00-00', 2, 0),
(4, 'ola', 'Sonooooooo', '0000-00-00', 0, 1),
(5, 'alo', 'fomeeeeeee', '0000-00-00', 1, 0),
(6, 'oiii', 'dormir', '0000-00-00', 2, 1),
(7, 'ola', 'Sonooooooo', '0000-00-00', 0, 1),
(8, 'alo', 'fomeeeeeee', '0000-00-00', 1, 0),
(9, 'oiii', 'dormir', '0000-00-00', 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb tarefas`
--
ALTER TABLE `tb tarefas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb tarefas`
--
ALTER TABLE `tb tarefas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
