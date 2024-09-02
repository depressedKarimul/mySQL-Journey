-- Create a new database named 'myDB'
CREATE DATABASE myDB;

-----------------------------------------------------------

-- Switch to using the 'myDB' database
USE myDB;

----------------------------------------------------------------

-- Create a table called 'employees' with columns for employee details
CREATE TABLE employees(
employee_id INT,
first_name VARCHAR(50),
last_name VARCHAR(50),
hourly_pay DECIMAL(5,2),
hire_date DATE
);

----------------------------------------------------------------

Select all data from the 'employees' table
SELECT * FROM employees;

---------------------------------------------------------------------

-- Rename the 'employees' table to 'workers'
RENAME TABLE employees TO workers;

--------------------------------------------------------------------

-- Rename the 'workers' table back to 'employees'
RENAME TABLE workers TO employees;

--------------------------------------------------------------------

-- Delete the 'employees' table
DROP TABLE employees;

-----------------------------------------------------------------------

-- Add a new column 'phone_number' to the 'employees' table
ALTER TABLE employees 
ADD phone_number VARCHAR(15);

-------------------------------------------------------------------------

-- Select all data from the 'employees' table
SELECT * FROM employees;

---------------------------------------------------------------

-- Rename the 'phone_number' column to 'email'
ALTER TABLE employees 
RENAME COLUMN phone_number to email;

-------------------------------------------------------------------

-- Select all data from the 'employees' table
SELECT * FROM employees;

----------------------------------------------------------------------

-- Change the 'email' column to allow up to 100 characters
ALTER TABLE employees
MODIFY COLUMN email VARCHAR(100);

-----------------------------------------------------------------------

-- Move the 'email' column to be after the 'last_name' column
ALTER TABLE employees
MODIFY email VARCHAR(100)
AFTER last_name;

-------------------------------------------------------------------

-- Select all data from the 'employees' table
SELECT * FROM employees;

----------------------------------------------------------------------------

-- Move the 'email' column to be the first column in the table
ALTER TABLE employees
MODIFY email VARCHAR(100)
FIRST;

-----------------------------------------------------------------------------

-- Select all data from the 'employees' table
SELECT * FROM employees;
----------------------------------------------------------------------------

-- Remove the 'email' column from the 'employees' table
ALTER TABLE employees
DROP COLUMN email;
---------------------------------------------------------------------

-- Select all data from the 'employees' table
SELECT * FROM employees;
