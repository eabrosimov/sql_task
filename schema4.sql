create table if not exists Person1 (Id int, Email varchar(255));
truncate table Person1;
insert into Person1 (Id, Email) values ('1', 'a@b.com');
insert into Person1 (Id, Email) values ('2', 'c@d.com');
insert into Person1 (Id, Email) values ('3', 'a@b.com');

select lower(Email) as Email
from Person1
group by Email
having count(Email) > 1;
