create database students;
use students;

create table students(stud_id int primary key auto_increment, stud_fname varchar(20),stud_lname varchar(20),stud_email varchar(20),stud_ph varchar(10));

create table subject(sub_id int primary key auto_increment, sub_name varchar(20));

create table marks(sub_id int, stud_id int, marks int, primary key(sub_id, stud_id));

insert data into students(stud_id,stud_fname,stud_lname,stud_email,stud_ph) values ('shanti', 'vasan','shantitv@gmail.com','967798321');
.
.
.
.
.
.
.
.
.

insert into subject (sub_name) values ('chemistry');
.
.

insert into marks values(200,100,75);
.
.
.
.
.


1. update students set stud_lname = 'rajan' where stud_id = 100;

2. update subject set sub_name = 'mathematics' where sub_id = 202;

3. update marks set marks=83 where sub_id=200 and stud_id=102;

4. select * from students;
.
.
.

5. select * from students where stud_id=102;

6. select stud_fname, stud_lname,sub_name,marks from students, subject, marks where subject.sub_id = 
marks.sub_id  and students.stud_id = marks.stud_id order by marks;

7. select stud_fname, stud_lname,sub_name,marks from students, subject, marks where subject.sub_id = marks.sub_id  and students.stud_id = marks.stud_id and marks>70 and sub_name='physics';

8. select sub_name, avg(marks) from subject join marks on subject.sub_id = mark.sub_id group by sub_name;

9. select count(stud_id) from students;

10. select sub_name, max(maths), min(marks) from subject join mark on subject.sub_id = mark.sub_id group by sub_name;

11. select * from students where stud_fname like "S%";

12. select * from students where stud_fname like "___a%";

13. select stud_fname, stud_lname,sub_name,marks from students, subject, marks where subject.sub_id = marks.sub_id  and students.stud_id = marks.stud_id and marks between 50 and 75;

14. create view student_view as select * from students ;
	select * from student_view;
