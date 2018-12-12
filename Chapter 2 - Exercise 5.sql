USE TSQL2012

/* AVG(freight) */
SELECT shipcountry, AVG(freight) AS avgfreight
FROM Sales.Orders
/* this grouping makes it slow, where possible try not to use functions on columns
GROUP BY shipcountry, YEAR(orderdate)
HAVING YEAR(orderdate) = 2007  /* slow on the indexing!! */
*/
WHERE orderdate >= '20070101' AND orderdate < '20080101'
GROUP BY shipcountry
ORDER BY avgfreight DESC
OFFSET 0 ROWS FETCH NEXT 3 ROWS ONLY;