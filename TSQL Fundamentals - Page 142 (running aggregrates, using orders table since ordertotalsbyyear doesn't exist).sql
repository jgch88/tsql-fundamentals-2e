USE TSQL2012;

SELECT YEAR(orderdate) AS year, SUM(freight) AS freightqty,
	(SELECT SUM(O2.freight) 
	FROM Sales.Orders AS O2
	WHERE YEAR(O2.orderdate) <= YEAR(O1.orderdate)) AS runningfreightqty
FROM Sales.Orders AS O1
GROUP BY YEAR(orderdate)
ORDER BY year