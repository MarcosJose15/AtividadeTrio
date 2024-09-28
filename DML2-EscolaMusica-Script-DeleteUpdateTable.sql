-- -----------------------------------------------------
-- Schema escolaMusica
-- -----------------------------------------------------
USE `escolaMusica` ;

-- Deletar uma orquestra específica
DELETE FROM `escolaMusica`.`Orquestra` WHERE `nome` = 'Orquestra Sinfônica';

-- Deletar todos os instrumentos de cordas
DELETE FROM `escolaMusica`.`Instrumento` WHERE `tipo` = 'Cordas';

-- Deletar um musicista específico
DELETE FROM `escolaMusica`.`Musicista` WHERE `nome` = 'Ana Silva';

-- Deletar todas as orquestras de pequeno porte
DELETE FROM `escolaMusica`.`Orquestra` WHERE `descricao` LIKE '%pequeno porte%';

-- Deletar todos os instrumentos de sopro
DELETE FROM `escolaMusica`.`Instrumento` WHERE `tipo` = 'Sopro';

-- Deletar todos os musicistas que tocam violino
DELETE FROM `escolaMusica`.`Musicista` WHERE `Instrumento_idInstrumento` = 1;

-- Deletar todas as orquestras experimentais
DELETE FROM `escolaMusica`.`Orquestra` WHERE `nome` = 'Orquestra Experimental';

-- Deletar todos os instrumentos de metais
DELETE FROM `escolaMusica`.`Instrumento` WHERE `tipo` = 'Metais';

-- Deletar todos os musicistas que nasceram antes de 1990
DELETE FROM `escolaMusica`.`Musicista` WHERE `dataNascimento` < '1990-01-01';

-- Deletar todas as orquestras filarmônicas
DELETE FROM `escolaMusica`.`Orquestra` WHERE `nome` = 'Orquestra Filarmônica';

-- Scripts de Atualização (UPDATE)
-- Atualizar a descrição de uma orquestra
UPDATE `escolaMusica`.`Orquestra` SET `descricao` = 'Nova descrição' WHERE `nome` = 'Orquestra Sinfônica';

-- Atualizar o tipo de um instrumento
UPDATE `escolaMusica`.`Instrumento` SET `tipo` = 'Cordas' WHERE `nome` = 'Trompete';

-- Atualizar o email de um musicista
UPDATE `escolaMusica`.`Musicista` SET `email` = 'novo.email@example.com' WHERE `nome` = 'Ana Silva';

-- Atualizar o nome de uma orquestra
UPDATE `escolaMusica`.`Orquestra` SET `nome` = 'Nova Orquestra Sinfônica' WHERE `nome` = 'Orquestra Sinfônica';

-- Atualizar o tipo de todos os instrumentos de sopro para ‘Madeiras’
UPDATE `escolaMusica`.`Instrumento` SET `tipo` = 'Madeiras' WHERE `tipo` = 'Sopro';

-- Atualizar a posição de um musicista
UPDATE `escolaMusica`.`Musicista` SET `posicao` = 'Primeiro Violino' WHERE `nome` = 'Ana Silva';

-- Atualizar a descrição de todas as orquestras juvenis
UPDATE `escolaMusica`.`Orquestra` SET `descricao` = 'Orquestra para jovens talentos' WHERE `nome` = 'Orquestra Juvenil';

-- Atualizar o tipo de todos os instrumentos de percussão para ‘Percussão Sinfônica’
UPDATE `escolaMusica`.`Instrumento` SET `tipo` = 'Percussão Sinfônica' WHERE `tipo` = 'Percussão';

-- Atualizar o telefone de um musicista
UPDATE `escolaMusica`.`Musicista` SET `telefone` = '111222333' WHERE `nome` = 'Bruno Souza';

-- Atualizar o nome de todas as orquestras de jazz
UPDATE `escolaMusica`.`Orquestra` SET `nome` = 'Orquestra de Jazz Moderno' WHERE `nome` = 'Orquestra de Jazz';
