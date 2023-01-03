90
91 /* Case statement */
92 /*
93 Grading ..!
94 A- > print "Excellent"
95 B- > print "Very good"
96 C- > print "Well done"
97 D- > print "You passed"
98 F- > print "Better try again"
99 others - "No such grade"
100
101 */
102 DECLARE
103 c char(1) := '&c';
104 BEGIN
105 case c
106 when 'A' then dbms_output.put_line('Excellent');
107 when 'B' then dbms_output.put_line('Very good');
108 when 'C' then dbms_output.put_line('Well done');
109 when 'D' then dbms_output.put_line('You passed');
110 when 'F' then dbms_output.put_line('Better try again');
111 else dbms_output.put_line('No such grade');
112 end case;
113 END;
