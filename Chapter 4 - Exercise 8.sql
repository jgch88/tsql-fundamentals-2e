USE TSQL2012;


SELECT CO1.custid, CO1.ordermonth, CO1.qty,
	(SELECT SUM(CO2.qty)
	FROM Sales.CustOrders AS CO2
	WHERE CO2.ordermonth <= CO1.ordermonth
		AND CO1.custid = CO2.custid
	GROUP BY CO2.custid) AS runqty
FROM Sales.CustOrders AS CO1
ORDER BY custid;