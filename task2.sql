create database Employee

use Employee

create table registration(
id int primary key identity(1,1),
first_name varchar(30) not null,
last_name varchar(30) not null,
date_of_birth date not null,
age int not null,
email_id varchar(55) not null,
user_address varchar(70) not null,
phone char(10) not null,
user_state varchar(35) not null,
user_city varchar(35) not null,
user_username varchar(35) not null,
user_password varchar(35) not null)

insert into registration values('jithu','joseph','1998-12-10',24,'jithu@gmail.com','vangart(h)','8765467111','kerala',
'mokkannur','jithu123','Jithu12@')

select * from registration

update registration set last_name='mahesh' where id=4

delete from registration where id=4