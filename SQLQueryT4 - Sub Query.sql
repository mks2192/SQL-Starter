-- AdventureWorks (OLTP) full database backups
-- https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks
-- AdventureWorks2012.bak

USE AdventureWorks2012

	SELECT DISTINCT SafetyStockLevel, ListPrice FROM Production.Product
	WHERE ListPrice in (
						SELECT Min(ListPrice) MinlistPrice
						FROM Production.Product
						Where --SafetyStockLevel > 100 and  
						ListPrice > 0
						GROUP BY 
						SafetyStockLevel)