USE TSQL2012;

SELECT n
FROM dbo.Nums
WHERE n BETWEEN (SELECT MIN(O.orderid) FROM dbo.Orders AS O)
	AND (SELECT MAX(O.orderid) FROM dbo.ORDERS AS O)
	AND n NOT IN (SELECT O.orderid FROM dbo.Orders AS O);