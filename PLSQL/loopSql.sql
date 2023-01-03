136 /* Use of loops */
137 DECLARE
138 type intArray IS VARRAY(10) OF INTEGER;

139 type namesArray IS VARRAY(5) OF VARCHAR2(5);
140
141 arr intArray;
142 names namesArray;
143 i integer;
144
145 BEGIN
146 arr := intArray(1,5,2,3,6,7,4,8,9,10);
147 names := namesArray('Alice', 'Bob', 'Cindy', 'Sam', 'Eric');
148
149 i := 1;
150 /*While loop...! */
151 while( i <= 10) loop
152 dbms_output.put_line('arr[' || i ||'] =' ||arr(i));
153 i := i+1;
154 end loop;
155
156 /*For loop...! */
157 for i in 1 .. 10 loop
158 dbms_output.put_line('arr[' || i ||'] =' ||arr(i));
159 end loop;
160
161 i := 1;
162 while( i <= 5) loop
163 dbms_output.put_line('names[' || i ||'] =' ||names(i));
164 i := i+1;
165 end loop;
166
167 /*For loop...! */
168 for i in 1 .. 5 loop
169 dbms_output.put_line('names[' || i ||'] =' ||names(i));
170 end loop;
171 END;
