USE TSQL2012;

SELECT empid, DATEADD(day, dbo.Nums.n - 1, '20090612') AS dt
FROM HR.Employees AS E
	CROSS JOIN dbo.Nums
WHERE dbo.Nums.n - 1 <= DATEDIFF(day, '20090612', '20090616')
ORDER BY empid