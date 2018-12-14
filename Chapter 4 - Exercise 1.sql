USE TSQL2012;

SELECT orderid, orderdate, custid, empid
FROM Sales.Orders
WHERE orderdate = 
	(SELECT TOP(1) O2.orderdate
	FROM Sales.Orders AS O2
	ORDER BY O2.orderdate DESC)
ORDER BY orderid desc;