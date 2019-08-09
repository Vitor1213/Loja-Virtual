-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 09-Ago-2019 às 00:48
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lojagames`
--

CREATE SCHEMA IF NOT EXISTS `lojagames` DEFAULT CHARACTER SET utf8 ;
USE `lojagames` ;

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
(3, 'Jogo', 'PS4', 'Playstation - Sony B', 'Marvels Spider-Man – PS4', 'Jogos de Ação e Aventura', 'Marvels Spider-Man – PS4.png', 'image/png', '169.00', 10, 1, '\"Marvel\'s Spider-Man Marvel’s Spider-Man traz seu lançador de teias favorito em uma história diferente de qualquer outra antes vista. Agora como um super-herói experiente, Peter Parker tem estado ocupado combatendo o crime nas ruas como o Homem-Aranha. E justamente quando ele está disposto a priorizar sua vida como Peter, um novo vilão chega para ameaçar New York. Enfrentando adversidades avassaladoras e enormes riscos, o Homem-Aranha terá de mostrar sua força e ser superior. A Sony Interactive Entertainment, a Marvel e a Insomniac Games apresentam Marvel’s Spider-Man exclusivamente para o PlayStation 4. Seja o Homem-Aranha Após oito anos usando a máscara, Peter Parker agora é um mestre na luta contra o crime. Sinta todo o poder de um Homem-Aranha mais experiente com uma mecânica de combate improvisada, habilidades acrobáticas dinâmicas, movimentos urbanos brandos e interações com o ambiente. Não sendo mais um principiante, esse é o Homem-Aranha mais habilidoso que você já jogou. Os mundos se colidem Os mundos de Peter Parker e do Homem-Aranha se colidem em uma história original cheia de ação. Nesse novo universo do Homem-Aranha, os personagens famosos das vidas de Peter e do Homem-Aranha foram reinventados para exercerem papéis únicos. A Nova York da Marvel é seu parque de diversões A Grande Maçã ganha vida como o mundo mais vasto e interativo da Insomniac até agora. Percorra bairros vibrantes e capture vistas espetaculares de locais famosos da Marvel e de Manhattan. Use o ambiente para derrotar vilões com golpes épicos em uma ação digna de sucessos de bilheteria.\"'),
(4, 'Jogo', 'X360', 'Microsoft', 'Minecraft – X360', 'Jogos de Ação e Aventura', 'Minecraft – X360.png', 'image/png', '59.00', 10, 1, 'Um fenômeno dos jogos eletrônicos com sua forma simples de jogar mas que permite que os jogadores criem mundos e cenários gigantescos, liberando totalmente a criatividade das pessoas. Imagine e crie, simples assim. Minecraft para Xbox 360 permite que você construa mundos virtuais, sentado e seu sofá. No cair da noite, monstros irão surgir, portanto certifique-se de construir um abrigo antes que isso aconteça.'),
(5, 'Jogo', 'PS4', 'Playstation - Sony B', 'Days Gone – PS4', 'Jogos de Ação e Aventura', 'Days Gone – PS4.png', 'image/png', '199.00', 10, 1, 'Days Gone é um jogo de ação e aventura em mundo aberto que se passa em um ambiente adverso dois anos após uma pandemia mundial devastadora. Jogue com Deacon St. John, um andarilho e caçador de recompensas que segue um caminho tortuoso, lutando para sobreviver ao mesmo tempo em que busca uma razão para viver. • Um mundo aberto inóspito: usando o poder do PlayStation 4 e do Unreal Engine 4, Days Gone proporciona uma experiência em mundo aberto incrivelmente realista e detalhada. Entre de cabeça em ambientes vastos e hostis e explore seus segredos. Procure em veículos abandonados, casas, paradouros de caminhões e cidades em sua busca por recursos. Porém, tome cuidado: os ciclos de dia e noite, além de sistemas de clima dinâmicos, afetam a partida e o comportamento dos inimigos. • Simulação de combate brutal: aperfeiçoe sua partida com uma combinação infindável de estratégia e jogo em todas as situações. Produza itens personalizados usando peças e partes encontradas no campo, que variam de armas de combate brutal corpo a corpo a armadilhas; e muito mais. Aja com sabedoria, pois cada escolha pode ser a diferença entre a vida e a morte. • Inimigos exclusivos: além dos andarilhos, milicianos e saqueadores humanos, Deacon terá de passar por locais inóspitos infestados de Freakers: criaturas irracionais e selvagens. Embora sejam mais animais do que humanos, os Freakers são inteligentes e se desenvolvem rápido. Como ocorre com qualquer criatura viva, eles têm necessidades, hábitos e comportamentos que Deacon deve aprender e aos quais precisa se adaptar. • Ambiente único: adapte-se a mudanças rápidas de ambiente inspiradas no adverso alto deserto do Noroeste do Pacífico. Em determinado momento, Deacon pode estar em uma densa floresta alpina, em áreas cobertas por neve ou uma campina exuberante; em outro, luta para atravessar os inóspitos campos e cavernas de lava no deserto. Antigos escoamentos de lava maculam e definem os perigosos ambientes, oferecendo um pano de fundo espetacular e diverso de regiões para explorar. De pequenas cidades e montanhas a precipícios e bacias fluviais, explore o mundo belo mas ameaçador que restou como decorrência da destruição da humanidade. • História envolvente: em sua essência, Days Gone se resume a sobreviventes e o que faz deles humanos: desespero, perda, loucura, traição, amizade, fraternidade, arrependimento, amor... e esperança. Mostra como, mesmo ao se depararem com uma tragédia tão grande, sua esperança nunca morre.'),
(6, 'Jogo', 'PS4', 'WB Games', 'Mortal Kombat 11 – PS4', 'Jogos de Ação e Aventura', 'Mortal Kombat 11 – PS4.png', 'image/png', '249.00', 10, 1, 'Mortal Kombat está de volta e melhor do que nunca na nova evolução dessa franquia icônica. As novas Variações Customizadas de Personagem oferecem controle sem precedentes para personalizar os lutadores e torná-los seus. O novo motor gráfico demonstra em detalhes cada momento, dos ossos triturados aos olhos saltando, te trazendo tão perto da luta que você consegue senti-la. Trazendo um elenco de personagens novos e Klássicos, o aclamado modo história de Mortal Kombat está de volta, continuando a saga épica que vem sendo construída ao longo de 25 anos.'),
(7, 'Jogo', 'PS4', 'Rockstar', 'GTA - Grand Theft Auto V – PS4', 'Jogos de Ação e Aventura', 'GTA - Grand Theft Auto V – PS4.png', 'image/png', '149.00', 10, 1, 'Vivencie o jogo em mundo aberto da Rockstar Games aclamado pela crítica , Grand Theft Auto V. Quando um malandro de rua, um ladrão de bancos aposentado e um psicopata aterrorizante se envolvem com alguns dos criminosos mais assustadores e loucos do submundo, o governo dos EUA e a indústria do entretenimento, eles devem realizar golpes ousados para sobreviver nessa cidade implacável onde não podem confiar em ninguém, nem mesmo um no outro. Explore o deslumbrante mundo de Los Santos e Blaine County na experiência definitiva de Grand Theft Auto V, apresentando amplas atualizações e melhorias técnicas tanto para jogadores novos quanto para os que estiverem retornando. Além de distâncias maiores de renderização e melhor resolução, os jogadores podem esperar diversas adições e melhorias, incluindo: • Novas armas, veículos e atividades • Fauna adicional • Trânsito mais intenso • Novo sistema de folhagem • Efeitos de dano e de clima aprimorados, e muito mais Grand Theft Auto V também vem com Grand Theft Auto Online, o universo dinâmico e em constante evolução com nova jogabilidade online para até 30 jogadores no PS4™. Todas as atualizações de jogabilidade e conteúdos criados pela Rockstar desde o lançamento do Grand Theft Auto Online também estão disponíveis para o PS4™, e há muito mais ainda por vir. Conteúdo Especial Para Jogadores Que Estiverem Retornando Jogadores que estiverem retornando das versões para PS3™ e Xbox 360 terão acesso especial a uma série de conteúdos para o PS4™, incluindo versões raras de veículos clássicos para colecionar de toda a série Grand Theft Auto, tais como o Dukes, o Dodo Seaplane e um dirigível mais rápido e controlável; atividades incluindo fotografia da fauna e novos desafios do Estande de Tiro, além de novas armas e muito mais. O conteúdo de acesso especial requer uma conta do Social Club da Rockstar Games. Acesse rockstargames.com/v/bonuscontent para mais detahes.'),
(8, 'Jogo', 'Xbox One', 'Rockstar', 'Red Dead Redemption 2 – Xbox One', 'Jogos de Ação e Aventura', 'Red Dead Redemption 2 – Xbox One.png', 'image/png', '249.00', 10, 1, '\"Estados Unidos, 1899. O fim da era do velho oeste começou, e as autoridades estão caçando as últimas gangues de fora da lei que restam. Os que não se rendem, nem sucumbem, são mortos. Depois de tudo dar errado durante um roubo em uma cidade do oeste chamada Blackwater, Arthur Morgan e a gangue Van der Linde são forçados a fugir. Com agentes federais e os melhores açadores de recompensas no seu encalço, a gangue precisa roubar, assaltar e lutar para sobreviver no impiedoso coração dos Estados Unidos. Conforme divisões internas profundas ameaçam despedaçar a gangue, Arthur deve fazer uma escolha entre os seus próprios ideais e a lealdade à gangue que o criou. Dos criadores de Grand Theft Auto V e Red Dead Redemption, Red Dead Redemption 2 é uma história épica sobre a vida nos Estados Unidos no alvorecer dos tempos modernos.\"'),
(9, 'Jogo', 'PS4', 'Playstation - Sony B', 'Crash Bandicoot Nsane Trilogy – PS4', 'Jogos de Ação e Aventura', 'Crash Bandicoot Nsane Trilogy – PS4.png', 'image/png', '149.00', 10, 1, 'Crash Bandicoot® N. Sane Trilogy Seu marsupial favorito, Crash Bandicoot®, está de volta! Ele está melhorado, animado e pronto para dançar com a coleção de jogos N. Sane Trilogy. Agora você terá uma experiência inigualável com Crash Bandicoot em 4K. Gire, pule, bata e repita enquanto você encara as aventuras e os desafios épicos dos três primeiros jogos da série, Crash Bandicoot®, Crash Bandicoot® 2: Cortex Strikes Back e Crash Bandicoot®: Warped. Reviva todos os seus momentos favoritos de Crash em toda sua glória completamente remasterizada em gráficos de alta definição e prepare-se para colocar um pouco de TCHAM no seu TCHUM! Crash Bandicoot Dr. Neo Cortex tem planos de dominar o mundo e quer criar animais geneticamente modificados para seguir suas ordens. Para criar seus capangas, Cortex sequestra a maior quantidade de animais possível, e a namorada de Crash Bandicoot acaba sendo uma de suas vítimas. Controle Crash ao correr, pular e girar por 30 níveis de ação intensa em três ilhas australianas diferentes. Só você pode ajudar Crash a salvar os animais e a namorada dele e acabar com os planos do Dr. Cortex. Crash Bandicoot 2: Cortex Strikes Back O terrível Dr. Neo Cortex está de volta… dessa vez, para salvar o mundo? E ele está pedindo a ajuda do arqui-inimigo, Crash Bandicoot? Será esse um plano calculista para atrair Crash para o próximo experimento perverso de Cortex? Crash triunfará novamente ou será mais um no zoológico controlado por Cortex? Ambientes em 3D maiores e não lineares, novíssimas animações e uma série de personagens animados: veja nosso herói Crash patinar no gelo, montar num urso polar e usar um propulsor a jato com gravidade zero nas intermináveis aventuras de Crash Bandicoot 2: Cortex Strikes Back. Agora, ele não está para brincadeiras! Crash Bandicoot Warped Sim, ele está de volta… E está preparado! É uma aventura de viagem no tempo totalmente nova! Jogo de ação com novíssimos estilos de gameplay: mergulhe, ande de moto, monte em um T-Rex bebê e pilote um avião livremente! Jogue como Coco! Corra montado em um tigre pela Grande Muralha da China, faça manobras radicais num jet ski, entre outras surpresas extravagantes! Coloque suas habilidades à prova com os novos Super-charge Body Slam, Super Slide, Double Jump, Death-Tornado Spin e uma bazuca com mira a laser. Entre os novos inimigos estão um chefe final (Uka Uka), N. Tropy, o ameaçador Dingodile e, claro, a volta de alguns personagens favoritos, como N. Gin e Tiny. Mais ação. Mais diversão. Mais quebra-cabeças e níveis secretos. E você ainda achava que não tinha como melhorar!'),
(10, 'Jogo', 'PS4', 'WB Games', 'Devil May Cry V – PS4', 'Jogos de Ação e Aventura', 'Devil May Cry V – PS4.png', 'image/png', '249.00', 10, 1, 'Anos se passaram desde que as legiões do inferno chegaram a este mundo, mas agora uma nova invasão demoníaca começou e a última esperança da humanidade está nas mãos de três caçadores de demônios solitários, cada um com um estilo de jogo radicalmente diferente. Unidos pelo destino e pela sede de vingança, esses caçadores terão de enfrentar seus próprios demônios para sobreviver. Recursos do Jogo: • A volta da lendária série de ação – A série que já vendeu 16 milhões de cópias está de volta, sob o comando do diretor original Hideaki Itsuno. • Batalha entre o bem e o mal – Uma invasão demoníaca começa com as sementes de uma “árvore-demônio” se enraizando em Red Grave City. Essa incursão infernal atrai a atenção do jovem caçador de demônios Nero, um aliado de Dante que agora está sem seu braço demoníaco, fonte de boa parte de seu poder. O drama familiar sobrenatural também continua com Dante, Filho de Sparda, buscando vingança para a corrupção de seu irmão e para o assassinato de sua mãe. • Ação explosiva e estilizada – São apresentados três personagens jogáveis, cada um com um estilo de jogo e combate radicalmente diferente para enfrentar a cidade dominada por demônios. • Gráficos inovadores – Desenvolvida com o engine RE, interno e exclusivo da Capcom, a série continua a alçar novas alturas em fidelidade, com gráficos que utilizam design de personagens fotorrealistas e efeitos ambientais e de iluminação impressionantes. • Acabe com a invasão demoníaca – Lute contra chefes épicos em combates cheios de adrenalina em uma Red Grave City dominada. • Caçador de demônios – Nero, um dos protagonistas da série, um jovem caçador de demônios que tem o sangue de Sparda, vai a Red Grave City para enfrentar o massacre infernal dos demônios com Nico, sua nova parceira e artífice de armas.'),
(11, 'Jogo', 'PS4', 'Playstation - Sony B', 'The Last Of Us Remasterizado Hits – PS4', 'Jogos de Ação e Aventura', 'The Last Of Us Remasterizado Hits – PS4.png', 'image/png', '79.00', 8, 1, '\"The Last of Us, ganhador de mais de 200 prêmios \'Jogo do Ano\', ganha versão remasterizada para o PlayStation®4. Agora com modelos de personagens em alta resolução, sombras e luzes aprimoradas e outras melhorias no jogo. Cidades abandonadas retomadas pela natureza. Uma população dizimada por uma praga moderna. Os sobreviventes matam uns aos outros por comida, armas e qualquer outra coisa em que puderem botar as mãos. Joel, um sobrevivente brutal, e Ellie, uma adolescente corajosa e madura apesar da pouca idade, devem unir forças para saírem vivos da sua jornada pelos Estados Unidos. A versão remasterizada inclui pacotes com mapas de territórios abandonados, territórios recuperados e a campanha para um jogador The Last of Us: Left Behind, que foi aclamada pela crítica e combina temas se sobrevivência, lealdade e amor com um jogo intenso com sobreviventes em ação.\"'),
(12, 'Jogo', 'PS4', 'Square Enix', 'Shadow Of The Tomb Raider – PS4', 'Jogos de Ação e Aventura', 'Shadow Of The Tomb Raider – PS4.png', 'image/png', '203.00', 16, 1, 'Vivencie o momento definitivo de Lara Croft em Tomb Raider. Em Shadow of the Tomb Raider. Lara precisa dominar uma selva letal, superar tumbas assustadoras e perseverar em seu momento mais difícil. Enquanto ela corre contra o tempo para salvar o mundo do apocalipse maia, Lara se transformará na desbravadora que está destinada a ser. Sobreviva no lugar mais letal da Terra: domine uma selva castigante para sobreviver. Explore ambientes submersos cheios de fendas e sistemas de túneis profundos. Una-se à selva: Lara precisa tirar proveito da selva para atacar e desaparecer como um jaguar, amedrontando seus inimigos. Descubra tumbas brutais: tumbas apavorantes, cheias de enigmas letais, exigem técnicas de travessia avançadas para serem acessadas. Revele a história: descubra uma cidade oculta e explore a maior área já encontrada em Tomb Raider.'),
(13, 'Jogo', 'PS4', 'Codemasters', 'F1 2019 Legends Edition – PS4', 'Jogos de Corrida e Simuladores', 'F1 2019 Legends Edition – PS4.png', 'image/png', '299.00', 20, 1, 'ULTRAPASSE SEUS ADVERSÁRIOS Você tem o que é preciso? * F2TM career opening - Estabeleça sua reputação e derrote seus adversários antes de ascender ao F1® Championship. * Customize seu uniforme e assuma a liderança em desafios semanais nas nossas ligas online. Teste você mesmo contra os melhores em nossa área dedicada a F1® Esports. * Reveja e compartilhe seus melhores momentos com o novo e automático recurso de melhores momentos, enquanto a nova iluminação noturna e a marca oficial da F1® adicionam ainda mais realismo. LEGENDS EDITION Comemore o décimo aniversario do jogo F1® com dois carros clássicos extras da temporada de 2010:Ferrari 056 & McLaren MP4-25, ainda contém conteúdo especial de Senna e Prost, com seus carros clássicos.'),
(14, 'Jogo', 'PS4', 'EA - Wb Games', 'Fifa 19 – PS4', 'Jogos de Esporte', 'Fifa 19 – PS4.png', 'image/png', '129.00', 35, 1, 'Feito com Frostbite™*, EA SPORTS™ FIFA 19 entrega uma experiência campeã dentro e fora do campo. Do aspecto tático à cada toque técnico, Controle O Campo em cada momento com novos elementos de gameplay no EA SPORTS FIFA 19. O novíssimo Sistema Ativo de Toque permite controle mais próximo, Táticas Dinâmicas possibilitam configurações de equipe mais profundas e acessíveis, Batalhas 50/50 permitem maior fisicalidade e mais habilidade do usuário nas disputas por bolas perdidas, Finalizações Cadenciadas eleva o controle do usuário atacando, e a evolução da Tecnologia Real Player Motion continua a melhorar as personalidades dos jogadores com animações autênticas e realistas. Recursos do jogo: Sistema Ativo de Toque: O novo Sistema Ativo de Toque muda fundamentalmente a forma como você recebe e acerta a bola, permitindo melhor controle, melhorando a fluidez, criatividade e maior personalidade do jogador. Use uma gama de novas ferramentas de primeiro toque, como o toque disfarçado, novos voleios, ou mesmo animações específicas de fintas, como a Neymar Trap, para sair em vantagem e criar oportunidades de gol. Táticas Dinâmicas: Um sistema reimaginado dá aos jogadores as ferramentas para criar diversas opções táticas, oferecendo profunda costumização antes da partida, além de mais opções para ajustes dinâmicos durante a partida com o direcional digital. Cada opção tática combina formações, mentalidades, e estilos de jogo ofensivos e defensivos, permitindo que você facilmente customize sua jogada em qualquer situação. Batalhas 50/50: Com as Batalhas 50/50, reações do usuário e atributos do jogador determinam o resultado entre ganhar e perder bolas soltas ao longo do campo. Com maior inteligência do companheiro de equipe e noção espacial, cada disputa importa na luta por posse de bola. Finalizações Cadenciadas: Toque duplo em qualquer tentativa de ataque aciona a finalização cadenciada, colocando usuários em controle de quão precisamente eles se conectam com a bola. A precisão da segunda apertada de botão determina o resultado do contato, com toques perfeitamente sincronizados aumentando a precisão e força, e toques piores tendo mais chance de errar o alvo. Seja em um chute de fora da área, uma cabeçada de precisão ou um toque de habilidade, finalizações cadenciadas adicionam uma nova camada de controle nas chances de frente para o gol. Tecnologia Real Player Motion: o sistema que mudou o jogo, trouxe personalidade aos jogadores e aumentou a fidelidade dos movimentos de EA SPORTS FIFA, volta com maior cobertura ao longo do campo. Animações aprimoradas para proteção da bola, balanceamento de impacto e disputas físicas trazem movimentos realistas dos jogadores, responsividade e personalidade à novas alturas.'),
(15, 'Jogo', 'PS4', 'Playstation - Sony B', 'God Of War – PS4', 'Jogos de Ação e Aventura', 'God Of War – PS4.png', 'image/png', '169.00', 59, 1, 'É um novo começo para Kratos! O Santa Monica Studio e o diretor de criação Cory Barlog lançam um novo começo para um dos personagens mais conhecidos dos jogos. Vivendo como um homem, fora da sombra dos deuses, Kratos deve se adaptar a terras desconhecidas, ameaças inesperadas e a uma segunda oportunidade de ser pai. Junto ao seu filho, Atreus, os dois vão se aventurar pelas selvagens florestas nórdicas e lutar para cumprir uma missão profundamente pessoal. Recursos do Jogo; • Um novo começo ousado: sua vingança contra os deuses do Olimpo agora é passado e Kratos vive como um homem comum no reino dos monstros e deuses nórdicos. E é nesse mundo inóspito e implacável que ele precisa lutar para sobreviver... e ensinar seu filho a fazer o mesmo. Essa nova versão surpreendente de God of War desconstrói os principais elementos que definiram a série (combates gratificantes, proporção espetacular e uma narrativa poderosa), combinando-os de uma forma diferente. • Uma segunda oportunidade: Kratos é pai novamente. Assumindo o papel de mentor e protetor de seu filho, Atreus, que está determinado a conquistar seu respeito, Kratos é forçado a lidar e controlar a fúria que, por muito tempo, foi sua essência, e a explorar um mundo extremamente perigoso com seu filho. • Um mundo mais sombrio e elementar: desde as colunas de mármore de ornamentação do Olimpo até as florestas, montanhas e cavernas realistas do universo nórdico pré-viking, esse é um reino claramente novo com seu próprio panteão de criaturas, monstros e deuses. Com uma nova ênfase na descoberta e na exploração, esse mundo atrairá os jogadores para explorar cada centímetro do cenário surpreendentemente ameaçador de God of War, que é, sem dúvida, o maior da série. • Combates físicos violentos: com uma câmera livre e por cima do corpo que aproxima ainda mais o jogador da ação, as lutas de God of War refletem o panteão de criaturas nórdicas que Kratos enfrentará: grandiosas, realistas e exaustivas. Uma nova arma principal e novas habilidades mantêm o espírito que define God of War, além de apresentarem uma visão de conflitos violentos que criam uma nova base para o gênero.'),
(16, 'Jogo', 'Xbox One', 'EA - Wb Games', 'Fifa 19 – Xbox One', 'Jogos Esportes', 'Fifa 19 – Xbox One.png', 'image/png', '129.00', 4, 1, 'Feito com Frostbite™*, EA SPORTS™ FIFA 19 entrega uma experiência campeã dentro e fora do campo. Do aspecto tático à cada toque técnico, Controle O Campo em cada momento com novos elementos de gameplay no EA SPORTS FIFA 19. O novíssimo Sistema Ativo de Toque permite controle mais próximo, Táticas Dinâmicas possibilitam configurações de equipe mais profundas e acessíveis, Batalhas 50/50 permitem maior fisicalidade e mais habilidade do usuário nas disputas por bolas perdidas, Finalizações Cadenciadas eleva o controle do usuário atacando, e a evolução da Tecnologia Real Player Motion continua a melhorar as personalidades dos jogadores com animações autênticas e realistas. Recursos do jogo: Sistema Ativo de Toque: O novo Sistema Ativo de Toque muda fundamentalmente a forma como você recebe e acerta a bola, permitindo melhor controle, melhorando a fluidez, criatividade e maior personalidade do jogador. Use uma gama de novas ferramentas de primeiro toque, como o toque disfarçado, novos voleios, ou mesmo animações específicas de fintas, como a Neymar Trap, para sair em vantagem e criar oportunidades de gol. Táticas Dinâmicas: Um sistema reimaginado dá aos jogadores as ferramentas para criar diversas opções táticas, oferecendo profunda costumização antes da partida, além de mais opções para ajustes dinâmicos durante a partida com o direcional digital. Cada opção tática combina formações, mentalidades, e estilos de jogo ofensivos e defensivos, permitindo que você facilmente customize sua jogada em qualquer situação. Batalhas 50/50: Com as Batalhas 50/50, reações do usuário e atributos do jogador determinam o resultado entre ganhar e perder bolas soltas ao longo do campo. Com maior inteligência do companheiro de equipe e noção espacial, cada disputa importa na luta por posse de bola. Finalizações Cadenciadas: Toque duplo em qualquer tentativa de ataque aciona a finalização cadenciada, colocando usuários em controle de quão precisamente eles se conectam com a bola. A precisão da segunda apertada de botão determina o resultado do contato, com toques perfeitamente sincronizados aumentando a precisão e força, e toques piores tendo mais chance de errar o alvo. Seja em um chute de fora da área, uma cabeçada de precisão ou um toque de habilidade, finalizações cadenciadas adicionam uma nova camada de controle nas chances de frente para o gol. Tecnologia Real Player Motion: o sistema que mudou o jogo, trouxe personalidade aos jogadores e aumentou a fidelidade dos movimentos de EA SPORTS FIFA, volta com maior cobertura ao longo do campo. Animações aprimoradas para proteção da bola, balanceamento de impacto e disputas físicas trazem movimentos realistas dos jogadores, responsividade e personalidade à novas alturas.'),
(17, 'Jogo', 'Xbox One', 'Ubisoft', 'Tom Clancys – Ghost Recon Wildlands – Limited', 'Jogos Tiro e Guerra', 'Tom Clancys – Ghost Recon Wildlands – Limited Edition – Xbox', 'image/png', '149.00', 6, 1, 'Viaje para as altas montanhas da Bolívia para quebrar a aliança mortal entre Santa Blanca e os cartéis peruanos. Experiência de total liberdade de escolha em Tom Clancy Ghost Recon Wildland, o atirador militar situado num cenário imenso de mundo aberto. Viaje para as altas montanhas da Bolívia para quebrar a aliança mortal entre Santa Blanca e os cartéis peruanos. Experiência de total liberdade de escolha em Tom Clancy Ghost Recon Wildland, o atirador militar situado num cenário imenso de mundo aberto. DLC Adicional: -Wildlands Dragon Pack Descrição: Obtenha o exclusivo patch Dragão de equipamento para usar enquanto explora as terras selvagens e desbloqueie um bônus de duas horas de experiência extra para ajudá-lo a aumentar a quantidade de pontos de experiência ganhos no jogo. Instruções Para Resgate Do Dlc: 1. Acesse o site http://ecogames.com/form-dlc 2. Preencha todos os campos solicitados e anexe a nota fiscal do produto comprovando a compra no varejista especificado. 3. Aguarde uma resposta em até 2 dias úteis após o recebimento e validação das informações. 4. Resgates válidos apenas enquanto durarem os estoques. DLC Adicional: -Wildlands Kraken Pack Descrição: Obtenha o exclusivo patch Kraken de equipamento para usar enquanto explora as terras selvagens e desbloqueie um bônus de duas horas de experiência extra para ajudá-lo a aumentar a quantidade de pontos de experiência ganhos no jogo. Instruções Para Resgate Do Dlc: 1. Acesse o site http://ecogames.com/form-dlc 2. Preencha todos os campos solicitados e anexe a nota fiscal do produto comprovando a compra no varejista especificado. 3. Aguarde uma resposta em até 2 dias úteis após o recebimento e validação das informações. 4. Resgates válidos apenas enquanto durarem os estoques.'),
(18, 'Jogo', 'PS4', 'Ubisoft', 'Tom Clancys The Division 2° Ed. Lançamento – ', 'Jogos Tiro e Guerra', 'Tom Clancys The Division 2° Ed. Lançamento – PS4.png', 'image/png', '179.00', 40, 1, '\"O DESTINO DO MUNDO LIVRE ESTÁ EM JOGO EM TOM CLANCY’S THE DIVISION® 2. Lidere uma equipe de agentes de elite na Washington, DC pós-pandemia para restaurar a ordem e evitar o colapso da cidade. Tom Clancy’s The Division 2 é uma experiência de tiro/ação/RPG online, onde a exploração e o progresso do jogador são essenciais. Salve um país à beira do colapso e explore um mundo aberto, dinâmico e hostil em Washington, DC. Entre em combate junto com os seus amigos no modo cooperativo online ou contra outras pessoas no PvP competitivo. Escolha uma especialização de classe única para enfrentar os desafios mais difíceis com seus amigos no objetivo de fim de jogo definitivo do gênero DLC INCLUI VISUAIS EXCLUSIVOS * Escopeta SPAS-12 Exótica * Visual Hazmat 2.0\"'),
(19, 'Jogo', 'PS4', 'Square Enix', 'Kingdom Hearts 3 – PS4', 'Jogos de Ação e Aventura', 'Kingdom Hearts 3 – PS4.png', 'image/png', '249.00', 22, 1, 'Kingdom Hearts III conta a história do poder da amizade enquanto Sora e seus amigos embarcam em uma perigosa aventura. O jogo se passa em diversos mundos da Disney e Pixar, seguindo a jornada de Sora, um jovem garoto que desconhece o poder espetacular que herdou. Sora se une a Pato Donald e Pateta, dois emissários enviados pelo Rei Mickey do Castelo Disney, para impedir que uma força maligna conhecida como Heartless invada e domine o universo. Através do poder da positividade e da amizade, Sora, Donald e Pateta se unem a personagens icônicos da Disney-Pixar, antigos e novos, para enfrentar grandes desafios e vencer a escuridão que ameaça seus mundos. Características principais: * Aventure-se em mundos da Disney e Pixar * Desbloqueie o poder das Keyblades * Jogue com Sora e Riku * Gráficos Unreal Engine 4'),
(20, 'Jogo', 'Xbox One', 'WB Games', 'Mortal Kombat 11 – Xbox One', 'Jogos de Ação e Aventura', 'Mortal Kombat 11 – Xbox One.png', 'image/png', '249.00', 14, 1, 'Mortal Kombat está de volta e melhor do que nunca na nova evolução dessa franquia icônica. As novas Variações Customizadas de Personagem oferecem controle sem precedentes para personalizar os lutadores e torná-los seus. O novo motor gráfico demonstra em detalhes cada momento, dos ossos triturados aos olhos saltando, te trazendo tão perto da luta que você consegue senti-la. Trazendo um elenco de personagens novos e Klássicos, o aclamado modo história de Mortal Kombat está de volta, continuando a saga épica que vem sendo construída ao longo de 25 anos.'),
(21, 'Jogo', 'PS4', 'Playstation - Sony B', 'Uncharted 4 A Thief`S End Hits – PS4', 'Jogos de Ação e Aventura', 'Uncharted 4 A Thief`S End Hits – PS4.png', 'image/png', '79.00', 3, 1, '\"Exclusivo em PlayStation Todo Tesouro Tem Seu Preço Muitos anos após sua última aventura, o caçador de recompensas aposentado, Nathan Drake, é forçado a voltar ao mundo dos ladrões. Agora com sua vida pessoal em jogo, Drake embarca numa jornada ao redor do mundo em busca da conspiração histórica por trás de um famoso tesouro de piratas. Sua maior aventura vai testar seus limites físicos, sua determinação e, por fim, o que ele está disposto a sacrificar para poder salvar as pessoas que ama.\"'),
(22, 'Jogo', 'PS4', 'Playstation - Sony B', 'Uncharted The Nathan Drake Collection Hits – ', 'Jogos de Ação e Aventura', 'Uncharted The Nathan Drake Collection Hits – PS4.png', 'image/png', '79.00', 8, 1, '\"Descubra o homem. Desvende uma lenda. Adquira UNCHARTED: The Nathan Drake Collection e tenha acesso exclusivo ao Beta do multiplayer de UNCHARTED 4: A Thief’s End. Dos inovadores contadores de história da Naughty Dog, chega o épico de gênero pioneiro que revolucionou a narração de histórias de aventura, recriado pela Bluepoint Games com o poder do sistema PS4. Conheça uma das séries de jogos mais veneradas de todos os tempos ao acompanhar a arriscada jornada de Nathan Drake pelo mundo, de um começo humilde a descobertas extraordinárias. Descubra um inesquecível elenco de personagens enquanto Drake coloca a vida e a amizade em risco em uma corrida contra inimigos implacáveis para revelar um tesouro inimaginável. UNCHARTED The Nathan Drake Collection™ inclui campanhas para um jogador somente para o UNCHARTED: Drake’s Fortune, UNCHARTED 2: Among Thieves e UNCHARTED 3: Drake’s Deception.\"'),
(23, 'Jogo', 'PS4', 'Square Enix', 'Dissidia Final Fantasy Nt – PS4', 'Jogos de Ação e Aventura', 'Dissidia Final Fantasy Nt – PS4.png', 'image/png', '99.00', 16, 1, 'Sua Fantasia. Sua Luta! A Square Enix apresenta Dissidia Final Fantasy NT como uma experiência nova e renovada – uma luta baseado em equipe. Combinando uma jogabilidade perfeita, personagens Dissidia Final Fantasy NT e mundos de tirar o fôlego dos últimos 30 anos da franquia, Dissidia Final Fantasy NT dá as boas vindas a todos os jogadores da arena de batalha online com seu sistema de combate de bravura reconhecido. Dissidia Final Fantasy NT permite que você escolha entre mais de 20 personagens Final Fantasy e batalha em 3 contra 3. Cada partida permitirá que o jogador invoque convocações famosas como Ifrit, Shiva e Odin para dominar o lado oposto ou virar a maré da batalha. Este não é seu lutador médio - esta é a sua fantasia, sua luta. Destaques do Jogo: Final Fantasy, tudo o que você poderia desejar! Mais de vinte lendas Final Fantasy para jogar. Mais de dez arenas de batalha icônicas. Convocação lendária. Bem-vindo guerreiro, há um modo para todos - Um modo para cada jogador, seja matemática on- line competitiva, personagens personalizados apenas para amigos, partidas off-line contra a máquina ou treinamento para aprender e aperfeiçoar técnicas de combate. Quanto mais você luta, mais você ganha - Depois de cada batalha, o jogador receberá pontos de experiência e Gil. Com isso, os jogadores podem ganhar novas habilidades e personalizar seus personagens gratuitamente. Somente o valente sobrevive - O sistema de combate da bravura permite uma abordagem muito mais profunda e metódica do gênero do jogo de luta, separando a sorte da habilidade. A maneira de ganhar é conquistar pontos de bravura antes de desencadear ataques de HP novamente contra seu oponente.'),
(24, 'Jogo', 'PS4', 'Playstation - Sony B', 'Quantic Dream Collection – PS4', 'Jogos de Ação e Aventura', 'Quantic Dream Collection – PS4.png', 'image/png', '149.00', 20, 1, 'Quantic Dream Collection Não há melhor momento para vivenciar uma jornada personalizada com possibilidades inesperadas em três jogos clássicos premiados da Quantic Dream em uma única coleção. Detroit: Become Human Até onde você iria para se tornar humano? Encarne três personagens androides diferentes nesse admirável novo mundo que está à beira do caos. Suas decisões afetam consideravelmente o desenrolar da intensa narrativa do jogo, que tem diversos rumos. Com milhares de escolhas e dezenas de finais, o que você fará para mudar o futuro de Detroit? Heavy Rain Até onde você iria para salvar alguém que ama? Lidere a caça para desmascarar o misterioso Assassino do Origami jogando como quatro personagens diferentes nesse suspense psicológico repleto de tensão. Beyond: Two Souls Uma vida. Duas almas. Exerça poderes extraordinários experimentando a vida fora do comum de Jodie Holmes, uma mulher ligada a uma entidade sobrenatural. Vivencie uma aventura psicológica cheia de emoção descobrindo o que existe de verdade além dessa vida.'),
(25, 'Jogo', 'X360', 'WB Games', 'Lego Marvel Vingadores – X360', 'Jogos de Ação e Aventura', 'Lego Marvel Vingadores – X360.png', 'image/png', '79.00', 35, 1, 'Avante, Vingadores! A franquia campeã de vendas LEGO Marvel volta com uma nova aventura de super-heróis repleta de ação. Junte-se aos LEGO Marvel Avengers e vivencie o primeiro jogo com personagens e histórias do filme da Marvel - aclamado pela crítica - Os Vingadores, a sequência de sucesso Vingadores: Era de Ultron e mais. Jogue na pele dos mais poderosos super-heróis em sua jornada para salvar o mundo. Recursos do Jogo: • Elenco diversificado com personagens dos Vingadores da Marvel – jogue e desbloqueie mais de 100 personagens novos e conhecidos com uma variedade de habilidades, incluindo prediletos dos fãs como Hulk, Homem de Ferro, Capitão América e Thor, novos personagens dos Vingadores: Era de Ultron e mais. • Novos e melhores poderes e habilidades – novas maneiras de lutar com poderes e habilidades aprimorados dos personagens. Junte-se ao elenco principal dos Vingadores para executar combos incríveis. • Jogabilidade com movimentação livre – divirta-se com a abordagem única do mundo aberto de LEGO Avengers enquanto assume o papel dos Heróis Mais Poderosos da Terra para coletar blocos de ouro, botões e desbloquear personagens adicionais. • Variedade de locais icônicos – visite locais icônicos do universo cinemático da Marvel espalhados pelo mundo. • Vivencie o melhor da ação dos filmes dos Vingadores – relembre os principais momentos dos Vingadores, Vingadores: Era de Ultron e mais, com uma pitada do clássico humor do LEGO.'),
(26, 'Jogo', 'Xbox One', 'Ubisoft', 'Tom Clancys Rainbow Six Siege – Xbox One', 'Jogos Tiro e Guerra', 'Tom Clancys Rainbow Six Siege - Xbox One.png', 'image/png', '149.00', 8, 1, 'Criado pela Ubisoft, Tom Clancy’s Rainbow Six Siege é uma excelente opção para os amantes de FPS (tiro em primeira pessoa) no Xbox One. O game é a continuação da aclamada série baseada nos livros do americano Tom Clancy. Nele você representa soldados contra terroristas, com a missão de combater a organização White Masks, que promove terror e o caos no mundo virtual. Em mapas fechados muito bem trabalhados, ambientados em casas, museus e outros cenários, você tem o dever de criar estratégias e montar grupos de ataque, sendo que, antes de cada confronto, é possível estudar pontos-chaves de cada operação, usando drones e outras formas de coletar informações. Os ambientes proporcionam aos jogadores muita emoção e combates intensos, milimetricamente travados, em que você aprimora, a cada partida, a mira, camuflagem, táticas FPS, jogabilidade, trabalho em equipe e muita destruição.  Jogabilidade estratégica do Tom Clancy’s Rainbow Six Siege.  Como parte das estratégias, a jogabilidade em Tom Clancy’s Rainbow Six Siege para XBox One permite uma interação incrível com o ambiente, onde é possível invadir os cenários dos mapas de forma interativa, pois tudo reage de maneira inteligente. Como atacante, você pode usar balas e explosivos para destruir paredes, portas, tetos, forros e assoalhos. Já como defensor, você pode transformar o ambiente em verdadeiras barreiras intransponíveis, além de criar esconderijos para combates. O jogo também conta com a possibilidade de estratégias de cerco, com muitos desafios para neutralizar ameaças e sobreviver no game. Compre o seu, reúna os amigos e divirta-se.'),
(27, 'Jogo', 'PS4', 'Ubisoft', 'Assassins Creed Odyssey – PS4', 'Jogos de Ação e Aventura', 'Assassins Creed Odyssey – PS4.png', 'image/png', '159.00', 16, 1, 'Assassin’s Creed® Odyssey coloca as escolhas do jogador em primeiro plano com várias inovações, à medida que você escolhe o herói que quer se tornar e muda o mundo à sua volta. Assuma o controle do seu destino a cada decisão que tomar e a cada relacionamento que formar. Personalize seu equipamento e domine habilidades especiais novas, ajustando o conjunto de habilidades do seu herói ao seu estilo de jogo. Lute em terras gregas, envolvendo-se em batalhas viscerais em terra e mar e tornando-se um verdadeiro herói lendário. Colocando suas escolhas no centro da experiência de jogo, Assassin’s Creed Odyssey permite que você escreva sua própria odisseia. Recursos do jogo: \"A Edição Limitada Day One inclui: Missão Bônus - O Rei Cego* TORNE-SE UM HERÓI ESPARTANO LENDÁRIO Embarque em sua jornada desde uma origem humilde até uma lenda viva, como Alexios ou Kassandra. Ajuste seus equipamentos, melhore suas habilidades e personalize seu barco na jornada para se tornar herói de Esparta. A GRÉCIA ANTIGA AGUARDA Das alturas dos picos nevados às profundezas do Mar Egeu, explore um país inteiro cheio de ambientes indomados e cidades no ápice da Era de Ouro grega. Encontros inesperados vão dar vida à sua história, conforme você conhece personagens interessantes, batalha com mercenários cruéis e muito mais. ESCOLHA SEU PRÓPRIO CAMINHO Suas decisões dão forma ao mundo à sua volta, com mais de 30 horas de opções de diálogos e vários finais de jogo. Experimente um mundo vivo e dinâmico que evolui constantemente e reage a cada decisão sua. LUTE EM BATALHAS ÉPICAS Exiba suas extraordinárias habilidades de guerreiro e mude os rumos das batalhas em um dos conflitos mais mortais da época: a Guerra do Peloponeso. Ataque em conflitos épicos entre Esparta e Atenas, em grandes batalhas com 150 soldados de cada lado. VELEJE PELO MAR EGEU Encontre locais não mapeados, descubra tesouros escondidos ou enfrente frotas inteiras em batalhas navais. Personalize o visual do seu barco, melhore o armamento para combater melhor e recrute tripulantes com vantagens únicas, ajustando o combate naval ao seu estilo de jogo. TERRA DE MITOS E LENDAS Descubra um mundo rico de mitos e lendas. Entre rituais antigos e estátuas famosas, fique frente a frente com as figuras lendárias da Grécia e descubra a verdadeira natureza de feras mitológicas como a Medusa e o Minotauro. *o código do conteúdo digital deve ser resgatado e expira em 10/02/2020.\"'),
(28, 'Jogo', 'Xbox One', 'Codemasters', 'F1 2019 Legends Edition – Xbox One', 'Jogos Corrida e Simuladores', 'F1 2019 Legends Edition – Xbox One.png', 'image/png', '299.00', 20, 1, 'ULTRAPASSE SEUS ADVERSÁRIOS Você tem o que é preciso? * F2TM career opening - Estabeleça sua reputação e derrote seus adversários antes de ascender ao F1® Championship. * Customize seu uniforme e assuma a liderança em desafios semanais nas nossas ligas online. Teste você mesmo contra os melhores em nossa área dedicada a F1® Esports. * Reveja e compartilhe seus melhores momentos com o novo e automático recurso de melhores momentos, enquanto a nova iluminação noturna e a marca oficial da F1® adicionam ainda mais realismo. LEGENDS EDITION Comemore o décimo aniversario do jogo F1® com dois carros clássicos extras da temporada de 2010:Ferrari 056 & McLaren MP4-25, ainda contém conteúdo especial de Senna e Prost, com seus carros clássicos.'),
(29, 'Jogo', 'PS4', 'Playstation - Sony B', 'Bloodborne Hits – PS4', 'Jogos de Ação e Aventura', 'Bloodborne Hits – PS4.png', 'image/png', '79.00', 35, 1, '\"Enfrente seus pesadelos enquanto busca respostas na antiga cidade de Yharnam, agora amaldiçoada com uma estranha doença endêmica que se espalha pelas ruas como fogo. Perigo, morte e loucura estão em cada canto deste sombrio e horroroso mundo, e você deve descobrir seus segredos mais sombrios para sobreviver. -Um aterrorizante mundo novo: Faça uma jornada para uma cidade gótica cheia de horror, onde multidões loucas e criaturas assustadoras espreitam em cada canto. -Combate estratégico de ação: Armado com um arsenal exclusivo de armamentos, incluindo armas e cutelos, você vai precisar de sagacidade, estratégia e reflexos para derrotar os ágeis e inteligentes inimigos que protegem os segredos obscuros da cidade. -Uma nova geração de RPG de ação: Ambientes góticos surpreendentemente detalhados, iluminação atmosférica e novas experiências online avançadas mostram o poder e a proeza do sistema PlayStation 4. -Calabouços de cálices que mudam o tempo todo para explorar: Use cálices sagrados para obter acesso a uma rede de vastas ruínas subterrâneas, cheias de armadilhas, feras e recompensas, para explorar e conquistar sozinho ou com outros. Esses calabouços gerados proceduralmente oferecem novos desafios para dominar, e podem ser carregados ou compartilhados com amigos.\"'),
(30, 'Jogo', 'X360', 'EA - Wb Games', 'Fifa 19 – X360', 'Jogos de Esporte', 'Fifa 19 – X360.png', 'image/png', '129.00', 59, 1, 'FIFA 19 para X360 e PS3 terá as mesmas inovações de gameplay de FIFA 17 e FIFA 18 e contará com uma identidade visual atualizada com novos designs de aparência e menu. Recursos do jogo: Os modos de jogo a seguir estarão inclusos no FIFA 19 com as mesmas características e inovações do FIFA 17 e FIFA 18. * Jogo Rápido * Modo Carreira * Torneios – Licenciados e Customizados * Copa Internacional Feminia * Jogos de Habilidade * Temporadas Online * Amistosos Online * Modo Carreira Jogador (Jogador/Goleiro) FIFA ULTIMATE TEAM FIFA Ultimate Team incluirá: * Tarefas de Técnico * Temporadas Um Jogador & Online * Torneios Um Jogador & Online * Draft Um Jogador & Online * Partida de Um Jogador Online * Desafio de Montagem de Elenco FIFA Ultimate Team no FIFA 19 Legacy Edition não incluirá FUT ICONS.'),
(31, 'Jogo', 'PS4', 'Playstation - Sony B', 'Until Dawn Hits – PS4', 'Jogos de Ação e Aventura', 'Until Dawn Hits – PS4.png', 'image/png', '79.00', 4, 1, '\" Oito amigos presos juntos no refúgio de uma montanha remota e eles não estão sozinhos. Dominados pelo medo e com as tensões aumentando, eles devem combater o próprio medo se desejarem sobreviver inteiros durante a noite. Jogue como cada um dos oito personagens e vivencie o medo como nunca vivenciou antes. Toda decisão que você toma em sua busca aterrorizante por respostas pode significar a diferença entre a vida e a morte, mas para quem? Somente suas decisões determinarão quem sobreviverá a Until Dawn. Escolha e consequência Faça as escolhas impossíveis, onde todas as decisões em sua busca aterrorizante por respostas pode significar a diferença entre a vida e a morte, mas para quem? Terror de última geração Usando o poder de um evoluído motor de Killzone™ Shadow Fall, Until Dawn vai surpreendê-lo com gráficos realistas e impressioná-lo com o suspense da jogabilidade Efeito borboleta Trace seu caminho para a sobrevivência com ramificações de enredos que prometem que duas experiências não sejam iguais. As escolhas que você faz podem repercutir despercebidas em momentos de grave perigo ou podem muito bem salvar uma vida. História emocionante Mergulhe em uma história verdadeiramente emocionante escrita em colaboração com os famosos escritores/diretores cult Larry Fessenden e Graham Reznick.\"'),
(32, 'Jogo', 'Xbox One', 'Codemasters', 'F1 2019 Anniversary Edition – Xbox One', 'Jogos Corrida e Simuladores', 'F1 2019 Anniversary Edition – Xbox One.png', 'image/png', '249.00', 6, 1, 'ULTRAPASSE SEUS ADVERSÁRIOS Você tem o que é preciso? • F2TM career opening - Estabeleça sua reputação e derrote seus adversários antes de ascender ao F1® Championship. • Customize seu uniforme e assume a liderança em desafios semanais nas nossas ligas online. Teste você mesmo contra os melhores em nossa área dedicada a F1® Esports. • Reveja e compartilhe seus melhores momentos com o novo e automático recurso de melhores momentos, enquanto a nova iluminação noturna e a marca oficial da F1® adicionam ainda mais realismo. ANNIVERSARY EDITION Comemore o décimo aniversário do jogo F1® com dois carros clássicos extras da temporada de 2010:Ferrari 056 & McLaren MP4-25.'),
(33, 'Jogo', 'Xbox One', 'WB Games', 'Devil May Cry V – Xbox One', 'Jogos Ação e Aventura', 'Devil May Cry V – Xbox One.png', 'image/png', '249.00', 40, 1, 'Anos se passaram desde que as legiões do inferno chegaram a este mundo, mas agora uma nova invasão demoníaca começou e a última esperança da humanidade está nas mãos de três caçadores de demônios solitários, cada um com um estilo de jogo radicalmente diferente. Unidos pelo destino e pela sede de vingança, esses caçadores terão de enfrentar seus próprios demônios para sobreviver. Recursos do Jogo: • A volta da lendária série de ação – A série que já vendeu 16 milhões de cópias está de volta, sob o comando do diretor original Hideaki Itsuno. • Batalha entre o bem e o mal – Uma invasão demoníaca começa com as sementes de uma “árvore-demônio” se enraizando em Red Grave City. Essa incursão infernal atrai a atenção do jovem caçador de demônios Nero, um aliado de Dante que agora está sem seu braço demoníaco, fonte de boa parte de seu poder. O drama familiar sobrenatural também continua com Dante, Filho de Sparda, buscando vingança para a corrupção de seu irmão e para o assassinato de sua mãe. • Ação explosiva e estilizada – São apresentados três personagens jogáveis, cada um com um estilo de jogo e combate radicalmente diferente para enfrentar a cidade dominada por demônios. • Gráficos inovadores – Desenvolvida com o engine RE, interno e exclusivo da Capcom, a série continua a alçar novas alturas em fidelidade, com gráficos que utilizam design de personagens fotorrealistas e efeitos ambientais e de iluminação impressionantes. • Acabe com a invasão demoníaca – Lute contra chefes épicos em combates cheios de adrenalina em uma Red Grave City dominada. • Caçador de demônios – Nero, um dos protagonistas da série, um jovem caçador de demônios que tem o sangue de Sparda, vai a Red Grave City para enfrentar o massacre infernal dos demônios com Nico, sua nova parceira e artífice de armas.');
INSERT INTO `produto` (`id`, `produto`, `console`, `empresa`, `nome`, `categoria`, `imagem`, `mine`, `preco`, `estoque`, `ativo`, `descricao`) VALUES
(34, 'Console', 'PS4', 'Sony', 'Console PlayStation 4 Pro 1TB 4K – Sony', '', 'Console PlayStation 4 Pro 1TB 4K – Sony.jpg', 'image/jpeg', '2649.00', 22, 1, 'ESPECIFICAÇÕES: Fabricante: Sony;  Capacidade: 1 TB;  Modelo: PRO;  Voltagem: Bi-Volt,  Cor: Preto;  Taxa de Frames: 30/60 frames p/s;  Resolução Máxima: 4K;  Mídias Compatíveis: Blu-ray e Blu-ray 3D.  ITENS INCLUSOS:  Console;  Dualshock 4;  Cabo HDMI;  Cabo de alimentação;  Cabo USB 2.0;  Manual;  Headset básico'),
(35, 'Console', 'PS4', 'Sony', 'Console PlayStation 4 Slim 1TB – Sony', '', 'Console PlayStation 4 Slim 1TB – Sony.jpg', 'image/jpeg', '2199.00', 14, 1, 'ESPECIFICAÇÕES: Fabricante: Sony; Capacidade: 1 Tb; Modelo: Slim CUH-2115B; Voltagem: Bi-Volt; Cor: Preto;  Taxa de Frames: 30/60 frames p/s; Resolução Máxima: HDR; Mídias Compatíveis: Blu-ray e Blu-ray 3D.  ITENS INCLUSOS: Console; Dualshock 4; Cabo HDMI; Cabo de alimentação; Cabo USB; Manual; Headset básico.'),
(36, 'Console', 'Xbox One', 'Microsoft', 'Console Xbox One S 1TB – Microsoft', '', 'Console Xbox One S 1TB – Microsoft.jpg', 'image/jpeg', '1399.00', 3, 1, 'ESPECIFICAÇÕES: Fabricante: Microsoft; Capacidade: 1TB; Cor: Branca; Voltagem: Bi-Volt; Mídia compatível: Blu-Ray e Blu-Ray 3D; Input: HDMI, 2xUSB, RJ45 e áudio óptico; Output: HDMI e Alimentação.  ITENS INCLUSOS: Console; Controle; Cabo HDMI; Cabo de alimentação; Manual.'),
(37, 'Controle', 'PS4', 'Playstation - Sony B', 'Controle Dualshock Jet – PS4', '', 'Controle Dualshock Jet – PS4.png', 'image/png', '219.00', 8, 1, 'CONTROLE DUALSHOCK 4 - BLACK Revolucionário, intuitivo e preciso: o controle sem fio DualShock®4 para o sistema PlayStation®4 define esta geração de jogos, combinando recursos revolucionários e conforto com controles precisos e intuitivos. Controle preciso: o toque, formato e a sensibilidade dos controles analógicos e botões com gatilho do DualShock®4 oferecem aos jogadores conforto e controle absolutos em todos os jogos para PlayStation®4. Compartilhamento em suas mãos: o botão SHARE facilita o compartilhamento dos seus melhores momentos nos jogos, basta pressionar um botão. Faça upload de vídeos de gameplay e capturas de tela diretamente do seu sistema ou transmita seu gameplay ao vivo, tudo isso sem afetar o andamento do jogo. Recursos inovadores: recursos revolucionários, como o touch pad, a barra de luz e o alto-falante integrados proporcionam formas incríveis de jogar e interagir com seus jogos, e seu conector de áudio de 3,5 mm oferece uma prática solução de áudio pessoal para os jogadores que preferirem jogar com mais privacidade. Recarga eficiente: é fácil recarregar o controle sem fio DualShock®4, basta conectá-lo ao seu sistema PlayStation®4 (mesmo em modo de espera), ou qualquer carregador padrão com uma porta micro USB.'),
(38, 'Controle', 'Xbox One', 'Microsoft', 'Controle Sem Fio Xbox One – Microsoft', '', 'Controle Sem Fio Xbox One – Microsoft.png', 'image/png', '351.00', 16, 1, 'Possui de uma entrada para headset estéreo de 3,5 mm que permite que você conecte seu fone de ouvido diretamente no controle. Com motores de vibração nos gatilhos que fornecem feedback imediato dos tiros e ações no jogo, a experiência de jogo chega um novo nível de realismo. O D -pad é sensível a todos os movimentos direcionais. Grips e contornos foram projetados para atender ao contorno das mãos mais confortavelmente. Controle seu console ou PC com o novo controle bluetooth.');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
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
