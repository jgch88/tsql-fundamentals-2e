USE TSQL2012;

WITH EmployeeCommonTableExpression AS
(
	SELECT empid, mgrid, firstname, lastname
	FROM HR.Employees
	WHERE empid = 9

	UNION ALL

	SELECT Curr.empid, Curr.mgrid, Curr.firstname, Curr.lastname
	FROM EmployeeCommonTableExpression AS Prev
		JOIN HR.Employees AS Curr
			ON Curr.empid = Prev.mgrid
)
SELECT empid, mgrid, firstname, lastname
FROM EmployeeCommonTableExpression