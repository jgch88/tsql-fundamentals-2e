USE TSQL2012;

SELECT orderid
FROM Sales.Orders
WHERE empid IN
	(SELECT E.empid
	FROM HR.Employees AS E
	WHERE E.lastname LIKE N'D%');