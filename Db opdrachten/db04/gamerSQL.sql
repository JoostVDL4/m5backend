-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`games`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`games` (
  `gameName` INT NOT NULL,
  `gameAchievements` VARCHAR(45) NULL,
  `gameYear` VARCHAR(45) NULL,
  `achievementAmount` VARCHAR(45) NULL,
  PRIMARY KEY (`gameName`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`gamer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`gamer` (
  `username` INT NOT NULL,
  `achievements` VARCHAR(45) NULL,
  `totalGames` VARCHAR(45) NULL,
  `accountAge` VARCHAR(45) NULL,
  `games_gameName` INT NOT NULL,
  PRIMARY KEY (`username`),
  INDEX `fk_gamer_games_idx` (`games_gameName` ASC),
  CONSTRAINT `fk_gamer_games`
    FOREIGN KEY (`games_gameName`)
    REFERENCES `mydb`.`games` (`gameName`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
