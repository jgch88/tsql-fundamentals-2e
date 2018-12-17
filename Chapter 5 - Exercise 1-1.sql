USE TSQL2012;

SELECT DISTINCT O.empid, A.maxorderdate
FROM Sales.Orders AS O
OUTER APPLY (
	SELECT DISTINCT empid, orderdate as maxorderdate
	FROM Sales.Orders
	WHERE O.empid = empid
	ORDER BY orderdate DESC
	OFFSET 0 ROWS FETCH FIRST 1 ROW ONLY
	) AS A