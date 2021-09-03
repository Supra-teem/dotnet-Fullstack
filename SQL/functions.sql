create function stu_join()
returns table as return (select stu.roll,stu.name,stu.age,fees.course,fees.amount_paid from stu left join fees on stu.roll=fees.roll)

select * from stu_join()