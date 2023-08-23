
use Employee

create table Customers(
id int,cust_name varchar(30) not null,
designation varchar(30) not null,
primary key(id))

create table Orders(
id  int  primary key,
amount int not null,cust_id int not null)
 
insert into Customers
values(1,'abc','A');

insert into Customers
values(2,'pqr','B');
insert into Customers
values(3,'mno','C');

insert into Customers
values(6,'ijk','D');
insert into Customers
values(7,'xyz','E');


select * from Customers;

insert into Orders
values(601,2000,1);

insert into Orders
values(602,3000,3);
insert into Orders
values(603,4000,2);
insert into Orders
values(604,6000,4);
insert into Orders
values(605,7000,5);

select * from Orders

select Orders.id,Customers.cust_name from Orders inner join Customers on Orders.cust_id=Customers.id;
 
 select Orders.id,Customers.cust_name from Orders left join  Customers on Orders.cust_id=Customers.id;
 
 select Orders.id,Customers.cust_name from Orders right join  Customers on Orders.cust_id=Customers.id;
 
 select Orders.id,Customers.cust_name from Orders left outer join  Customers on Orders.cust_id=Customers.id;

 select Orders.id,Customers.cust_name from Orders  right outer join  Customers on Orders.cust_id=Customers.id;

  select Orders.id,Customers.cust_name from Orders  full outer join  Customers on Orders.cust_id=Customers.id;

 