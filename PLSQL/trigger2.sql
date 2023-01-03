1 drop table Account;
2 create table Account(id int primary key, name varchar(20), bal int);
3 drop trigger trigger2;



5 CREATE TRIGGER trigger2
6 BEFORE INSERT ON Account
7 FOR EACH ROW
8 DECLARE
9 min_bal integer := 0;
10 BEGIN
11 IF (:new.bal < min_bal ) THEN
12 dbms_output.put_line('Error..! Balance cannot be less than zero');
13 raise_application_error(-20000, 'Balance cannot be less than zero');
14 END IF;
15 END;


17 insert into Account values(100, 'Alice', 200);
18 insert into Account values(104, 'Bob', 500);
19
20 select * from Account;
21 insert into Account values(102, 'Cindy', -500);
