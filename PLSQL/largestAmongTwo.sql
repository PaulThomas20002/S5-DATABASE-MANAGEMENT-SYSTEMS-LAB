60 -- find the largest of two numbers
61 DECLARE
62 a integer := &a;
63 b integer := &b;
64 BEGIN
65
66 if (a > b) then
67 dbms_output.put_line(a || ' is the largest number');
68 else
69 dbms_output.put_line(b || ' is the largest number');

70 end if;
71 END;
72
73
74 /* Use of if elsif ladder */
75 /* calculate the range of input number */
76 DECLARE
77 c integer := &c;
78 BEGIN
79 if (c >= 0 and c < 10) then
80 dbms_output.put_line(' is less than 10');
81 elsif (c >= 10 and c < 20) then
82 dbms_output.put_line(' is less than 20');
83 elsif (c >= 20 and c < 30) then
84 dbms_output.put_line(' is less than 30');
85 else
86 dbms_output.put_line(' is grater than or equal 30');
87 end if;
88 END;
