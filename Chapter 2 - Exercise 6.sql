USE TSQL2012
/*
SELECT custid, orderdate, orderid, ROW_NUMBER() OVER(ORDER BY custid) AS rownum
*/
SELECT custid, orderdate, orderid,
	ROW_NUMBER() OVER(PARTITION BY custid ORDER BY orderdate, orderid) AS rownum
FROM Sales.Orders
ORDER BY custid; /* See customer 47 for sorting via orderdate then orderid */