-- Experiment 9: Group By and Order By
DROP DATABASE IF EXISTS college;
CREATE DATABASE college;
USE college;
CREATE TABLE marks (
    student_name VARCHAR(50),
    subject VARCHAR(50),
    score INT
);
INSERT INTO marks VALUES
('Manasa', 'DBMS', 90),
('Ravi', 'DBMS', 80),
('Priya', 'Math', 95),
('Kiran', 'Math', 65),
('Meena', 'Math', 60);
-- Average score per subject
SELECT subject, AVG(score) AS avg_score
FROM marks
GROUP BY subject;
-- Order students by score descending
SELECT student_name, score
FROM marks
ORDER BY score DESC;
