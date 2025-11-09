DROP TABLE IF EXISTS student;
CREATE TABLE student (
  id INT,
  name VARCHAR(30),
  marks INT
);
INSERT INTO student (id, name, marks) VALUES
(1, 'Manasa', 85),
(2, 'Ravi', 72),
(3, 'Manoj', 90),
(4, 'Priya', 78),
(5, 'Kiran', 60);
-- Single query showing all comparison operators
SELECT 
    name,
    marks,
    CASE
        WHEN marks = 78 THEN 'Equal to 78'
        WHEN marks > 80 THEN 'Greater than 80'
        WHEN marks < 75 THEN 'Less than 75'
        WHEN marks >= 78 THEN 'Greater than or equal to 78'
        WHEN marks <= 72 THEN 'Less than or equal to 72'
        ELSE 'Other'
    END AS `Condition`
FROM student;