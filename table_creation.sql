

create procedure table_creation
as
begin
create table category(
id int primary key,name varchar(45) not null)
end
exec table_creation