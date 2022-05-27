-- MySQL Script generated by MySQL Workbench
-- Thu May 26 03:38:14 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema heroku_08886e3db31a789
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `heroku_08886e3db31a789` ;

-- -----------------------------------------------------
-- Schema heroku_08886e3db31a789
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `heroku_08886e3db31a789` DEFAULT CHARACTER SET utf8 ;
USE `heroku_08886e3db31a789` ;

-- -----------------------------------------------------
-- Table `heroku_08886e3db31a789`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `heroku_08886e3db31a789`.`users` ;

CREATE TABLE IF NOT EXISTS `heroku_08886e3db31a789`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `password` VARCHAR(64) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `heroku_08886e3db31a789`.`recipes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `heroku_08886e3db31a789`.`recipes` ;

CREATE TABLE IF NOT EXISTS `heroku_08886e3db31a789`.`recipes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `image` VARCHAR(2048) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `heroku_08886e3db31a789`.`users_has_recipes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `heroku_08886e3db31a789`.`users_has_recipes` ;

CREATE TABLE IF NOT EXISTS `heroku_08886e3db31a789`.`users_has_recipes` (
  `users_id` INT NOT NULL,
  `recipes_id` INT NOT NULL,
  PRIMARY KEY (`users_id`, `recipes_id`),
  INDEX `fk_users_has_recipes_recipes1_idx` (`recipes_id` ASC) VISIBLE,
  INDEX `fk_users_has_recipes_users_idx` (`users_id` ASC) VISIBLE,
  CONSTRAINT `fk_users_has_recipes_users`
    FOREIGN KEY (`users_id`)
    REFERENCES `heroku_08886e3db31a789`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_has_recipes_recipes1`
    FOREIGN KEY (`recipes_id`)
    REFERENCES `heroku_08886e3db31a789`.`recipes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
