-- Experiment: Aggregate Functions (MIN, MAX, COUNT, SUM, AVG)
DROP DATABASE IF EXISTS college;
CREATE DATABASE college;
USE college;

-- Create table
CREATE TABLE marks (
    student_name VARCHAR(50),
    subject VARCHAR(50),
    score INT
);

-- Insert sample data
INSERT INTO marks VALUES
('Manasa', 'DBMS', 90),
('Ravi', 'DBMS', 80),
('Priya', 'Math', 95),
('Kiran', 'Math', 65),
('Meena', 'Math', 60);

-- Display all records
SELECT * FROM marks;

-- Aggregate functions demonstration
SELECT 
    MIN(score) AS min_score,
    MAX(score) AS max_score,
    COUNT(*) AS total_students,
    SUM(score) AS total_score,
    AVG(score) AS avg_score
FROM marks;
