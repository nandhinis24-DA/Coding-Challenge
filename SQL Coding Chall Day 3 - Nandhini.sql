-- Day 3 clauses and operators
create database university;
use university;

create table Students(
student_id int primary key,
students_name varchar(100),
email varchar(100),
courses_name varchar(100),
Gender enum('M', 'F'),
gpa decimal(10,2),
course_id int
);

insert into 
Students (student_id,students_name,email,courses_name,Gender,gpa,course_id)
values
(1, 'nandhini','nannandhu24@email.com','B Com' , 'F', 9.2,1254),
(2, 'Yazhini','yazhini24@email.com', 'Commerce', 'F', 8.2,1255),
(3, 'Vedhika', null ,'BSC','F', 8.3,1256),
(4, 'Reena',null , 'BDS' , 'F',9.8,1257),
(5, 'Danya','danya24@email.com', 'MSC','F' , 9.7,1258);

-- 1 Distinct and where
select distinct courses_name
from Students;

select distinct courses_name
from Students
where course_id=1258;

-- 2 with null and without null
select student_id,students_name
from Students
where email is null;

select student_id,students_name
from Students
where email is not null;

-- 3 in,between,not between
select student_id,students_name
from Students
where course_id in(1254, 1258);

select student_id,students_name,gpa
from Students
where gpa between 9.0 and 9.8;

select student_id,students_name,gpa
from Students
where gpa not between 9.0 and 9.8;
