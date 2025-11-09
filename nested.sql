CREATE TABLE department (
  dept_id INT PRIMARY KEY,
  dept_name VARCHAR(20)
);
CREATE TABLE student (
  stu_id INT PRIMARY KEY,
  stu_name VARCHAR(20),
  dept_id INT,
  FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);
INSERT INTO department VALUES (1, 'CSE'), (2, 'ECE');
INSERT INTO student VALUES 
(101, 'Manasa', 1),
(102, 'Ravi', 2),
(103, 'Priya', 1);
SELECT stu_name 
FROM student
WHERE dept_id = (SELECT dept_id FROM department WHERE dept_name = 'CSE');
