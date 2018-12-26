USE TSQL2012;

DELETE FROM dbo.Orders
WHERE EXISTS
(SELECT *
FROM Sales.Customers AS C
WHERE dbo.Orders.custid = C.custid AND C.country = N'Brazil');
