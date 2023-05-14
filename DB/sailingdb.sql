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
  `fixes` VARCHAR(100) NULL,
  `port_of_arrival` VARCHAR(50) NULL,
  `port_of_departure` VARCHAR(45) NULL,
  `arrival_link` VARCHAR(45) NULL,
  `departure_link` VARCHAR(45) NULL,
  `time` VARCHAR(45) NULL,
  `distance` VARCHAR(45) NULL,
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
INSERT INTO `captain_log` (`id`, `trip`, `fixes`, `port_of_arrival`, `port_of_departure`, `arrival_link`, `departure_link`, `time`, `distance`) VALUES (1, 'Bahamas', 'Why\'s the rum always gone.', 'George Town, The Bahamas', '27.759501, -82.635008', 'https://goo.gl/maps/etVmS63d2gGkbuhc6', 'https://goo.gl/maps/3ouhgZaZn4dCoQrQ9', '80hrs','635nm');
INSERT INTO `captain_log` (`id`, `trip`, `fixes`, `port_of_arrival`, `port_of_departure`, `arrival_link`, `departure_link`, `time`, `distance`) VALUES (2, 'Dry Tortugas', 'Repared water maker.', 'Dry Tortugas National Park', '27.759501, -82.635008', 'https://goo.gl/maps/957et7EZXY2abFKD6', 'https://goo.gl/maps/3ouhgZaZn4dCoQrQ9', '46hrs', '210nm');
INSERT INTO `captain_log` (`id`, `trip`, `fixes`, `port_of_arrival`, `port_of_departure`, `arrival_link`, `departure_link`, `time`, `distance`) VALUES (3, 'Useppa Island', 'What didn\'t break?', 'Useppa Island', '27.759501, -82.635008', 'https://goo.gl/maps/4okSkpyvv5JFVgfY6', 'https://goo.gl/maps/3ouhgZaZn4dCoQrQ9', '17hrs', '75nm');
INSERT INTO `captain_log` (`id`, `trip`, `fixes`, `port_of_arrival`, `port_of_departure`, `arrival_link`, `departure_link`, `time`, `distance`) VALUES (4, 'Longboat Key', 'Upgrade rigging.', 'Longboat Key', '27.759501, -82.635008', 'https://goo.gl/maps/K7gSyXi1WgKgVuPb9', 'https://goo.gl/maps/3ouhgZaZn4dCoQrQ9', '7hrs', '30nm');
INSERT INTO `captain_log` (`id`, `trip`, `fixes`, `port_of_arrival`, `port_of_departure`, `arrival_link`, `departure_link`, `time`, `distance`) VALUES (5, 'Manatee River', 'Dinghy repair.', 'Manatee River', '27.759501, -82.635008', 'https://goo.gl/maps/sitc8LhTjbLV49G18', 'https://goo.gl/maps/3ouhgZaZn4dCoQrQ9', '4.5hrs', '14nm');
INSERT INTO `captain_log` (`id`, `trip`, `fixes`, `port_of_arrival`, `port_of_departure`, `arrival_link`, `departure_link`, `time`, `distance`) VALUES (6, 'Egmont Key', 'Dinghy repair', 'Egmont Key', '27.759501, -82.635008', 'https://goo.gl/maps/EMDw6sN25gmep1Sm8', 'https://goo.gl/maps/3ouhgZaZn4dCoQrQ9', '4hrs', '30nm');
INSERT INTO `captain_log` (`id`, `trip`, `fixes`, `port_of_arrival`, `port_of_departure`, `arrival_link`, `departure_link`, `time`, `distance`) VALUES (7, 'Staniel Cay', 'Battery maintenance', 'The Bahamas', '27.759501, -82.635008', 'https://goo.gl/maps/MhA8uemkD8taF6CX6', 'https://goo.gl/maps/3ouhgZaZn4dCoQrQ9', '100hrs', '500nm');
INSERT INTO `captain_log` (`id`, `trip`, `fixes`, `port_of_arrival`, `port_of_departure`, `arrival_link`, `departure_link`, `time`, `distance`) VALUES (8, 'Chub Cay', 'maintenance', 'The Bahamas', '27.759501, -82.635008', 'https://goo.gl/maps/gcCgrtYXWmMe6wmv9', 'https://goo.gl/maps/3ouhgZaZn4dCoQrQ9', '78hrs', '350nm');
INSERT INTO `captain_log` (`id`, `trip`, `fixes`, `port_of_arrival`, `port_of_departure`, `arrival_link`, `departure_link`, `time`, `distance`) VALUES (9, 'Key West', 'Fiberglass repair/reinforcement for the windlass', 'Key West', '27.759501, -82.635008', 'https://goo.gl/maps/FaBNaGQLeLBeLV9h9', 'https://goo.gl/maps/3ouhgZaZn4dCoQrQ9', '49hrs', '220nm');
INSERT INTO `captain_log` (`id`, `trip`, `fixes`, `port_of_arrival`, `port_of_departure`, `arrival_link`, `departure_link`, `time`, `distance`) VALUES (10, 'No Name Harbor', 'Final Checks for crossing to The Bahamas, paperwork Mostly', 'Miami, FL', '27.759501, -82.635008', 'https://goo.gl/maps/vEjwYYWeaXZ3be1Q6', 'https://goo.gl/maps/3ouhgZaZn4dCoQrQ9', '56hrs', '280nm');

COMMIT;

