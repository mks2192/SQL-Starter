----Create table Employee

Create table tblEmployee
(
     ID int primary key,
     Name nvarchar(50),
     Gender nvarchar(50),
     Salary int,
     DepartmentId int foreign key references tblDepartment(Id)
)

Go

 
Insert into tblEmployee values (1, 'Tom', 'Male', 4000, 1)
Insert into tblEmployee values (2, 'Pam', 'Female', 3000, 3)
Insert into tblEmployee values (3, 'John', 'Male', 3500, 1)
Insert into tblEmployee values (4, 'Sam', 'Male', 4500, 2)
Insert into tblEmployee values (5, 'Todd', 'Male', 2800, 2)
Insert into tblEmployee values (6, 'Ben', 'Male', 7000, 1)
Insert into tblEmployee values (7, 'Sara', 'Female', 4800, 3)
Insert into tblEmployee values (8, 'Valarie', 'Female', 5500, 1)
Insert into tblEmployee values (9, 'James', 'Male', 6500, NULL)
Insert into tblEmployee values (10, 'Russell', 'Male', 8800, NULL)





SELECT  DepartmentId, max(Salary) FROM tblEmployee
GROUP BY DepartmentId


SELECT DepartmentId, max(Salary) FROM tblEmployee
WHERE Salary NOT IN (SELECT  max(Salary) FROM tblEmployee
GROUP BY DepartmentId)
GROUP BY DepartmentId;

WITH CTE as (
SELECT DISTINCT DepartmentId, Salary,
DENSE_RANK() OVER (PARTITION BY DepartmentId ORDER BY Salary desc) as RANK_DETAILS
 FROM tblEmployee
 )
 SELECT  * FROM CTE
 WHERE RANK_DETAILS = 2
 ORDER BY DepartmentId
 --WHERE RANK_DETAILS = 2


