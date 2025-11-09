DROP DATABASE IF EXISTS college;
CREATE DATABASE college;
USE college;
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    dept_id INT
);
INSERT INTO student VALUES
(101, 'Manasa', 20, 1),
(102, 'Ravi', 21, 2),
(103, 'Priya', 19, 1),
(104, 'Kiran', 22, 1),
(105, 'Meena', 20, 3);
-- LIKE operator
SELECT * FROM student WHERE name LIKE 'M%';
SELECT * FROM student WHERE name LIKE '%an%';
-- BETWEEN operator
SELECT * FROM student WHERE age BETWEEN 19 AND 21;
-- IN operator
SELECT * FROM student WHERE dept_id IN (1, 3);
