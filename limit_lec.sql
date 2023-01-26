USE employees;

SELECT * FROM departments WHERE departments.dept_name LIKE '%u%' ORDER BY dept_no LIMIT 2 OFFSET 2;

SELECT emp_no, first_name, last_name FROM employees WHERE first_name LIKE 'M%' LIMIT 25 OFFSET 50;