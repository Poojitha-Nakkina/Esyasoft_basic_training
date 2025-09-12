/* UNION -> combines the results of two or more select queries into a single result set, removes duplicates*/
use Pooj

select emp_id,first_name from Employees  union all select emp_id,first_name from Employees 

/* Upper and Lower*/
select GETDATE()/* date and time*/

select UPPER('hello world') as Uppertext; /* converts into capital letters */
select UPPER(first_name) from Employees /*converts the firstnames in the table to upper case letters */

select LOWER(first_name) from Employees

select LEN(first_name) from Employees /* length of each word*/
select LEN('shivam      ') as hello  /* doesn't count any spaces after the word*/ /* gives length as 6*/
select LEN('       shivam      ') as hello /*count spaces before the word*/ /* length as 13*/
 


/* substring  -> 3 string position(included) , 4 no of characters to return */
select SUBSTRING('shivamsubham',3,4) as shivam  /* output-> ivam*/

select SUBSTRING(first_name,2,3) from Employees

select REVERSE(first_name) from Employees

select REVERSE(SUBSTRING(first_name , 2, LEN(first_name))) from Employees

/* REPLACE*/

select REPLACE('Shivam likes tea','tea','coffee') as coffee

select REPLACE(first_name,'puneet','poojitha') from Employees

select REPLACE(first_name,'poojitha','puneet') from Employees

/*Concat */

select CONCAT('shivam dont','_','like EV') as hell

select CONCAT (first_name,' ',last_name,' ',salary) from Employees

/* cast*/ 
select CAST ('5000' as int ) as salaryInt;
select CAST(emp_id AS float) from Employees

/* Convert*/
select GETDATE() as todaysdate

select CONVERT(varchar(10), getdate(),103) as Date_DDMMYYYY



/* ASSIGNMENT*/

//Basic Task

CREATE TABLE Students2024 (ID INT, Name VARCHAR(50));
CREATE TABLE Students2025 (ID INT, Name VARCHAR(50));

INSERT INTO Students2024 VALUES
(1,'Ravi'),(2,'Asha'),(3,'John'),(4,'Meera'),(5,'Kiran'),
(6,'Divya'),(7,'Lokesh'),(8,'Anita'),(9,'Rahul'),(10,'Sneha');

INSERT INTO Students2025 VALUES
(2,'Asha'),(4,'Meera'),(5,'Kiran'),(11,'Prakash'),(12,'Vidya'),
(13,'Neha'),(14,'Manoj'),(15,'Ramesh'),(16,'Lata'),(17,'Akash');






CREATE TABLE Employees (EmpID INT, Name VARCHAR(50), Department VARCHAR(20));

INSERT INTO Employees VALUES 
(1,'Ananya','HR'),(2,'Ravi','IT'),(3,'Meera','Finance'),
(4,'John','IT'),(5,'Divya','Marketing'),(6,'Sneha','Finance'),
(7,'Lokesh','HR'),(8,'Asha','IT'),(9,'Kiran','Finance'),(10,'Rahul','Sales');





CREATE TABLE Projects (ProjectID INT, Name VARCHAR(50), StartDate DATE, EndDate DATE);
INSERT INTO Projects VALUES 
(1,'Bank App','2025-01-01','2025-03-15'),
(2,'E-Commerce','2025-02-10','2025-05-20');





CREATE TABLE Contacts (ID INT, Name VARCHAR(50), Email VARCHAR(50), Phone VARCHAR(20));
INSERT INTO Contacts VALUES
(1,'Ravi','ravi@gmail.com',NULL),
(2,'Asha',NULL,'9876543210'),
(3,'John',NULL,NULL);



use pooji
/* Task-1 */
select * from Students2024 union select * from Students2025

select * from Students2024 union all select * from Students2025

/*Task-2*/
/* 1 */
select UPPER(Name)AS NAME from Employees
select LOWER(Name) AS name from Employees

/*2*/
select LEN(Name) as length from Employees

/*3*/
select SUBSTRING(Name,1,3) from Employees

/*4*/
select REPLACE(Department,'Finance','Accounts') from Employees

/* 5 */ 
SELECT CONCAT(Name,'-',Department) as NameDept from Employees

/*TASK-3*/

/*1*/
select GETDATE() as todaysdate
/*2*/
select DATEDIFF(day,EndDate , StartDate) from Projects
select DATEDIFF(month,EndDate , StartDate) from Projects
select DATEDIFF(year,EndDate , StartDate) from Projects

/*3 */ 
select DATEADD(day,10, EndDate) from Projects

/*4*/
select DATEDIFF(month,GETDATE(),EndDate) from Projects
select DATEDIFF(day,GETDATE(),EndDate) from Projects
select DATEDIFF(year,GETDATE(),EndDate) from Projects

/* task-4*/
/*1 */
select CONVERT(varchar(10), getdate(), 103) as ddmmyyyy
/*2*/
select CAST(123.456 as int) as inttype

/*3 */
select Name , case when Department= 'IT' THEN 'Tech team' 
                    when Department = 'HR' THEN 'Human Resources'
					else 'other' end as Category 
					from Employees
