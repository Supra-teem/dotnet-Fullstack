create table order_detail
(
	o_id int identity,
	o_name varchar(50)
)

insert into order_detail values ('Almond'),('Peanut'),('Grape'),('Orange')

create table order_bklog
(
	o_id int,
	o_name varchar(50),
	o_backlog varchar(100)
)

alter trigger tr_afterUpdate on order_detail
after insert,update
as
begin
declare @oid int, @oname varchar(50),@obacklog varchar(100)
select @oid=i.o_id from inserted i 
select @oname=i.o_name from inserted i
if update(o_name)
begin
set @obacklog='Update Record'
end
else
begin
set @obacklog='Inserted Record'
end
insert into order_bklog values (@oid,@oname,@obacklog)
select * from inserted
end
create trigger tr_afterInsert on order_detail
after insert
as
begin
declare @oid int, @oname varchar(50),@obacklog varchar(100)
select @oid=i.o_id from inserted i 
select @oname=i.o_name from inserted i
set @obacklog='Inserted Record'
insert into order_bklog values (@oid,@oname,@obacklog)
select * from inserted
end

--checking the effect in different table
update order_detail set o_name='Guava' where o_id=1
insert into order_detail values('Strawberry')
select * from order_detail
select * from order_bklog
