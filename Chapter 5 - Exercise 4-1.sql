USE TSQL2012;

IF OBJECT_ID('Sales.VEmpOrders') IS NOT NULL
	DROP VIEW Sales.VEmpOrders
GO
CREATE VIEW Sales.VEmpOrders
AS

SELECT empid, YEAR(O.orderdate) AS orderyear, SUM(OD.qty) AS qty
FROM Sales.Orders AS O
INNER JOIN Sales.OrderDetails AS OD
ON O.orderid = OD.orderid
GROUP BY O.empid, YEAR(O.orderdate)
GO

SELECT * FROM Sales.VEmpOrders ORDER BY empid, orderyear;