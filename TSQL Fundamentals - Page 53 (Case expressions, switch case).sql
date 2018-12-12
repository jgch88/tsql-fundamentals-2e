USE TSQL2012

SELECT productid, productname, categoryid,
	CASE categoryid
		WHEN 1 THEN 'Beverages'
		WHEN 2 THEN 'Condiments'
		WHEN 3 THEN 'Confections'
		WHEN 4 THEN 'Dairy Products'
		ELSE 'Unknown'
	END AS categoryname
FROM Production.Products;