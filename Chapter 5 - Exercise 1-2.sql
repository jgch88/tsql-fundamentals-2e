/* Create derived table of max orderdate for each employee */

USE TSQL2012;

IF OBJECT_ID('dbo.maxOrderDateForEachEmployee') IS NOT NULL
	DROP FUNCTION dbo.maxOrderDateForEachEmployee
GO
CREATE FUNCTION dbo.maxOrderDateForEachEmployee
	() RETURNS TABLE
AS
RETURN
	SELECT DISTINCT O.empid, A.maxorderdate
	FROM Sales.Orders AS O
	OUTER APPLY (
		SELECT DISTINCT empid, orderdate as maxorderdate
		FROM Sales.Orders
		WHERE O.empid = empid
		ORDER BY orderdate DESC
		OFFSET 0 ROWS FETCH FIRST 1 ROW ONLY
		) AS A;
GO

SELECT O.empid, O.orderdate, O.orderid, O.custid
FROM Sales.Orders AS O
INNER JOIN dbo.maxOrderDateForEachEmployee() AS A
ON O.orderdate = A.maxorderdate AND O.empid = A.empid
ORDER BY O.empid DESC;