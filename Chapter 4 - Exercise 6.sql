USE TSQL2012;

SELECT DISTINCT C.custid, C.companyname
FROM Sales.Customers AS C
INNER JOIN Sales.Orders AS O
ON C.custid = O.custid
WHERE YEAR(O.orderdate) = 2007 AND
C.custid NOT IN 
(
	SELECT DISTINCT C1.custid
	FROM Sales.Customers AS C1
	INNER JOIN Sales.Orders AS O1
	ON C1.custid = O1.custid
	WHERE YEAR(O1.orderdate) = 2008
)
ORDER BY C.custid;