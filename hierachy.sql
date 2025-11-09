-- Check if the database exists and then drop it
DROP DATABASE IF EXISTS testdb;
CREATE DATABASE testdb;
USE testdb;
CREATE TABLE students (id INT PRIMARY KEY, name VARCHAR(50), age INT);
