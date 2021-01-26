-- Use your previous table Students
-- Display the count of all students
SELECT COUNT(id) FROM Students

-- Select all students with location is Manila
SELECT first_name, last_name FROM Students WHERE location = 'Manila' 

-- Display the average age of all students
SELECT AVG(age) FROM Students 

-- Display all students by age descending order
SELECT first_name, last_name, age FROM Students ORDER BY age DESC
