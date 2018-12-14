USE TSQL2012;

WITH EmpsCTE AS
(
	SELECT empid, mgrid, firstname, lastname
	FROM HR.Employees
	WHERE empid = 2

	UNION ALL
	
	SELECT C.empid, C.mgrid
	FROM EmpsCTE AS P
		JOIN HR.Employees AS C
		ON C.mgrid = P.empid
)
SELECT empid, mgrid, firstname, lastname
FROM EmpsCTE;