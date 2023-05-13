-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema sailingdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `sailingdb` ;

-- -----------------------------------------------------
-- Schema sailingdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sailingdb` DEFAULT CHARACTER SET utf8 ;
USE `sailingdb` ;

-- -----------------------------------------------------
-- Table `captain_log`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `captain_log` ;

CREATE TABLE IF NOT EXISTS `captain_log` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `trip` VARCHAR(45) NULL,
  `fixes` VARCHAR(50) NULL,
  `port_of_arrival` VARCHAR(50) NULL,
  `port_of_departure` VARCHAR(45) NULL,
  `arrival_link` VARCHAR(45) NULL,
  `departure_link` VARCHAR(45) NULL,
  `time_distance` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS sailer@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'sailer'@'localhost' IDENTIFIED BY 'sailer';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'sailer'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `captain_log`
-- -----------------------------------------------------
START TRANSACTION;
USE `sailingdb`;
INSERT INTO `captain_log` (`id`, `trip`, `fixes`, `port_of_arrival`, `port_of_departure`, `arrival_link`, `departure_link`, `time_distance`) VALUES (1, 'Bahamas', 'Why\'s the rum always gone.', 'George Town, The Bahamas', '27.759501, -82.635008', 'https://goo.gl/maps/etVmS63d2gGkbuhc6', 'https://goo.gl/maps/xB9qYYcZQQMRcXeR8', NULL);
INSERT INTO `captain_log` (`id`, `trip`, `fixes`, `port_of_arrival`, `port_of_departure`, `arrival_link`, `departure_link`, `time_distance`) VALUES (2, NULL, NULL, NULL, NULL, NULL, 'https://goo.gl/maps/xB9qYYcZQQMRcXeR8', NULL);
INSERT INTO `captain_log` (`id`, `trip`, `fixes`, `port_of_arrival`, `port_of_departure`, `arrival_link`, `departure_link`, `time_distance`) VALUES (3, NULL, NULL, NULL, NULL, NULL, 'https://goo.gl/maps/xB9qYYcZQQMRcXeR8', NULL);

COMMIT;

