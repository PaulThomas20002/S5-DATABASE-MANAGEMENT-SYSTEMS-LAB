1 SET SERVEROUTPUT ON
2
3 select user from dual;
4 SELECT NAME FROM v$database;
5 select table_name from dba_tables;
6 select owner, table_name from all_tables;
7 select table_name FROM user_tables;
8 SELECT table_name FROM user_tables ORDER BY table_name;
9
10 create table Stud(rollno int primary key,
11 name char(10),
12 mark1 float,
13 mark2 float,
14 mark3 float);
15
16 /* ROLLNO NAME MARK1 MARK2 MARK3
17 ---------- ---------- --------- ---------- ----------
18 1 aparna 80 90 78
19 2 amritha 90 92 81
20 3 binuja 23 18 20
21 4 cathy 49 50 50
22 5 danish 60 62 61
23 6 fayas 76 62 74 */
24
25 insert into Stud values(1,'aparna', 80, 90, 78);
26 insert into Stud values(&rollno, '&name', &mark1, &mark2, &mark3);
27 select * from Stud;
28 select name from Stud where rollno=1;
29
30



31 DECLARE
32 age integer;
33 name VARCHAR(20);
34 BEGIN
35 dbms_output.put_line('Hello world');
36 --dbms_output.put_line('age = ' || age);
37 --dbms_output.put_line('name = ' || name);
38 --insert into Stud values(&rollno, '&name', &mark1, &mark2, &mark3);
39 END;



40
41 select * from Stud;
42 delete from Stud;
43 drop table Stud purge;
