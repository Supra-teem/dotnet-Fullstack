create table person
(	id int not null,
	fname varchar(20) not null,
	lname varchar(20) not null,
	age int
)

select * from person

alter table person alter column age int not null
-- using constraints:

insert into person values(180,'Suprateem','Bose',22)
alter table person add constraint un unique(id)
insert into person values(181,'Sujaan','Das',21)
alter table person drop constraint un
alter table person add constraint pk primary key(id)

--foreign key

create table product_order
(
	o_id int primary key not null,o_number int not null,
	id int foreign key references person(id)

)
select * from product_order
insert into product_order values(1001,500,180)
insert into product_order values(1005,501,180)

-- check constraint 
create table employee1
(
	e_id int not null,e_name varchar(20), address varchar(30), age int , constraint ch check(age>=21)

)
select * from employee1
insert into employee1 values(101,'Suprateem','howrah',22)
insert into employee1 values(102,'Super','howrah',25)

alter table employee1 add city varchar(20)
alter table employee1 drop constraint ch
alter table employee1 add constraint ch1 check(age>=21 and city='India')
update employee1 set city='India' where e_id=101
update employee1 set city='India' where e_id=102
alter table product_order add o_date2 datetime not null default GETDATE()
insert into product_order values(1006,504,180,' ',' ',' ')


--Using own default values using DEFAULT
create table person1
(	id int not null,
	fname varchar(20) not null,
	lname varchar(20) not null,
	age int,
	city varchar(50) default 'Kolkata'
)
select * from person1
insert into person1(id,fname,lname,age) values(101,'Nidhi','Das',23)