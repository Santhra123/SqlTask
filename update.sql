create procedure update_form
@id int,
@name varchar(45)
as
begin
update  category set name=@name where id=@id
end

exec update_form 1,'vegeterian'

select * from category
