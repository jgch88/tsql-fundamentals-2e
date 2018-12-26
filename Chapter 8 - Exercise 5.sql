USE TSQL2012;

/* Update all orders in the dbo.Orders table that were placed by United Kingdom customers and set
their shipcountry, shipregion, and shipcity values to the country, region, and city values of the corresponding
customers. */

UPDATE O
SET shipcountry = C.country,
shipregion = C.region,
shipcity = C.city

OUTPUT 
inserted.shipcountry AS iCountry, 
deleted.shipcountry AS dCountry,
inserted.shipregion AS iRegion, 
deleted.shipregion AS dRegion,
inserted.shipcity AS iCity, 
deleted.shipcity AS dCity 

FROM (dbo.Orders AS O
INNER JOIN Sales.Customers AS C
ON O.custid = C.custid)
WHERE C.country = N'UK';