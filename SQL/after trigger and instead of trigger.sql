CREATE TABLE Employee_Demo
(
 Emp_ID int identity,
 Emp_Name varchar(55),
 Emp_Sal decimal (10,2)
)

Insert into Employee_Demo values ('Amit',1000);
Insert into Employee_Demo values ('Mohan',1200);
Insert into Employee_Demo values ('Avin',1100);
Insert into Employee_Demo values ('Manoj',1300);
Insert into Employee_Demo values ('Riyaz',1400);
select * from Employee_Demo
--Now create table Employee_Demo_Audit for logging/backup purpose of table Employee_Demo 
create table Employee_Demo_Audit
(
 Emp_ID int,
 Emp_Name varchar(55),
 Emp_Sal decimal(10,2),
 Audit_Action varchar(100),
 Audit_Timestamp datetime
) 

-- Create trigger on table Employee_Demo for Insert statement
alter TRIGGER trgAfterInsert on Employee_Demo
after INSERT
AS 
begin
declare @empid int, @empname varchar(55), @empsal decimal(10,2), @audit_action varchar(100);
select @empid=i.Emp_ID from inserted i;
select @empname=i.Emp_Name from inserted i;
select @empsal=i.Emp_Sal from inserted i;
set @audit_action='Inserted Record -- After Insert Trigger.'; 
insert into Employee_Demo_Audit(Emp_ID,Emp_Name,Emp_Sal,Audit_Action,Audit_Timestamp)
values (@empid,@empname,@empsal,@audit_action,getdate());
PRINT 'AFTER INSERT trigger fired.'
select * from inserted
end

--Now try to insert data in Employee_Demo table
insert into Employee_Demo(Emp_Name,Emp_Sal)values ('Shailu',1000);
insert into Employee_Demo(Emp_Name,Emp_Sal)values ('Kalesh',2000);

--now select data from both the tables to see trigger action
select * from Employee_Demo
select * from Employee_Demo_Audit

-- Create trigger on table Employee_Demo for Update statement
alter TRIGGER trgAfterUpdate ON dbo.Employee_Demo
after UPDATE
AS
declare @empid int, @empname varchar(55), @empsal decimal(10,2), @audit_action varchar(100);
select @empid=i.Emp_ID from inserted i; 
select @empname=i.Emp_Name from inserted i;
select @empsal=i.Emp_Sal from inserted i; if update(Emp_Name)
 set @audit_action='Update Record --- After Update Trigger.';
if update (Emp_Sal)
 set @audit_action='Update Record --- After Update Trigger.';
insert into Employee_Demo_Audit(Emp_ID,Emp_Name,Emp_Sal,Audit_Action,Audit_Timestamp)
values (@empid,@empname,@empsal,@audit_action,getdate());
PRINT 'AFTER UPDATE trigger fired.'

--Now try to upadte data in Employee_Demo table
update Employee_Demo set Emp_Name='Pawan' Where Emp_ID =6;

select * from Employee_Demo
select * from Employee_Demo_Audit