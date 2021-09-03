USE [Mindteck]
GO
/****** Object:  StoredProcedure [dbo].[pro_emp]    Script Date: 03-09-2021 16:40:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[pro_emp]
@name varchar(20),
@sal int
as
select @sal=salary+(salary*0.1)+(salary*0.05)+(salary*0.05) from Emp where name=@name
if @sal>=50000
begin
print 'Great Your salary is above 50k';
end
else
print 'Sorry your salary is not greater than 50k'

select *,(salary*10/100) as TA, (salary*5/100) as DA, (salary*5/100) as HRA, salary+(salary*0.1)+(salary*0.05)+(salary*0.05) as Gross, (salary+(salary*0.1)+(salary*0.05)+(salary*0.05))*12 as Annual from Emp where name=@name
