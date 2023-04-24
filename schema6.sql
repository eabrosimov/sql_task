create table if not exists Courses (Student varchar(255), Class varchar(255));
truncate table Courses;
insert into Courses (Student, Class) values ('A', 'Math');
insert into Courses (Student, Class) values ('B', 'English');
insert into Courses (Student, Class) values ('C', 'Math');
insert into Courses (Student, Class) values ('D', 'Biology');
insert into Courses (Student, Class) values ('E', 'Math');
insert into Courses (Student, Class) values ('F', 'Computer');
insert into Courses (Student, Class) values ('G', 'Math');
insert into Courses (Student, Class) values ('H', 'Math');
insert into Courses (Student, Class) values ('I', 'Math');

select Class
from Courses
group by Class
having count(Student) >= 5;