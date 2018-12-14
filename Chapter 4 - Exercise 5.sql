USE TSQL2012;

SELECT O1.custid, O1.orderid, O1.orderdate, O1.empid
FROM Sales.Orders AS O1
INNER JOIN
	(SELECT MAX(O2.orderdate) AS orderdate, O2.custid AS custid
	FROM Sales.Orders AS O2
	GROUP BY O2.custid) AS O3
ON O1.orderdate = O3.orderdate AND O1.custid = O3.custid
ORDER BY O1.custid;