116 /* use of array*/
117 /* index starts with 1 .. not 0 */
118 DECLARE
119 type intArray IS VARRAY(10) OF INTEGER;
120 type namesArray IS VARRAY(5) OF VARCHAR2(5);
121
122 arr intArray;
123 names namesArray;
124 i integer;
125
126 BEGIN
127 arr := intArray(1,5,2,3,6,7,4,8,9,10);
128 names := namesArray('Alice', 'Bob', 'Cindy', 'Sam', 'Eric');
129 dbms_output.put_line('Integer array');
130 --dbms_output.put_line('arr[0]' || arr(0));
131 dbms_output.put_line('arr[1]' || arr(1));
132 dbms_output.put_line('arr[2]' || arr(2));
133 dbms_output.put_line('arr[3]' || arr(3));
134 END;
