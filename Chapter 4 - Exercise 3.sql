USE TSQL2012;

SELECT E1.empid, E1.firstname, E1.lastname
FROM HR.Employees as E1
WHERE E1.empid NOT IN (

	SELECT E.empid
	FROM HR.Employees AS E
		INNER JOIN Sales.Orders AS O
		ON E.empid = O.empid	
	WHERE orderdate >= '20080501');