use Northwind;

--1
--Select all the rows from the "Customers" table.

--SELECT * FROM Customers;

--2
--Get distinct countries from the Customers table.

--SELECT DISTINCT country FROM Customers;

--3 
--Get all the rows from the table Customers where the Customer’s ID starts with “BL”.

--SELECT * FROM Customers WHERE CustomerID LIKE 'BL%';

--4
--Get the first 100 records of the orders table. DISCUSS: Why would you do this? What else would you likely need to include in this query?
--This determines the first to be shipped. 

--SELECT * FROM Orders WHERE OrderID <= 10347;
--SELECT TOP 100 * FROM Orders;

--5
--Get all customers that live in the postal codes 1010, 3012, 12209, and 05023.

--SELECT * 
--FROM Customers WHERE PostalCode IN ('1010', '3012', '12209', '05023');

--6
--Get all orders where the ShipRegion is not equal to NULL.

--SELECT * FROM Orders WHERE ShipRegion is not NULL;

--7
--Get all customers ordered by the country, then by the city.

--SELECT Country, City FROM Customers;

--8
--Add a new customer to the customers table. You can use whatever values.

--INSERT INTO Customers (CustomerID, ContactName, CompanyName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax) 
--VALUES ('DOGFU','Nike','Don Leon','Suck Up','123 Downtown','Detroit','MI','48123','USA','313-313-5555', '98.91.90.21');

--9
--Update all ShipRegion to the value ‘EuroZone’ in the Orders table, where the ShipCountry is equal to France.  

--UPDATE Orders 
--SET ShipRegion ='EuroZone'
--WHERE ShipCountry = 'France';

--10
--Delete all orders from OrderDetails that have quantity of 1. 

--DELETE FROM [Order Details]
--WHERE Quantity = '1';

--11
--Find the CustomerID that placed order 10290 (orders table).

--SELECT CustomerID FROM Orders WHERE OrderID = 10290;
--SELECT * FROM Orders;

--12
--Join the orders table to the customers table.

--SELECT * FROM Customers
--JOIN Orders ON Orders.CustomerID = Customers.CustomerID;

--13
--Get employees’ firstname for all employees who report to no one.

--SELECT FirstName FROM Employees
--WHERE ReportsTo IS NULL;  --had to use IS, not = on NULL

--14
--Get employees’ firstname for all employees who report to Andrew.

--SELECT FirstName FROM Employees
--WHERE ReportsTo = 2;
--SELECT * FROM Employees;

--1 
--Calculate the average, max, and min of the quantity at the orderdetails table, grouped by the orderid. 

--SELECT AVG(Quantity) 
--FROM [Order Details]
--GROUP BY orderid;

--SELECT MIN(Quantity) 
--FROM [Order Details]
--GROUP BY orderid;

--SELECT MAX(Quantity) 
--FROM [Order Details]
--GROUP BY orderid;

--2
--Calculate the average, max, and min of the quantity at the orderdetails table.

--SELECT AVG(Quantity) 
--FROM [Order Details]

--SELECT MIN(Quantity) 
--FROM [Order Details]

--SELECT MAX(Quantity) 
--FROM [Order Details]

--3
--Find all customers living in London or Paris

--SELECT * FROM Customers 
--WHERE City IN ('London','Paris');

--4
--Do an inner join, left join, right join on orders and customers tables. 

--SELECT * FROM Orders          --inner join on orders        
--JOIN Customers ON Orders.CustomerId = Customers.CustomerId; --joining Orders/CustomersID
								
--SELECT * FROM Orders               
--LEFT JOIN Customers ON Orders.CustomerId = Customers.CustomerId;
--								-----------RIGHT JOIN, ODD AND DONT USE IT----------
--SELECT * FROM Orders               
--RIGHT JOIN Customers ON Orders.CustomerId = Customers.CustomerId;

--5
--Make a list of cities where customers are coming from. The list should not have any duplicates or nulls.

--SELECT DISTINCT City FROM Customers;  --eliminates doubles

--6
--Show a sorted list of employees’ first names. 

--SELECT FirstName FROM Employees
--ORDER BY FirstNAme;

--7
--Find total for each order

--SELECT *, UnitPrice*Quantity AS TotalPrice 
--FROM [Order Details]

--8
--Get a list of all employees who got hired between 1/1/1994 and today

--SELECT FirstName, LastName, HireDate
--FROM Employees 
--WHERE HireDate BETWEEN '1994-01-01' AND '2023-02-09';

--9
--Find how long employees have been working for Northwind (in years!)

--SELECT FirstName, LastName, HireDate,
--DATEDIFF(YEAR,HireDate,CURRENT_TIMESTAMP) as YearsEmployed
--FROM Employees;

--10
--Get a list of all products sorted by quantity (ascending and descending order)

--SELECT QuantityPerUnit FROM Products
--ORDER BY QuantityPerUnit ASC;

--SELECT QuantityPerUnit FROM Products
--ORDER BY QuantityPerUnit DESC;

--11
--Find all products that are low on stock (quantity less than 6)

--SELECT ProductName, UnitsInStock FROM Products
--WHERE UnitsInStock <6;

--12
--Find a list of all discontinued products. 

--SELECT ProductName, Discontinued FROM Products
--WHERE Discontinued >=1;

--13
--Find a list of all products that have Tofu in them.

--SELECT ProductName FROM Products
--WHERE ProductName LIKE '%Tofu%';  --strings are %%, not =

--14
--Find the product that has the highest unit price. 
--SELECT TOP 1 ProductNAme, UnitPrice
--FROM Products
--ORDER BY UnitPrice DESC;

--15
----Get a list of all employees who got hired after 1/1/1993
--SELECT FirstName, LastName, HireDAte 
--FROM Employees
--WHERE HireDate BETWEEN '1993-01-01' AND '2023-02-09';

--16
--Get all employees who have title : “Ms.” And “Mrs.”
--SELECT FirstName, LastNAme, TitleOfCourtesy FROM Employees
--WHERE TitleOfCourtesy LIKE '%MS%' OR TitleOfCourtesy LIKE '%Mrs%';

--17
--Get all employees who have a Home phone number that has area code 206
--SELECT FirstName, LastName, HomePhone 
--FROM Employees
--WHERE HomePhone LIKE '%206%';

