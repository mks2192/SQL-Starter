-- AdventureWorks (OLTP) full database backups
-- https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks
-- AdventureWorks2012.bak

USE AdventureWorks2012

-- Equal 
		-- Last name Erickson
		SELECT * FROM Person.Person
		WHERE LastName = 'Erickson'

-- And
		-- First Name Mark and Last Name Erickson

		SELECT * FROM Person.Person
		where FirstName ='mark'
		and LastName = 'Erickson'

-- OR
		-- Frist Name = "mark" or First Name = "Gail"

		SELECT * FROM Person.Person 
		WHERE FirstName = 'mark'
		OR FirstName = 'gail'

-- Like
		-- Last Name Begin with "R"

		SELECT * FROM Person.Person Where 
		LastName like 'R%'

		-- Last Name Contain with "GH"

		SELECT * FROM Person.Person Where 
		LastName like '%gh%'

-- Between
		-- BusinessEntityID BETWEEN 20 and 100
		
		SELECT * FROM Person.Person 
		WHERE BusinessEntityID BETWEEN 20 and 100

-- Greater than/ Less Than

		-- BusinessEntityID less than 100

		SELECT * FROM Person.Person
		WHERE BusinessEntityID < 100

		-- BusinessEntityID Greater than 100

		SELECT * FROM Person.Person
		WHERE BusinessEntityID > 100

-- NOT/NULL Values
		
		-- Middle Name is Not Present
		
		SELECT  * FROM Person.Person
		WHERE MiddleName is Null

		-- Middle Name is Present

		SELECT * FROM Person.Person
		WHERE MiddleName is Not NuLL

-- WHERE, GROUP BY, HAVING

-- 1. WHERE clause specifies search conditions for the rows returned by the Query and limits rows to a meaningful set.

-- 2. GROUP BY clause works on the rows returned by the previous step #1. This clause summaries identical rows into a single/distinct group and returns a single row with the summary for each group, by using appropriate Aggregate function in the SELECT list, like COUNT(), SUM(), MIN(), MAX(), AVG(), etc.

-- 3. HAVING clause works as a Filter on top of the Grouped rows returned by the previous step #2. This clause cannot be replaced by a WHERE clause and vice-versa.

-- As these clauses are optional thus a minimal SQL Query looks like this:
--

	SELECT count(*) CountOfRecords, SafetyStockLevel
	FROM Production.Product
	Where (ProductNumber  Like 'B%' or ProductNumber  Like 'C%' )
	and  SafetyStockLevel > 100
	GROUP BY 
	SafetyStockLevel
	HAVING SafetyStockLevel = 500


	SELECT count(*) CountOfRecords, count(ProductNumber) CountOfRecordsPN,  SafetyStockLevel
	FROM Production.Product
	Where (ProductNumber  Like 'B%' or ProductNumber  Like 'C%' )
	and  SafetyStockLevel > 100
	GROUP BY 
	SafetyStockLevel
	HAVING count(ProductNumber) = 3 OR SafetyStockLevel = 500 OR count(*) = 6