USE employees;

# Find all the employees with the same hire date as employee 101010 using a subquery.
SELECT *
FROM employees
WHERE hire_date = (SELECT hire_date FROM employees where emp_no = 101010);

# OR

SELECT first_name, last_name FROM employees e WHERE e.hire_date IN (SELECT hire_date FROM employees where emp_no = 101010);



# Find all the titles held by all employees with the first name Aamod.
SELECT t.title
FROM titles t
WHERE t.emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod');

# OR

SELECT title FROM titles WHERE emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod');

SELECT DISTINCT title FROM titles WHERE emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod');

# Find all the current department managers that are female.

SELECT e.first_name AS 'First Name', e.last_name AS 'Last name'
FROM employees e
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date >= CURDATE()
    )
    AND e.gender = 'F';

# OR

SELECT first_name, last_name FROM employees WHERE gender = 'F' AND emp_no IN (SELECT emp_no FROM dept_manager WHERE to_date LIKE '9999%');

