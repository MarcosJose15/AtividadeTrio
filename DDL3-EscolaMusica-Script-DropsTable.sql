-- 02/10/2024 -----------------------------------------------------
-- Schema escolaMusica
-- -----------------------------------------------------
USE `escolaMusica` ;

-- Desabilitar verificações de chave estrangeira temporariamente
SET FOREIGN_KEY_CHECKS = 0;

-- Dropar tabelas
DROP TABLE IF EXISTS `escolaMusica`.`Musicista`;
DROP TABLE IF EXISTS `escolaMusica`.`Orquestra`;
DROP TABLE IF EXISTS `escolaMusica`.`Instrumento`;
DELETE FROM `instrumento` WHERE Musico_idMusico = NULL;
DELETE FROM `instrumento`;
DELETE FROM `orquestra` WHERE idOrquestra > 10;



-- Dropar views
DROP VIEW IF EXISTS `escolaMusica`.`view_nome_da_view`;

-- Dropar procedimentos armazenados
DROP PROCEDURE IF EXISTS `escolaMusica`.`nome_do_procedimento`;

-- Dropar funções armazenadas
DROP FUNCTION IF EXISTS `escolaMusica`.`nome_da_funcao`;

-- Habilitar verificações de chave estrangeira novamente
SET FOREIGN_KEY_CHECKS = 1;

-- Dropar o schema
DROP SCHEMA IF EXISTS `escolaMusica`;
