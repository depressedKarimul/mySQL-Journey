-- 1. Creating a new database called "storedb"
CREATE DATABASE storedb;

-- 2. Counting the total number of rows in the "customers" table
SELECT COUNT(*) FROM customers;

-- 3. Counting the number of customers per country and displaying it with a label "Total Customers"
SELECT COUNT(CustomerID) AS "Total Customers", Country 
FROM customers 
GROUP BY Country;

-- 4. Counting the number of customers from each city and labeling the result as "Total Customers From Every City"
SELECT COUNT(CustomerID) AS "Total Customers From Every City", City 
FROM customers 
GROUP BY City;

-- 5. Counting the number of orders placed on each order date
SELECT COUNT(OrderID), OrderDate 
FROM orders 
GROUP BY OrderDate;

-- 6. Selecting all data from the "persons" table and ordering it by the first name in ascending order
SELECT * FROM persons 
ORDER BY FirstName;

-- 7. Concatenating the first and last name of each person into a full name and showing their hire date, ordered by first name in descending order
SELECT CONCAT(FirstName,' ',LastName) AS Name, HireDate 
FROM persons 
ORDER BY FirstName DESC;

-- 8. Counting customers per country and ordering the result by country name in descending order
SELECT COUNT(CustomerID), Country 
FROM customers 
GROUP BY Country 
ORDER BY Country DESC;

-- 9. Counting customers per country and city, ordered by country in descending order
SELECT COUNT(CustomerID), Country, City 
FROM customers 
GROUP BY Country, City 
ORDER BY Country DESC;

-- 10. Counting customers per country and city, but only showing results where the customer count is greater than 1, ordered by country in descending order
SELECT COUNT(CustomerID), Country, City 
FROM customers 
GROUP BY Country, City 
HAVING COUNT(CustomerID) > 1 
ORDER BY Country DESC;

-- 11. Counting customers per country, but only showing results where the customer count is greater than 1, ordered by country in descending order
SELECT COUNT(CustomerID), Country 
FROM customers 
GROUP BY Country 
HAVING COUNT(CustomerID) > 1 
ORDER BY Country DESC;

-- 12. Counting customers per country (converted to uppercase) and city (converted to lowercase), ordering by country and city
SELECT COUNT(CustomerID), UPPER(Country), LOWER(City) 
FROM customers 
GROUP BY Country 
ORDER BY Country, City;

-- 13. Summing the salary for people over 30 years old, grouping them by job and age, and only showing results where the total salary is greater than 100,000, ordered by JobID in descending order
SELECT SUM(Salary), JobID, Age 
FROM persons 
WHERE Age > 30 
GROUP BY JobID, Age 
HAVING SUM(Salary) > 100000 
ORDER BY JobID DESC;
