create procedure registration_form
@operation varchar(15),
@id int,
@first_name varchar(30),
@last_name varchar(30),
@date_of_birth date,
@age int,
@email_id varchar(55),
@user_address varchar(70),
@phone char(10),
@user_state varchar(35),
@user_city varchar(35),
@user_username varchar(35),
@user_password varchar(35)
as
begin
	if @operation='create'
	begin
		insert into registration values(@first_name,@last_name,@date_of_birth,@age,@email_id,@user_address,
		@phone,@user_state,@user_city,@user_username,@user_password)
	end
	else if @operation='read'
	begin
		select * from registration
	end
	else if @operation='update'
	begin
		update registration set first_name=@first_name,last_name=@last_name,date_of_birth=@date_of_birth,age=@age,email_id=@email_id,
		user_address=@user_address,phone=@phone,user_state=@user_state,user_city=@user_city,user_username=@user_username,
		user_password=@user_password where id=@id
	end
	else if @operation='delete'
	begin
		delete from registration where id=@id
	end
end

exec registration_form 'create','','santhra','philip','2000-12-10',22,'santhra@gmail.com','vattaparamban(h)','8765432111','kerala',
'mokkannur','santhra123','Santhra12@'
exec registration_form 'create','','meha','james','2000-10-10',22,'meha@gmail.com','vattaparamban(h)','8765432111','kerala',
'mokkannur','meha123','Meha12@'
exec registration_form 'create','','mariya','james','2000-10-10',22,'mariya@gmail.com','vattaparamban(h)','8765432111','kerala',
'mokkannur','meha123','Meha12@'
exec registration_form 'read','','','','','','','','','','','',''
exec registration_form 'update','2','saniya','james','2000-07-12',23,'saniya@gmail.com','vadankuchery(h)','8765432221','kerala',
'angamaly','Saniya123','Saniya12@'
exec registration_form 'delete','3','','','','','','','','','','',''