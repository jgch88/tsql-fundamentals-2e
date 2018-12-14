USE TSQL2012;

/* need to get max(count(orderid)) from each customer
to know which customers placed the highest number of orders */

/*
SELECT custid, orderid, orderdate, empid
FROM Sales.Orders
*/

SELECT O1.custid, O1.orderid, O1.orderdate, O1.empid
FROM Sales.Orders AS O1
WHERE O1.custid IN (
/* can't select two or more attributes when using IN, need to just pick ONE attribute
SELECT TOP(1) O2.custid, COUNT(O2.orderid) as orderCount
*/
/* need the WITH TIES clause 
SELECT TOP(1) O2.custid
*/
SELECT TOP(1) WITH TIES O2.custid
FROM Sales.Orders AS O2
GROUP BY O2.custid
ORDER BY COUNT(O2.orderid) DESC)



/*
SELECT *
FROM Sales.Orders
ORDER BY custid 
*/