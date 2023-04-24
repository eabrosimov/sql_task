create table Person (PersonId int, FirstName varchar(255), LastName varchar(255));
create table Address (AddressId int, PersonId int, City varchar(255), State varchar(255));
truncate table Person;
insert into Person (PersonId, LastName, FirstName) values ('1', 'Wang', 'Allen');
truncate table Address;
insert into Address (AddressId, PersonId, City, State) values ('1', '2', 'New York City', 'New York');

select FirstName, LastName, City, State
from Person
left outer join Address on(Person.PersonId = Address.PersonId);

