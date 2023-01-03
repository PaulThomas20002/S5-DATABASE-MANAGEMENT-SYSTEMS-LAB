22
23 /*
24 Test 2:
25 Write a PL/SQL program to create a trigger before insert
26 for each row and not allowing transaction on weekends.
27 */
28
29 drop table Student;
30 create table Student(Rollno int primary key, name varchar(20), address varchar(50));
31 insert into Student values(104, 'Bob', 'Address1');
32
33 drop trigger trigger3;
34 CREATE OR REPLACE TRIGGER trigger3
35 BEFORE INSERT ON Student
36 REFERENCING NEW AS NEW OLD AS OLD
37 FOR EACH ROW
38 BEGIN
39 IF TO_CHAR(SYSDATE, 'D') <> '7' THEN
40 dbms_output.put_line('Error..! Cannot insert record on weekdays');
41 RAISE_APPLICATION_ERROR(-20000, 'Cannot insert record on weekdays');
42 END IF;
43 END;
44
45 insert into Student values(103, 'Alice', 'Address2');
46
