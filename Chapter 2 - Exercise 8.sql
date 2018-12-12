USE TSQL2012

SELECT custid, region
FROM Sales.Customers
/* ORDER BY ISNULL(region, 'ZZZ') */
/* this is a hack, that ZZZ is the last 'region'*/
ORDER BY
	CASE 
		WHEN region IS NULL THEN 1
		ElSE 0
	END,
	region;

/* this method makes all non nulls have 0, and nulls have 1
which orders FIRST, followed by the tiebreaker of actual region */