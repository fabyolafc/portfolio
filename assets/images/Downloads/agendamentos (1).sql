-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/01/2024 às 05:52
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `clinica`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `agendamentos`
--

CREATE TABLE `agendamentos` (
  `id_agendamento` int(11) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `nome_paciente` varchar(70) NOT NULL,
  `data_nasc` varchar(75) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefone` varchar(20) NOT NULL,
  `rua` varchar(75) DEFAULT NULL,
  `bairro` varchar(75) DEFAULT NULL,
  `numero` varchar(75) DEFAULT NULL,
  `cidade` varchar(75) DEFAULT NULL,
  `uf` varchar(75) DEFAULT NULL,
  `cep` varchar(75) DEFAULT NULL,
  `data_consulta` varchar(75) NOT NULL,
  `horario_consulta` varchar(255) NOT NULL,
  `profissional` varchar(255) NOT NULL,
  `motivo` varchar(255) NOT NULL,
  `sexo` varchar(20) NOT NULL,
  `n_sus` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `agendamentos`
--

INSERT INTO `agendamentos` (`id_agendamento`, `cpf`, `nome_paciente`, `data_nasc`, `email`, `telefone`, `rua`, `bairro`, `numero`, `cidade`, `uf`, `cep`, `data_consulta`, `horario_consulta`, `profissional`, `motivo`, `sexo`, `n_sus`) VALUES
(18, '123456789', 'Fabyola Campos', '2003-12-13', 'fabyolacampos20@gmail.com', '2147483647', 'Tomires', 'Bela Vista', '55', 'Virgem da lapa', 'MG', '39630000', '2024-01-18', '14:00', 'Cardiologista', '                                  Dores no corpo      ', 'F', 2147483647),
(22, '55555555', 'Dean Leão', '2000-12-15', 'dean@gmail.com', '33988756585', 'Rua das flores', 'Turmalina', '47', 'Virgem da Lapa', 'MG', '39630000', '2024-01-18', '15:30', 'Clínico Geral', '                                            Dores de cabeça                        ', 'M', 9999999);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `agendamentos`
--
ALTER TABLE `agendamentos`
  ADD PRIMARY KEY (`id_agendamento`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `agendamentos`
--
ALTER TABLE `agendamentos`
  MODIFY `id_agendamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
