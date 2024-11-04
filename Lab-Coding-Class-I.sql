-- This creates a new database named "college"
CREATE DATABASE college;

-------------------------------------------------------

-- This creates a table named "student" with three columns:
-- S_ID (student ID), Name (student name), and Age (student's age)
CREATE TABLE student(S_ID INT, Name VARCHAR(50), Age INT(3));

----------------------------------------------------

-- This inserts 6 rows of data (students) into the "student" table
INSERT INTO student(S_ID, Name, Age)
VALUES
(101, 'Shuvo', 22),
(102, 'Anika', 23),
(103, 'Mim', 25),
(104, 'Rahim', 24),
(105, 'Karim', 22),
(106, 'Nusrat', 23);

-------------------------------------------------

-- This selects and shows the S_ID, Name, and Age of all students from the "student" table
SELECT S_ID, Name, Age FROM student;

-------------------------------------------

-- This selects and shows all columns from the "persons" table
SELECT * FROM persons;

-- This selects and shows unique cities from the "customers" table (no duplicate city names)
SELECT DISTINCT City FROM customers;

-- This selects and shows all rows from the "customers" table where the city is 'Dhaka'
SELECT * FROM customers WHERE City = 'Dhaka';

-- This selects and shows the CustomerID, CustomerName, and City where the city is 'Dhaka'
SELECT CustomerID, CustomerName, City FROM customers WHERE City = 'Dhaka';

-- This selects and shows JobTitle and the difference between MaxSalary and MinSalary from the "jobs" table
SELECT JobTitle, MaxSalary-MinSalary FROM jobs;

-- This selects and shows JobID, JobTitle, and the sum of MaxSalary and MinSalary from the "jobs" table
SELECT JobID, JobTitle, MaxSalary+MinSalary FROM jobs;

-- This selects and shows JobTitle and the difference between MaxSalary and MinSalary, 
-- but the difference is renamed as DIFF_Salary
SELECT JobTitle, MaxSalary-MinSalary AS DIFF_Salary FROM jobs;

-- This selects and shows PersonID and a new column called Person_Name, 
-- which combines FirstName and LastName with a space between them
SELECT PersonID, CONCAT(FirstName, ' ', LastName) AS Person_Name FROM persons;

-- This selects and shows PersonID and the length of the FirstName (how many letters it has), 
-- and renames it to "firsrtNameLength"
SELECT PersonID, LENGTH(FirstName) AS firsrtNameLength FROM persons;

-- This selects and shows CustomerID, CustomerName, and City from customers where 
-- CustomerID is 105 or more and the city is 'DHAKA'
SELECT CustomerID, CustomerName, City FROM customers WHERE CustomerID >= 105 AND City = 'DHAKA';

-- This selects and shows all customers where the City is NOT 'Cumilla'
SELECT CustomerID, CustomerName, City FROM customers WHERE NOT City = 'Cumilla';

-- This selects and shows customers where the CustomerID is between 105 and 110 (inclusive)
SELECT CustomerID, CustomerName, City FROM customers WHERE CustomerID BETWEEN 105 AND 110;

-- This selects and shows customers where the City is either 'DHAKA', 'CUMILLA', or 'SYLHET'
SELECT CustomerID, CustomerName, City FROM customers WHERE City IN ('DHAKA', 'CUMILLA', 'SYLHET');

-- This selects and shows customers where CustomerName starts with the letter 'd'
SELECT CustomerID, CustomerName, City FROM customers WHERE CustomerName LIKE 'd%';

-- This selects and shows customers where CustomerName ends with the letter 'a'
SELECT CustomerID, CustomerName, City FROM customers WHERE CustomerName LIKE '%a';

-- This selects and shows customers where CustomerName contains the letter 'a' anywhere
SELECT CustomerID, CustomerName, City FROM customers WHERE CustomerName LIKE '%a%';


SELECT CustomerID, CustomerName, City       -- Selects the columns CustomerID, CustomerName, and City from the customers table
FROM customers                              -- Specifies the table to query (customers)
WHERE CustomerName LIKE '_M%';              -- Filters results where CustomerName starts with any single character, 
                                            -- followed by 'M', and any sequence of characters after that

