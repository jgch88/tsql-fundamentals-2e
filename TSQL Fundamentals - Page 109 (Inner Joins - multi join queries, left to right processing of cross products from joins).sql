USE TSQL2012;

SELECT C.custid, C.companyname, O.orderid, OD.productid

FROM Sales.Customers AS C
	INNER JOIN Sales.Orders AS O
	ON C.custid = O.custid

	INNER JOIN Sales.OrderDetails AS OD
	ON O.orderid = OD.orderid

	/* Cross joining everything wouldn't fetch in time - it's O(m*n*o) ... like O(n^3)!! */

ORDER BY C.custid, O.orderdate;