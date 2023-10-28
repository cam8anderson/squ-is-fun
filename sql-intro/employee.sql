SELECT first_name, last_name from employee where city = 'Calgary'
SELECT birth_date FROM employee DESC limit 1
SELECT birth_date FROM employee ASC limit 1
SELECT * FROM employee where reports_to = 2
SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge'