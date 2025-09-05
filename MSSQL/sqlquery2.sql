use Pooj

create table university (
      s_id INT PRIMARY KEY identity(1,1),
	  s_name varchar(100),
	  dept varchar(100),
	  fees float
)

drop table university

INSERT INTO university
VALUES ('Anitha','ECE',45000.0,'anitha@gmail.com')


ALTER table university add email varchar(50) UNIQUE




select * from university

create table students (
    id int primary key,
	sname varchar(100),
	class varchar(10),
	foreign key(id) references university(s_id)

	)

insert into students
values (4,'Priyanka', 'ECE')

select * from students

delete from university where s_id=4


create table emp(
    emp_id int primary key identity(1,1),
	emp_name varchar(100),
	dept varchar(10),
	salary float
)

insert into emp
values('Nabivullah','IT',100000),
('Sowmyadeep','IOT',100000),
('Manjit', 'AI',150000),
('Sahil','Marketing',150000),
('Poojitha','SDE',125000)


alter table emp add phn_num bigint
select * from emp

update emp set phn_num=7654877432 where emp_id=5

alter table emp drop column salary


create table sal(
    sal_id int primary key identity(1,1),
	
	sal float,
	foreign key (sal_id) references emp(emp_id)
)

insert into sal 
values(10000),(10000),(150000),(125000),(150000)

select * from sal