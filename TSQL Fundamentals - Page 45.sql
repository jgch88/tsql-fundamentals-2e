USE TSQL2012

SELECT TOP (1) PERCENT WITH TIES orderid, orderdate, custid, empid
FROM Sales.Orders
ORDER BY orderdate DESC;