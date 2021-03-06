USE TSQLV4;
/* dbo.Employees and dbo.employees are the same! 
NOT CASE SENSITIVE, BECAREFUL WHEN MIGRATING DATA */

IF OBJECT_ID('dbo.Employees', 'U') IS NOT NULL
	DROP TABLE dbo.Employees;

CREATE TABLE dbo.Employees
(
	empid	INT	NOT NULL,
	firstname	VARCHAR(30)	NOT NULL,
	lastname	VARCHAR(30) NOT NULL,
	hiredate DATE	NOT NULL,
	mgrid	INT NULL,
	ssn	VARCHAR(20) NOT NULL,
	salary MONEY NOT NULL,
);