USE TSQL2012;

SELECT orderid, orderdate, empid, custid,
	(SELECT MAX(O2.orderid)
	FROM Sales.Orders AS O2
	WHERE O2.orderid < O1.orderid) AS prevorderid /* this subquery returns a scalar */
FROM Sales.Orders AS O1;