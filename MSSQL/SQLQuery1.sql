create database employees

use employees

create table emp(
    emp_id int,
	emp_name varchar(50),
	emp_dept varchar(100),
	salary float
)

insert into emp(emp_id, emp_name, emp_dept, salary)
values (6,'Poojitha','EEE',160000.0)


  
update emp set emp_name = 'shivam' where emp_id=4

delete from emp where emp_name = 'shivam'

alter table emp add phn_no varchar(50)

exec sp_help 'emp'

exec sp_rename 'emp.emp_name' , 'full_name' ,'column'

exec sp_rename 'emp', 'employe'