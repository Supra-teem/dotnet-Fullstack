create table Emplo
(
	empid int not null primary key,
	books_name nvarchar(50),
	copies int
)
drop table Emplo
create table book_issue
(
	bookid int not null primary key,
	empid int foreign key references Emplo(empid) 
)
alter table book_issue add booktitle varchar(50)

insert into Emplo values(100,'Harry Potter',5),(101,'Sherlock Holmes',6),(102,'Theory of everything',2),(103,'Harry Potter',4)
insert into book_issue values(201,101,'sherlock holmes'),(202,102,'Theory of everything'),(203,103,'harry potter')

alter trigger tr_book
on book_issue
after insert
as
begin
update Emplo set copies=copies+1 from Emplo,inserted where Emplo.empid=inserted.empid;
print 'You have issued a book'
end
insert into book_issue values(201,100,'Life'),(202,101,'space')
select * from Emplo
select * from book_issue
