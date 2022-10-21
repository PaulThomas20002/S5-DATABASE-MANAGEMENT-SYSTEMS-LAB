mysql -u root -p 

SHOW DATABASES;
CREATE DATABASE db;

USE db;

CREATE TABLE employee( fname VARCHAR(25) NOT NULL,
    -> minit CHAR,
    -> lname VARCHAR(25) NOT NULL,
    -> ssn CHAR(9) NOT NULL,
    -> bdate DATE,
    -> address VARCHAR(30),
    -> sex CHAR,
    -> salary DECIMAL(10.2),
    -> super_ssn CHAR(9),
    -> dno INT NOT NULL,
    -> PRIMARY KEY (ssn),
    -> FOREIGN KEY (super_ssn)REFERENCES employee(ssn)
    -> );
 show tables;
 
 describe employee;
 
  CREATE TABLE department(
    -> dname VARCHAR(15) NOT NULL,
    -> dnumber INT NOT NULL,
    -> mgr_ssn CHAR(9) NOT NULL,
    -> mgr_start_date DATE,
    -> PRIMARY KEY (dnumber),
    -> UNIQUE (dname),
    -> FOREIGN KEY (mgr_ssn)REFERENCES employee(ssn)
    -> );

describe department;

ALTER TABLE employee ADD email VARCHAR(25);

describe employee;
ALTER TABLE employee MODIFY email VARCHAR(10) NOT NULL;
show columns from employee;

alter table department add deptlocation varchar(20);


