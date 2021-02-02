-- MySQL Script generated by MySQL Workbench
-- ter 02 fev 2021 17:17:42 -03
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema tecnofit
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema tecnofit
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tecnofit` ;
USE `tecnofit` ;

-- -----------------------------------------------------
-- Table `tecnofit`.`alunos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tecnofit`.`alunos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tecnofit`.`table2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tecnofit`.`table2` (
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tecnofit`.`table3`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tecnofit`.`table3` (
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tecnofit`.`table4`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tecnofit`.`table4` (
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tecnofit`.`exercicios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tecnofit`.`exercicios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(45) NOT NULL,
  `descricao` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tecnofit`.`treinos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tecnofit`.`treinos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(45) NULL,
  `descricao` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tecnofit`.`exercicio_treino`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tecnofit`.`exercicio_treino` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `exercicio_id` INT NOT NULL,
  `treino_id` INT NOT NULL,
  `sessao` INT(3) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_exercicio_treino_exercicios_idx` (`exercicio_id` ASC) VISIBLE,
  INDEX `fk_exercicio_treino_treinos1_idx` (`treino_id` ASC) VISIBLE,
  CONSTRAINT `fk_exercicio_treino_exercicios`
    FOREIGN KEY (`exercicio_id`)
    REFERENCES `tecnofit`.`exercicios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_exercicio_treino_treinos1`
    FOREIGN KEY (`treino_id`)
    REFERENCES `tecnofit`.`treinos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tecnofit`.`table1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tecnofit`.`table1` (
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tecnofit`.`aluno_treino`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tecnofit`.`aluno_treino` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `treinos_id` INT NOT NULL,
  `alunos_id` INT NOT NULL,
  `status` TINYINT(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  INDEX `fk_aluno_treino_treinos1_idx` (`treinos_id` ASC) VISIBLE,
  INDEX `fk_aluno_treino_alunos1_idx` (`alunos_id` ASC) VISIBLE,
  CONSTRAINT `fk_aluno_treino_treinos1`
    FOREIGN KEY (`treinos_id`)
    REFERENCES `tecnofit`.`treinos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_aluno_treino_alunos1`
    FOREIGN KEY (`alunos_id`)
    REFERENCES `tecnofit`.`alunos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tecnofit`.`aluno_exercicio_treino`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tecnofit`.`aluno_exercicio_treino` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `aluno_id` INT NOT NULL,
  `exercicio_id` INT NOT NULL,
  `status` TINYINT(1) NOT NULL DEFAULT '0',
  `treino_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_aluno_exercicio_alunos1_idx` (`aluno_id` ASC) VISIBLE,
  INDEX `fk_aluno_exercicio_exercicios1_idx` (`exercicio_id` ASC) VISIBLE,
  INDEX `fk_aluno_exercicio_treinos1_idx` (`treino_id` ASC) VISIBLE,
  CONSTRAINT `fk_aluno_exercicio_alunos1`
    FOREIGN KEY (`aluno_id`)
    REFERENCES `tecnofit`.`alunos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_aluno_exercicio_exercicios1`
    FOREIGN KEY (`exercicio_id`)
    REFERENCES `tecnofit`.`exercicios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_aluno_exercicio_treinos1`
    FOREIGN KEY (`treino_id`)
    REFERENCES `tecnofit`.`treinos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
