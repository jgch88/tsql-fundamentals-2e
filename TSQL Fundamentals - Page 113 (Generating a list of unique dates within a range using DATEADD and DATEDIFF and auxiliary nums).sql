USE TSQL2012;

SELECT DATEADD(day, dbo.Nums.n-1, '20060101') AS orderdate,
	O.orderid, O.custid, O.empid
FROM dbo.Nums
LEFT OUTER JOIN Sales.Orders AS O
	ON DATEADD(day, dbo.Nums.n-1, '20060101') = O.orderdate
	
WHERE dbo.Nums.n <= DATEDIFF(day, '20060101', '20081231') + 1
ORDER BY orderdate