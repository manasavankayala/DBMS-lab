-- =========================================
-- EXPERIMENT 1: CREATE TABLE WITH CONSTRAINTS
-- =========================================

-- Step 1: Create and use database
CREATE DATABASE IF NOT EXISTS DBMS_Experiments;
USE DBMS_Experiments;

-- Step 2: Create table "Students" with constraints
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,              -- PRIMARY KEY constraint
    FirstName VARCHAR(50) NOT NULL,         -- NOT NULL constraint
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,              -- UNIQUE constraint
    Age INT CHECK (Age >= 18),              -- CHECK constraint
    City VARCHAR(50) DEFAULT 'Unknown'      -- DEFAULT constraint
);

-- Step 3: Create another table "Courses"
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL
);

-- Step 4: Create "Enrollments" table with FOREIGN KEY constraint
CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID), -- FOREIGN KEY constraint
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

-- Step 5: Create an index for faster searching
CREATE INDEX idx_student_email ON Students(Email);

-- Step 6: Verify table creation
SHOW TABLES;
DESCRIBE Students;
DESCRIBE Courses;
DESCRIBE Enrollments;

