-- MySQL Workbench Forward Engineering
-- DROP DATABASE escolaMusica;

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';


-- -----------------------------------------------------
-- Schema escolaMusica
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `escolaMusica` DEFAULT CHARACTER SET utf8mb4 ;
USE `escolaMusica` ;

-- -----------------------------------------------------
-- Table Orquestra
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escolaMusica`.`Orquestra` (
  `idOrquestra` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `dataCriacao` DATE NOT NULL,
  PRIMARY KEY (`idOrquestra`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Musico
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escolaMusica`.`Musico` (
  `idMusico` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `dataNascimento` DATE NOT NULL,
  `funcao` VARCHAR(45) NOT NULL,
  `Orquestra_idOrquestra` INT NOT NULL,
  PRIMARY KEY (`idMusico`),
  INDEX `fk_Musico_Orquestra_idx` (`Orquestra_idOrquestra` ASC) VISIBLE,
  CONSTRAINT `fk_Musico_Orquestra`
    FOREIGN KEY (`Orquestra_idOrquestra`)
    REFERENCES `escolaMusica`.`Orquestra` (`idOrquestra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `escolaMusica`.`Instrumento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escolaMusica`.`Instrumento` (
  `idInstrumento` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  `Musico_idMusico` INT NOT NULL,
  PRIMARY KEY (`idInstrumento`),
  INDEX `fk_Instrumento_Musico1_idx` (`Musico_idMusico` ASC) VISIBLE,
  CONSTRAINT `fk_Instrumento_Musico1`
    FOREIGN KEY (`Musico_idMusico`)
    REFERENCES `escolaMusica`.`Musico` (`idMusico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `escolaMusica`.`Sinfonia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escolaMusica`.`Sinfonia` (
  `idSinfonia` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `compositor` VARCHAR(45) NOT NULL,
  `dataCriacao` DATE NOT NULL,
  `Orquestra_idOrquestra` INT NOT NULL,
  `Instrumento_idInstrumento` INT NOT NULL,
  PRIMARY KEY (`idSinfonia`),
  INDEX `fk_Sinfonia_Orquestra1_idx` (`Orquestra_idOrquestra` ASC) VISIBLE,
  INDEX `fk_Sinfonia_Instrumento1_idx` (`Instrumento_idInstrumento` ASC) VISIBLE,
  CONSTRAINT `fk_Sinfonia_Orquestra1`
    FOREIGN KEY (`Orquestra_idOrquestra`)
    REFERENCES `escolaMusica`.`Orquestra` (`idOrquestra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Sinfonia_Instrumento1`
    FOREIGN KEY (`Instrumento_idInstrumento`)
    REFERENCES `escolaMusica`.`Instrumento` (`idInstrumento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `escolaMusica`.`Origem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `escolaMusica`.`Origem` (
  `Orquestra_idOrquestra` INT NOT NULL,
  `Musico_idMusico` INT NOT NULL,
  `Pais` VARCHAR(45) NOT NULL,
  `Cidade` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Orquestra_idOrquestra`, `Musico_idMusico`),
  INDEX `fk_Origem_Musico1_idx` (`Musico_idMusico` ASC) VISIBLE,
  INDEX `fk_Origem_Orquestra1_idx` (`Orquestra_idOrquestra` ASC) VISIBLE,
  CONSTRAINT `fk_Origem_Musico1`
    FOREIGN KEY (`Musico_idMusico`)
    REFERENCES `escolaMusica`.`Musico` (`idMusico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Origem_Orquestra1`
    FOREIGN KEY (`Orquestra_idOrquestra`)
    REFERENCES `escolaMusica`.`Orquestra` (`idOrquestra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
