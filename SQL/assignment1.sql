create table Emp
(
	empid int primary key not null,
	name varchar(20),
	dept varchar(10),
	salary int


)

insert into Emp values(100,'Suresh','IT',50000),(101,'Souvik','R&D',51000),(102,'Shyamal','IT',40000),(103,'Vijay','HR',70000),(104,'Nidhi','Admin',65000)

alter table Emp drop column Ta
alter table Emp drop column Da

create table Dept
(
	dept_id int primary key not null,
	dept_name varchar(20),
	NoofEmo int,
	empid int foreign key references Emp(empid)
)
insert into Dept values(5000,'IT',10,100),(6000,'R&D',15,101),(7000,'HR',20,103),(8000,'Admin',30,104)
select * from Emp
select * from Dept
select sum(salary) as TotalSalary from Emp
select name,(salary*12) as Annual_Income from Emp
select *,(salary*10/100) as TA, (salary*5/100) as DA, (salary*5/100) as HRA, salary+(salary*0.1)+(salary*0.05)+(salary*0.05) as Gross, (salary+(salary*0.1)+(salary*0.05)+(salary*0.05))*12 as Annual from Emp