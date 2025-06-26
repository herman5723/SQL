
--Create table 
create table students (
    student_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    email VARCHAR(100),
    phone_number VARCHAR(15),
    city VARCHAR(50),
    course VARCHAR(50),
    admission_date DATE
);




--Inserting values  into the column 
INSERT INTO students (
    student_id, first_name, last_name, gender, age,
    email, phone_number, city, course, admission_date
) VALUES
(1, 'Aarav', 'Sharma', 'Male', 20, 'aarav.sharma@email.com', '9876543210', 'Mumbai', 'Python', '2025-06-01'),
(2, 'Anaya', 'Mehta', 'Female', 19, 'anaya.mehta@email.com', '9876543211', 'Delhi', 'Java', '2025-06-01'),
(3, 'Rohan', 'Verma', 'Male', 21, 'rohan.verma@email.com', '9876543212', 'Pune', 'SQL', '2025-06-01'),
(4, 'Diya', 'Patel', 'Female', 20, 'diya.patel@email.com', '9876543213', 'Ahmedabad', 'HTML', '2025-06-01'),
(5, 'Kabir', 'Singh', 'Male', 22, 'kabir.singh@email.com', '9876543214', 'Chennai', 'Python', '2025-06-01'),
(6, 'Ishita', 'Desai', 'Female', 18, 'ishita.desai@email.com', '9876543215', 'Bangalore', 'CSS', '2025-06-01'),
(7, 'Arjun', 'Reddy', 'Male', 23, 'arjun.reddy@email.com', '9876543216', 'Hyderabad', 'JavaScript', '2025-06-01'),
(8, 'Meera', 'Kaur', 'Female', 21, 'meera.kaur@email.com', '9876543217', 'Amritsar', 'Java', '2025-06-01'),
(9, 'Yash', 'Joshi', 'Male', 20, 'yash.joshi@email.com', '9876543218', 'Surat', 'Python', '2025-06-01'),
(10, 'Sanya', 'Nair', 'Female', 19, 'sanya.nair@email.com', '9876543219', 'Kochi', 'C++', '2025-06-01'),
(11, 'Manav', 'Pillai', 'Male', 20, 'manav.pillai@email.com', '9876543220', 'Thane', 'HTML', '2025-06-01'),
(12, 'Tanya', 'Gupta', 'Female', 22, 'tanya.gupta@email.com', '9876543221', 'Indore', 'Python', '2025-06-01'),
(13, 'Nikhil', 'Kumar', 'Male', 19, 'nikhil.kumar@email.com', '9876543222', 'Patna', 'SQL', '2025-06-01'),
(14, 'Sneha', 'Rao', 'Female', 20, 'sneha.rao@email.com', '9876543223', 'Mangalore', 'JavaScript', '2025-06-01'),
(15, 'Rajat', 'Thakur', 'Male', 21, 'rajat.thakur@email.com', '9876543224', 'Shimla', 'Java', '2025-06-01'),
(16, 'Pooja', 'Bhatt', 'Female', 22, 'pooja.bhatt@email.com', '9876543225', 'Udaipur', 'HTML', '2025-06-01'),
(17, 'Zaid', 'Shaikh', 'Male', 23, 'zaid.shaikh@email.com', '9876543226', 'Nagpur', 'CSS', '2025-06-01'),
(18, 'Kritika', 'Kapoor', 'Female', 18, 'kritika.kapoor@email.com', '9876543227', 'Bhopal', 'Python', '2025-06-01'),
(19, 'Harsh', 'Malhotra', 'Male', 20, 'harsh.malhotra@email.com', '9876543228', 'Jodhpur', 'C++', '2025-06-01'),
(20, 'Simran', 'Gill', 'Female', 21, 'simran.gill@email.com', '9876543229', 'Ludhiana', 'JavaScript', '2025-06-01');

--Adding column into the table

alter table students add column mother_name varchar(15) ;

select * from students ;

--Droping column from table

alter table students drop column mother_name ;

--Rename Column 

alter table students rename column city to address ;

---rename table from old to new one

alter table students rename to Student ;

--Change Datatype

alter table Student alter column admission_date type varchar(15);
---------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SQL Command Types - Tree Diagram

/*
SQL
│
├── DDL (Data Definition Language)
│   ├── CREATE       -- Create tables, views, schemas
│   ├── ALTER        -- Modify existing table structure
│   ├── DROP         -- Delete tables or databases
│   └── RENAME       -- Rename tables or columns
│
├── DML (Data Manipulation Language)
│   ├── INSERT       -- Add new records
│   ├── UPDATE       -- Modify existing records
│   └── DELETE       -- Remove records
│
├── DQL (Data Query Language)
│   └── SELECT       -- Retrieve data from tables
│
├── DCL (Data Control Language)
│   ├── GRANT        -- Give user access rights
│   └── REVOKE       -- Remove user access rights
│
└── TCL (Transaction Control Language)
    ├── COMMIT       -- Save changes
    ├── ROLLBACK     -- Undo changes
    └── SAVEPOINT    -- Set a point to roll back to
*/

-----------------------------------------------------------------------------------------------------------------------------------------------------------------
1. DDL - Data Definition Language
(Used to define and modify the structure of database objects)

-- Create table
CREATE TABLE students (
    student_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    email VARCHAR(100),
    phone_number VARCHAR(15),
    city VARCHAR(50),
    course VARCHAR(50),
    admission_date DATE
);

-- Add column
ALTER TABLE students ADD COLUMN mother_name VARCHAR(15);

-- Drop column
ALTER TABLE students DROP COLUMN mother_name;

-- Rename column
ALTER TABLE students RENAME COLUMN city TO address;

-- Rename table
ALTER TABLE students RENAME TO Student;

-- Change datatype
ALTER TABLE Student ALTER COLUMN admission_date TYPE VARCHAR(15);

-- Drop table
DROP TABLE Student;

------------------------------------------------------------------------------------------------------------------------------------------------

--2. DML - Data Manipulation Language
--(Used to manipulate data in existing tables)

-- Insert values into the table
INSERT INTO students (
    student_id, first_name, last_name, gender, age,
    email, phone_number, city, course, admission_date
) VALUES
(1, 'Aarav', 'Sharma', 'Male', 20, 'aarav.sharma@email.com', '9876543210', 'Mumbai', 'Python', '2025-06-01'),
(2, 'Anaya', 'Mehta', 'Female', 19, 'anaya.mehta@email.com', '9876543211', 'Delhi', 'Java', '2025-06-01'),
(3, 'Rohan', 'Verma', 'Male', 21, 'rohan.verma@email.com', '9876543212', 'Pune', 'SQL', '2025-06-01'),
(4, 'Diya', 'Patel', 'Female', 20, 'diya.patel@email.com', '9876543213', 'Ahmedabad', 'HTML', '2025-06-01'),
(5, 'Kabir', 'Singh', 'Male', 22, 'kabir.singh@email.com', '9876543214', 'Chennai', 'Python', '2025-06-01');

-- Update a record
UPDATE students SET age = 21 WHERE student_id = 1;

-- Delete a record
DELETE FROM students WHERE student_id = 5;

-------------------------------------------------------------------------------------------------------------------------------------------------

---3. DQL - Data Query Language
--(Used to query data from the database)

-- Select data from the table
SELECT * FROM students;


-------------------------------------------------------------------------------------------------------------------------------------------------
'''
🔷 What are SQL Constraints?
Constraints are rules applied to table columns to enforce data integrity, accuracy, and consistency in a database.

---

🔷 Types of Constraints:

1. **NOT NULL**  
   Ensures that a column cannot have a NULL value.

2. **UNIQUE**  
   Ensures that all values in a column are unique.

3. **PRIMARY KEY**  
   Uniquely identifies each record in a table. It is a combination of NOT NULL and UNIQUE.

4. **FOREIGN KEY**  
   Ensures the value in one table matches values in another table, maintaining referential integrity.
'''
--------------------------------------------------------------------------------------------------------------------------------------------------
'''
✅ NULL Constraint
🔸 What is NULL?
In SQL, NULL represents a missing or unknown value.

By default, columns allow NULL unless specified otherwise.

✅ NOT NULL Constraint
🔹 Definition:
The NOT NULL constraint ensures that a column must always have a value — it cannot be left empty.
'''
--1. While Creating a Table:

CREATE TABLE employees (
    id INT,
    name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NULL
);
--name must have a value (NOT NULL)

--department can be left empty (NULL)

--2. After Table is Created (Add NOT NULL):

ALTER TABLE employees ALTER COLUMN name SET NOT NULL;

--3. Remove NOT NULL (Allow NULL again):

ALTER TABLE employees ALTER COLUMN name DROP NOT NULL;

---------------------------------------------------------------------------------------------------------------------------------------------------
'''
UNIQUE Constraint in SQL
🔹 Definition:
The UNIQUE constraint ensures that all values in a column (or a group of columns) are different — no duplicates allowed.
'''
1. Add UNIQUE While Creating a Table

CREATE TABLE users (
    user_id INT,
    username VARCHAR(50) UNIQUE,
    email VARCHAR(100) UNIQUE
);
--Both username and email must contain unique values across the table.

--You cannot insert duplicate username or email.

--2. Add UNIQUE After Creating the Table

ALTER TABLE users ADD CONSTRAINT unique_email UNIQUE (email);

--This adds a unique constraint to the email column.

--unique_email is the name of the constraint (you can name it anything).

--3. Remove UNIQUE Constraint

ALTER TABLE users DROP CONSTRAINT unique_email;

--------------------------------------------------------------------------------------------------------------------------------------------

'''
PRIMARY KEY Constraint in SQL
🔹 Definition:
The PRIMARY KEY constraint uniquely identifies each record in a table.

It cannot contain NULL values.

It must be unique — no duplicates allowed.

Each table can have only one primary key.
'''
--1. While Creating a Table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);

--2. Using Named Constraint

CREATE TABLE students (
    student_id INT,
    name VARCHAR(50),
    age INT,
    CONSTRAINT pk_student PRIMARY KEY (student_id)
);
--Here, pk_student is the name of the primary key constraint.

--3. Composite (Multi-Column) Primary Key

CREATE TABLE enrollments (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id)
);
--This ensures a student cannot enroll in the same course twice.

--4. Add PRIMARY KEY After Table Creation

ALTER TABLE students ADD CONSTRAINT pk_student PRIMARY KEY (student_id);
--5. Remove PRIMARY KEY

ALTER TABLE students DROP CONSTRAINT pk_student;
--------------------------------------------------------------------------------------------------------------------------------------------------
'''
DEFAULT Constraint in SQL
🔹 Definition:
The DEFAULT constraint is used to assign a default value to a column when no value is specified during an insert.
'''
--1. Add DEFAULT While Creating a Table

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50) DEFAULT 'Unknown'
);

--2. Insert Without Providing the Column
sql
Copy
Edit
INSERT INTO students (student_id, name)
VALUES (1, 'Amit');

-- Output: city = 'Unknown'
--3. Add DEFAULT After Table Creation

ALTER TABLE students ALTER COLUMN city SET DEFAULT 'Unknown';

--4. Remove DEFAULT Value

ALTER TABLE students ALTER COLUMN city DROP DEFAULT;

