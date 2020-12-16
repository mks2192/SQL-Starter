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
