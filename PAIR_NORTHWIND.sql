USE northwind;

SELECT EmployeeID, LastName, FirstName
FROM employees;

SELECT UnitPrice
FROM products
WHERE UnitPrice between 0 AND 5;

SELECT *
FROM products 
WHERE UnitPrice is NULL;

SELECT *
FROM products 
WHERE UnitPrice < 15 
AND ProductID < 20;

SELECT *
FROM products 
WHERE NOT UnitPrice < 15
AND ProductID > 20;

SELECT ShipCountry
FROM orders;

SELECT ProductID, ProductName, UnitPrice
FROM products 
LIMIT 10;

SELECT ProductID, ProductName, UnitPrice
FROM products 
ORDER BY ProductId DESC
LIMIT 10; 

SELECT distinct OrderID
FROM orderdetails;

SELECT UnitPrice * Quantity AS importe_total
FROM orderdetails;

SELECT OrderID, UnitPrice * Quantity AS importe_total
FROM orderdetails
ORDER BY importe_total DESC
LIMIT 5
OFFSET 5;

SELECT ShippedDate AS fecha_retrasada
FROM orders;

SELECT DATE_ADD(ShippedDate, INTERVAL 5 DAY) AS fecha_retrasada,
ShippedDate
FROM orders






