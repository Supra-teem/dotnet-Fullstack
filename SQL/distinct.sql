create table test_distinct
(
	name varchar(20),
	age int

)
insert into test_distinct values('Suresh',45),('Suresh',46),('Suresh',47),('Nidhi',46),('Shyamal',46),('Sujoy',45),('Bimal',47)
select * from test_distinct
select count(*) as Total_age from (select distinct age, name from test_distinct) as t