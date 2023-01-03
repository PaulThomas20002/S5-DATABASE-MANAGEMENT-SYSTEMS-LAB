174 /* Use of function in pl/sql */
175 /* Program - findMax value*/
176 DECLARE
177 a int;
178 b int;
179 c number;
180 FUNCTION findMax(x int, y int)
181 RETURN int
182 IS
183 z int;
184 BEGIN
185 IF x > y THEN
186 z:= x;
187 ELSE
188 Z:= y;
189 END IF;
190 RETURN z;
191 END;
192
193 BEGIN
194 a := &a;
195 b := &b;
196
197 c := findMax(a, b);
198 dbms_output.put_line(' Maximum of (' || a ||',' ||b || '): ' || c);
199 END;
