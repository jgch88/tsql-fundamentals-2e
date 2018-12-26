USE TSQL2012;


/* Use a SELECT INTO statement to create and populate the dbo.Orders table with orders from the
Sales.Orders table that were placed in the years 2006 through 2008. Note that this exercise can only
be
practiced in an on-premises SQL Server, because SQL Database doesn’t support the SELECT INTO
statement. In SQL Database, use a CREATE TABLE and INSERT SELECT statements instead.
*/
IF OBJECT_ID('dbo.Orders', 'U') IS NOT NULL DROP TABLE dbo.Orders;
SELECT *
INTO dbo.Orders
FROM Sales.Orders AS O
WHERE YEAR(O.orderdate) <= 2008 AND YEAR(O.orderdate) >= 2006;

SELECT * FROM dbo.Orders;