USE TSQL2012;

/* Production.Products */

IF OBJECT_ID('Production.TopProducts') IS NOT NULL
	DROP FUNCTION Production.TopProducts;

GO
CREATE FUNCTION Production.TopProducts
	(@supid AS INT, @n AS INT)
	RETURNS TABLE
AS
RETURN
	SELECT TOP(@n) productid, productname, unitprice
	FROM Production.Products
	WHERE supplierid = @supid
	ORDER BY unitprice DESC;
GO

SELECT * FROM Production.TopProducts(5, 2);