create table stu
(
	roll int not null primary key,
	name varchar(20),
	age int
)

insert into stu values(10,'Sumit',22),(11,'Milind',21),(12,'Suprateem',23),(13,'Ram',21),(14,'Kajal',23),(15,'Samay',22),(16,'Sujan',24)

create table fees
(
	roll int not null primary key,
	course varchar(20),
	amount_paid int
)
alter table fees add constraint fk foreign key(roll) references stu(roll)
insert into fees values(10,'CSE',45000),(11,'ECE',41000),(12,'CSE',43000),(15,'IT',46000)
select * from stu
select * from fees

select stu.roll,stu.name,stu.age,fees.course,fees.amount_paid from stu inner join fees on stu.roll=fees.roll
select stu.roll,stu.name,stu.age,fees.course,fees.amount_paid from stu left join fees on stu.roll=fees.roll
select stu.roll,stu.name,stu.age,fees.course,fees.amount_paid from stu full join fees on stu.roll=fees.roll
select stu.roll,stu.name,stu.age,fees.course,fees.amount_paid from stu right join fees on stu.roll=fees.roll