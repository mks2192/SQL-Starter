-- AdventureWorks (OLTP) full database backups
-- https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks
-- AdventureWorks2012.bak

USE AdventureWorks2012

SELECT FirstName, MiddleName, LastName FROM Person.Person
WHERE FirstName LIKE 'A%'
INTERSECT
SELECT FirstName, MiddleName, LastName FROM Person.Person
WHERE LastName LIKE 'A%'

SELECT FirstName, MiddleName, LastName FROM Person.Person
WHERE FirstName LIKE 'A%'
UNION ALL
SELECT FirstName, MiddleName, LastName FROM Person.Person
WHERE LastName LIKE 'A%'


SELECT FirstName, MiddleName, LastName FROM Person.Person
WHERE FirstName LIKE 'A%'
UNION 
SELECT FirstName, MiddleName, LastName FROM Person.Person
WHERE LastName LIKE 'A%'



SELECT FirstName, LastName FROM Person.Person
WHERE FirstName LIKE 'A%'
INTERSECT
SELECT FirstName, LastName FROM Person.Person
WHERE LastName LIKE 'A%'

SELECT FirstName, LastName FROM Person.Person
WHERE FirstName LIKE 'A%'
UNION ALL
SELECT FirstName, LastName FROM Person.Person
WHERE LastName LIKE 'A%'

SELECT FirstName, LastName FROM Person.Person
WHERE FirstName LIKE 'A%'
UNION 
SELECT FirstName, LastName FROM Person.Person
WHERE LastName LIKE 'A%'

SELECT B.FirstName, B.LastName, Count(*) as COUNT_ FROM
(SELECT FirstName, LastName FROM Person.Person
WHERE FirstName LIKE 'A%'
UNION ALL
SELECT FirstName, LastName FROM Person.Person
WHERE LastName LIKE 'A%' ) B
GROUP BY  B.FirstName, B.LastName
ORDER BY COUNT_ DESC



SELECT DISTINCT FirstName, MiddleName, LastName FROM Person.Person
WHERE MiddleName IS NULL



SELECT FirstName, MiddleName, LastName FROM Person.Person
WHERE MiddleName IS NULL
INTERSECT
SELECT FirstName, MiddleName, LastName FROM Person.Person
WHERE MiddleName IS NULL



SELECT FirstName, LastName FROM Person.Person
WHERE FirstName LIKE 'A%'
EXCEPT 
SELECT FirstName, LastName FROM Person.Person
WHERE LastName LIKE 'A%'
