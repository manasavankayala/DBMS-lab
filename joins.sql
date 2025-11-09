-- Create tables
DROP TABLE IF EXISTS Students;
DROP TABLE IF EXISTS Courses;
CREATE TABLE Students (
    StudentID INT,
    Name VARCHAR(50),
    CourseID INT
);

CREATE TABLE Courses (
    CourseID INT,
    CourseName VARCHAR(50)
);

-- Insert data
INSERT INTO Students VALUES
(1, 'John', 101),
(2, 'Emma', 102),
(3, 'Raj', 103),
(4, 'Sara', NULL);

INSERT INTO Courses VALUES
(101, 'Math'),
(102, 'Science'),
(104, 'History');

-- 1. INNER JOIN
SELECT s.Name, c.CourseName
FROM Students s
INNER JOIN Courses c ON s.CourseID = c.CourseID;

-- 2. LEFT JOIN
SELECT s.Name, c.CourseName
FROM Students s
LEFT JOIN Courses c ON s.CourseID = c.CourseID;

-- 3. RIGHT JOIN
SELECT s.Name, c.CourseName
FROM Students s
RIGHT JOIN Courses c ON s.CourseID = c.CourseID;

-- 4. FULL OUTER JOIN (some databases: use UNION of LEFT + RIGHT)
SELECT s.Name, c.CourseName
FROM Students s
LEFT JOIN Courses c ON s.CourseID = c.CourseID
UNION
SELECT s.Name, c.CourseName
FROM Students s
RIGHT JOIN Courses c ON s.CourseID = c.CourseID;

-- 5. LEFT JOIN EXCLUDING INNER JOIN
SELECT s.Name, c.CourseName
FROM Students s
LEFT JOIN Courses c ON s.CourseID = c.CourseID
WHERE c.CourseID IS NULL;

-- 6. RIGHT JOIN EXCLUDING INNER JOIN
SELECT s.Name, c.CourseName
FROM Students s
RIGHT JOIN Courses c ON s.CourseID = c.CourseID
WHERE s.CourseID IS NULL;
