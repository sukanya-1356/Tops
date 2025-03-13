create database company;
use company;
CREATE TABLE Worker (
    WORKER_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(30),
    LAST_NAME VARCHAR(30),
    SALARY DECIMAL(10,2),
    JOINING_DATE DATETIME,
    DEPARTMENT varchar(30)
);


INSERT INTO Worker (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
(1, 'Monika', 'Arora', 100000, '2014-02-20 09:00:00', 'HR'),
(2, 'Nihanka', 'Verma', 90000, '2014-06-11 09:00:00', 'Admin'),
(3, 'Vishal', 'Singhal', 300000, '2014-09-20 09:00:00', 'HR'),
(4, 'Amitabh', 'Singh', 500000, '2014-02-20 09:00:00', 'Admin'),
(5, 'Vivek', 'Bhatt', 500000, '2014-06-11 09:00:00', 'Admin'),
(6, 'Vipul', 'Dewan', 200000, '2014-06-11 09:00:00', 'Account');

CREATE TABLE Student (
    StudentID int PRIMARY KEY,
    StudentName VARCHAR(30),
    Sex VARCHAR(10),
    Percentage DECIMAL,
    Class VARCHAR(10),
    Section VARCHAR(8),
    Stream VARCHAR(30),
    dob date);


-- (1)Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME
-- Ascending and DEPARTMENT Descending. 

select * from worker
order by first_name asc,department desc;

-- (2)Write an SQL query to print details for Workers with the first names “Vipul” and “Satish”
-- from the Worker table. 

select * from worker
where first_name in ("vipul" , "satish");

-- (3)Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and
-- contains six alphabets.

SELECT * FROM Worker
WHERE FIRST_NAME like 'h' 
AND LENGTH(FIRST_NAME) = 6;

-- (4)Write an SQL query to print details of the Workers whose SALARY lies between 1

SELECT * FROM Worker
WHERE SALARY BETWEEN 100000 and 300000;

-- (5)Write an SQL query to fetch duplicate records having matching data in some fields of a table.

Select * from worker
as w join worker as v
on w.worker_id = v.worker_id
where w.first_name = v.first_name or w.last_name= v.last_name or w.salary= v.salary
or w.joining_date = v.joining_date or w.department = v.department;

-- (6)Write an SQL query to show the top 6 records of a table. 

select * from worker
limit 6;

-- (7)Write an SQL query to fetch the departments that have less than five people in them. 

SELECT department FROM worker
GROUP BY department
HAVING COUNT(worker_id) < 5;

-- (8)Write an SQL query to show all departments along with the number of people in there. 

SELECT department,
 COUNT(worker_id) AS number_of_people
 FROM worker
GROUP BY department;

-- (9) Write an SQL query to print the name of employees having the highest salary in each department.

 CREATE TABLE Student (
    StudentID int PRIMARY KEY,
    StudentName VARCHAR(30),
    Sex VARCHAR(10),
    Percentage DECIMAL,
    Class VARCHAR(10),
    Section VARCHAR(8),
    Stream VARCHAR(30),
    dob date);
    
    INSERT INTO Student (StudentID, StudentName, Sex, Percentage, Class, Section, Stream, dob)
 VALUES
(1001, 'Surekha Joshi', 'Female', 82, '12', 'A', 'Science', '1998-07-28'),
(1002, 'Maahi Agarwal', 'Female', 56, '11', 'C', 'Commerce', '2008-11-23'),
(1003, 'Sanam Verma', 'Male', 59, '11', 'C', 'Commerce', '2006-06-29'),
(1004, 'Ronit Kumar', 'Male', 72, '11', 'B', 'Commerce', '1997-11-15'),
(1005, 'Dipesh Pulkit', 'Male', 78, '11', 'B', 'Science', '2003-09-14'),
(1006, 'Jahanvi Puri', 'Female', 60, '11', 'F', 'Commerce', '2008-11-07'),
(1007, 'Sanam Kumar', 'Male', 38, '12', 'F', 'Commerce', '1998-03-08'),
(1008, 'Sahil Saras', 'Male', 56, '11', 'C', 'Commerce', '2008-11-07'),
(1009, 'Akshra Agarwal', 'Female', 72, '11', 'B', 'Science', '1996-10-01'),
(1010, 'Stuti Mishra', 'Female', 71, '12', 'A', 'Science', '2008-11-23'),
(1011, 'Harsh Agarwal', 'Male', 42, '11', 'C', 'Science', '1998-03-08'),
(1012, 'Nikunj Agarwal', 'Male', 49, '12', 'A', 'Science', '1998-06-28'),
(1013, 'Akriti Saxena', 'Female', 82, '12', 'A', 'Science', '2008-11-23');

-- (1)To display all the records form STUDENT table. SELECT * FROM student

select * from student;

-- (2)To display any name and date of birth from the table STUDENT. SELECT StdName, DOB FROM student ; 

select studentname ,dob from student;

-- (3)To display all students record where percentage is greater of equal to 80 FROM student table.
-- SELECT * FROM student WHERE percentage >= 80; 

SELECT * FROM student 
WHERE percentage >= 80;

-- (4) To display student name, stream and percentage where percentage of student is more than 80
-- SELECT StdName, Stream, Percentage WHERE percentage > 80; 

SELECT StdName, Stream, Percentage
FROM student
WHERE Percentage > 80;

-- (5). To display all records of science students whose percentage is more than 75 form student table.
-- SELECT * FORM student WHERE stream = ‘Science’ AND percentage > 75; 

SELECT * FROM student 
WHERE stream = 'Science' 
  AND percentage > 75;






    
    
  