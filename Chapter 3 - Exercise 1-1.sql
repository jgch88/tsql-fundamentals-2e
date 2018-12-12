USE TSQL2012;

SELECT E.empid, E.firstname, E.lastname, N.n 
FROM HR.Employees AS E
	CROSS JOIN dbo.Nums AS N
WHERE n <= 5;
