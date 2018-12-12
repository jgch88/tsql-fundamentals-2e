USE TSQL2012;

SELECT custid, orderid, orderdate, empid 
FROM Sales.Orders
WHERE custid NOT IN
	(SELECT C.custid
	FROM Sales.Customers AS C
	WHERE C.country = N'USA');

SELECT O.custid, O.orderid, O.orderdate, O.empid
FROM Sales.Orders AS O
	INNER JOIN Sales.Customers AS C
	ON O.custid = C.custid
WHERE C.country <> N'USA';