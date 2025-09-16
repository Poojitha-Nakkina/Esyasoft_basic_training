use Pooj
select *from books
--triggers
create trigger trg_after
on books
instead of delete
as begin
   print 'A new book has been deleted'
end ;

delete from books where product_id=105

create trigger trg_afterinserting
on books
instead of insert
as begin
   print 'A new book has been added'
end ;

insert into books values (106,'atomic habits',3000)

drop trigger trg

create trigger trg
on books
after insert
as begin
   print 'A new book has been added'
end ;

insert into books values (107,'atomic habits',3005)

drop trigger trg_afterinserting_books
-- after insert it is performing not restricting any operation 
create trigger trig
on books
after insert
as begin
   insert into books values (106,'atomic habits',3000);
   select * from books
end ;


CREATE TABLE SalaryAudit
(
    AuditID INT IDENTITY(1,1) PRIMARY KEY,
    emp_id INT,
    OldSalary INT,
    NewSalary INT,
    ChangeDate DATETIME DEFAULT GETDATE()
);

 
CREATE TRIGGER trg_AuditSalaryChange
ON Employee
AFTER UPDATE
AS
BEGIN
    IF UPDATE(Salary) -- Run only if Salary column is updated
    BEGIN
        INSERT INTO SalaryAudit (emp_id, OldSalary, NewSalary)
        SELECT 
            d.emp_id,
            d.Salary AS OldSalary,
            i.Salary AS NewSalary
        FROM deleted d
        INNER JOIN inserted i ON d.emp_id = i.emp_id;
    END
END;
 


 --Views

 create view req_view
 as 
 select emp_id,first_name ,last_name from Employees

 select *  from req_view