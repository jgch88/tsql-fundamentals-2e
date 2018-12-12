ALTER TABLE dbo.Orders
	ADD CONSTRAINT DFT_Orders_ordertimestamp
	DEFAULT(SYSDATETIME()) FOR ordertimestamp;