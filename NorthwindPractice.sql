USE NORTHWND;
GO

-- [1]
-- Create a report that shows the CategoryName and Description 
-- from the categories table sorted by CategoryName.
SELECT dbo.Categories.CategoryName,
       dbo.Categories.Description
FROM dbo.Categories
ORDER BY CategoryName;

-- [2]
-- Create a report that shows the ContactName, CompanyName, ContactTitle and Phone number 
-- from the customers table sorted by ContactTitle DESC
SELECT dbo.Customers.ContactName,
       dbo.Customers.CompanyName,
       dbo.Customers.ContactTitle,
       Phone
FROM dbo.Customers
ORDER BY Customers.Phone;

-- [3]
-- Create a report that shows the capitalized FirstName and capitalized LastName renamed as FirstName and Lastname respectively and HireDate
-- from the employees table sorted from the newest to the oldest employee
SELECT CONCAT(dbo.Employees.FirstName, ' ', dbo.Employees.LastName) AS [FirstName and Lastname],
       HireDate
FROM dbo.Employees
ORDER BY HireDate DESC;

-- [4]
-- Create a report that shows the top 10 OrderID, OrderDate, ShippedDate, CustomerID, Freight
-- from the orders table sorted by Freight in descending order.
SELECT TOP 10
       OrderID,
       OrderDate,
       ShippedDate,
       CustomerID,
       Freight
FROM dbo.Orders
ORDER BY Freight DESC;

-- [5]
-- Create a report that shows all the CustomerID in lowercase letter and renamed as ID
-- from the customers table
SELECT LOWER(CustomerID) AS ID
FROM dbo.Customers;

-- [6]
-- Create a report that shows the CompanyName, Fax, Phone, Country, HomePage
-- from the suppliers table sorted by the Country in descending order then by CompanyName in ascending order.
SELECT CompanyName,
       Fax,
       Phone,
       Country,
       HomePage
FROM dbo.Suppliers
ORDER BY Country ASC;

-- [7]
-- Create a report that shows CompanyName, ContactName of all customers 
-- from ‘Buenos Aires' only
SELECT CompanyName,
       ContactName
FROM dbo.Customers
WHERE City = 'Buenos Aires';

-- [8]
-- Create a report showing ProductName, UnitPrice, QuantityPerUnit of products 
-- that are out of stock.
SELECT ProductName,
       UnitPrice,
       QuantityPerUnit
FROM dbo.Products
WHERE Discontinued = 1;

-- [9]
-- Create a report showing all the ContactName, Address, City of all customers 
-- not from Germany, Mexico, Spain
SELECT ContactName,
       Address,
       City
FROM dbo.Customers
WHERE Country NOT IN ( 'Germany', 'Mexico', 'Spain' );


-- [10]
-- Create a report showing OrderDate, ShippedDate, CustomerID, Freight 
--  of all orders placed on 21 May 1997.
SELECT OrderDate,
       ShippedDate,
       CustomerID,
       Freight
FROM dbo.Orders
WHERE OrderDate = '1997-05-21 00:00:00.000';

-- [11]
-- Create a report showing FirstName, LastName, Country from the employees
-- not from United States
SELECT FirstName,
       LastName,
       Country
FROM dbo.Employees
WHERE NOT Country = 'USA';

-- [12]
-- Create a report that shows the EmployeeID, OrderID, CustomerID, RequiredDate, ShippedDate
-- from all orders shipped later than 1997-04-11.
SELECT EmployeeID,
       OrderID,
       CustomerID,
       RequiredDate,
       ShippedDate
FROM dbo.Orders
WHERE ShippedDate > '1997-04-11 00:00:00.000';

-- [13]
-- Create a report that shows the City, CompanyName, and ContactName
-- of customers from cities starting with A or B.
SELECT City,
       CompanyName,
       ContactName
FROM dbo.Customers
WHERE City LIKE 'A%'
      OR City LIKE 'B%';

-- [14]
-- Create a report showing all the even numbers of OrderID 
-- from the orders table.
SELECT OrderID
FROM dbo.Orders
WHERE OrderID % 2 = 0;

-- [15]
-- Create a report that shows all the orders 
-- where the freight cost is more than $500.
SELECT *
FROM dbo.Orders
WHERE Freight > 500;

-- [16]
-- Create a report that shows the ProductName, UnitsInStock, UnitsOnOrder, and ReorderLevel
-- of all products that are up for reorder.
SELECT ProductName,
       UnitsInStock,
       UnitsOnOrder,
       ReorderLevel
FROM dbo.Products
WHERE ReorderLevel = 0;

-- [17]
-- Create a report that shows the CompanyName, ContactName, and number
-- of all customers that have no fax number.
SELECT COUNT(CompanyName),
       COUNT(ContactName)
FROM dbo.Customers
WHERE Fax IS NULL;

-- [18]
-- Create a report that shows the FirstName and LastName
-- of all employees that do not report to anybody.
SELECT FirstName,
       LastName,
       ReportsTo
FROM dbo.Employees
WHERE ReportsTo IS NULL;

-- [19]
-- Create a report showing all the odd numbers of OrderID 
-- from the orders table.
SELECT OrderID
FROM dbo.Orders
WHERE OrderID % 2 != 0;

-- [20]
-- Create a report that shows the CompanyName, ContactName, Fax
-- of all customers that do not have a Fax number and sorted by ContactName.
SELECT CompanyName,
       ContactName,
       Fax
FROM dbo.Customers
WHERE Fax IS NULL
ORDER BY ContactName;

-- [21]
-- Create a report that shows the City, CompanyName, ContactName
-- of customers from cities that have the letter L in the name, sorted by ContactName.
SELECT City,
       CompanyName,
       ContactName
FROM dbo.Customers
WHERE ContactName LIKE '%L%'
ORDER BY ContactName;

-- [22]
-- Create a report that shows the FirstName, LastName, BirthDate
-- of employees born in the 1950s.
SELECT FirstName,
       LastName,
       BirthDate
FROM dbo.Employees
WHERE BirthDate
BETWEEN '1950-01-01' AND '1959-12-31';

-- [23]
-- Create a report that shows the FirstName, LastName, the year of Birthdate as birth year
-- from the employees table.
SELECT dbo.Employees.FirstName,
       dbo.Employees.LastName,
       YEAR(dbo.Employees.BirthDate) AS BirthYear
FROM dbo.Employees;

-- [24]
-- Create a report showing OrderID, the total number of Order ID as NumberofOrders
-- from the orderdetails table grouped by OrderID and sorted by NumberofOrders in descending order.
-- HINT: you will need to use a Groupby statement.
SELECT OrderID,
       COUNT(OrderID) AS NumberofOrders
FROM dbo.Orders
GROUP BY OrderID
ORDER BY NumberofOrders DESC;

-- [25]
-- Create a report that shows the SupplierID, ProductName, CompanyName
-- from all products supplied by Exotic Liquids, Specialty Biscuits, Ltd., Escargots Nouveaux
-- sorted by the supplier ID.
SELECT s.SupplierID,
       s.CompanyName,
       p.ProductName
FROM dbo.Suppliers s
    JOIN dbo.Products p
        ON s.SupplierID = p.SupplierID
WHERE s.CompanyName IN ( 'Exotic Liquids', 'Specialty Biscuits', 'Ltd.', 'Escargots Nouveaux' );

-- [26]
-- Create a report that shows the ShipPostalCode, OrderID, OrderDate, RequiredDate, ShippedDate, ShipAddress
-- of all orders with ShipPostalCode beginning with "98124".

-- [27]
-- Create a report that shows the ContactName, ContactTitle, CompanyName
-- of customers that do not have "Sales" in their ContactTitle.

-- [28]
-- Create a report that shows the LastName, FirstName, City
-- of employees in cities other than "Seattle".

-- [29]
-- Create a report that shows the CompanyName, ContactTitle, City, Country
-- of all customers in any city in Mexico or other cities in Spain other than Madrid.







