243 /* SQL Operations */
244 /* ROLLNO NAME MARK1 MARK2 MARK3
245 ---------- ---------- --------- ---------- ----------
246 1 aparna 80 90 78
247 2 amritha 90 92 81
248 3 binuja 23 18 20
249 4 cathy 49 50 50
250 5 danish 60 62 61
251 6 fayas 76 62 74 */
252 create table Stud(rollno int primary key,
253 name char(10),
254 mark1 float,
255 mark2 float,
256 mark3 float);
257 insert into Stud values(1,'aparna', 80, 90, 78);
258 insert into Stud values(2,'amritha', 90, 92, 81);
259 insert into Stud values(3,'binuja', 23, 18, 20);
260 insert into Stud values(4,'cathy', 49, 50, 50);
261 insert into Stud values(5,'danish', 60, 62, 61);
262 insert into Stud values(6,'fayas', 76, 62, 74);
263
264 select * from Stud;
265
266 /*
267 Write a PL/SQL program to grade the student according to the following rules
268 Student(name,rollno,mark1,mark2,mark3)
269 TOTAL MARKS GRADE
270 >=250 Distinction
271 180-250 First Class
272 120-179 Second Class
273 80-119 Third Class
274 <80 Fail
275 The result should be in the following Format
276 STUDENT NAME:

277 ROLL NO :
278 TOTAL MARKS :
279 GRADE :
280 */
281 DECLARE
282 roleNo integer;
283 No integer;
284 Name varchar(20);
285 total integer;
286 BEGIN
287 -- get role no from user
288 roleNo := &roleNo;
289
290 --execute sql query
291 select rollno,name,(mark1+mark2+mark3) into No, Name, total from Stud where

rollno=roleNo;

292
293 --print output
294 dbms_output.put_line('---------------------------');
295 dbms_output.put_line('Roll no : ' || No);
296 dbms_output.put_line('Name : ' || Name);
297 dbms_output.put_line('Total Marks : ' || total);
298 dbms_output.put_line('---------------------------');
299
300 --calculate & print grade
301 if (total >=250 ) then
302 dbms_output.put_line('Grade = Distinction');
303 elsif (total < 250 and total >= 180) then
304 dbms_output.put_line('Grade = First Class');
305 elsif (total < 180 and total >= 120) then
306 dbms_output.put_line('Grade = Second Class');
307 elsif (total < 120 and total >= 80) then
308 dbms_output.put_line('Grade = Third Class');
309 else
310 dbms_output.put_line('Grade = FAIL');
311 end if;
312 END;
313 /
