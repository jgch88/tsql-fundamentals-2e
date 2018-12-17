USE TSQL2012;

SELECT custid, empid
FROM Sales.Orders
WHERE MONTH(orderdate) = 1 AND YEAR(orderdate) = 2008

EXCEPT

SELECT custid, empid
FROM Sales.Orders
WHERE MONTH(orderdate) = 2 AND YEAR(orderdate) = 2008