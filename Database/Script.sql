-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema myforumutp
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema myforumutp
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `myforumutp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `myforumutp` ;

-- -----------------------------------------------------
-- Table `myforumutp`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `myforumutp`.`usuario` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `celular` VARCHAR(255) NULL DEFAULT NULL,
  `correo` VARCHAR(255) NULL DEFAULT NULL,
  `created_at` DATETIME(6) NULL DEFAULT NULL,
  `password` VARCHAR(255) NULL DEFAULT NULL,
  `username` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE UNIQUE INDEX `UK_2mlfr087gb1ce55f2j87o74t` ON `myforumutp`.`usuario` (`correo` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `myforumutp`.`publicacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `myforumutp`.`publicacion` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `asunto` TEXT NULL DEFAULT NULL,
  `contenido` TEXT NULL DEFAULT NULL,
  `created_at` DATETIME(6) NULL DEFAULT NULL,
  `created_by` BIGINT NULL DEFAULT NULL,
  `parent_id` BIGINT NULL DEFAULT NULL,
  `usuario_id` BIGINT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FKdo1oimidqi94636gg0dut6gcr`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `myforumutp`.`usuario` (`id`),
  CONSTRAINT `FKosh8cq7qqtr13msdju0xxmv39`
    FOREIGN KEY (`parent_id`)
    REFERENCES `myforumutp`.`publicacion` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `FKosh8cq7qqtr13msdju0xxmv39` ON `myforumutp`.`publicacion` (`parent_id` ASC) VISIBLE;

CREATE INDEX `FKdo1oimidqi94636gg0dut6gcr` ON `myforumutp`.`publicacion` (`usuario_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `myforumutp`.`rol`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `myforumutp`.`rol` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `created_at` DATETIME(6) NULL DEFAULT NULL,
  `nombre` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE UNIQUE INDEX `UK_43kr6s7bts1wqfv43f7jd87kp` ON `myforumutp`.`rol` (`nombre` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `myforumutp`.`usuario_rol`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `myforumutp`.`usuario_rol` (
  `usuario_id` BIGINT NOT NULL,
  `rol_id` BIGINT NOT NULL,
  PRIMARY KEY (`usuario_id`, `rol_id`),
  CONSTRAINT `FK610kvhkwcqk2pxeewur4l7bd1`
    FOREIGN KEY (`rol_id`)
    REFERENCES `myforumutp`.`rol` (`id`),
  CONSTRAINT `FKbyfgloj439r9wr9smrms9u33r`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `myforumutp`.`usuario` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `FK610kvhkwcqk2pxeewur4l7bd1` ON `myforumutp`.`usuario_rol` (`rol_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `myforumutp`.`voto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `myforumutp`.`voto` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `created_at` DATETIME(6) NULL DEFAULT NULL,
  `dislikes` BIGINT NULL DEFAULT NULL,
  `likes` BIGINT NULL DEFAULT NULL,
  `publicacion_id` BIGINT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FKkd1xj3w4ofue4qhsfnr73jpn3`
    FOREIGN KEY (`publicacion_id`)
    REFERENCES `myforumutp`.`publicacion` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `FKkd1xj3w4ofue4qhsfnr73jpn3` ON `myforumutp`.`voto` (`publicacion_id` ASC) VISIBLE;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
