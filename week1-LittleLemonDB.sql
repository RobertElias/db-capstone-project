-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema littlelemondb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema littlelemondb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `littlelemondb` DEFAULT CHARACTER SET utf8 ;
USE `littlelemondb` ;

-- -----------------------------------------------------
-- Table `littlelemondb`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `littlelemondb`.`Customer` (
  `CustomerID` INT NOT NULL,
  `CustomerFirstName` VARCHAR(45) NOT NULL,
  `CustomerLastName` VARCHAR(45) NULL,
  `ContactNumber` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`CustomerID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `littlelemondb`.`Menu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `littlelemondb`.`Menu` (
  `MenuID` INT NOT NULL,
  `ItemName` VARCHAR(100) NOT NULL,
  `Type` VARCHAR(100) NOT NULL,
  `Cuisine` VARCHAR(45) NULL,
  `Price` DECIMAL NOT NULL,
  PRIMARY KEY (`MenuID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `littlelemondb`.`Bookings`
-- -----------------------------------------------------

-- Table `littlelemondb`.`Bookings`
CREATE TABLE IF NOT EXISTS `littlelemondb`.`Bookings` (
  `BookingID` INT NOT NULL,
  `TableNumber` INT NOT NULL,
  `CustomerID` INT NOT NULL,
  `BookingDate` DATE NOT NULL,
  PRIMARY KEY (`BookingID`),
  INDEX `CustomerID_idx` (`CustomerID` ASC) VISIBLE,
  CONSTRAINT `FK_Bookings_Customer` -- Renamed the constraint to be unique
    FOREIGN KEY (`CustomerID`)
    REFERENCES `littlelemondb`.`Customer` (`CustomerID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)
ENGINE = InnoDB;

-- Table `littlelemondb`.`Orders`
CREATE TABLE IF NOT EXISTS `littlelemondb`.`Orders` (
  `OrderID` INT NOT NULL,
  `CustomerID` INT NOT NULL,
  `Type` VARCHAR(100) NOT NULL,
  `MenuID` INT NOT NULL,
  `Quantity` INT NOT NULL,
  `TotalCost` INT NOT NULL,
  `OrderDate` DATE NOT NULL,
  PRIMARY KEY (`OrderID`),
  INDEX `CustomerID_idx` (`CustomerID` ASC) VISIBLE,
  INDEX `MenuID_idx` (`MenuID` ASC) VISIBLE,
  CONSTRAINT `FK_Orders_Customer` -- Renamed the constraint to be unique
    FOREIGN KEY (`CustomerID`)
    REFERENCES `littlelemondb`.`Customer` (`CustomerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_Orders_Menu` -- Unique name for Menu foreign key constraint
    FOREIGN KEY (`MenuID`)
    REFERENCES `littlelemondb`.`Menu` (`MenuID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `littlelemondb`.`OrderStatus`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `littlelemondb`.`OrderStatus` (
  `OrderID` INT NOT NULL,
  `OrderStatus` VARCHAR(45) NOT NULL,
  `DeliveryDate` DATE NOT NULL,
  INDEX `OrderID_idx` (`OrderID` ASC) VISIBLE,
  CONSTRAINT `OrderID`
    FOREIGN KEY (`OrderID`)
    REFERENCES `littlelemondb`.`Orders` (`OrderID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `littlelemondb`.`Staff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `littlelemondb`.`Staff` (
  `EmployeeID` INT NOT NULL,
  `EmployeeName` VARCHAR(100) NOT NULL,
  `Role` VARCHAR(100) NOT NULL,
  `ContactNumber` VARCHAR(20) NOT NULL,
  `Annual_Salary` INT NOT NULL,
  PRIMARY KEY (`EmployeeID`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
