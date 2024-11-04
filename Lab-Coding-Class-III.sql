-- Create a new database called 'practice'
CREATE DATABASE practice;

-- Create a new table named 'person' to store people's details
CREATE TABLE person (
    ID INT(5) NOT NULL AUTO_INCREMENT,    -- Unique identifier for each person, auto-increments with each new entry
    Fname VARCHAR(30) NOT NULL,           -- First name of the person, required
    Lname VARCHAR(30),                    -- Last name of the person, optional
    Age INT(3),                           -- Age of the person, optional
    PRIMARY KEY(ID)                       -- Set ID as the primary key, which uniquely identifies each row
);

-- Insert a new row into the 'person' table with specified values
INSERT INTO person(ID, Fname, Lname, Age)
VALUES(101, "Tushar", "Basak", 25);

-- Retrieve all rows and columns from the 'person' table
SELECT * FROM person;

-- Insert another new row into the 'person' table without specifying an ID (ID will auto-increment)
INSERT INTO person(Fname, Lname, Age)
VALUES("Omar", "Faruk", 26);

-- Again, retrieve all rows and columns from the 'person' table to see the new data
SELECT * FROM person;

-- Create a new table called 'orders' to store order details
CREATE TABLE orders(
    OID INT(5) NOT NULL AUTO_INCREMENT,   -- Unique identifier for each order, auto-increments with each new entry
    PID INT(5),                           -- ID of the person who made the order, links to 'person' table
    orderNumber INT(3),                   -- Order number for tracking
    PRIMARY KEY(OID),                     -- Set OID as the primary key for unique identification
    FOREIGN KEY(PID) REFERENCES person(ID) ON UPDATE CASCADE ON DELETE CASCADE -- Link to 'person' table, update or delete automatically if linked 'person' is updated/deleted
);

-----------------------------------------------------

-- Select job title, first name, last name, salary, and job ID by joining 'persons' and 'jobs' tables
SELECT j.jobtitle,
       p.FirstName, p.LastName, p.Salary, p.jobID
FROM persons AS p
INNER JOIN jobs AS j
ON p.JobID = j.JobID;

-- Select job title and details of persons, showing all jobs even if no matching person
SELECT jobs.JobTitle,
       persons.FirstName, persons.LastName, persons.Salary, persons.JobID 
FROM jobs
LEFT JOIN persons
ON jobs.JobID = persons.JobID;

-- Another LEFT JOIN selecting job title and person details, ensuring all jobs are listed
SELECT j.jobTitle,
       p.FirstName, p.LastName, p.Salary, p.JobID 
FROM jobs AS j
LEFT JOIN persons AS p
ON j.JobID = p.JobID;

-- Select job title, age, first and last name, average salary for each job where age is 30 or above
SELECT jobs.JobTitle,
       persons.Age, persons.FirstName, persons.LastName, AVG(persons.Salary),
       persons.JobID 
FROM jobs
INNER JOIN persons
ON jobs.JobID = persons.JobID 
WHERE persons.Age >= 30
GROUP BY jobs.JobTitle, persons.Age, persons.JobID
ORDER BY persons.Age ASC;
