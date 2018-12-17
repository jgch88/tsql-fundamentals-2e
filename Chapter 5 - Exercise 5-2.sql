USE TSQL2012;

/*  supplierid, productid, productname, unitprice  */

SELECT PS.supplierid, PS.companyname, TPS.productid, TPS.productname, TPS.unitprice
FROM Production.Suppliers AS PS
CROSS APPLY 
	(SELECT *
	FROM Production.TopProducts(PS.supplierid, 2)) AS TPS