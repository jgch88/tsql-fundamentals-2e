USE TSQL2012;

SELECT custid, companyname
FROM Sales.Customers
WHERE custid NOT IN
	(SELECT O.custid
	FROM Sales.Orders AS O);

/* IN or NOT IN a set with NULL returns unknown... */