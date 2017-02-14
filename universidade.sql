-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 12-Fev-2017 às 18:32
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `universidade`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `id_curso` int(11) NOT NULL,
  `nome_curso` varchar(255) NOT NULL,
  `descricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos_locais`
--

CREATE TABLE `cursos_locais` (
  `id_local` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Estrutura da tabela `locais`
--

CREATE TABLE `locais` (
  `id_local` int(11) NOT NULL,
  `nome_local` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Indexes for dumped tables
--

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_curso`);

--
-- Indexes for table `cursos_locais`
--
ALTER TABLE `cursos_locais`
  ADD KEY `id_local` (`id_local`),
  ADD KEY `id_curso` (`id_curso`);

--
-- Indexes for table `locais`
--
ALTER TABLE `locais`
  ADD PRIMARY KEY (`id_local`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `locais`
--
ALTER TABLE `locais`
  MODIFY `id_local` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `cursos_locais`
--
ALTER TABLE `cursos_locais`
  ADD CONSTRAINT `cursos_locais_ibfk_1` FOREIGN KEY (`id_local`) REFERENCES `locais` (`id_local`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cursos_locais_ibfk_2` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`) ON DELETE CASCADE ON UPDATE CASCADE;



INSERT INTO `cursos` (`id_curso`, `nome_curso`, `descricao`) VALUES
(1, 'Sistemas de Informação', 'O curso é composto de disciplinas que abrangem as seguintes áreas da computação: Engenharia de Software, Programação, Bancos de Dados, Redes de Computadores e Sistemas Operacionais & Hardware. Além da forte base tecnológica ministrada no curso, o Bacharelado em Sistemas de Informação está estruturado de forma a capacitar seus discentes a utilizarem a Tecnologia de Informação para a solução de problemas de gestão empresarial, promovendo o uso da computação para a coordenação e otimização dos processos organizacionais. O mercado de trabalho para o profissional é amplo. '),
(2, 'Análise e Desenvolvimento de Sistemas', 'O profissional egresso do curso Superior de Tecnologia em Análise e Desenvolvimento de Sistemas está apto a analisar, projetar, documentar, especificar, testar, implantar e manter sistemas computacionais de informação. Trabalhar com ferramentas computacionais, equipamentos de informática e metodologia de projetos na produção de sistemas. Empregar raciocínio lógico e ter capacidade de abstração no uso de linguagens de programação e de metodologias de construção de projetos, preocupação com a qualidade, usabilidade, robustez, integridade e segurança de programas. Avaliar os impactos das tecnologias da informação e comunicação na sociedade, tendo a preocupação de incitar a reflexão crítica sobre os aspectos éticos. Trabalhar em equipe de forma proativa, utilizando uma comunicação eficaz, enfrentando os desafios com flexibilidade e atitude empreendedora, identificando oportunidades no uso de novas tecnologias e propondo soluções inovadoras. Desempenhar o papel de agente transformador na sociedade, através do emprego ético da tecnologia da informação e da melhoria dos processos decisórios e operacionais das organizações.'),
(3, 'Administração', 'O curso de Administração está baseado nas competências das diretrizes curriculares do Mec e do mundo do trabalho. Com uma abordagem estratégica de uma matriz curricular integrativa. Com o principal objetivo de proporcionar a você uma aprendizagem diferenciada. Com metodologias ativas, buscando aproximar a teoria a prática. O curso irá propiciar uma visão estratégica nas áreas de Recursos Humanos, Marketing, operações e finanças. Seja um profissional com as habilidades para atuar em uma gestão organizacional.'),
(4, 'Medicina', 'O curso de Medicina busca promover a interdisciplinaridade, como requisito para a consolidação dos saberes especializados. A metodologia utilizada baseia-se na interação entre as ciências fundamentais e as disciplinas clínicas, na integração entre o canal teórico e o prático, em todos os ciclos da vida e a exposição do aluno aos diversos níveis de complexidade da atenção à saúde desde os fluxos iniciais do curso. A Unigranrio compromete-se a formar um médico com habilidades e competências para atuar diante do processo saúde-doença, com base em princípios éticos e científicos, de forma individual e/ou coletiva, com resolutividade diante aos agravos à saúde mais prevalentes. O curso de Medicina adotou um programa de formação, no qual o estudante tem papel ativo e assume responsabilidades crescentes na construção de seu conhecimento. Como sujeito de aprendizagem e tendo o professor como facilitador do processo de ensino-aprendizagem o aluno deve familiarizar-se com os problemas relevantes da área de saúde.');

INSERT INTO `locais` (`id_local`, `nome_local`) VALUES
(1, 'Duque de Caxias'),
(2, 'Nova Iguaçu'),
(3, 'São João de Meriti');



INSERT INTO `cursos_locais` (`id_local`, `id_curso`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 3),
(3, 1),
(3, 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
