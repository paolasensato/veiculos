-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Maio-2022 às 20:05
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `veiculo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id`, `nome`) VALUES
(1, 'Charles Xavier'),
(2, 'Erik Lensher'),
(3, 'Steve Rogers'),
(4, 'Natasha Romanoff'),
(5, 'Tony Stark'),
(6, 'Carol Denvers');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`id`, `nome`) VALUES
(1, 'Steve Jobs'),
(2, 'Bill Gates');

-- --------------------------------------------------------

--
-- Estrutura da tabela `marca`
--

CREATE TABLE `marca` (
  `id` int(11) NOT NULL,
  `marca` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `marca`
--

INSERT INTO `marca` (`id`, `marca`) VALUES
(3, 'Fiat'),
(2, 'Ford'),
(4, 'Honda'),
(1, 'Toyota');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `id` int(11) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `marca_id` int(11) NOT NULL,
  `valor` float NOT NULL,
  `anomodelo` year(4) NOT NULL,
  `anofabricacao` year(4) NOT NULL,
  `cor` varchar(30) NOT NULL,
  `foto` varchar(30) NOT NULL,
  `opcionais` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`id`, `modelo`, `marca_id`, `valor`, `anomodelo`, `anofabricacao`, `cor`, `foto`, `opcionais`) VALUES
(1, 'Corolla XEI 2.0', 1, 120000, 2015, 2015, 'Branco', '001.jpg', 'Carro completo'),
(2, 'Corolla Upper Black', 1, 159000, 2020, 2020, 'Preto', '002.jpg', 'Completo com pacote Upper Black'),
(3, 'Civic LXL', 4, 135000, 2020, 2019, 'Branco', '003.jpg', 'Carro completo, com bancos em couro, teto solar'),
(4, 'Hylux', 4, 230000, 2020, 2019, 'Branco', '004.jpg', 'Completa, 4x4, Diesel'),
(5, 'Bronco', 2, 350000, 2022, 2021, 'Preto', '005.jpg', 'Completo, Computador de Bordo, Bancos em Couro'),
(6, 'Toro Sport', 3, 190000, 2019, 2018, 'Vermelho', '006.jpg', 'Tração 4x4, Diesel, Completa'),
(7, 'Cronus', 3, 95000, 2020, 2020, 'Cinza', '007.jpg', 'Completo, Porta Malas Elétrico'),
(8, 'Civic LX 1.7', 4, 25000, 2000, 2000, 'Prata', '008.jpg', 'Completo com bancos em couro'),
(9, 'Fit LXS', 4, 18900, 2008, 2007, 'Prata', '009.jpg', 'Completo'),
(10, 'Corolla XEI 1.8', 1, 48500, 2008, 2008, 'Prata', '010.jpg', 'Completo'),
(11, 'Etios L', 1, 50800, 2017, 2016, 'Vermelho', '011.jpg', 'Trio Elétrico, Ar condicionado, Direção Elétrica'),
(12, 'Yaris', 1, 89500, 2017, 2016, 'Prata', '012.jpg', 'Completo'),
(13, 'Corcel L', 2, 45500, 1978, 1978, 'Azul', '013.jpg', 'Básico'),
(14, '147 Luxo', 3, 49900, 1980, 1979, 'Branco', '014.jpg', 'Básico'),
(15, 'Uno 1.6R', 3, 25000, 1988, 1988, 'Vermelho', '015.jpg', 'Trio Elétrico'),
(16, 'Del Rei Ghia', 2, 35800, 1990, 1989, 'Vermelho', '016.jpg', 'Completo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE `venda` (
  `id` int(11) NOT NULL,
  `data` date NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `funcionario_id` int(11) NOT NULL,
  `veiculo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `venda`
--

INSERT INTO `venda` (`id`, `data`, `cliente_id`, `funcionario_id`, `veiculo_id`) VALUES
(1, '2020-04-20', 6, 2, 5),
(2, '2022-03-11', 1, 2, 3),
(3, '2022-04-11', 2, 1, 2),
(4, '2021-04-19', 4, 1, 1),
(5, '2022-03-12', 3, 1, 7),
(6, '2022-03-11', 3, 1, 6),
(7, '2022-04-15', 5, 2, 7);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `marca` (`marca`);

--
-- Índices para tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marca_id` (`marca_id`);

--
-- Índices para tabela `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_id` (`cliente_id`),
  ADD KEY `funcionario_id` (`funcionario_id`),
  ADD KEY `veiculo_id` (`veiculo_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `marca`
--
ALTER TABLE `marca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `veiculo`
--
ALTER TABLE `veiculo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `venda`
--
ALTER TABLE `venda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`marca_id`) REFERENCES `marca` (`id`);

--
-- Limitadores para a tabela `venda`
--
ALTER TABLE `venda`
  ADD CONSTRAINT `venda_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`),
  ADD CONSTRAINT `venda_ibfk_2` FOREIGN KEY (`funcionario_id`) REFERENCES `funcionario` (`id`),
  ADD CONSTRAINT `venda_ibfk_3` FOREIGN KEY (`veiculo_id`) REFERENCES `veiculo` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
