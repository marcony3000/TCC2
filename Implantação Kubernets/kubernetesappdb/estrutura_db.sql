-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Tempo de geração: 31/10/2023 às 20:29
-- Versão do servidor: 8.0.34
-- Versão do PHP: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_bancook`
--
CREATE DATABASE IF NOT EXISTS `db_bancook` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_bancook`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `Clientes`
--

CREATE TABLE `Clientes` (
  `Id` int NOT NULL,
  `Ativo` int NOT NULL,
  `DataCadastro` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `Clientes`
--

INSERT INTO `Clientes` (`Id`, `Ativo`, `DataCadastro`) VALUES
(1, 1, '2022-01-27 18:39:11.791234'),
(2, 1, '2022-01-27 18:43:51.674966'),
(3, 1, '2022-01-27 19:02:47.915397'),
(4, 1, '2022-01-27 21:48:12.443783'),
(5, 1, '2022-01-27 21:50:54.558005'),
(6, 1, '2022-01-27 21:52:00.270588'),
(7, 1, '2022-01-27 21:52:50.653048'),
(8, 1, '2022-01-27 22:11:32.367258'),
(9, 1, '2022-01-27 22:50:16.207528'),
(10, 1, '2022-02-05 00:17:06.624346'),
(11, 1, '2022-02-07 20:44:02.573471'),
(12, 1, '2022-02-07 21:18:06.235522'),
(13, 1, '2022-02-07 21:21:27.312393');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ContasBancarias`
--

CREATE TABLE `ContasBancarias` (
  `Id` int NOT NULL,
  `ClienteId` int NOT NULL,
  `Agencia` int NOT NULL,
  `Numero` int NOT NULL,
  `Digito` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ValorSaldo` decimal(10,0) NOT NULL,
  `Senha` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `ContasBancarias`
--

INSERT INTO `ContasBancarias` (`Id`, `ClienteId`, `Agencia`, `Numero`, `Digito`, `ValorSaldo`, `Senha`) VALUES
(1, 1, 1, 7036, '7', 800, '123456'),
(2, 2, 1, 2384, '2', 800, '123456'),
(3, 3, 1, 1397, '2', 100, '123456'),
(4, 4, 1, 3789, '5', 0, '123456'),
(5, 5, 1, 1401, '0', 0, '12345'),
(6, 6, 1, 2729, '8', 0, '54321'),
(7, 7, 1, 4585, '1', 0, '9876'),
(8, 8, 1, 7196, '0', 0, '123456'),
(9, 9, 1, 8937, '8', 0, '987654'),
(10, 10, 1, 2920, '2', 0, '12345678'),
(11, 11, 1, 8334, '2', 0, '123456'),
(12, 12, 1, 4443, '1', 700, '123456'),
(13, 13, 1, 9326, '2', 1101, '123456');

-- --------------------------------------------------------

--
-- Estrutura para tabela `Enderecos`
--

CREATE TABLE `Enderecos` (
  `Id` int NOT NULL,
  `Logradouro` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Complemento` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Bairro` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Cidade` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `EstadoUf` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Cep` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Numero` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `Enderecos`
--

INSERT INTO `Enderecos` (`Id`, `Logradouro`, `Complemento`, `Bairro`, `Cidade`, `EstadoUf`, `Cep`, `Numero`) VALUES
(1, 'Casa 01', 'Casa Branca', 'Centro', 'Lagarto', 'SE', '49400000', 0),
(2, 'Casa b', 'Casa Azul', 'Centro', 'Aracaju', 'SE', '49060000', 0),
(3, 'Casa c', 'Casa preta', 'centro', 'Lagarto', 'SE', '49400000', 0),
(4, 'casa teste 0001', 'casa', 'centro', 'Lagarto', 'SE', '49400000', 0),
(5, 'casa teste 0002', 'casa azul', 'cebtro', 'Aracaju', 'SE', '49060000', 0),
(6, 'casa teste', 'teste casa', 'centro', 'Salgado', 'SE', '49060000', 0),
(7, 'casa cpf', 'casa', 'centro', 'lagarto', 'SE', '49400000', 0),
(8, 'casa teste', 'casa', 'centro', 'Aracaju', 'SE', '49000000', 234),
(9, 'casa', 'perto de casa', 'centro', 'Aracaju', 'SE', '49060000', 123),
(10, 'casa 01', 'casa', 'centro', 'Lagarto', 'SE', '49400-000', 1),
(11, 'casa cadastro', 'casa', 'centro', 'Lagarto', 'SE', '49400-000', 2),
(12, 'Casa 0001', 'Casa', 'Cento', 'Lagarto', 'SE', '49400-000', 23),
(13, 'Rua J', 'Loja', 'Centro', 'Aracaju', 'SE', '49010-030', 234);

-- --------------------------------------------------------

--
-- Estrutura para tabela `Movimentos`
--

CREATE TABLE `Movimentos` (
  `Id` int NOT NULL,
  `ContaBancariaId` int NOT NULL,
  `TipoMovimento` int NOT NULL,
  `Valor` decimal(10,0) NOT NULL,
  `DataCadastro` datetime NOT NULL,
  `Descricao` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `Movimentos`
--

INSERT INTO `Movimentos` (`Id`, `ContaBancariaId`, `TipoMovimento`, `Valor`, `DataCadastro`, `Descricao`) VALUES
(5, 1, 1, 1000, '2022-02-07 19:26:43', 'Depósito recebido de 1000,00'),
(6, 2, 1, 100, '2022-02-07 19:27:39', 'Transferência recebida de 7036 Dv 7 Agência 1 Valor 100,00'),
(7, 1, 1, 100, '2022-02-07 19:27:39', 'Transferência realizada para 2384 Dv 2 Agência 1 Valor 100,00'),
(8, 3, 1, 100, '2022-02-07 19:28:07', 'Transferência recebida de 7036 Dv 7 Agência 1 Valor 100,00'),
(9, 1, 1, 100, '2022-02-07 19:28:07', 'Transferência realizada para 1397 Dv 2 Agência 1 Valor 100,00'),
(10, 2, 1, 500, '2022-02-07 19:28:25', 'Depósito recebido de 500,00'),
(11, 2, 1, 200, '2022-02-07 19:29:09', 'Depósito recebido de 200,00'),
(12, 12, 1, 1000, '2022-02-07 21:19:44', 'Depósito recebido de 1000,00'),
(13, 13, 1, 300, '2022-02-07 21:22:18', 'Transferência recebida de 4443 Dv 1 Agência 1 Valor 300,00'),
(14, 12, 1, 300, '2022-02-07 21:22:18', 'Transferência realizada para 9326 Dv 2 Agência 1 Valor 300,00'),
(15, 13, 1, 801, '2022-02-07 21:23:13', 'Depósito recebido de 800,50');

-- --------------------------------------------------------

--
-- Estrutura para tabela `Pessoas`
--

CREATE TABLE `Pessoas` (
  `Id` int NOT NULL,
  `Nome` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Documento` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Tipo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DataNascimento` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `Pessoas`
--

INSERT INTO `Pessoas` (`Id`, `Nome`, `Documento`, `Tipo`, `DataNascimento`) VALUES
(1, 'Marconi PF', '02542584508', 'F', '1987-01-10 00:00:00'),
(2, 'Marconi PJ', '32853772000169', 'J', '2000-01-01 00:00:00'),
(3, 'Marconi Teste 02', '2542584509', 'F', '1987-01-10 00:00:00'),
(4, 'Teste 0001 PF', '2542584508', 'F', '1999-01-01 00:00:00'),
(5, 'Teste 0002 PJ', '32853772000162', 'J', '1995-01-01 00:00:00'),
(6, 'teste 00004', '32853772000165', 'J', '1996-01-01 00:00:00'),
(7, 'teste cpf errado', '2542584500', 'F', '1987-01-01 00:00:00'),
(8, 'Icaro Teste', '1234567809', 'F', '2000-01-01 00:00:00'),
(9, 'Teste Numero conta', '3605278608', 'F', '2000-01-01 00:00:00'),
(10, 'Conta PJ Teste Mask', '85880054000141', 'J', '0001-01-01 00:00:00'),
(11, 'tese cadastro 01', '2234578901', 'F', '1967-01-10 00:00:00'),
(12, 'Marconi Oliveira', '73676162005', 'F', '1987-01-10 00:00:00'),
(13, 'Marconi Pessoa J', '32853772000176', 'J', '1957-02-10 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sqlite_sequence`
--

CREATE TABLE `sqlite_sequence` (
  `name` varchar(15) DEFAULT NULL,
  `seq` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `sqlite_sequence`
--

INSERT INTO `sqlite_sequence` (`name`, `seq`) VALUES
('Enderecos', 13),
('Pessoas', 13),
('ContasBancarias', 13),
('Movimentos', 15);

-- --------------------------------------------------------

--
-- Estrutura para tabela `__EFMigrationsHistory`
--

CREATE TABLE `__EFMigrationsHistory` (
  `MigrationId` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProductVersion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `__EFMigrationsHistory`
--

INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`) VALUES
('20220127213248_PrimeiraMigration', '3.1.22'),
('20220127220105_AddContaBancariaSenha', '3.1.22'),
('20220128010812_AddEnderecoNumero', '3.1.22'),
('20220207213747_AddMovimento', '3.1.22'),
('20220207214056_AddMovimentoDescricao', '3.1.22');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `Clientes`
--
ALTER TABLE `Clientes`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `ContasBancarias`
--
ALTER TABLE `ContasBancarias`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `Enderecos`
--
ALTER TABLE `Enderecos`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `Movimentos`
--
ALTER TABLE `Movimentos`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `Pessoas`
--
ALTER TABLE `Pessoas`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `Clientes`
--
ALTER TABLE `Clientes`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `ContasBancarias`
--
ALTER TABLE `ContasBancarias`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `Enderecos`
--
ALTER TABLE `Enderecos`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `Movimentos`
--
ALTER TABLE `Movimentos`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `Pessoas`
--
ALTER TABLE `Pessoas`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
