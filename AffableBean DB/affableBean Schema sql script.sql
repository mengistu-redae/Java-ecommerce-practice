-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema AffableBean
-- -----------------------------------------------------
-- Schema used with the AffableBean application
DROP SCHEMA IF EXISTS `AffableBean` ;

-- -----------------------------------------------------
-- Schema AffableBean
--
-- Schema used with the AffableBean application
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `AffableBean` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
USE `AffableBean` ;

-- -----------------------------------------------------
-- Table `AffableBean`.`customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AffableBean`.`customer` ;

CREATE TABLE IF NOT EXISTS `AffableBean`.`customer` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `city_region` VARCHAR(2) NOT NULL,
  `cc_number` VARCHAR(19) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
COMMENT = 'maintains customer details';


-- -----------------------------------------------------
-- Table `AffableBean`.`customer_order`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AffableBean`.`customer_order` ;

CREATE TABLE IF NOT EXISTS `AffableBean`.`customer_order` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `amount` DECIMAL(6,2) NOT NULL,
  `date_created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `confirmation_number` INT UNSIGNED NOT NULL,
  `customer_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_customer_order_customer` (`customer_id` ASC) VISIBLE,
  CONSTRAINT `fk_customer_order_customer`
    FOREIGN KEY (`customer_id`)
    REFERENCES `AffableBean`.`customer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
COMMENT = 'maintains customer orders';


-- -----------------------------------------------------
-- Table `AffableBean`.`category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AffableBean`.`category` ;

CREATE TABLE IF NOT EXISTS `AffableBean`.`category` (
  `id` TINYINT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
COMMENT = 'maintains category details';


-- -----------------------------------------------------
-- Table `AffableBean`.`product`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AffableBean`.`product` ;

CREATE TABLE IF NOT EXISTS `AffableBean`.`product` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `price` DECIMAL(5,2) NOT NULL,
  `description` TINYTEXT NULL,
  `last_update` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `category_id` TINYINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_product_category` (`category_id` ASC) VISIBLE,
  CONSTRAINT `fk_product_category`
    FOREIGN KEY (`category_id`)
    REFERENCES `AffableBean`.`category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
COMMENT = 'maintains product details';


-- -----------------------------------------------------
-- Table `AffableBean`.`ordered_product`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AffableBean`.`ordered_product` ;

CREATE TABLE IF NOT EXISTS `AffableBean`.`ordered_product` (
  `customer_order_id` INT UNSIGNED NOT NULL,
  `product_id` INT UNSIGNED NOT NULL,
  `quantity` SMALLINT UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`customer_order_id`, `product_id`),
  INDEX `fk_ordered_product_product` (`product_id` ASC) VISIBLE,
  INDEX `fk_ordered_product_customer_order` (`customer_order_id` ASC) VISIBLE,
  CONSTRAINT `fk_ordered_product_customer_order`
    FOREIGN KEY (`customer_order_id`)
    REFERENCES `AffableBean`.`customer_order` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ordered_product_product`
    FOREIGN KEY (`product_id`)
    REFERENCES `AffableBean`.`product` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
