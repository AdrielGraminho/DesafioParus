-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 27-Fev-2021 às 17:18
-- Versão do servidor: 10.3.27-MariaDB-0+deb10u1
-- versão do PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `Desafio`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aviao`
--

CREATE TABLE `aviao` (
  `id` int(10) NOT NULL,
  `modelo` varchar(15) DEFAULT NULL,
  `bagagem` int(10) DEFAULT NULL,
  `assentos` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aviao`
--

INSERT INTO `aviao` (`id`, `modelo`, `bagagem`, `assentos`) VALUES
(1, 'Gogo', 2, 10),
(2, 'Go', 10, 10),
(5, 'Gogo', 15, 15),
(7, 'Teste', 2, 2),
(8, 'Gogo', 2, 10),
(9, 'Gogo', 2, 10),
(10, 'Gogo', 2, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `cpf` varchar(20) NOT NULL,
  `nome` varchar(15) NOT NULL,
  `situacao` varchar(15) NOT NULL,
  `aviao` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pessoa`
--

INSERT INTO `pessoa` (`cpf`, `nome`, `situacao`, `aviao`) VALUES
('1', 'aaaaa', 'Passageiro', 1),
('10000', 'Irineu', 'Passageiro', 1),
('2', 'bbbbb', 'Co-piloto', 1),
('3', 'cccc', 'Comissário', 1),
('5555', 'Linus Torvalds', 'Piloto', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `nome` varchar(50) NOT NULL,
  `senha` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`nome`, `senha`) VALUES
('admin', 'admin');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aviao`
--
ALTER TABLE `aviao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`cpf`),
  ADD KEY `aviao` (`aviao`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`nome`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aviao`
--
ALTER TABLE `aviao`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `pessoa`
--
ALTER TABLE `pessoa`
  ADD CONSTRAINT `pessoa_ibfk_1` FOREIGN KEY (`aviao`) REFERENCES `aviao` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
