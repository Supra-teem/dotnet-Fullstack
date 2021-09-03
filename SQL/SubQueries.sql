select  * from Emp
select * from Emp where empid in (select empid from Emp where empid between 101 and 103)