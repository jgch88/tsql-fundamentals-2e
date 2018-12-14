USE TSQL2012;

SELECT C.custid, C.companyname
FROM Sales.Customers AS C
WHERE C.custid IN 
(
	SELECT O.custid
	FROM Sales.Orders AS O
	WHERE O.orderid IN
		(
		SELECT OD.orderid
		FROM Sales.OrderDetails AS OD
		WHERE OD.productid = 12
		)
);

/* instead of inner joining (m * n * o) rows, can optimise this with IN i think

SELECT DISTINCT C.custid, C.companyname
FROM Sales.Customers AS C
INNER JOIN Sales.Orders AS O
ON C.custid = O.custid
INNER JOIN Sales.OrderDetails AS OD
ON O.orderid = OD.orderid
WHERE OD.productid = 12
ORDER BY C.companyname;
*/