-- Create database
CREATE DATABASE IF NOT EXISTS college;
USE college;

-- Create table
DROP TABLE IF EXISTS student;
CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(30),
    age INT,
    branch VARCHAR(10)
);

-- Insert sample data
INSERT INTO student VALUES
(1, 'Manasa', 20, 'CSE'),
(2, 'Ravi', 22, 'ECE'),
(3, 'Kiran', 21, 'CSE'),
(4, 'Priya', 19, 'EEE'),
(5, 'Arjun', 23, 'MECH');

-- View all records
SELECT * FROM student;

-- Ascending order by name
SELECT * FROM student
ORDER BY name ASC;

-- Descending order by age
SELECT * FROM student
ORDER BY age DESC;
