48 /*
49 Sapple 3
50 Book_avail (bookid, title, no_of _copies, price)
51 Student (st_id,name,class,fine)
52 Issue_tab (st_id, book_id, issuedate, returndate)
53
54 Create a database trigger to calculate the fine based on the rules given below.
55 After 1 month 5% of price
56 After 2 month 10% of price
57 After 3 month 20% of price.
58 */
59 drop table Book_avail;
60 drop table Student;
61 drop table Issue_tab;
62 create table Book_avail(bookid int primary key, title varchar(20), no_of_copies int,
price int);
63 create table Student(st_id int primary key, name varchar(20), class varchar(10), fine int
);
64 create table Issue_tab(st_id int, book_id int, issue_date date , return_date date,
primary key(st_id, book_id));
65
66 insert into Student values(100, 'Alice', 'CSE', 0);

67 insert into Student values(101, 'Bob', 'CSE', 0);
68 insert into Book_avail values(1, 'Data Structure', 10, 1000);
69 insert into Book_avail values(2, 'Java - Complete ref', 10, 1000);
70
71 --TO_DATE('2003/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss')
72 insert into Issue_tab values(100, 1, TO_DATE('2022/01/01','%yyyy-%mm-%dd'), TO_DATE(
'2022/02/01','yyyy-%mm-%dd'));
73 insert into Issue_tab values(101, 2, TO_DATE('2022/01/01','%yyyy-%mm-%dd'), TO_DATE(
'2022/03/01','yyyy-%mm-%dd'));
74 select * from Issue_tab;
75 select * from Student;
76 select * from Book_avail;
77 drop trigger trigger4;
78
79 CREATE OR REPLACE TRIGGER trigger4
80 BEFORE UPDATE ON Issue_tab
81 REFERENCING NEW AS NEW OLD AS OLD
82 FOR EACH ROW
83 DECLARE
84 bprice int;
85 months int;
86 latefine int;
87 BEGIN
88 select price into bprice from Book_avail where bookid=1;
89 months:=months_between(:new.return_date,:old.issue_date);
90 dbms_output.put_line('months = ' || months);
91
92 -- Calculate fine while update issue_tab
93 if months>=1 and months<2 then
94 latefine := bprice*0.05;
95 else if months>=2 and months<3 then
96 latefine := bprice*0.01;
97 else if months>=3 then
98 latefine := bprice*0.2;
99 end if;
100 end if;
101 end if;
102
103 -- Update fine into Student table while update issue_tab
104 dbms_output.put_line('latefine = ' || latefine);
105 update Student set fine=latefine where st_id=:old.st_id;
106 END;
107
108 /* Update statement to test trigger */
109 update Issue_tab set return_date=TO_DATE('2022/03/02','%yyyy-%mm-%dd') where st_id=100;
110 select * from Student;
