create table if not exists Employee1 (Id int, FirstName varchar(255), Salary int, ManagerId int);
truncate table Employee1;
insert into Employee1 (Id, FirstName, Salary, ManagerId) values ('1', 'Joe', '70000', '3');
insert into Employee1 (Id, FirstName, Salary, ManagerId) values ('2', 'Henry', '80000', '4');
insert into Employee1 (Id, FirstName, Salary, ManagerId) values ('3', 'Sam', '60000', null);
insert into Employee1 (Id, FirstName, Salary, ManagerId) values ('4', 'Max', '90000', null);

select emp1.FirstName
from Employee1 as Emp1
join Employee1 as Emp2 on(Emp1.ManagerId = Emp2.Id)
where Emp1.Salary > Emp2.Salary;
