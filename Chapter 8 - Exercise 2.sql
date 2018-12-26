USE TSQL2012;

/* Delete from the dbo.Orders table orders that were placed before August 2006. Use the OUTPUT
clause to return the orderid and orderdate of the deleted orders. */

DELETE FROM dbo.Orders
	OUTPUT deleted.orderid,
		deleted.orderdate
WHERE orderdate < '20060801'