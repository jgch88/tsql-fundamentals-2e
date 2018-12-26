USE TSQL2012;

INSERT INTO dbo.Customers(custid, companyname, country, region, city)
SELECT custid, companyname, country, region, city
FROM 
(SELECT DISTINCT C.custid, C.companyname, C.country, C.region, C.city
FROM Sales.Customers AS C
INNER JOIN Sales.Orders AS O
ON O.custid = C.custid) AS OC;
