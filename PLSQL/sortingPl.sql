202 /* Sorting algorithm...! */
203 DECLARE
204 type intArray IS VARRAY(10) OF INTEGER;
205 arr1 intArray;
206 i int;
207 j int;

208 c int;
209 temp INTEGER := 0;
210 FUNCTION sortArray(arr IN OUT intArray, len integer)
211 RETURN int
212 IS
213 ret int;
214 BEGIN
215 ret := 1;
216 dbms_output.new_line;
217 for i in 1 .. len loop
218 dbms_output.put_line('arr[' || i ||'] =' ||arr(i));
219 end loop;
220
221 for i in 1 .. len loop
222 for j in 1+i .. len loop
223 if (arr(i) > arr(j)) then
224 temp := arr(i);
225 arr(i) := arr(j);
226 arr(j) := temp;
227 end if;
228 end loop;
229 end loop;
230
231 for i in 1 .. len loop
232 dbms_output.put_line('arr[' || i ||'] =' ||arr(i));
233 end loop;
234
235 return ret;
236 END;
237
238 BEGIN
239 arr1 := intArray(1,5,2,3,6,7,4,8,9,10);
240 c := sortArray(arr1, 10);
241 END;
