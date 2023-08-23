create procedure delete_form
@id int
as
begin
delete from category where id=@id
end
exec delete_form 4
select * from category