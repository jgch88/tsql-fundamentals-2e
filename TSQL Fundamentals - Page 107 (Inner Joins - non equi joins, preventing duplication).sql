USE TSQL2012;

SELECT E1.empid, E1.firstname, E1.lastname,
	E2.empid, E2.firstname, E2.lastname
FROM HR.Employees AS E1
	INNER JOIN HR.EMPLOYEES AS E2
	/*ON E1.empid <> E2.empid; /* this gives all permutations except 1,1, 2,2 etc but it doesn't 
	rule out 1,2 2,1 from showing, so there's 9*9 - 9 results = 72 */ */
	ON E1.empid < E2.empid; /* this one gives 36 unique pairs, no duplicates. think about the 
	extra rows that need to be eliminated from the cross joins! */
