-- AdventureWorks (OLTP) full database backups
-- https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks
-- AdventureWorks2012.bak

USE AdventureWorks2012

-- Inner Join
		SELECT P.Name, P.Color, P.Weight, TH.Quantity, P.ListPrice - TH.ActualCost as Profit
		FROM Production.Product P
		INNER JOIN  -- same as JOIN
		Production.TransactionHistory TH
		ON 
		P.ProductID = TH.ProductID

-- Information Schema All Tables

		SELECT * FROM INFORMATION_SCHEMA.TABLES

-- Multiple Tables Joining

		SELECT * FROM HumanResources.Employee E
		INNER JOIN 
		HumanResources.EmployeeDepartmentHistory EDH
		ON
		E.BusinessEntityID = EDH.BusinessEntityID
		INNER JOIN
		HumanResources.Department D
		ON EDH.DepartmentID = D.DepartmentID