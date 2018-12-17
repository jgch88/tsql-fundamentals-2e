USE TSQL2012;

WITH OrderIndexes AS
(
	SELECT orderid, orderdate, custid, empid,
		ROW_NUMBER() OVER(ORDER BY orderid, orderdate) AS rownum
	FROM Sales.Orders
)
SELECT OI.orderid, OI.orderdate, OI.custid, OI.empid, OI.rownum
FROM OrderIndexes AS OI
WHERE OI.rownum >= 11 AND OI.rownum <= 20
ORDER BY OI.rownum