/* sort by country/region/city for each table */

SELECT country, region, city
FROM (
	SELECT country, region, city, tablename, ordering
	FROM 
	(
		SELECT country, region, city, 'Emps' AS tablename, ROW_NUMBER() OVER(ORDER BY country, region, city) AS ordering
		FROM HR.Employees
		ORDER BY country, region, city
		OFFSET 0 ROWS
	) AS T1

	UNION ALL

	SELECT country, region, city, tablename, ordering
	FROM 
	(
		SELECT country, region, city, 'Suppliers' AS tablename, ROW_NUMBER() OVER(ORDER BY country, region, city) AS ordering
		FROM Production.Suppliers
		ORDER BY country, region, city
		OFFSET 0 ROWS
	) AS T2
	ORDER BY tableName, ordering
	OFFSET 0 ROWS
) AS T3