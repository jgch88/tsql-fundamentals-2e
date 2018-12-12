USE TSQL2012;

SELECT C.custid, C.companyname, 
	/*
	CASE O.orderdate
		WHEN COALESCE(O.orderdate, NULL) THEN 'Yes'
	*/
	CASE
		WHEN O.orderdate IS NOT NULL THEN 'YES'
		ELSE 'No'
	END AS 'HasOrderOn20070212'
FROM Sales.Customers AS C
	LEFT OUTER JOIN Sales.Orders AS O
		ON C.custid = O.custid AND O.orderdate = '20070212'
ORDER BY C.custid