-- Select specific details from customers, orders, and persons tables
SELECT customers.CustomerName,      -- Get the customer's name
       customers.ContactName,       -- Get the contact person's name for the customer
       customers.Address,           -- Get the customer's address
       orders.OrderID,              -- Get the unique ID for each order
       persons.FirstName,           -- Get the person's first name associated with the order
       persons.Age,                 -- Get the person's age
       persons.Salary               -- Get the person's salary
FROM orders
INNER JOIN persons
ON orders.PersonID = persons.PersonID   -- Link each order to a person using PersonID
INNER JOIN customers
ON orders.CustomerID = customers.CustomerID;  -- Link each order to a customer using CustomerID

-- ---------------------------------------------------------------------------

-- Select all jobs where the JobID exists in the persons table
SELECT * FROM jobs
WHERE JobID IN (SELECT JobID FROM persons);

-- ---------------------------------------------------------------------------

-- Select all persons with salary above the average salary, and who are at least 30 years old
SELECT * FROM persons
WHERE Salary > (SELECT AVG(Salary) FROM persons)   -- Check if person's salary is above the average
      AND Age >= 30;                               -- Only include persons aged 30 or older

-- ---------------------------------------------------------------------------

-- Select all persons living on Bailey Road with a salary higher than the highest salary 
-- of persons living in Bashundhara
SELECT * FROM persons
WHERE Location = 'Bailey Road'    -- Only include persons from Bailey Road
      AND Salary > (SELECT MAX(Salary) FROM persons WHERE Location = 'Bashundhara');  -- Compare to max salary of people from Bashundhara

-- ---------------------------------------------------------------------------

-- Select specific details from customers who have placed orders linked to persons
-- whose first name contains the letter "a"
SELECT CustomerID, CustomerName, City, Country
FROM customers
WHERE CustomerID IN (SELECT CustomerID 
                     FROM orders
                     WHERE PersonID IN (SELECT PersonID 
                                        FROM persons 
                                        WHERE firstName LIKE '%a%'));  -- Check if first name has an "a"

--------------------------------------------------------------------------------

-- Create a view of customers based in Dhaka
CREATE VIEW customer_live_dhaka AS
SELECT CustomerID, CustomerName, City
FROM customers
WHERE City = 'Dhaka';

-- Select all customers from the created view who are based in Dhaka
SELECT * FROM customer_live_dhaka;

-------------------------------------


