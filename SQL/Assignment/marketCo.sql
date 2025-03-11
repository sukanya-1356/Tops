use marketCo;

CREATE TABLE Company(
company_id int AUTO_INCREMENT PRIMARY KEY,
company_name varchar(50),
city varchar (50),
state varchar (50),
zip varchar (50));

INSERT INTO Company (company_name, City, State, zip)
values
('urban outfitters, INC', "Amreli",'Gujarat', "India");

 
 -- (1) statement to creat the contact table.
 
 use marketCo;
 drop table contact;
 create table contact(
 contact_id int auto_increment primary key,
 company_id int,
 firstname varchar(45),
 lastname varchar(45),
 street varchar(45),
 city varchar(45),
 state varchar(20),
 zip varchar(10),
 isman boolean,
 email varchar(45),
 phone int (12));
 
 insert into contact
 values
(1,101, 'Amit', 'Sharma', '123 MG Road', 'Delhi', 'Delhi', '110001', TRUE,
 'amit.sharma@example.com', 987-654-3210),  
(2, 420,'Neha', 'Verma', '456 Link Street', 'Mumbai', 'Maharashtra', '400001', FALSE,
 'neha.verma@example.com', 876-543-2109);
 
 
 -- (2)statement to creat the employee table.alter
 
 create table employee
 ( employee_id int,
 firstname varchar(45),
 lastname varchar(45),
 salary decimal(10,2),
 hiredate date,
 jobtitle varchar(45),
 email varchar(45),
 phone varchar(12));

insert into employee
values
(4,"meena","shah",5000,'2024-06-07',"DA", "meenashah@gmail.com",282-745-5457),
(1,'sukanya','rout',20000.00,'2022-04-23','DATA ANALYSIS',
'sukanyarout230@gmail.com',215-555-8850);

  -- (3)statement to create the contactemployee table.
  
  create table contactemployee
  (contactemployee_id int,
  contact_id int,
  employee_id int,
  contactdate date,
  description varchar(100));
  
-- (4) in the employee table,the statement that chenges lesley bland's phone 
-- number to 215-555-8800.
  use marketCo;
  update employee
  set phone ='215-555-8800'
  where firstname ='lesley' and lastname='bland';
  
  -- (5) In the Company table, the statement that changes the name of “UrbanOutfitters, Inc.”
   -- to “Urban Outfitters” . 
   
  UPDATE Company
SET Company_Name = "Urban Outfitters"
WHERE Company_Name = "UrbanOutfitters, Inc.";
  
  
  -- (6)In ContactEmployee table, the statement that removes Dianne Connor’s contact
 -- event with Jack Lee (one statement).
 
DELETE FROM Contactemployee
WHERE Contact_ID = (SELECT Contact_ID FROM Contact WHERE First_Name =
 'Dianne' AND Last_Name = 'Connor')
AND Employee_ID = (SELECT Employee_ID FROM Employee WHERE First_Name =
 'Jack' AND Last_Name = ('Lee');

 
 -- (7)Write the SQL SELECT query that displays the names of the employees that
-- have contacted Toll Brothers (one statement). Run the SQL SELECT query in
-- MySQL Workbench. Copy the results below as well. 

SELECT DISTINCT Employee.FirstName, Employee.LastName
FROM Employee
JOIN ContactEmployee ON Employee.Employee_ID = ContactEmployee.Employee_ID
JOIN Contact ON ContactEmployee.Contact_ID = Contact.Contact_ID
JOIN Company ON Contact.Company_ID = Company.company_id
WHERE Company.Company_Name = 'Toll Brothers';

-- (8)What is the significance of “%” and “_” operators in the LIKE statement? 

 # % is a wildcard that maching any sequence of charectors (including none)
 # _ is a wildcard that ,matching  exactly one charecter.

 #  like statement,
 SELECT * FROM Employee WHERE FirstName LIKE 'J%'; 
 #  Matches names starting with 'J'
 SELECT * FROM Employee WHERE FirstName LIKE 'a';
#  Matches names with 'a' as the second letter and any third character.

-- (9) Explain normalization in the context of databases.

-- (10)what dose a join in my sql?

# in my sql,a join is used to combine rows from two or more tables based on a related
#   column between them.it allows you to retrieve data  from multiple tables in a single query.

-- (11)What do you understand about DDL, DCL, and DML in MySQL?

# DDL, DML, and DCL in MySQL

# DDL (Data Definition Language) → Defines database structure.
#  CREATE, ALTER, DROP.
# DML (Data Manipulation Language) → Manages table data.
# INSERT, UPDATE, DELETE, SELECT
# DCL (Data Control Language) → Controls access/permissions.


-- (12)What is the role of the MySQL JOIN clause in a query, and what are some
-- common types of joins? 
 #MySQL JOIN Clause
 #Role: Combines rows from multiple tables based on a common column.
 #Common Types of JOINs:
 #1 INNER JOIN – Returns matching rows from both tables.
 # 2 LEFT JOIN – Returns all rows from the left table + matching right table rows.
 #3 RIGHT JOIN – Returns all rows from the right table + matching left table rows.
 #4 CROSS JOIN – Returns the Cartesian product of both tables.

 
 

  
  
 