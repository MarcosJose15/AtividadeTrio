-- 02/10/2024 -----------------------------------------------------
-- Schema escolaMusica
-- -----------------------------------------------------
USE `escolaMusica` ;

-- Adicionar coluna descricao à tabela Orquestra
ALTER TABLE `escolaMusica`.`Orquestra`
ADD COLUMN `descricao` VARCHAR(255) NULL AFTER `nome`;

-- Modificar o tipo de dado da coluna nome na tabela Musico
ALTER TABLE `escolaMusica`.`Musico`
MODIFY COLUMN `nome` VARCHAR(100) NOT NULL;

-- Renomear a coluna funcao para posicao na tabela Musico
ALTER TABLE `escolaMusica`.`Musico`
CHANGE COLUMN `funcao` `posicao` VARCHAR(45) NOT NULL;

-- Adicionar índice único na coluna idOrquestra da tabela Orquestra
ALTER TABLE `escolaMusica`.`Orquestra`
ADD UNIQUE INDEX `unique_idOrquestra` (`idOrquestra`);

-- Remover a coluna dataCriacao da tabela Orquestra
ALTER TABLE `escolaMusica`.`Orquestra`
DROP COLUMN `dataCriacao`;

-- Adicionar coluna email à tabela Musico
ALTER TABLE `escolaMusica`.`Musico`
ADD COLUMN `email` VARCHAR(100) NULL AFTER `nome`;

-- Modificar o tipo de dado da coluna dataNascimento na tabela Musico
ALTER TABLE `escolaMusica`.`Musico`
MODIFY COLUMN `dataNascimento` DATETIME NOT NULL;

-- Adicionar chave estrangeira na tabela Musico para referenciar Instrumento
ALTER TABLE `escolaMusica`.`Musico`
ADD COLUMN `Instrumento_idInstrumento` INT NOT NULL,
ADD CONSTRAINT `fk_Musico_Instrumento`
FOREIGN KEY (`Instrumento_idInstrumento`)
REFERENCES `escolaMusica`.`Instrumento` (`idInstrumento`)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

-- Renomear a tabela Musico para Musicista
RENAME TABLE `escolaMusica`.`Musico` TO `escolaMusica`.`Musicista`;

-- Adicionar coluna telefone à tabela Musicista
ALTER TABLE `escolaMusica`.`Musicista`
ADD COLUMN `telefone` VARCHAR(20) NULL AFTER `email`;

-- Permitir valores NULL para Musico_idMusico
ALTER TABLE `escolaMusica`.`Instrumento`
MODIFY COLUMN `Musico_idMusico` INT NULL;

-- ALTER TABLE `sinfonia` DROP FOREIGN KEY `fk_Sinfonia_Instrumento1`;

