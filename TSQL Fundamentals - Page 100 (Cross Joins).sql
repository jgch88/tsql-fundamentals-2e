USE TSQL2012;

SELECT *
FROM Sales.Customers AS C
CROSS JOIN HR.Employees AS E;