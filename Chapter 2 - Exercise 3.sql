USE TSQL2012

SELECT empid, firstname, lastname
FROM HR.Employees
WHERE lastname LIKE N'%[Aa]%[Aa]%';