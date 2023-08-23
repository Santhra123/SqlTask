create procedure insert_op
@id int,
@name varchar(45)
as begin
insert into category
values(@id,@name)
end
exec insert_op 1,'food';
exec insert_op 2,'drinks';
exec insert_op 3,'desert';
exec insert_op 4,'others';
select * from category