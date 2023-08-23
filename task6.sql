
create table Department(id int identity(1,1) primary key,
department_name varchar(35) not null)

create table Faculty(id int identity(1,1) primary key,
fac_name varchar(35) not null,
salary int not null,
department_id int references Department(id))

insert into Department values('computer_science')
insert into Department values('commerce')
insert into Department values('management')
select * from Department

insert into Faculty values('sreedevi',2000,1)
insert into Faculty values('jesna',5000,1)
insert into Faculty values('rinta',4000,2)
insert into Faculty values('devika',6000,3)
insert into Faculty values('minu',7000,2)

select * from Faculty

select Faculty.fac_name, Department.department_name,Faculty.salary from Department,Faculty where Department.id=Faculty.department_id
