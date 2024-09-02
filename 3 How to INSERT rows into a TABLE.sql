-- Switch to using the 'mydb' database
USE mydb;

-------------------------------------------------------------------------------------

-- Insert multiple rows into the 'employees' table with full details (employee ID, first name, last name, hourly pay, and hire date)
INSERT INTO employees 
VALUES(2, "Squidward","Tentacles",15.00,"2023-01-03"),
(3, "Spongebob","Squarepants",12.50,"2023-01-04"),
(4, "Patrick","Star",12.50,"2023-01-05"),
(5, "Sandy","Cheeks",17.25,"2023-01-06");

------------------------------------------------------------------------------------

-- Insert a new employee with only the employee ID, first name, and last name (no hourly pay or hire date)
INSERT INTO employees(employee_id, first_name, last_name)
VALUES(6, "Sheldon", "Plankton");

-- Show all the records from the 'employees' table
SELECT * FROM employees;


------------------------------------------------------------------------------------------