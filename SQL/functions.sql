--table valued functions
create function stu_join()
returns table as return (select stu.roll,stu.name,stu.age,fees.course,fees.amount_paid from stu left join fees on stu.roll=fees.roll)

select * from stu_join()

--scalar functions
create function my_function
(
	@my_age int,
	@my_marks int

)
returns nvarchar(30)
as
begin return (select @my_age+' '+@my_marks)
end

select * from student
select dbo.my_function(age,marks) as Details from student