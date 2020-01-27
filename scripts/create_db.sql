-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema metal_rock_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema metal_rock_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `metal_rock_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
USE `metal_rock_db` ;

-- -----------------------------------------------------
-- Table `metal_rock_db`.`band`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `metal_rock_db`.`band` (
  `ba_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ba_name` VARCHAR(45) NOT NULL,
  `ba_genre` VARCHAR(255) NOT NULL,
  `ba_no_members` SMALLINT(3) NULL,
  `ba_number_of_albums` SMALLINT(3) NULL,
  `ba_country` VARCHAR(255) NULL,
  `ba_year_established` YEAR(4) NULL,
  `ba_year_disbanded` YEAR(4) NULL,
  PRIMARY KEY (`ba_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `metal_rock_db`.`album`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `metal_rock_db`.`album` (
  `al_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `al_title` VARCHAR(255) NOT NULL,
  `al_no_songs` TINYINT(3) UNSIGNED NOT NULL,
  `al_year` YEAR(4) NULL,
  `al_average_price` TINYINT(3) NULL,
  `band_ba_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`al_id`),
  INDEX `fk_album_band1_idx` (`band_ba_id` ASC),
  CONSTRAINT `fk_album_band1`
    FOREIGN KEY (`band_ba_id`)
    REFERENCES `metal_rock_db`.`band` (`ba_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `metal_rock_db`.`song`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `metal_rock_db`.`song` (
  `so_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `so_title` VARCHAR(255) NOT NULL,
  `so_number_in_album` TINYINT(3) UNSIGNED NOT NULL,
  `so_duration` SMALLINT(4) UNSIGNED NOT NULL,
  `so_link_yt` VARCHAR(500) NULL,
  `so_link_lyrics` VARCHAR(500) NULL,
  `album_al_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`so_id`),
  INDEX `fk_song_album_idx` (`album_al_id` ASC),
  CONSTRAINT `fk_song_album`
    FOREIGN KEY (`album_al_id`)
    REFERENCES `metal_rock_db`.`album` (`al_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `metal_rock_db`.`musician`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `metal_rock_db`.`musician` (
  `mu_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `mu_first_name` VARCHAR(255) NOT NULL,
  `mu_last_name` VARCHAR(255) NOT NULL,
  `mu_city_origin` VARCHAR(255) NULL,
  `mu_country_origin` VARCHAR(255) NULL,
  `mu_date_of_birth` DATE NULL,
  `mu_date_of_death` DATE NULL,
  PRIMARY KEY (`mu_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `metal_rock_db`.`band_has_musician`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `metal_rock_db`.`band_has_musician` (
  `band_ba_id` INT UNSIGNED NOT NULL,
  `musician_mu_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`band_ba_id`, `musician_mu_id`),
  INDEX `fk_band_has_musician_musician1_idx` (`musician_mu_id` ASC),
  INDEX `fk_band_has_musician_band1_idx` (`band_ba_id` ASC),
  CONSTRAINT `fk_band_has_musician_band1`
    FOREIGN KEY (`band_ba_id`)
    REFERENCES `metal_rock_db`.`band` (`ba_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_band_has_musician_musician1`
    FOREIGN KEY (`musician_mu_id`)
    REFERENCES `metal_rock_db`.`musician` (`mu_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `metal_rock_db`.`role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `metal_rock_db`.`role` (
  `ro_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ro_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ro_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `metal_rock_db`.`musician_has_role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `metal_rock_db`.`musician_has_role` (
  `musician_mu_id` INT UNSIGNED NOT NULL,
  `role_ro_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`musician_mu_id`, `role_ro_id`),
  INDEX `fk_musician_has_role_role1_idx` (`role_ro_id` ASC),
  INDEX `fk_musician_has_role_musician1_idx` (`musician_mu_id` ASC),
  CONSTRAINT `fk_musician_has_role_musician1`
    FOREIGN KEY (`musician_mu_id`)
    REFERENCES `metal_rock_db`.`musician` (`mu_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_musician_has_role_role1`
    FOREIGN KEY (`role_ro_id`)
    REFERENCES `metal_rock_db`.`role` (`ro_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `metal_rock_db`.`genre`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `metal_rock_db`.`genre` (
  `ge_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ge_name` VARCHAR(255) NULL,
  PRIMARY KEY (`ge_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `metal_rock_db`.`album_has_genre`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `metal_rock_db`.`album_has_genre` (
  `album_al_id` INT UNSIGNED NOT NULL,
  `genre_ge_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`album_al_id`, `genre_ge_id`),
  INDEX `fk_album_has_genre_genre1_idx` (`genre_ge_id` ASC),
  INDEX `fk_album_has_genre_album1_idx` (`album_al_id` ASC),
  CONSTRAINT `fk_album_has_genre_album1`
    FOREIGN KEY (`album_al_id`)
    REFERENCES `metal_rock_db`.`album` (`al_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_album_has_genre_genre1`
    FOREIGN KEY (`genre_ge_id`)
    REFERENCES `metal_rock_db`.`genre` (`ge_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `metal_rock_db`.`band_has_genre`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `metal_rock_db`.`band_has_genre` (
  `band_ba_id` INT UNSIGNED NOT NULL,
  `genre_ge_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`band_ba_id`, `genre_ge_id`),
  INDEX `fk_band_has_genre_genre1_idx` (`genre_ge_id` ASC),
  INDEX `fk_band_has_genre_band1_idx` (`band_ba_id` ASC),
  CONSTRAINT `fk_band_has_genre_band1`
    FOREIGN KEY (`band_ba_id`)
    REFERENCES `metal_rock_db`.`band` (`ba_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_band_has_genre_genre1`
    FOREIGN KEY (`genre_ge_id`)
    REFERENCES `metal_rock_db`.`genre` (`ge_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `metal_rock_db`.`instrument_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `metal_rock_db`.`instrument_type` (
  `in_type_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `in_type_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`in_type_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `metal_rock_db`.`instrument`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `metal_rock_db`.`instrument` (
  `in_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `in_manufacturer` VARCHAR(255) NOT NULL,
  `in_model` VARCHAR(255) NOT NULL,
  `in_year_produced` YEAR(4) NULL,
  `in_average_price` INT NULL,
  `in_description` VARCHAR(5000) NULL,
  `instrument_type_in_type_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`in_id`),
  INDEX `fk_instrument_instrument_type1_idx` (`instrument_type_in_type_id` ASC),
  CONSTRAINT `fk_instrument_instrument_type1`
    FOREIGN KEY (`instrument_type_in_type_id`)
    REFERENCES `metal_rock_db`.`instrument_type` (`in_type_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `metal_rock_db`.`musician_has_instrument`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `metal_rock_db`.`musician_has_instrument` (
  `musician_mu_id` INT UNSIGNED NOT NULL,
  `instrument_in_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`musician_mu_id`, `instrument_in_id`),
  INDEX `fk_musician_has_instrument_instrument1_idx` (`instrument_in_id` ASC),
  INDEX `fk_musician_has_instrument_musician1_idx` (`musician_mu_id` ASC),
  CONSTRAINT `fk_musician_has_instrument_musician1`
    FOREIGN KEY (`musician_mu_id`)
    REFERENCES `metal_rock_db`.`musician` (`mu_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_musician_has_instrument_instrument1`
    FOREIGN KEY (`instrument_in_id`)
    REFERENCES `metal_rock_db`.`instrument` (`in_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
