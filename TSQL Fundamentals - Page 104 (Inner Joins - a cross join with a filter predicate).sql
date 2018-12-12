USE TSQL2012;

SELECT E.empid, E.firstname, E.lastname, O.orderid
FROM HR.Employees AS E
	INNER JOIN Sales.Orders AS O
	ON E.empid = O.empid;