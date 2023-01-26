USE employees;

#Group By and Count
SELECT DISTINCT first_name, last_name FROM employees;
#these two do the same thing!
SELECT first_name FROM employees GROUP BY first_name;
#this just adds the last names
SELECT first_name, last_name FROM employees GROUP BY first_name, last_name;
#how many results will be inside the database (used for checking and testing)

SELECT COUNT(*) FROM employees;

SELECT COUNT(*) FROM employees WHERE first_name = 'Parto';

SELECT first_name, COUNT(first_name) FROM employees GROUP BY first_name;

SELECT first_name, COUNT(*) FROM employees GROUP BY first_name;

SELECT first_name, COUNT(*) FROM employees GROUP BY first_name ORDER BY COUNT(*) DESC;

# Aliases
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees as emp
WHERE emp.last_name LIKE '%ens'
GROUP BY full_name, last_name
ORDER BY last_name
LIMIT 25;




