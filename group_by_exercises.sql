USE employees;

SELECT DISTINCT title FROM titles;
# In your script, use DISTINCT to find the unique titles in the titles table.

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E'
GROUP BY last_name
ORDER BY last_name;
# Find your query for employees whose last names start and end with 'E'. Update the query to find just the unique last names that start and end with 'E' using GROUP BY.

SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY first_name, last_name;
# Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows.

SELECT DISTINCT last_name
FROM employees
WHERE last_name NOT LIKE '%qu%'
AND last_name LIKE '%q%'
# Find the unique last names with a 'q' but not 'qu'


