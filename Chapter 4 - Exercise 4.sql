USE TSQL2012;

SELECT DISTINCT C.country
FROM Sales.Customers AS C
WHERE C.country NOT IN
	(SELECT E.country
	FROM HR.Employees AS E)
ORDER BY C.country