USE employees;

SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya') ORDER BY first_name;
# Modify your first query to order by first name. The first result should be Irena Pelz and the last result should be Vidya Awdeh.


SELECT * FROM employees WHERE employees.first_name IN('Irena','Vidya','Maya') ORDER BY first_name, last_name;
# Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.

SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya') ORDER BY last_name, first_name ;
# Change the ORDER BY clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.

SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no;
# Update your queries for employees with 'e' in their last name to sort the results by their employee number. Make sure the employee numbers are in the correct order.


# Now reverse the sort order for both queries and compare results.
SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya') ORDER BY last_name, first_name DESC;

# also reversed

SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no DESC;


