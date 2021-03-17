CREATE DATABASE IF NOT EXISTS northwind;

USE northwind;

CREATE TABLE `Categories` (
    `CategoryID` INTEGER NOT NULL AUTO_INCREMENT,
    `CategoryName` VARCHAR(15) NOT NULL,
    `Description` MEDIUMTEXT,
    `Picture` LONGBLOB,
    CONSTRAINT `PK_Categories` PRIMARY KEY (`CategoryID`)
);

CREATE INDEX `CategoryName` ON `Categories` (`CategoryName`);

CREATE TABLE `CustomerCustomerDemo` (
    `CustomerID` VARCHAR(5) NOT NULL,
    `CustomerTypeID` VARCHAR(10) NOT NULL,
    CONSTRAINT `PK_CustomerCustomerDemo` PRIMARY KEY (`CustomerID`, `CustomerTypeID`)
);

CREATE TABLE `CustomerDemographics` (
    `CustomerTypeID` VARCHAR(10) NOT NULL,
    `CustomerDesc` MEDIUMTEXT,
    CONSTRAINT `PK_CustomerDemographics` PRIMARY KEY (`CustomerTypeID`)
);

CREATE TABLE `Customers` (
    `CustomerID` VARCHAR(5) NOT NULL,
    `CompanyName` VARCHAR(40) NOT NULL,
    `ContactName` VARCHAR(30),
    `ContactTitle` VARCHAR(30),
    `Address` VARCHAR(60),
    `City` VARCHAR(15),
    `Region` VARCHAR(15),
    `PostalCode` VARCHAR(10),
    `Country` VARCHAR(15),
    `Phone` VARCHAR(24),
    `Fax` VARCHAR(24),
    CONSTRAINT `PK_Customers` PRIMARY KEY (`CustomerID`)
);

CREATE INDEX `City` ON `Customers` (`City`);

CREATE INDEX `CompanyName` ON `Customers` (`CompanyName`);

CREATE INDEX `PostalCode` ON `Customers` (`PostalCode`);

CREATE INDEX `Region` ON `Customers` (`Region`);

CREATE TABLE `Employees` (
    `EmployeeID` INTEGER NOT NULL AUTO_INCREMENT,
    `LastName` VARCHAR(20) NOT NULL,
    `FirstName` VARCHAR(10) NOT NULL,
    `Title` VARCHAR(30),
    `TitleOfCourtesy` VARCHAR(25),
    `BirthDate` DATETIME,
    `HireDate` DATETIME,
    `Address` VARCHAR(60),
    `City` VARCHAR(15),
    `Region` VARCHAR(15),
    `PostalCode` VARCHAR(10),
    `Country` VARCHAR(15),
    `HomePhone` VARCHAR(24),
    `Extension` VARCHAR(4),
    `Photo` LONGBLOB,
    `Notes` MEDIUMTEXT NOT NULL,
    `ReportsTo` INTEGER,
    `PhotoPath` VARCHAR(255),
     `Salary` FLOAT,
    CONSTRAINT `PK_Employees` PRIMARY KEY (`EmployeeID`)
);

CREATE INDEX `LastName` ON `Employees` (`LastName`);

CREATE INDEX `PostalCode` ON `Employees` (`PostalCode`);

CREATE TABLE `EmployeeTerritories` (
    `EmployeeID` INTEGER NOT NULL,
    `TerritoryID` VARCHAR(20) NOT NULL,
    CONSTRAINT `PK_EmployeeTerritories` PRIMARY KEY (`EmployeeID`, `TerritoryID`)
);

CREATE TABLE `Order Details` (
    `OrderID` INTEGER NOT NULL,
    `ProductID` INTEGER NOT NULL,
    `UnitPrice` DECIMAL(10,4) NOT NULL DEFAULT 0,
    `Quantity` SMALLINT(2) NOT NULL DEFAULT 1,
    `Discount` REAL(8,0) NOT NULL DEFAULT 0,
    CONSTRAINT `PK_Order Details` PRIMARY KEY (`OrderID`, `ProductID`)
);

CREATE TABLE `Orders` (
    `OrderID` INTEGER NOT NULL AUTO_INCREMENT,
    `CustomerID` VARCHAR(5),
    `EmployeeID` INTEGER,
    `OrderDate` DATETIME,
    `RequiredDate` DATETIME,
    `ShippedDate` DATETIME,
    `ShipVia` INTEGER,
    `Freight` DECIMAL(10,4) DEFAULT 0,
    `ShipName` VARCHAR(40),
    `ShipAddress` VARCHAR(60),
    `ShipCity` VARCHAR(15),
    `ShipRegion` VARCHAR(15),
    `ShipPostalCode` VARCHAR(10),
    `ShipCountry` VARCHAR(15),
    CONSTRAINT `PK_Orders` PRIMARY KEY (`OrderID`)
);

CREATE INDEX `OrderDate` ON `Orders` (`OrderDate`);

CREATE INDEX `ShippedDate` ON `Orders` (`ShippedDate`);

CREATE INDEX `ShipPostalCode` ON `Orders` (`ShipPostalCode`);

CREATE TABLE `Products` (
    `ProductID` INTEGER NOT NULL AUTO_INCREMENT,
    `ProductName` VARCHAR(40) NOT NULL,
    `SupplierID` INTEGER,
    `CategoryID` INTEGER,
    `QuantityPerUnit` VARCHAR(20),
    `UnitPrice` DECIMAL(10,4) DEFAULT 0,
    `UnitsInStock` SMALLINT(2) DEFAULT 0,
    `UnitsOnOrder` SMALLINT(2) DEFAULT 0,
    `ReorderLevel` SMALLINT(2) DEFAULT 0,
    `Discontinued` BIT NOT NULL DEFAULT 0,
    CONSTRAINT `PK_Products` PRIMARY KEY (`ProductID`)
);

CREATE INDEX `ProductName` ON `Products` (`ProductName`);

CREATE TABLE `Region` (
    `RegionID` INTEGER NOT NULL,
    `RegionDescription` VARCHAR(50) NOT NULL,
    CONSTRAINT `PK_Region` PRIMARY KEY (`RegionID`)
);

CREATE TABLE `Shippers` (
    `ShipperID` INTEGER NOT NULL AUTO_INCREMENT,
    `CompanyName` VARCHAR(40) NOT NULL,
    `Phone` VARCHAR(24),
    CONSTRAINT `PK_Shippers` PRIMARY KEY (`ShipperID`)
);

CREATE TABLE `Suppliers` (
    `SupplierID` INTEGER NOT NULL AUTO_INCREMENT,
    `CompanyName` VARCHAR(40) NOT NULL,
    `ContactName` VARCHAR(30),
    `ContactTitle` VARCHAR(30),
    `Address` VARCHAR(60),
    `City` VARCHAR(15),
    `Region` VARCHAR(15),
    `PostalCode` VARCHAR(10),
    `Country` VARCHAR(15),
    `Phone` VARCHAR(24),
    `Fax` VARCHAR(24),
    `HomePage` MEDIUMTEXT,
    CONSTRAINT `PK_Suppliers` PRIMARY KEY (`SupplierID`)
);

CREATE INDEX `CompanyName` ON `Suppliers` (`CompanyName`);

CREATE INDEX `PostalCode` ON `Suppliers` (`PostalCode`);

CREATE TABLE `Territories` (
    `TerritoryID` VARCHAR(20) NOT NULL,
    `TerritoryDescription` VARCHAR(50) NOT NULL,
    `RegionID` INTEGER NOT NULL,
    CONSTRAINT `PK_Territories` PRIMARY KEY (`TerritoryID`)
);
