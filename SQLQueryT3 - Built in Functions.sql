-- AdventureWorks (OLTP) full database backups
-- https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks
-- AdventureWorks2012.bak

USE AdventureWorks2012

-- Count, Min, Max, Sum, Avg

	SELECT count(*) FROM Production.Product
	WHERE NAME LIKE 'A%'

	SELECT Min(ListPrice) FROM Production.Product
	WHERE ListPrice >0

	SELECT Max(ListPrice) FROM Production.Product

	SELECT Sum(ListPrice) FROM Production.Product

	SELECT Avg(ListPrice) FROM Production.Product


-- Group By

	SELECT count(*) CountOfRecords, SafetyStockLevel
	FROM Production.Product
	Where (ProductNumber  Like 'B%' or ProductNumber  Like 'C%' )
	and  SafetyStockLevel > 100
	GROUP BY 
	SafetyStockLevel

	
	SELECT Min(ListPrice) MinlistPrice, SafetyStockLevel
	FROM Production.Product
	Where --SafetyStockLevel > 100 and  
	ListPrice > 0
	GROUP BY 
	SafetyStockLevel