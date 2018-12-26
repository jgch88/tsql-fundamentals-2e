USE TSQL2012;

/* Update the dbo.Customers table and change all NULL region values to <None>. Use the OUTPUT
clause to show the custid, oldregion, and newregion. */

UPDATE dbo.Customers
	SET region = N'<None>'
OUTPUT
	inserted.custid,
	deleted.region AS oldregion,
	inserted.region AS newregion
WHERE region IS NULL;