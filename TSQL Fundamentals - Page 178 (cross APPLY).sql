USE TSQL2012;


SELECT C.custid, A.orderid, A.orderdate
FROM Sales.Customers AS C
OUTER APPLY
	(SELECT TOP(5) orderid, empid, orderdate, requireddate
	FROM Sales.Orders AS O
	WHERE O.custid = C.custid
	ORDER BY orderdate DESC, orderid DESC) AS A; /* customers 22 and 57 appear with NULLS, 
	somewhat like left outer join */

SELECT C.custid, A.orderid, A.orderdate
FROM Sales.Customers AS C
CROSS APPLY
	(SELECT TOP(5) orderid, empid, orderdate, requireddate
	FROM Sales.Orders AS O
	WHERE O.custid = C.custid
	ORDER BY orderdate DESC, orderid DESC) AS A;