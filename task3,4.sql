

create table Emp(
id integer,
name varchar(30) not null,
department_name varchar(30) not null,
salary integer not null,
primary key(id));

insert into Emp
values(1,'saniya','cardilogist',6000)
select * from Emp

insert into Emp
values(2,'siya','cardilogist',7000)
insert into Emp
values(3,'meha','physcian',6000)

insert into Emp
values(4,'sanjoe','physcian',5000)
insert into Emp
values(5,'mariya','gynacologist',4000)

select * from Emp

select max(salary) as second_highest_salary from Emp
where salary < ( select max(salary) from Emp)

select department_name,count(name) as number_of_employees from Emp
group by department_name

