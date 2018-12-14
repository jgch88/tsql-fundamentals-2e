USE TSQL2012;

WITH YearlyOrderCount AS (
	SELECT YEAR(orderdate) AS orderyear,
	COUNT(DISTINCT custid) AS numcusts
	FROM Sales.Orders
	GROUP BY YEAR(orderdate)
)
SELECT Cur.orderyear, 
/* must have unique col names */
Cur.numcusts AS curnumcusts, Prv.numcusts AS prvnumcusts,
Cur.numcusts - Prv.numcusts AS growth

/* can't seem to do a left outer join using the same CTE: unless you 
alias the same CTE with different aliases */
FROM YearlyOrderCount AS Cur
LEFT OUTER JOIN YearlyOrderCount AS Prv
ON Cur.orderyear = Prv.orderyear + 1 