USE TSQL2012;

/* EXCEPT vs EXCEPT_ALL, EXCEPT misses "Seattle" 
because there are two employees in Seattle
and only one customer in Seattle */
SELECT country, region, city FROM HR.Employees
EXCEPT
SELECT country, region, city FROM Sales.Customers;

WITH EXCEPT_ALL
AS
(
	SELECT
		ROW_NUMBER()
			OVER(PARTITION BY country, region, city
				ORDER BY (SELECT 0)) AS rownum,
		country, region, city
		FROM HR.Employees
	EXCEPT
	SELECT
		ROW_NUMBER()
			OVER(PARTITION BY country, region, city
				ORDER BY (SELECT 0)),
		country, region, city
	FROM Sales.Customers
)
SELECT country, region, city
FROM EXCEPT_ALL;