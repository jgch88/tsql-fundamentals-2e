USE TSQL2012;

SELECT C.custid, C.companyname, O.orderid, O.custid
FROM Sales.Customers AS C
LEFT OUTER JOIN Sales.Orders AS O
ON C.custid = O.custid
WHERE O.orderid IS NULL; /* USE orderid instead of custid BECAUSE IT IS A PRIMARY KEY,
you can also use custid if custid has a NOT NULL constraint, either way
you want to be sure that the NOT NULL is cause of the outer join and NOT the attribute
actually being NULL */

/* can screw it up (the LEFT OUTER JOIN) by doing 
WHERE C.custid = O.custid
*/
/* query returns customers who placed orders, and also customers that did NOT
place any orders */

/*
SELECT * FROM Sales.Customers; /* has 91 rows of customer ids */
*/