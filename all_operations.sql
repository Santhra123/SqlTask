create procedure all_operation1
@operation varchar(10),
@id int,
@name varchar(45)
as
begin
  if @operation='insert'
  begin
	insert into category
	values(@id,@name)
  end
  else if @operation='select'
  begin
	select * from category
  end
  else if @operation='update'
  begin
	update category set name=@name where id=@id
  end
  else if @operation='delete'
  begin
    delete from category where id=@id
  end
end

exec all_operation1 'insert', 4 ,'non-vegeterian'
exec all_operation1 'insert', 5 ,'othe'
exec all_operation1 'update', 5 ,'others'
exec all_operation1 'delete', 5 ,''
exec all_operation1 'select','',''

select * from category