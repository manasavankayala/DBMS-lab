DROP TABLE IF EXISTS student;
CREATE TABLE student (
  id INT,
  name VARCHAR(30)
);
INSERT INTO student (id, name) VALUES
(1, 'Manasa'),
(2, 'Ravi'),
(3, 'Manoj'),
(4, 'Priya'),
(5, 'Kiran');
-- Names starting with 'Ma'
SELECT name 
FROM student 
WHERE name LIKE 'Ma%';
-- Names containing 'ri' (case-insensitive)
SELECT name 
FROM student 
WHERE LOWER(name) LIKE '%ri%';
