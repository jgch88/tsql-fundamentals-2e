USE TSQL2012;

SELECT orderid, custid, val,
	CAST(100 * val / (SELECT SUM(O2.val) FROM Sales.OrderValues AS O2 WHERE O2.custid = O1.custid)
		AS NUMERIC(5,2)) AS pct
FROM Sales.OrderValues AS O1
ORDER BY custid;