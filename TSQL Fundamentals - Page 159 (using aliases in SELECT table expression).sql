USE TSQL2012;

SELECT YEAR(orderdate) as orderyear, COUNT(DISTINCT custid) AS numcusts
FROM Sales.Orders
GROUP BY YEAR(orderdate);

SELECT D.orderyear, COUNT(DISTINCT D.custid) AS numcusts
FROM
	(SELECT YEAR(orderdate) as orderyear, custid
	FROM Sales.Orders) AS D
GROUP BY D.orderyear;