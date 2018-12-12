ALTER TABLE dbo.employees
	ADD CONSTRAINT UNQ_Employees_ssn
	UNIQUE(ssn);