-- 02/10/2024 -----------------------------------------------------
-- Schema escolaMusica
-- -----------------------------------------------------
USE `escolaMusica` ;

SET FOREIGN_KEY_CHECKS = 0;
-- Insira seus dados aqui

-- Inserir registros na tabela Orquestra
INSERT INTO `escolaMusica`.`Orquestra` (`nome`, `descricao`)
VALUES 
('Orquestra Sinfônica', 'Orquestra principal da escola'),
('Orquestra de Câmara', 'Orquestra de pequeno porte'),
('Orquestra Juvenil', 'Orquestra para jovens músicos'),
('Orquestra de Cordas', 'Orquestra composta por instrumentos de cordas'),
('Orquestra de Sopros', 'Orquestra composta por instrumentos de sopro'),
('Orquestra de Jazz', 'Orquestra especializada em jazz'),
('Orquestra Barroca', 'Orquestra especializada em música barroca'),
('Orquestra Filarmônica', 'Orquestra filarmônica da escola'),
('Orquestra de Percussão', 'Orquestra composta por instrumentos de percussão'),
('Orquestra Experimental', 'Orquestra para experimentação musical');


-- Inserir registros na tabela Instrumento
INSERT INTO `escolaMusica`.`Instrumento` (`nome`, `tipo`, `Musico_idMusico`) VALUES
('Violino', 'Cordas', NULL),
('Piano', 'Teclas', NULL),
('Flauta', 'Sopro', NULL),
('Trompete', 'Metais', NULL),
('Bateria', 'Percussão', NULL),
('Guitarra', 'Cordas', NULL),
('Saxofone', 'Sopro', NULL),
('Contrabaixo', 'Cordas', NULL),
('Clarinete', 'Sopro', NULL),
('Harpa', 'Cordas', NULL); 

-- Inserir registros na tabela Instrumento
INSERT INTO `escolaMusica`.`Instrumento` (`nome`, `tipo`, `Musico_idMusico`) VALUES
('Violino', 'Cordas', 1),
('Piano', 'Teclas', 2),
('Flauta', 'Sopro', 3),
('Trompete', 'Metais', 4),
('Bateria', 'Percussão', 5),
('Guitarra', 'Cordas', 6),
('Saxofone', 'Sopro', 7),
('Contrabaixo', 'Cordas', 8),
('Clarinete', 'Sopro', 9),
('Harpa', 'Cordas', 10); 

-- Inserir registros na tabela Musicista
INSERT INTO `escolaMusica`.`Musicista` (`nome`, `email`, `telefone`, `dataNascimento`, `posicao`, `Orquestra_idOrquestra`, `Instrumento_idInstrumento`) VALUES
('Ana Silva', 'ana.silva@example.com', '123456789', '1990-05-14', 'Violinista', 1, 1),
('Carlos Souza', 'carlos.souza@example.com', '987654321', '1985-08-22', 'Pianista', 2, 2),
('Beatriz Lima', 'beatriz.lima@example.com', '456789123', '1992-11-30', 'Flautista', 3, 3),
('Daniel Costa', 'daniel.costa@example.com', '789123456', '1988-03-15', 'Trompetista', 4, 4),
('Elisa Martins', 'elisa.martins@example.com', '321654987', '1995-07-19', 'Baterista', 5, 5),
('Fernando Alves', 'fernando.alves@example.com', '654987321', '1987-12-05', 'Guitarrista', 6, 6),
('Gabriela Rocha', 'gabriela.rocha@example.com', '159753486', '1991-04-10', 'Saxofonista', 7, 7),
('Henrique Pereira', 'henrique.pereira@example.com', '753486159', '1989-09-25', 'Contrabaixista', 8, 8),
('Isabela Fernandes', 'isabela.fernandes@example.com', '951357486', '1993-02-17', 'Clarinetista', 9, 9),
('João Oliveira', 'joao.oliveira@example.com', '357486951', '1994-06-21', 'Harpista', 10, 10);


-- Inserir registros na tabela Sinfonia
INSERT INTO `escolaMusica`.`Sinfonia` (`nome`, `compositor`, `dataCriacao`, `Orquestra_idOrquestra`, `Instrumento_idInstrumento`) VALUES
('Sinfonia No. 1', 'Ludwig van Beethoven', '1800-04-02', 1, 1),
('Sinfonia No. 5', 'Ludwig van Beethoven', '1808-12-22', 1, 2),
('Sinfonia No. 9', 'Ludwig van Beethoven', '1824-05-07', 1, 3),
('Sinfonia No. 40', 'Wolfgang Amadeus Mozart', '1788-07-25', 2, 1),
('Sinfonia No. 41', 'Wolfgang Amadeus Mozart', '1788-08-10', 2, 2),
('Sinfonia No. 6', 'Pyotr Ilyich Tchaikovsky', '1893-10-28', 3, 3),
('Sinfonia No. 2', 'Gustav Mahler', '1895-12-13', 4, 1),
('Sinfonia No. 4', 'Johannes Brahms', '1885-10-25', 5, 2),
('Sinfonia No. 7', 'Antonín Dvořák', '1885-03-22', 6, 3),
('Sinfonia No. 8', 'Franz Schubert', '1822-12-04', 7, 1);


-- Inserir registros na tabela Origem
INSERT INTO `escolaMusica`.`Origem` (`Orquestra_idOrquestra`, `Musico_idMusico`, `pais`, `cidade`) VALUES
(1, 1, 'Alemanha', 'Berlim'),
(2, 2, 'Áustria', 'Viena'),
(3, 3, 'Rússia', 'Moscou'),
(4, 4, 'França', 'Paris'),
(5, 5, 'Itália', 'Roma'),
(6, 6, 'Espanha', 'Madri'),
(7, 7, 'Reino Unido', 'Londres'),
(8, 8, 'Estados Unidos', 'Nova York'),
(9, 9, 'Brasil', 'São Paulo'),
(10, 10, 'Japão', 'Tóquio');


SET FOREIGN_KEY_CHECKS = 1;




