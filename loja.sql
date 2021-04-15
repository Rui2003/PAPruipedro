-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Abr-2021 às 18:42
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `idcategoria` int(11) NOT NULL,
  `categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`idcategoria`, `categoria`) VALUES
(1, 'DJ'),
(2, 'Estudio');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `idcurso` int(11) NOT NULL,
  `designacao` int(11) NOT NULL,
  `preco` int(11) NOT NULL,
  `duracao` int(11) NOT NULL,
  `descricao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idproduto` int(11) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `preco` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `idsubcat` int(11) NOT NULL,
  `imagem` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idproduto`, `marca`, `preco`, `descricao`, `modelo`, `idsubcat`, `imagem`) VALUES
(1, 'pioneer', 1049, 'blablabla', '750mk2', 1, ''),
(2, 'allen&heath', 1528, 'blablabla', 'xone96', 1, ''),
(3, 'reloop', 199, 'blabalbla', 'rp1000mk2', 2, ''),
(6, 'marca branca', 100, 'teclado podre', 'mk1', 3, ''),
(8, 'xpto', 100, 'xxx', 'mkx', 3, ''),
(9, 'reloop', 799, '', 'rmx90', 1, ''),
(10, 'numark', 107, '', 'm2', 1, ''),
(11, 'denon ', 1199, '', 'x1850 prime', 1, ''),
(12, 'allen & heath ', 1125, '', 'xone92', 1, ''),
(13, 'pioneer', 1190, '', 'djm350', 1, ''),
(14, 'pioneer', 2925, '', 'djmv10', 1, ''),
(15, 'numark', 170, '', 'm4', 1, ''),
(16, 'pioneer', 1400, '', 'djm s7', 1, ''),
(17, 'technics', 899, '', 'sl-1210 mk7', 2, ''),
(18, 'denon', 480, '', 'vl12 prime', 2, ''),
(19, 'pioneer', 619, '', 'plx-1000', 2, ''),
(20, 'reloop', 229, '', 'spin', 2, ''),
(21, 'numark', 249, '', 'tt 250 usb', 2, ''),
(23, 'reloop', 475, '', 'turn 3(v)', 2, ''),
(24, 'technics', 2925, '', 'sl-1210 MK7R Red Bull BC One Limited Edition', 2, ''),
(25, 'reloop', 170, '', 'rp-2000 mk2', 2, ''),
(26, 'reloop', 1400, '', 'rp-4000 mk2', 2, ''),
(27, 'reloop', 489, '', 'rp-7000 mk2 silver', 2, ''),
(28, 'reloop', 600, '', 'rp-8000 staight', 2, ''),
(29, 'enova', 250, '', 'VISION4 USB WD [v]', 2, ''),
(30, 'numark', 600, '', 'ntx 1000', 2, ''),
(31, 'pioneer', 309, '', 'plx-500', 2, ''),
(32, 'technics', 999, '', '1210 m5g', 2, ''),
(33, 'pioneer', 260, '', 'ddj400', 4, ''),
(34, 'hercules', 110, '', 'impulse200', 4, ''),
(35, 'native instruments', 265, '', 'Traktor Kontrol S2 MKII', 4, ''),
(36, 'pioneer', 237, '', 'ddj sb3', 4, ''),
(37, 'pioneer', 738, '', 'ddj 800', 4, ''),
(38, 'pioneer', 1129, '', 'ddj 1000', 4, ''),
(39, 'native instruments', 730, '', 'Traktor Kontrol S4 MKIII', 4, ''),
(40, 'numark', 70, '', 'dj2go2', 4, ''),
(41, 'denon', 1745, '', 'prime 4 ', 4, ''),
(42, 'numark', 285, '', 'MixTrack Platinium FX', 4, ''),
(43, 'Rane ', 1489, '', 'One', 4, ''),
(44, 'reloop', 219, '', 'buddy', 4, ''),
(45, 'pioneer', 599, '', 'DDJ-FLX6', 4, ''),
(46, 'hercules', 250, '', 'Impulse 500', 4, ''),
(47, 'Allen & Heath', 235, '', 'XONE:K2', 4, ''),
(48, 'Native Instruments ', 175, '', 'Traktor Kontrol X1 Mk2', 4, ''),
(49, 'pioneer', 275, '', 'HDJ X-10', 5, ''),
(50, 'reloop', 125, '', 'RHP-30 Black', 5, ''),
(51, 'reloop', 125, '', 'RHP-30 Silver', 5, ''),
(52, 'AKG', 125, '', 'K181 Dj UE', 5, ''),
(53, 'pioneer', 149, '', 'HDJ X7', 5, ''),
(54, 'Sennheiser', 149, '', 'HD-25', 5, ''),
(55, 'Shure', 89, '', 'SRH440', 5, ''),
(56, 'Shure', 60, '', 'SRH240A', 5, ''),
(57, 'pioneer', 189, '', 'HDJ-S7-K', 5, ''),
(58, 'pioneer', 189, '', 'HDJ-S7-W', 5, ''),
(59, 'rane', 49, '', 'RH-1', 5, ''),
(60, 'Rane ', 69, '', 'RH-2', 5, ''),
(61, 'numark', 60, '', 'Red Wave Carbon', 5, ''),
(62, 'reloop', 35, '', 'RH-2500', 5, ''),
(63, 'AIAIAI', 220, '', 'TMA-2 MOVE', 5, ''),
(64, 'AIAIAI', 299, '', 'TMA-2-HD', 5, ''),
(65, 'pioneer', 1098, '', 'DJS-1000', 6, ''),
(66, 'denon', 1499, '', 'SC-6000 Prime', 6, ''),
(67, 'pioneer', 2400, '', 'CDJ 3000', 6, ''),
(68, 'pioneer', 580, '', 'CDJ 350 ', 6, ''),
(69, 'numark', 333, '', 'CDN 77 USB', 6, ''),
(70, 'pioneer', 899, '', 'CDJ 850', 6, ''),
(71, 'numark', 109, '', 'NDX-400', 6, ''),
(72, 'numark', 209, '', 'NDX 500', 6, ''),
(73, 'pioneer', 1989, '', 'CDJ 2000 NXS2', 6, ''),
(74, 'pioneer', 1299, '', 'CDJ-900 NXS', 6, ''),
(75, 'pioneer', 615, '', 'XDJ 700', 6, ''),
(76, 'pioneer', 1090, '', 'XDJ 1000', 6, ''),
(77, 'pioneer', 970, '', 'XDJ-RR', 6, ''),
(78, 'pioneer', 1459, '', 'XDJ RX-2', 6, ''),
(79, 'pioneer', 1999, '', 'XDJ-XZ', 6, ''),
(80, 'pioneer', 439, '', 'XDJ-R1', 6, ''),
(81, 'pioneer', 6, 'wdadwa', 'suds', 1, ''),
(82, 'pioneer', 6, 'wdadwa', 'suds', 1, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `subcategorias`
--

CREATE TABLE `subcategorias` (
  `idsubcat` int(11) NOT NULL,
  `subcat` varchar(50) NOT NULL,
  `idcategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `subcategorias`
--

INSERT INTO `subcategorias` (`idsubcat`, `subcat`, `idcategoria`) VALUES
(1, 'mesas', 1),
(2, 'giradiscos', 1),
(3, 'teclados', 2),
(4, 'controladoras', 1),
(5, 'headphones', 1),
(6, 'leitores', 1),
(7, 'monitores de estudio', 2),
(8, 'samplers e efeitos', 2),
(9, 'sintetizadores', 2),
(10, 'controladores midi', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `utilizadores`
--

CREATE TABLE `utilizadores` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Índices para tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`idcurso`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idproduto`);

--
-- Índices para tabela `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`idsubcat`),
  ADD KEY `idcategoria` (`idcategoria`);

--
-- Índices para tabela `utilizadores`
--
ALTER TABLE `utilizadores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `idcurso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT de tabela `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `idsubcat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `utilizadores`
--
ALTER TABLE `utilizadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
