CREATE TABLE Students (
	id INT(3) PRIMARY KEY,
    first_name VARCHAR(20),
    middle_name VARCHAR(20),
    last_name VARCHAR(20),
    age INT(2),
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