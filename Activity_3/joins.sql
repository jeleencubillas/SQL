-- Use table from previous lesson
CREATE TABLE Students (
	id INT PRIMARY KEY,
    first_name VARCHAR(20),
    middle_name VARCHAR(20),
    last_name VARCHAR(20),
    age INT,
    location VARCHAR(20)
    );
    
INSERT INTO Students 
    (id, first_name, middle_name, last_name, age, location) 
	VALUES
    (1, 'Juan', 'Blank', 'Cruz', 18, 'Manila'),
    (2, 'John', 'Blank', 'Young', 20, 'Manila'),
    (3, 'Victor', 'Blank', 'Rivera', 21, 'Manila'),
    (4, 'Adrian', 'Blank', 'Co', 19, 'Laguna'),
    (5, 'Pau', 'Blank', 'Riosa', 22, 'Marikina'),
    (6, 'Piolo', 'Blank', 'Pascual', 25, 'Manila');
    
UPDATE Students 
	SET first_name = 'Ana', middle_name = 'Cui', last_name = 'Cajocson', age = 25, location = 'Bulacan'
	WHERE id = 1;

DELETE FROM Students 
    WHERE id = 6;

-- Create new table
CREATE TABLE Classrooms (
	id INT PRIMARY KEY,
    student_id INT,
    section VARCHAR(20)
    );

-- Insert 10 records
INSERT INTO Classrooms 
    (id, student_id, section) 
	VALUES
    (1, 1, 'A'),
    (2, 2, 'A'),
    (3, 3, 'B'),
    (4, 4, 'C'),
    (5, 5, 'B'),
    (6, 6, 'A'),
    (7, 7, 'C'),
    (8, 8, 'B'),
    (9, 9, 'B'),
    (10, 10, 'C');

-- Combine two tables using...
-- INNER JOIN
SELECT Classrooms.id, first_name, last_name, section
    FROM Students
    INNER JOIN Classrooms
    ON Students.id = Classrooms.id;

-- LEFT JOIN
SELECT Classrooms.id, first_name, last_name, section
    FROM Students
    LEFT JOIN Classrooms
    ON Students.id = Classrooms.id;

-- RIGHT JOIN
SELECT Classrooms.id, first_name, last_name, section
    FROM Students
    RIGHT JOIN Classrooms
    ON Students.id = Classrooms.id;

-- FULL JOIN
SELECT id, first_name, last_name, section
    FROM Students s
    FULL JOIN Classrooms c
    ON s.id = c.id;