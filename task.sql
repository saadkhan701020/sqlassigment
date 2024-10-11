# sqlassigment
show databases;
create database EmployeeManagement;
use  EmployeeManagement;
create table  Employee (
EmployeeID int primary key,
FirstName varchar(100) not null,
LastName  varchar(100) not null,
DOB int,
HireDate Date,
DepartmentID   Integer,
Salary Decimal
);
create table department (
	departmentID int,
    departmentName varchar(100)
);

INSERT INTO Department (DepartmentID, DepartmentName) VALUES
(1, 'Human Resources'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Marketing'),
(5, 'Sales');

INSERT INTO Employee (EmployeeID, FirstName, LastName, DOB, HireDate, DepartmentID, Salary) VALUES
(101, 'John', 'Doe', '1985-05-15', '2020-01-10', 1, 60000.00),
(201, 'Jane', 'Smith', '1990-08-20', '2019-03-15', 2, 75000.00),
(301, 'Mike', 'Johnson', '1982-11-30', '2021-06-01', 3, 80000.00),
(401, 'Emily', 'Davis', '1995-02-10', '2018-09-25', 4, 55000.00),
(501, 'David', 'Wilson', '1988-04-05', '2022-07-20', 5, 72000.00);
#Retrieve all employees' FirstName, LastName, and Salary
SELECT FirstName, LastName, Salary
FROM Employee;
#Retrieve employees who were hired after January 1, 2020.
select firstName, LastName, HireDate from employee where Hiredate > '2021-01-01';
#Retrieve employees with a salary greater than 50000.	
select FirstName,LastName,Salary from employee where salary >5000;


#part2
#retrieve a list of employees along with their department names using an inner join.
select * from Employee;
select *from Department;

select Employee.FirstName ,  Employee.LastName , Department.DepartmentName
from Department left join Employee on Department.DepartmentID = Employee.DepartmentID

