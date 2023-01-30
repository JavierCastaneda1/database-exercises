USE employees;

SELECT DISTINCT d.dept_name AS 'Department Name',
                CONCAT(e.last_name, ', ', e.first_name) AS 'Department Manager'
FROM departments d
         JOIN dept_manager m ON d.dept_no = m.dept_no
         JOIN employees e ON m.emp_no = e.emp_no
WHERE m.to_date >= CURDATE()
ORDER BY d.dept_name;
