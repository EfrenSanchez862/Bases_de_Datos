-- MySQL Script generated by MySQL Workbench
-- Sat May  8 17:59:16 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Escuela
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Escuela
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Escuela` DEFAULT CHARACTER SET utf8 ;
USE `Escuela` ;

-- -----------------------------------------------------
-- Table `Escuela`.`Login`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Escuela`.`Login` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT,
  `Usuario` VARCHAR(45) NULL,
  `Password` VARCHAR(45) NULL,
  PRIMARY KEY (`idUsuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Escuela`.`Alumnos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Escuela`.`Alumnos` (
  `idAlumnos` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NULL,
  `apellidos` VARCHAR(45) NULL,
  `materia` VARCHAR(25) NULL,
  `calificacion` DOUBLE NULL,
  `estatus` VARCHAR(25) NULL,
  `Login_idUsuario` INT NOT NULL,
  PRIMARY KEY (`idAlumnos`, `Login_idUsuario`),
  INDEX `fk_Alumnos_Login_idx` (`Login_idUsuario` ASC) VISIBLE,
  CONSTRAINT `fk_Alumnos_Login`
    FOREIGN KEY (`Login_idUsuario`)
    REFERENCES `Escuela`.`Login` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
