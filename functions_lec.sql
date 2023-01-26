USE employees;

SELECT CONCAT('Hello','Codeup','!');

SELECT CONCAT(first_name, ' ', last_name) FROM employees;
# concatenates

SELECT CURDATE();
# gets current date

SELECT CURTIME();
# gets current time

SELECT UNIX_TIMESTAMP();
# number of seconds since the unit epoc (???) January the 1st 1970.
# can also be used as a conversion tool.

SELECT UNIX_TIMESTAMP('1958-05-28');
# this gives zero because its before Jan 1st 1970 of the unix timestamp.

SELECT UNIX_TIMESTAMP('2013-07-23');

SELECT NOW();

SELECT DAYOFMONTH('1990-05-03');
# returns 3

SELECT DAY('2017-03-25');
# this will return 25

SELECT *
FROM employees
WHERE year(birth_date) BETWEEN 1950 AND 1959
AND month(birth_date) = 7
AND day (birth_date) = 4;