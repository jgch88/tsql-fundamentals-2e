USE TSQL2012

SELECT DISTINCT orderid, custid, val,
	ROW_NUMBER() OVER(PARTITION BY custid
						ORDER BY val DESC, orderid ASC) as rownum
FROM Sales.OrderValues
ORDER BY custid, val;