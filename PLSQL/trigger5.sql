112 /*
113 Sapple 4
114 Create a Table
115 Customer(id int primary key, name varchar(20),
116 age int, address varchar(30), sal int);
117
118 Create a trigger to display the salary difference between new and old values
119 before - insert, delete or update of values on the table
120 */
121 drop table Customer;
122 create table Customer(id int primary key,
123 name varchar(20), age int, address varchar(30), sal int);
124
125 insert into Customer values(1, 'Alice', 20, 'Address1', 10000);
126 insert into Customer values(2, 'Bob', 30, 'Address2', 20000);
127 insert into Customer values(3, 'Cindy', 40, 'Address3', 30000);
128 insert into Customer values(4, 'Sam', 50, 'Address4', 40000);
129 insert into Customer values(5, 'Eric', 60, 'Address5', 50000);
130
131 select * from Customer;
132
133 drop trigger trigger5;

134 CREATE OR REPLACE TRIGGER trigger5
135 BEFORE DELETE OR INSERT OR UPDATE ON Customer
136 REFERENCING NEW AS NEW OLD AS OLD
137 FOR EACH ROW
138 DECLARE
139 sal_diff int;
140 BEGIN
141 dbms_output.put_line('TRIGGER 5');
142 if (:new.id <= 0) then
143 dbms_output.put_line('Error ...! : Invaid ID');
144 RAISE_APPLICATION_ERROR(-20000, 'Error ...! : Invaid ID ');
145 else
146 sal_diff := :new.sal - :old.sal;
147 dbms_output.put_line('Old Salary = ' || :old.sal);
148 dbms_output.put_line('New Salary = ' || :new.sal);
149 dbms_output.put_line('Salary diff = ' || sal_diff);
150 end if;
151 END;
152
153 /* Update statement to test trigger */
154 update Customer set sal=30000 where id=1;
155 select * from Customer;
156
157 /* You can also write a sample program to test this trigger */
158 DECLARE
159 new_sal int;
160 cust_id int;
161 BEGIN
162 cust_id := &cust_id;
163 new_sal := &new_sal;
164 dbms_output.put_line('new_sal = ' || new_sal);
165 if (cust_id <= 0) then
166 RAISE_APPLICATION_ERROR(-20000, 'Error ...! : Invaid ID ');
167 else
168 update Customer set sal=new_sal where id=cust_id;
169 end if;
170 END;
171 /
