USE employees;


# show each department w/name of current manager for that dept
SELECT DISTINCT d.dept_name AS 'Department Name',
                CONCAT(e.first_name, ', ', e.last_name) AS 'Department Manager'
FROM departments d
         JOIN dept_manager m ON d.dept_no = m.dept_no
         JOIN employees e ON m.emp_no = e.emp_no
WHERE m.to_date >= CURDATE()
ORDER BY d.dept_name;


# find the name of all departments currently managed by women
SELECT DISTINCT d.dept_name AS 'Department Name',
                CONCAT(e.first_name, ' ', e.last_name) AS 'Department Managers'
FROM departments d
                JOIN dept_manager m ON d.dept_no = m.dept_no
                JOIN employees e on m.emp_no = e.emp_no
WHERE m.to_date >= CURDATE()
    AND e.gender = 'F';

# Find the current titles of employees currently working in the Customer Service department.
SELECT t.title AS Title, COUNT(de.emp_no) AS Total
FROM departments d
                    JOIN dept_emp de on d.dept_no = de.dept_no
                    JOIN titles t on de.emp_no = t.emp_no

WHERE d.dept_name = 'Customer Service'
    AND t.to_date >= CURDATE()
    AND de.to_date >= CURDATE()
GROUP BY t.title;


# Find the current salary of all current managers.
SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS DepMGMT,
       salary AS Salary
FROM departments d
         JOIN dept_manager m ON d.dept_no = m.dept_no
         JOIN dept_emp de ON m.emp_no = de.emp_no
         JOIN employees e ON de.emp_no = e.emp_no
         JOIN salaries s ON e.emp_no = s.emp_no
WHERE m.to_date >= CURDATE()
  AND s.to_date >= CURDATE()
ORDER BY d.dept_name;










