USE TSQL2012;

DECLARE @maxid AS INT = (SELECT MAX(orderid) FROM Sales.Orders);

SELECT orderid, orderdate, empid, custid
FROM Sales.Orders
WHERE orderid = @maxid;

SELECT orderid, orderdate, empid, custid
FROM Sales.Orders
WHERE orderid = (SELECT orderid FROM Sales.orders WHERE orderid = 11077);

SELECT orderid
FROM Sales.Orders
WHERE empid = (SELECT E.empid FROM HR.Employees AS E WHERE E.lastname LIKE N'B%'); 
/* Changing this between A%, B%, D% shows the different scenarios */