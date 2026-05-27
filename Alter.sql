create table students(
student_id serial primary key,
name varchar(100),
age int
);

insert into students(name,age)
values('Ayush',23),
		('Mayank',22);


-- Q.1 Add new Columns
alter table students
add column email varchar(100);
-- Q.2 Removw a column
alter table students
drop column email;
-- Q.3 Rename a column
alter table students
rename column name to full_name;
-- Q.4 Set default value
alter table students
alter column age set default 18;
-- Q.5 Remove Default value
alter table students
alter column age drop default;
-- Q.6 Rename the Table
alter table students
RENAME to school_students;

select * from school_students;
