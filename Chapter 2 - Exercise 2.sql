USE TSQL2012

SELECT orderid, orderdate, custid, empid
FROM Sales.Orders
WHERE DATEADD(month,
DATEDIFF(month, '20010131', orderdate), '20010131') = orderdate