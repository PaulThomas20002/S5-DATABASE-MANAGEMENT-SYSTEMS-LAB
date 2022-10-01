<h1># S5-DATABASE-MANAGEMENT-SYSTEMS-LAB</h1>

This course helps the learners to get practical exposure on database creation, SQL queries creation, transaction processing and NoSQL &amp; MongoDB based operations. The course enables the students to create, manage and administer the databases, develop necessary tools for the design and development of the databases, and to understand emerging technologies to handle Big Data.

<h1>Syllabus</h1>
1. Design a database schema for an application with ER diagram from a problem description
**.
<br>2. Creation, modification, configuration, and deletion of databases using UI and SQL
Commands **.
<br>3. Creation of database schema - DDL (create tables, set constraints, enforce relationships,
create indices, delete and modify tables). Export ER diagram from the database and verify
relationships** (with the ER diagram designed in step 1).
<br>4. Database initialization - Data insert, Data import to a database (bulk import using UI and
SQL Commands)**.
<br>5. Practice SQL commands for DML (insertion, updating, altering, deletion of data, and
viewing/querying records <br>b. You may use a MongoDB local installation or cloud MongoDB services like
MongoDB Atlas for this exercise
<br>c. For documentation: Refer: https://docs.mongodb.com/manual/introduction/
<br>6. Implementation of built-in functions in RDBMS**.
<br>7. Implementation of various aggregate functions in SQL**.
<br>8. Implementation of Order By, Group By & Having clause **.
<br>9. Implementation of set operators nested queries, and join queries **.
<br>10. Implementation of queries using temp tables.
<br>11. Practice of SQL TCL commands like Rollback, Commit, Savepoint **.
<br>12. Practice of SQL DCL commands for granting and revoking user privileges **.
<br>13. Practice of SQL commands for creation of views and assertions ** .
<br>14. Implementation of various control structures like IF-THEN, IF-THEN-ELSE, IF-THEN-
<br><br>ELSIF, CASE, WHILE using PL/SQL **.
<br>15. Creation of Procedures, Triggers and Functions**.
<br>16. Creation of Packages **.
<br>17. Creation of Cursors **.
<br>18. Creation of PL/SQL blocks for exception handling **.
<br>19. Database backup and restore using commands.
<br>20. Query analysis using Query Plan/Show Plan.
<br>21. Familiarization of NoSQL Databases and CRUD operations**.
<br>22. Design a database application using any front end tool for any problem selected. The
application constructed should have five or more tables**.
<br><br>** mandatory

<h1>EXERCISES</h1>
<br>1. Create a normalized database design with proper tables, columns, column types, and
constraints
<br>2. Create an ER diagram for the above database design.
<br>3. Write SQL commands to
<br><br>a. Create a database by name Library. Drop the database and re-create it.
<br>b. Create DDL statements and create the tables and constraints (from the design) in the
database created in step-a (Library)
<br><br>Notes: [ Create a script file and execute it. Create the script file in such a way that,,if the
table exists, drop the tables and recreate )]
<br>c. Create and execute DROP TABLE command in tables with and without FOREIGN
KEY constraints.
<br>d. Create and execute ALTER TABLE command in tables with data and without data.
<br>e. Create and execute SQL commands to build indices on Member_Id and Book_Id on
table Book_Issue.
<br>f. Create and execute GRANT/REVOKE commands on tables.
<br>g. Create and execute SQL commands to insert data into each of the tables designed
<br>h. Learn and execute bulk import of data to tables from CSV files (insert 1000 records of
books into the BOOK table from a CSV file).
<br>i. Create and execute UPDATE/DELETE commands on tables. Try to update/delete
rows with Primary and Foreign Keys. Try bulk updates or deletes using SQL
<br>UPDATE statement
<br>4. Write SQLQuery to retrieve the following information
<br>a Get the number of books written by a given author
<br>b. Get the list of publishers and the number of books published by each publisher
<br>c. Get the names of authors who jointly wrote more than one book.
<br>d. Get the list of books that are issued but not returned
<br>e. Get the list of students who reads only ‘Malayalam’ books
<br>f. Get the total fine collected for the current month and current quarter
<br>g. Get the list of students who have overdue (not returned the books even on due date)
<br>h. Calculate the fine (as of today) to be collected from each overdue book.
<br><br>i. Members who joined after Jan 1 2021 but has not taken any books
<br>5. Book return should insert an entry into the Book_Return table and also update the status in
Book_Issue table as ‘Returned’. Create a database TRANSACTION to do this operation
(stored procedure).
<br>6. Create a database view ‘Available_Books’, which will list out books that are currently
available in the library
<br>7. Create a database procedure to add, update and delete a book to the Library database (use
parameters).
<br>8. Use cursors and create a procedure to print Books Issue Register (page wise – 20 rows in a
page)
<br>9. Create a history table (you may use the same structure without any keys) for the MEMBER
table and copy the original values of the row being updated to the history table using a
TRIGGER.
<br>10. NoSQL Exercise
<br>a. Practice Mongo DB CRUD operations. Refer:
https://docs.mongodb.com/manual/crud/
<br>b. You may use a MongoDB local installation or cloud MongoDB services like
MongoDB Atlas for this exercise
<br>c. For documentation: Refer: https://docs.mongodb.com/manual/introduction/
<br>11.Application Development Problem examples:
<br>1) Inventory Control System.
<br>2) Material Requirement Processing.
<br>3) Hospital Management System.
<br>4) Railway Reservation System.
<br>5) Personal Information System.
<br>6) Web Based User Identification System.
<br>7) Timetable Management System.
<br>8) Hotel Management System.
