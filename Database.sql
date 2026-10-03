CREATE DATABASE CollegCourseManagementDB;
USE CollegCourseManagementDB;

CREATE TABLE Course(
course_id INT PRIMARY KEY,
course_name VARCHAR(100) NOT NULL,
credit INT NOT NULL CHECK (credit BETWEEN 1 AND 6),
department VARCHAR(50),
status VARCHAR(50) DEFAULT 'Active'
);

CREATE TABLE Faculty(
faculty_id INT PRIMARY KEY,
faculty_name VARCHAR(50) NOT NULL,
course_name VARCHAR(100) NOT NULL,
email VARCHAR(50) UNIQUE,
course_id INT,
FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

INSERT INTO Course(course_id, course_name, credit, department)
VALUES
(121, 'GP', 4, 'AI'),
(122, 'C++', 3, 'CSE'),
(123, 'Maths', 5, 'AI'),
(124, 'Sociology', 3, 'Biotech'),
(125, 'Physics', 2, 'CSE'),
(126, 'Java', 3, 'AI');

INSERT INTO Faculty(faculty_id, faculty_name, course_name, email, course_id)
VALUES
(25, 'Shikha', 'GP', 'shikha@gmail.com', 121),
(26, 'Aman', 'C++', 'aman@gmail.com', 122),
(27, 'Ritu', 'Maths', 'ritu@gmail.com', 123),
(28, 'Kiran', 'Sociology', 'kiran@gmail.com', 124),
(29, 'Malkit', 'Physics', 'malkit@gmail.com', 125);

SELECT * FROM Course
WHERE credit BETWEEN 2 AND 6;

SELECT *  FROM Course 
WHERE course_name LIKE 'P%';

SELECT * FROM Course
WHERE department IN ('AI', 'CSE');

SELECT DISTINCT department
FROM Course;

UPDATE Faculty
SET email = 'malkit25@gmail.com'
WHERE faculty_id = 29;

SELECT * FROM Faculty;

DELETE FROM Course
WHERE course_id = 126;

SELECT * FROM Course;

ALTER TABLE Course
ADD building VARCHAR(50);

SELECT * FROM Course;