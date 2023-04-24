create table if not exists Customers (Id int, Name varchar(255));
create table if not exists Orders (Id int, CustomerId int);
truncate table Customers;
insert into Customers (Id, Name) values ('1', 'Joe');
insert into Customers (Id, Name) values ('2', 'Henry');
insert into Customers (Id, Name) values ('3', 'Sam');
insert into Customers (Id, Name) values ('4', 'Max');
truncate table Orders;
insert into Orders (Id, CustomerId) values ('1', '3');
insert into Orders (Id, CustomerId) values ('2', '1');

select Name as Customers
from Customers
left outer join Orders on(Customers.Id = Orders.CustomerId)
where CustomerId is null;