45 /* addition of two numbers */
46 DECLARE
47 a integer := &a;
48 b integer := &b;
49 res int;
50 BEGIN
51 res := a + b;
52 dbms_output.put_line('result = ' || res);
53 END;
