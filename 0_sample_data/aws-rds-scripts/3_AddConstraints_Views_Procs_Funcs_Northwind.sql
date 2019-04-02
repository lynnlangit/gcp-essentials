# ---------------------------------------------------------------------- #
# Foreign key constraints                                                #
# ---------------------------------------------------------------------- #

ALTER TABLE `CustomerCustomerDemo` ADD CONSTRAINT `FK_CustomerCustomerDemo` 
    FOREIGN KEY (`CustomerTypeID`) REFERENCES `CustomerDemographics` (`CustomerTypeID`);

ALTER TABLE `CustomerCustomerDemo` ADD CONSTRAINT `FK_CustomerCustomerDemo_Customers` 
    FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`);

ALTER TABLE `Employees` ADD CONSTRAINT `FK_Employees_Employees` 
    FOREIGN KEY (`ReportsTo`) REFERENCES `Employees` (`EmployeeID`);

ALTER TABLE `EmployeeTerritories` ADD CONSTRAINT `FK_EmployeeTerritories_Employees` 
    FOREIGN KEY (`EmployeeID`) REFERENCES `Employees` (`EmployeeID`);

ALTER TABLE `EmployeeTerritories` ADD CONSTRAINT `FK_EmployeeTerritories_Territories` 
    FOREIGN KEY (`TerritoryID`) REFERENCES `Territories` (`TerritoryID`);

ALTER TABLE `Order Details` ADD CONSTRAINT `FK_Order_Details_Orders` 
    FOREIGN KEY (`OrderID`) REFERENCES `Orders` (`OrderID`);

ALTER TABLE `Order Details` ADD CONSTRAINT `FK_Order_Details_Products` 
    FOREIGN KEY (`ProductID`) REFERENCES `Products` (`ProductID`);

ALTER TABLE `Orders` ADD CONSTRAINT `FK_Orders_Customers` 
    FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`);

ALTER TABLE `Orders` ADD CONSTRAINT `FK_Orders_Employees` 
    FOREIGN KEY (`EmployeeID`) REFERENCES `Employees` (`EmployeeID`);

ALTER TABLE `Orders` ADD CONSTRAINT `FK_Orders_Shippers` 
    FOREIGN KEY (`ShipVia`) REFERENCES `Shippers` (`ShipperID`);

ALTER TABLE `Products` ADD CONSTRAINT `FK_Products_Categories` 
    FOREIGN KEY (`CategoryID`) REFERENCES `Categories` (`CategoryID`);

ALTER TABLE `Products` ADD CONSTRAINT `FK_Products_Suppliers` 
    FOREIGN KEY (`SupplierID`) REFERENCES `Suppliers` (`SupplierID`);

ALTER TABLE `Territories` ADD CONSTRAINT `FK_Territories_Region` 
    FOREIGN KEY (`RegionID`) REFERENCES `Region` (`RegionID`);
    
# ---------------------------------------------------------------------- #
# Add View "Alphabetical list of products"                               #
# ---------------------------------------------------------------------- #

CREATE VIEW `Alphabetical list of products`
AS
SELECT Products.*, 
       Categories.CategoryName
FROM Categories 
   INNER JOIN Products ON Categories.CategoryID = Products.CategoryID
WHERE (((Products.Discontinued)=0));

# ---------------------------------------------------------------------- #
# Add View "Current Product List"                                        #
# ---------------------------------------------------------------------- #

CREATE VIEW `Current Product List`
AS
SELECT ProductID,
       ProductName 
FROM Products 
WHERE Discontinued=0;

# ---------------------------------------------------------------------- #
# Add View "Customer and Suppliers by City"                              #
# ---------------------------------------------------------------------- #

CREATE VIEW `Customer and Suppliers by City`
AS
SELECT City, 
       CompanyName, 
       ContactName, 
       'Customers' AS Relationship 
FROM Customers
UNION 
SELECT City, 
       CompanyName, 
       ContactName, 
       'Suppliers'
FROM Suppliers 
ORDER BY City, CompanyName;

# ---------------------------------------------------------------------- #
# Add View "Invoices"                                                    #
# ---------------------------------------------------------------------- #

CREATE VIEW `Invoices`
AS
SELECT Orders.ShipName,
       Orders.ShipAddress,
       Orders.ShipCity,
       Orders.ShipRegion, 
       Orders.ShipPostalCode,
       Orders.ShipCountry,
       Orders.CustomerID,
       Customers.CompanyName AS CustomerName, 
       Customers.Address,
       Customers.City,
       Customers.Region,
       Customers.PostalCode,
       Customers.Country,
       (Employees.FirstName + ' ' + Employees.LastName) AS Salesperson, 
       Orders.OrderID,
       Orders.OrderDate,
       Orders.RequiredDate,
       Orders.ShippedDate, 
       Shippers.CompanyName As ShipperName,
       `Order Details`.ProductID,
       Products.ProductName, 
       `Order Details`.UnitPrice,
       `Order Details`.Quantity,
       `Order Details`.Discount, 
       (((`Order Details`.UnitPrice*Quantity*(1-Discount))/100)*100) AS ExtendedPrice,
       Orders.Freight 
FROM Customers 
  JOIN Orders ON Customers.CustomerID = Orders.CustomerID  
    JOIN Employees ON Employees.EmployeeID = Orders.EmployeeID    
     JOIN `Order Details` ON Orders.OrderID = `Order Details`.OrderID     
      JOIN Products ON Products.ProductID = `Order Details`.ProductID      
       JOIN Shippers ON Shippers.ShipperID = Orders.ShipVia;

# ---------------------------------------------------------------------- #
# Add View "Orders Qry"                                                  #
# ---------------------------------------------------------------------- #
	   
CREATE VIEW `Orders Qry` AS
SELECT Orders.OrderID,
       Orders.CustomerID,
       Orders.EmployeeID, 
       Orders.OrderDate, 
       Orders.RequiredDate,
       Orders.ShippedDate, 
       Orders.ShipVia, 
       Orders.Freight,
       Orders.ShipName, 
       Orders.ShipAddress, 
       Orders.ShipCity,
       Orders.ShipRegion,
       Orders.ShipPostalCode,
       Orders.ShipCountry,
       Customers.CompanyName,
       Customers.Address,
       Customers.City,
       Customers.Region,
       Customers.PostalCode, 
       Customers.Country
FROM Customers 
     JOIN Orders ON Customers.CustomerID = Orders.CustomerID;     

# ---------------------------------------------------------------------- #
# Add View "Order Subtotals"                                             #
# ---------------------------------------------------------------------- #
	 
CREATE VIEW `Order Subtotals` AS
SELECT `Order Details`.OrderID, 
Sum((`Order Details`.UnitPrice*Quantity*(1-Discount)/100)*100) AS Subtotal
FROM `Order Details`
GROUP BY `Order Details`.OrderID;

# ---------------------------------------------------------------------- #
# Add View "Product Sales for 1997"                                      #
# ---------------------------------------------------------------------- #

CREATE VIEW `Product Sales for 1997` AS
SELECT Categories.CategoryName, 
       Products.ProductName, 
       Sum((`Order Details`.UnitPrice*Quantity*(1-Discount)/100)*100) AS ProductSales
FROM Categories
 JOIN    Products On Categories.CategoryID = Products.CategoryID
    JOIN  `Order Details` on Products.ProductID = `Order Details`.ProductID     
     JOIN  `Orders` on Orders.OrderID = `Order Details`.OrderID 
WHERE Orders.ShippedDate Between '1997-01-01' And '1997-12-31'
GROUP BY Categories.CategoryName, Products.ProductName;

# ---------------------------------------------------------------------- #
# Add View "Products Above Average Price"                                #
# ---------------------------------------------------------------------- #

CREATE VIEW `Products Above Average Price` AS
SELECT Products.ProductName, 
       Products.UnitPrice
FROM Products
WHERE Products.UnitPrice>(SELECT AVG(UnitPrice) From Products);

# ---------------------------------------------------------------------- #
# Add View "Products by Category"                                        #
# ---------------------------------------------------------------------- #

CREATE VIEW `Products by Category` AS
SELECT Categories.CategoryName, 
       Products.ProductName, 
       Products.QuantityPerUnit, 
       Products.UnitsInStock, 
       Products.Discontinued
FROM Categories 
     INNER JOIN Products ON Categories.CategoryID = Products.CategoryID
WHERE Products.Discontinued <> 1;

# ---------------------------------------------------------------------- #
# Add View "Quarterly Orders"                                            #
# ---------------------------------------------------------------------- #

CREATE VIEW `Quarterly Orders` AS
SELECT DISTINCT Customers.CustomerID, 
                Customers.CompanyName, 
                Customers.City, 
                Customers.Country
FROM Customers 
     JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderDate BETWEEN '1997-01-01' And '1997-12-31';

# ---------------------------------------------------------------------- #
# Add View "Sales Totals by Amount"                                      #
# ---------------------------------------------------------------------- #

CREATE VIEW `Sales Totals by Amount` AS
SELECT `Order Subtotals`.Subtotal AS SaleAmount, 
                  Orders.OrderID, 
               Customers.CompanyName, 
                  Orders.ShippedDate
FROM Customers 
 JOIN Orders ON Customers.CustomerID = Orders.CustomerID
    JOIN `Order Subtotals` ON Orders.OrderID = `Order Subtotals`.OrderID 
WHERE (`Order Subtotals`.Subtotal >2500) 
AND (Orders.ShippedDate BETWEEN '1997-01-01' And '1997-12-31');

# ---------------------------------------------------------------------- #
# Add View "Summary of Sales by Quarter"                                 #
# ---------------------------------------------------------------------- #

CREATE VIEW `Summary of Sales by Quarter` AS
SELECT Orders.ShippedDate, 
       Orders.OrderID, 
       `Order Subtotals`.Subtotal
FROM Orders 
     INNER JOIN `Order Subtotals` ON Orders.OrderID = `Order Subtotals`.OrderID
WHERE Orders.ShippedDate IS NOT NULL;

# ---------------------------------------------------------------------- #
# Add View "Summary of Sales by Year"                                    #
# ---------------------------------------------------------------------- #

CREATE VIEW `Summary of Sales by Year` AS
SELECT      Orders.ShippedDate, 
            Orders.OrderID, 
 `Order Subtotals`.Subtotal
FROM Orders 
     INNER JOIN `Order Subtotals` ON Orders.OrderID = `Order Subtotals`.OrderID
WHERE Orders.ShippedDate IS NOT NULL;

# ---------------------------------------------------------------------- #
# Add View "Category Sales for 1997"                                     #
# ---------------------------------------------------------------------- #

CREATE VIEW `Category Sales for 1997` AS
SELECT     `Product Sales for 1997`.CategoryName, 
       Sum(`Product Sales for 1997`.ProductSales) AS CategorySales
FROM `Product Sales for 1997`
GROUP BY `Product Sales for 1997`.CategoryName;

# ---------------------------------------------------------------------- #
# Add View "Order Details Extended"                                      #
# ---------------------------------------------------------------------- #

CREATE VIEW `Order Details Extended` AS
SELECT `Order Details`.OrderID, 
       `Order Details`.ProductID, 
       Products.ProductName, 
	   `Order Details`.UnitPrice, 
       `Order Details`.Quantity, 
       `Order Details`.Discount, 
      (`Order Details`.UnitPrice*Quantity*(1-Discount)/100)*100 AS ExtendedPrice
FROM Products 
     JOIN `Order Details` ON Products.ProductID = `Order Details`.ProductID;

# ---------------------------------------------------------------------- #
# Add View "Sales by Category"                                           #
# ---------------------------------------------------------------------- #

CREATE VIEW `Sales by Category` AS
SELECT Categories.CategoryID, 
       Categories.CategoryName, 
         Products.ProductName, 
	Sum(`Order Details Extended`.ExtendedPrice) AS ProductSales
FROM  Categories 
    JOIN Products 
      ON Categories.CategoryID = Products.CategoryID
       JOIN `Order Details Extended` 
         ON Products.ProductID = `Order Details Extended`.ProductID                
           JOIN Orders 
             ON Orders.OrderID = `Order Details Extended`.OrderID 
WHERE Orders.OrderDate BETWEEN '1997-01-01' And '1997-12-31'
GROUP BY Categories.CategoryID, Categories.CategoryName, Products.ProductName;

# ---------------------------------------------------------------------- #
# Add Procedure "CustOrderHist"                                          #
# ---------------------------------------------------------------------- #

DROP PROCEDURE IF EXISTS `CustOrderHist`;

DELIMITER $$

CREATE PROCEDURE `CustOrderHist`(in AtCustomerID varchar(5))
BEGIN

SELECT ProductName,
    SUM(Quantity) as TOTAL
FROM Products P,
     `Order Details` OD,
     Orders O,
     Customers C
WHERE C.CustomerID = AtCustomerID
  AND C.CustomerID = O.CustomerID
  AND O.OrderID = OD.OrderID
  AND OD.ProductID = P.ProductID
GROUP BY ProductName;

END $$

DELIMITER ;

# ---------------------------------------------------------------------- #
# Add Procedure "CustOrdersOrders"                                       #
# ---------------------------------------------------------------------- #

DROP PROCEDURE IF EXISTS `CustOrdersOrders`;

DELIMITER $$

CREATE PROCEDURE `CustOrdersOrders`(in AtCustomerID varchar(5))
BEGIN
      SELECT OrderID,
	OrderDate,
	RequiredDate,
	ShippedDate
FROM Orders
WHERE CustomerID = AtCustomerID
ORDER BY OrderID;

END $$

DELIMITER ;

# ---------------------------------------------------------------------- #
# Add Procedure "Employee Sales by Country"                              #
# ---------------------------------------------------------------------- #

DROP PROCEDURE IF EXISTS `Employee Sales by Country`;

DELIMITER $$

CREATE PROCEDURE `Employee Sales by Country`(in AtBeginning_Date Datetime,in AtEnding_Date Datetime)
BEGIN
  SELECT Employees.Country,
         Employees.LastName,
         Employees.FirstName,
            Orders.ShippedDate,
            Orders.OrderID,
 `Order Subtotals`.Subtotal AS SaleAmount
FROM Employees
 JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
      JOIN `Order Subtotals` ON Orders.OrderID = `Order Subtotals`.OrderID
WHERE Orders.ShippedDate Between AtBeginning_Date And AtEnding_Date;

END $$

DELIMITER ;

# ---------------------------------------------------------------------- #
# Add Procedure "Employee Sales by Year"                                 #
# ---------------------------------------------------------------------- #

DROP PROCEDURE IF EXISTS `Sales by Year`;

DELIMITER $$

CREATE PROCEDURE `Sales by Year`(in AtBeginning_Date Datetime,in AtEnding_Date Datetime)
BEGIN

    SELECT Orders.ShippedDate,
	   Orders.OrderID,
	  `Order Subtotals`.Subtotal,
	  ShippedDate AS Year
FROM Orders  JOIN `Order Subtotals` ON Orders.OrderID = `Order Subtotals`.OrderID
WHERE Orders.ShippedDate Between AtBeginning_Date And AtEnding_Date;

END $$

DELIMITER ;

# ---------------------------------------------------------------------- #
# Add Procedure "SalesByCategory"                                        #
# ---------------------------------------------------------------------- #

DROP PROCEDURE IF EXISTS `SalesByCategory`;
DELIMITER $$

CREATE PROCEDURE `SalesByCategory`()
BEGIN

END $$

DELIMITER ;

# ---------------------------------------------------------------------- #
# Add Procedure "sp_Employees_Insert"                                    #
# ---------------------------------------------------------------------- #

DROP PROCEDURE IF EXISTS `sp_Employees_Insert`;

DELIMITER $$

CREATE PROCEDURE `sp_Employees_Insert`(
In AtLastName VARCHAR(20),
In AtFirstName VARCHAR(10),
In AtTitle VARCHAR(30),
In AtTitleOfCourtesy VARCHAR(25),
In AtBirthDate DateTime,
In AtHireDate DateTime,
In AtAddress VARCHAR(60),
In AtCity VARCHAR(15),
In AtRegion VARCHAR(15),
In AtPostalCode VARCHAR(10),
In AtCountry VARCHAR(15),
In AtHomePhone VARCHAR(24),
In AtExtension VARCHAR(4),
In AtPhoto LONGBLOB,
In AtNotes MEDIUMTEXT,
In AtReportsTo INTEGER,
IN AtPhotoPath VARCHAR(255),
OUT AtReturnID INTEGER
)
BEGIN
Insert Into Employees Values(AtLastName,AtFirstName,AtTitle,AtTitleOfCourtesy,AtBirthDate,AtHireDate,AtAddress,AtCity,AtRegion,AtPostalCode,AtCountry,AtHomePhone,AtExtension,AtPhoto,AtNotes,AtReportsTo,AtPhotoPath);

	SELECT AtReturnID = LAST_INSERT_ID();
	
END $$

DELIMITER ;

# ---------------------------------------------------------------------- #
# Add Procedure "sp_Employees_SelectAll"                                 #
# ---------------------------------------------------------------------- #

DROP PROCEDURE IF EXISTS `sp_Employees_SelectAll`;

DELIMITER $$

CREATE PROCEDURE `sp_Employees_SelectAll`()
BEGIN
SELECT * FROM Employees;

END $$

DELIMITER ;

# ---------------------------------------------------------------------- #
# Add Procedure "sp_Employees_SelectRow"                                 #
# ---------------------------------------------------------------------- #


DROP PROCEDURE IF EXISTS `sp_Employees_SelectRow`;

DELIMITER $$

CREATE PROCEDURE `sp_Employees_SelectRow`(In AtEmployeeID INTEGER)
BEGIN
SELECT * FROM Employees Where EmployeeID = AtEmployeeID;

END $$

DELIMITER ;

# ---------------------------------------------------------------------- #
# Add Procedure "sp_Employees_Update"                                    #
# ---------------------------------------------------------------------- #

DROP PROCEDURE IF EXISTS `sp_Employees_Update`;

DELIMITER $$

CREATE PROCEDURE `sp_Employees_Update`(
In AtEmployeeID INTEGER,
In AtLastName VARCHAR(20),
In AtFirstName VARCHAR(10),
In AtTitle VARCHAR(30),
In AtTitleOfCourtesy VARCHAR(25),
In AtBirthDate DateTime,
In AtHireDate DateTime,
In AtAddress VARCHAR(60),
In AtCity VARCHAR(15),
In AtRegion VARCHAR(15),
In AtPostalCode VARCHAR(10),
In AtCountry VARCHAR(15),
In AtHomePhone VARCHAR(24),
In AtExtension VARCHAR(4),
In AtPhoto LONGBLOB,
In AtNotes MEDIUMTEXT,
In AtReportsTo INTEGER,
IN AtPhotoPath VARCHAR(255)
)
BEGIN
Update Employees
	Set
		LastName = AtLastName,
		FirstName = AtFirstName,
		Title = AtTitle,
		TitleOfCourtesy = AtTitleOfCourtesy,
		BirthDate = AtBirthDate,
		HireDate = AtHireDate,
		Address = AtAddress,
		City = AtCity,
		Region = AtRegion,
		PostalCode = AtPostalCode,
		Country = AtCountry,
		HomePhone = AtHomePhone,
		Extension = AtExtension,
		Photo = AtPhoto,
		Notes = AtNotes,
		ReportsTo = AtReportsTo,
    PhotoPath = AtPhotoPath
	Where
		EmployeeID = AtEmployeeID;

END $$

DELIMITER ;

# ---------------------------------------------------------------------- #
# Add FUNCTION "MyRound"                                                 #
# ---------------------------------------------------------------------- #

DROP FUNCTION IF EXISTS `MyRound`;

DELIMITER $$

CREATE FUNCTION `MyRound`(Operand DOUBLE,Places INTEGER) RETURNS DOUBLE
DETERMINISTIC
BEGIN

DECLARE x DOUBLE;
DECLARE i INTEGER;
DECLARE ix DOUBLE;

  SET x = Operand*POW(10,Places);
  SET i=x;
  
  IF (i-x) >= 0.5 THEN                   
    SET ix = 1;                  
  ELSE
    SET ix = 0;                 
  END IF;     

  SET x=i+ix;
  SET x=x/POW(10,Places);

RETURN x;


END $$

DELIMITER ;

# ---------------------------------------------------------------------- #
# Add PROCEDURE "LookByFName"                                            #
# ---------------------------------------------------------------------- #

DROP PROCEDURE IF EXISTS `LookByFName`;

DELIMITER $$

CREATE PROCEDURE `LookByFName`(IN AtFirstLetter CHAR(1))
BEGIN
     SELECT * FROM Employees  Where LEFT(FirstName, 1)=AtFirstLetter;

END $$

DELIMITER ;

# ---------------------------------------------------------------------- #
# Add FUNCTION "DateOnly"                                                #
# ---------------------------------------------------------------------- #

DELIMITER $$

DROP FUNCTION IF EXISTS `DateOnly` $$

CREATE FUNCTION `DateOnly` (InDateTime datetime) RETURNS VARCHAR(10)
BEGIN

  DECLARE MyOutput varchar(10);
	SET MyOutput = DATE_FORMAT(InDateTime,'%Y-%m-%d');

  RETURN MyOutput;

END $$

DELIMITER ;

# ---------------------------------------------------------------------- #
# Add PROCEDURE  "sp_employees_cursor" CURSOR SAMPLE                     #
# ---------------------------------------------------------------------- #
DELIMITER $$

DROP PROCEDURE IF EXISTS `sp_employees_cursor` $$
CREATE PROCEDURE `sp_employees_cursor`(IN city_in VARCHAR(15))
BEGIN
  DECLARE name_val VARCHAR(10);
  DECLARE surname_val VARCHAR(10);
  DECLARE photopath_val VARCHAR(255);

  DECLARE no_more_rows BOOLEAN;

  DECLARE fetch_status INT DEFAULT 0;

  DECLARE employees_cur CURSOR FOR SELECT firstname, lastname,photopath FROM employees WHERE city = city_in;

  DECLARE CONTINUE HANDLER FOR NOT FOUND SET no_more_rows = TRUE;

  DROP TABLE IF EXISTS atpeople;
  CREATE TABLE atpeople(
    FirstName VARCHAR(10),
    LastName VARCHAR(20),
    PhotoPath VARCHAR(255)
  );


  OPEN employees_cur;
  select FOUND_ROWS() into fetch_status;


  the_loop: LOOP

    FETCH  employees_cur  INTO   name_val,surname_val,photopath_val;


    IF no_more_rows THEN
       CLOSE employees_cur;
       LEAVE the_loop;
    END IF;


    INSERT INTO atpeople SELECT  name_val,surname_val,photopath_val;

  END LOOP the_loop;

  SELECT * FROM atpeople;
  DROP TABLE atpeople;

END $$

DELIMITER ;

# ---------------------------------------------------------------------- #
# Add PROCEDURE  "sp_employees_rownum" rownum SAMPLE                     #
# ---------------------------------------------------------------------- #
  
DELIMITER $$

DROP PROCEDURE IF EXISTS `sp_employees_rownum`$$
CREATE PROCEDURE `sp_employees_rownum` ()
BEGIN

SELECT *
FROM
(select @rownum:=@rownum+1  as RowNum,
  p.* from employees p
   ,(SELECT @rownum:=0) R
   order by firstname desc limit 10
) a
WHERE a.RowNum >= 2 AND a.RowNum<= 4;

END $$

DELIMITER ;

# ---------------------------------------------------------------------- #
# Add PROCEDURE  "sp_employees_rollup" rollup SAMPLE                     #
# ---------------------------------------------------------------------- #
  
DELIMITER $$

DROP PROCEDURE IF EXISTS `sp_employees_rollup`$$
CREATE PROCEDURE `sp_employees_rollup` ()
BEGIN
SELECT Distinct City ,Sum(Salary) Salary_By_City FROM employees
GROUP BY City WITH ROLLUP;

END $$

DELIMITER ;

# ---------------------------------------------------------------------- #
# Add PROCEDURE  "sp_employees_rank" rank SAMPLE                         #
# ---------------------------------------------------------------------- #

DELIMITER $$

DROP PROCEDURE IF EXISTS `northwind`.`sp_employees_rank` $$
CREATE PROCEDURE `northwind`.`sp_employees_rank` ()
BEGIN
select *
     from (select a.Title, a.EmployeeID, a.FirstName, a.Salary,
                  (select 1 + count(*)
                   from Employees b
                   where b.Title = a.Title
                     and b.Salary > a.Salary) RANK
           from Employees as a) as x
     order by x.Title, x.RANK;

END $$

DELIMITER ;