USE TSQL2012;

SELECT O1.empid, O1.orderyear, O1.qty,
	(SELECT SUM(O2.qty)
	FROM Sales.VEmpOrders AS O2
	WHERE O2.orderyear <= O1.orderyear AND O2.empid = O1.empid) AS runqty
FROM Sales.VEmpOrders AS O1
ORDER BY O1.empid, O1.orderyear;