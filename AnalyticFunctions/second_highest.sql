-- AdventureWorks (OLTP) full database backups
-- https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks
-- AdventureWorks2012.bak


SELECT * FROM Sales.SalesOrderDetail;


WITH CTE as (
SELECT DISTINCT ProductID, LineTotal,
DENSE_RANK() OVER (PARTITION BY ProductID ORDER BY LineTotal DESC) as RANK_DETAILS
 FROM Sales.SalesOrderDetail
 )
 SELECT  * FROM CTE
 WHERE RANK_DETAILS = 2
 ORDER BY ProductID
 --WHERE RANK_DETAILS = 2