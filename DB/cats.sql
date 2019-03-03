-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema catdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `catdb` ;

-- -----------------------------------------------------
-- Schema catdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `catdb` DEFAULT CHARACTER SET utf8 ;
USE `catdb` ;

-- -----------------------------------------------------
-- Table `Cats`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Cats` ;

CREATE TABLE IF NOT EXISTS `Cats` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `size` VARCHAR(10) NOT NULL,
  `fur_amount` VARCHAR(10) NULL,
  `birth_date` DATE NULL,
  `purchase_price` DOUBLE NULL,
  `biography` VARCHAR(500) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS catuser;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'catuser' IDENTIFIED BY 'catuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'catuser';
GRANT SELECT, INSERT, TRIGGER ON TABLE * TO 'catuser';
GRANT SELECT ON TABLE * TO 'catuser';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `Cats`
-- -----------------------------------------------------
START TRANSACTION;
USE `catdb`;
INSERT INTO `Cats` (`id`, `name`, `size`, `fur_amount`, `birth_date`, `purchase_price`, `biography`) VALUES (1, 'Tom', 'L', 'med', '2015-03-14', 600, 'Tom who dedicate it\'s life trying to catch Jerry the rat ');
INSERT INTO `Cats` (`id`, `name`, `size`, `fur_amount`, `birth_date`, `purchase_price`, `biography`) VALUES (2, 'CatDog', 'XL', 'light', '1998-04-04', 10000000, 'A bio conjoined half cat half dog, who must live with each others differences ');
INSERT INTO `Cats` (`id`, `name`, `size`, `fur_amount`, `birth_date`, `purchase_price`, `biography`) VALUES (3, 'Manny', 'MED', 'light', '2015-06-25', 15000, 'Manny who have mastered the modern art aka the selfie cat, who is dedicate it\'s life to show of its skill');
INSERT INTO `Cats` (`id`, `name`, `size`, `fur_amount`, `birth_date`, `purchase_price`, `biography`) VALUES (4, 'Tardar Sauce', 'SM', 'med', '2012-04-04', 58000, 'Tardar Sauce aka the Grumpy cat is a famouse internet star');
INSERT INTO `Cats` (`id`, `name`, `size`, `fur_amount`, `birth_date`, `purchase_price`, `biography`) VALUES (5, 'Potato', 'MED', 'light', '2014-09-16', 25, 'Potato is a sweet house cat, but since 2016 his owner have been letting his out to explor the world within a year potato have became the king of street cat in south part of Denver');
INSERT INTO `Cats` (`id`, `name`, `size`, `fur_amount`, `birth_date`, `purchase_price`, `biography`) VALUES (6, 'Hello Kitty', 'L', 'light', '1974-01-01', 100000000, 'Hello Kitty');

COMMIT;

