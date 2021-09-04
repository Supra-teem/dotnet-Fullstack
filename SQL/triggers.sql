select * from Emp
delete from Emp where name='Bidhan'
insert into Emp values(106,'Biplab','HR',60000)

create trigger tr_emp
on Emp
after insert
as begin
print 'You can not perform insert operation';
rollback transaction
end
drop trigger tr_emp

alter trigger tr_emp1
on Emp
after insert,update,delete
as 
begin
--this trigger is to restrict all DML before 1PM
if DATEPART(HH,GETDATE()) < 13  --DATEPART(mm,GETDATE())=9 --if datepart(DW,getdate())=7 means week wise sat is restricted
begin
print 'Come after 1pm Please!'
end
rollback transaction
end

update Emp set salary=52000 where empid=101