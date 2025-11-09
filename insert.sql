-- =========================================
-- EXPERIMENT 2: INSERT COMMAND
-- =========================================

-- Step 1: Create and use database
CREATE DATABASE IF NOT EXISTS DBMS_Experiments;
USE DBMS_Experiments;

-- Step 2: Create necessary tables (so INSERT has targets)
CREATE TABLE IF NOT EXISTS Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    Age INT CHECK (Age >= 18),
    City VARCHAR(50) DEFAULT 'Unknown'
);

CREATE TABLE IF NOT EXISTS Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

-- =========================================
-- INSERT COMMANDS
-- =========================================

-- 1️⃣ Insert values with single entry
INSERT INTO Students (StudentID, FirstName, LastName, Email, Age, City)
VALUES (1, 'John', 'Doe', 'john.doe@example.com', 20, 'New York');

-- 2️⃣ Insert values with multiple entries
INSERT INTO Students (StudentID, FirstName, LastName, Email, Age, City)
VALUES 
(2, 'Alice', 'Smith', 'alice.smith@example.com', 22, 'Boston'),
(3, 'Bob', 'Brown', 'bob.brown@example.com', 21, 'Chicago'),
(4, 'Mary', 'Johnson', 'mary.johnson@example.com', 19, DEFAULT);

-- 3️⃣ Insert into Courses table
INSERT INTO Courses (CourseID, CourseName)
VALUES 
(101, 'Database Systems'),
(102, 'Operating Systems'),
(103, 'Computer Networks');

-- 4️⃣ Insert into Enrollments table
INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID)
VALUES 
(1, 1, 101),
(2, 2, 102),
(3, 3, 103),
(4, 4, 101);

-- =========================================
-- VIEW INSERTED DATA
-- =========================================
SELECT * FROM Students;
SELECT * FROM Courses;
SELECT * FROM Enrollments;

-- =========================================
-- END OF EXPERIMENT 2
-- =========================================
