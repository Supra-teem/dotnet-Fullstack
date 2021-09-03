select * from student

create procedure pro_stu1

as
--set nocount on
select * from student
select * from Emp
go

exec pro_stu1


-- Applying Procedure on Case study
select * from Emp

create procedure pro_emp
@name varchar(20)
as

select *,(salary*10/100) as TA, (salary*5/100) as DA, (salary*5/100) as HRA, salary+(salary*0.1)+(salary*0.05)+(salary*0.05) as Gross, (salary+(salary*0.1)+(salary*0.05)+(salary*0.05))*12 as Annual from Emp where name=@name
go

exec pro_emp @name='Shyamal', @sal=0
