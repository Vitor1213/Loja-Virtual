-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 07-Ago-2019 às 02:31
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administrador`
--

CREATE TABLE `administrador` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `login` varchar(20) NOT NULL,
  `senha` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `nascimento` date DEFAULT NULL,
  `email` int(11) NOT NULL,
  `senha` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `id` int(11) NOT NULL,
  `cep` varchar(8) NOT NULL,
  `logradouro` varchar(50) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `cidade` varchar(30) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `endereco_entrega` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `forma_pagamento`
--

CREATE TABLE `forma_pagamento` (
  `id` int(11) NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `id` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `entrega_id` int(11) NOT NULL,
  `forma_pagamento_id` int(11) NOT NULL,
  `codigos_correios` varchar(30) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id` int(11) NOT NULL,
  `produto` varchar(20) NOT NULL,
  `console` varchar(20) NOT NULL,
  `empresa` varchar(20) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `categoria` varchar(35) NOT NULL,
  `imagem` varchar(60) DEFAULT NULL,
  `mine` varchar(50) NOT NULL,
  `preco` decimal(12,2) NOT NULL,
  `estoque` tinyint(4) NOT NULL,
  `ativo` tinyint(4) NOT NULL,
  `descricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id`, `produto`, `console`, `empresa`, `nome`, `categoria`, `imagem`, `mine`, `preco`, `estoque`, `ativo`, `descricao`) VALUES
(1, 'Jogo', 'PS4', 'Rockstar', 'Red Dead Redemption 2 – PS4', 'Jogos de Ação e Aventura', 'Red Dead Redemption 2 – PS4.png', 'image/png', '249.90', 8, 1, 'Estados Unidos, 1899. O fim da era do velho oeste começou, e as autoridades estão caçando as últimas gangues de fora da lei que restam. Os que não se rendem, nem sucumbem, são mortos. Depois de tudo dar errado durante um roubo em uma cidade do oeste chamada Blackwater, Arthur Morgan e a gangue Van der Linde são forçados a fugir. Com agentes federais e os melhores caçadores de recompensas no seu encalço, a gangue precisa roubar, assaltar e lutar para sobreviver no impiedoso coração dos Estados Unidos. Conforme divisões internas profundas ameaçam despedaçar a gangue, Arthur deve fazer uma escolha entre os seus próprios ideais e a lealdade à gangue que o criou. Dos criadores de Grand Theft Auto V e Red Dead Redemption, Red Dead Redemption 2 é uma história épica sobre a vida nos Estados Unidos no alvorecer dos tempos modernos.'),
(2, 'Jogo', 'PS4', 'Activision', 'Crash Team Racing Nitro-Fueled – PS4', 'Jogos de Ação e Aventura', 'Crash Team Racing Nitro-Fueled – PS4.png', 'image/png', '179.90', 15, 1, '\"Crash está de volta ao volante! Prepare-se para acelerar com o Crash™ Team Racing Nitro-Fueled. Você terá a autêntica experiência do CTR e muito mais, agora totalmente remasterizado e elevado à máxima potência: * Aqueça os motores com os modos, personagens, pistas, poderes, armas e controles do jogo original. * Derrape a toda velocidade com karts, pistas e arenas adicionais de CrashTM Nitro Kart * Corra online com os amigos e faça a concorrência comer poeira nos placares de líderes No Crash™ Team Racing Nitro-Fueled, os riscos são altos e a competição é acirrada. É o CTR que você ama, agora turbinado.'),
(3, 'Jogo', 'PS4', 'Playstation - Sony B', 'Marvels Spider-Man – PS4', 'Jogos de Ação e Aventura', 'Marvels Spider-Man – PS4.png', 'image/png', '169.00', 10, 1, 'a'),
(4, 'Jogo', 'X360', 'Microsoft', 'Minecraft – X360', 'Jogos de Ação e Aventura', 'Minecraft – X360.png', 'image/png', '59.00', 10, 1, 'b'),
(5, 'Jogo', 'PS4', 'Playstation - Sony B', 'Days Gone – PS4', 'Jogos de Ação e Aventura', 'Days Gone – PS4.png', 'image/png', '199.00', 10, 1, 'c'),
(6, 'Jogo', 'PS4', 'WB Games', 'Mortal Kombat 11 – PS4', 'Jogos de Ação e Aventura', 'Mortal Kombat 11 – PS4.png', 'image/png', '249.00', 10, 1, 'd'),
(7, 'Jogo', 'PS4', 'Rockstar', 'GTA - Grand Theft Auto V – PS4', 'Jogos de Ação e Aventura', 'GTA - Grand Theft Auto V – PS4.png', 'image/png', '149.00', 10, 1, 'e'),
(8, 'Jogo', 'Xbox One', 'Rockstar', 'Red Dead Redemption 2 – Xbox One', 'Jogos de Ação e Aventura', 'Red Dead Redemption 2 – Xbox One.png', 'image/png', '249.00', 10, 1, 'f'),
(9, 'Jogo', 'PS4', 'Playstation - Sony B', 'Crash Bandicoot Nsane Trilogy – PS4', 'Jogos de Ação e Aventura', 'Crash Bandicoot Nsane Trilogy – PS4.png', 'image/png', '149.00', 10, 1, 'g'),
(10, 'Jogo', 'PS4', 'WB Games', 'Devil May Cry V – PS4', 'Jogos de Ação e Aventura', 'Devil May Cry V – PS4.png', 'image/png', '249.00', 10, 1, 'h');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto_pedido`
--

CREATE TABLE `produto_pedido` (
  `id` int(11) NOT NULL,
  `quantidade` tinyint(4) NOT NULL,
  `preco` decimal(12,2) NOT NULL,
  `pedido_id` int(11) NOT NULL,
  `produto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone`
--

CREATE TABLE `telefone` (
  `id` int(11) NOT NULL,
  `ddd` varchar(3) NOT NULL,
  `numero` varchar(9) NOT NULL,
  `principal` bit(1) NOT NULL,
  `cliente_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_endereco_cliente_idx` (`cliente_id`);

--
-- Indexes for table `forma_pagamento`
--
ALTER TABLE `forma_pagamento`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pedido_cliente1_idx` (`cliente_id`),
  ADD KEY `fk_pedido_forma_pagamento1_idx` (`forma_pagamento_id`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produto_pedido`
--
ALTER TABLE `produto_pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_produto_pedido_pedido1_idx` (`pedido_id`),
  ADD KEY `fk_produto_pedido_produto1_idx` (`produto_id`);

--
-- Indexes for table `telefone`
--
ALTER TABLE `telefone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_telefone_cliente_idx` (`cliente_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `endereco`
--
ALTER TABLE `endereco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `forma_pagamento`
--
ALTER TABLE `forma_pagamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `produto_pedido`
--
ALTER TABLE `produto_pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `telefone`
--
ALTER TABLE `telefone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `endereco`
--
ALTER TABLE `endereco`
  ADD CONSTRAINT `fk_endereco_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `fk_pedido_cliente1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pedido_forma_pagamento1` FOREIGN KEY (`forma_pagamento_id`) REFERENCES `forma_pagamento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `produto_pedido`
--
ALTER TABLE `produto_pedido`
  ADD CONSTRAINT `fk_produto_pedido_pedido1` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_produto_pedido_produto1` FOREIGN KEY (`produto_id`) REFERENCES `produto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `telefone`
--
ALTER TABLE `telefone`
  ADD CONSTRAINT `fk_telefone_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
