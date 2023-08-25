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
SELECT ProductName, UnitPrice, QuantityPerUnit
FROM dbo.Products
WHERE Discontinued = 1

-- [9]
-- Create a report showing all the ContactName, Address, City of all customers 
-- not from Germany, Mexico, Spain
SELECT ContactName,
       Address,
       City
FROM dbo.Customers
WHERE Country NOT IN ( 'Germany', 'Mexico', 'Spain' );


