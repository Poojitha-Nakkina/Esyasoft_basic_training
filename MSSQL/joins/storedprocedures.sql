/* STORED PROCEDURES */

/* CREATE PROCEDURE getEmployeedetails()
BEGIN  
      SELECT * FROM Employees;
END   */

/* DROP PROCEDURE IF EXISTS getEmployees */

/* Transactions in sql -> ROLLBACK,SAVEPOINT ,COMMIT */
   
use Pooj

create procedure retrive_data 
@emp_id INT
as 
begin
select * from Employees where emp_id = @emp_id
end

exec retrive_data @emp_id =105

drop procedure if exists retrive_data


create procedure checkEmployeSalary
@emp_id INT
AS
BEGIN try
      DECLARE @salary INT;
	  select @salary = salary 
	  from Employees 
	  where emp_id=@emp_id
	  IF @salary>=500000
	   print 'High range salary'
	  else if @salary>=300000 
	   print 'Medium range salary'
	  else 
	   print 'Low salary'

	  
end try

begin catch 
 print 'error' 
end catch
  

drop procedure if exists checkEmployeSalary

select * from Employees

-- triggers

-- automatically executes in response to specific events on a table like insertion, updation  

