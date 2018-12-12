USE TSQL2012

SELECT empid, firstname, lastname, titleofcourtesy,
	CASE titleofcourtesy
		WHEN 'Ms.' THEN 'Female'
		WHEN 'Mrs.' THEN 'Female'
		WHEN 'Mr.' THEN 'Male'
		ELSE 'Unknown'
	END as gender 
FROM HR.Employees