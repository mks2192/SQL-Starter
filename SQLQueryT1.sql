-- AdventureWorks (OLTP) full database backups
-- AdventureWorks2012.bak
-- https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks

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
		--