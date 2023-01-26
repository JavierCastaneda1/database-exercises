use employees;

SELECT CONCAT(last_name, ' ', first_name) AS 'full_name' FROM employees;

SELECT CONCAT(last_name,' ', first_name)AS 'full_name', birth_date AS 'DOB' FROM employees;

SELECT CONCAT(emp_no, ' - ',last_name,', ',first_name)AS 'full_name', birth_date AS 'DOB' FROM employees;
