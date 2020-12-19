-- Create database and templates for demo
DROP DATABASE IF EXISTS WindowFunctions;
CREATE DATABASE WindowFunctions;

-- Create table Payroll
DROP TABLE IF EXISTS Payroll ;
CREATE TABLE Payroll (
	emp_no		INTEGER,
	emp_name 	VARCHAR(20) NOT NULL,
	dept_name 	VARCHAR(15) NOT NULL,
	salary_amt 	DECIMAL (8,2) NOT NULL CHECK (salary_amt > 0.00)
);


-- Populate table Payroll
INSERT INTO Payroll (emp_no, emp_name, dept_name, salary_amt ) VALUES
	(1, 'Mark Stone', 'Accounting', 16000.00),
	(2, 'Maria Stone', 'Accounting', 13000.00),
	(3, 'Geetha Singh', 'Accounting', 13000.00),
	(4, 'Richard Hathaway', 'Accounting', 14000.00),
	(5, 'Joseph Bastion', 'Accounting', 14000.00),

	(6, 'Arthur Prince', 'Production',12000.00),
	(7, 'Adele Morse', 'Production', 13000.00),
	(8, 'Sheamus O Kelly', 'Production', 24000.00),
	(9, 'Sheilah Flask', 'Production', 24000.00),
	(10, 'Brian James', 'Production', 16000.00),
	(11, 'Adam Scott', 'Production', 16000.00),

	(12, 'Maurice Moss', 'IT',12000.00),
	(13, 'Roy', 'IT', 12001.00),
	(14, 'Jen Barber', 'IT', 28000.00),
	(15, 'Richard Hammond', 'IT', 10000.00),
	(16, 'James May', 'IT', 10000.00),
	(18, 'Jeremy Clarkson', 'IT', 10000.00),
	(17, 'John Doe', 'IT', 100000.00) 	--Note how emp_no was switched around here...
;


SELECT * FROM Payroll;