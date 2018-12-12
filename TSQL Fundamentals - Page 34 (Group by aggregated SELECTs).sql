USE TSQL2012

SELECT empid, YEAR(orderdate) AS orderyear, AVG(freight) AS freightavg, COUNT(*) AS numorders
FROM Sales.Orders
WHERE custid = 71
GROUP BY empid, YEAR(orderdate)
HAVING COUNT(freight) > 0
ORDER BY COUNT(*)