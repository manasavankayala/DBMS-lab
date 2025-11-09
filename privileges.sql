-- Experiment: Create Users and Grant Privileges in MySQL

-- Step 1: Drop database if it already exists and create a new one
DROP DATABASE IF EXISTS companydb;
CREATE DATABASE companydb;
USE companydb;

-- Step 2: Create users (admin and staff)
CREATE USER IF NOT EXISTS 'admin'@'localhost' IDENTIFIED BY 'admin123';
CREATE USER IF NOT EXISTS 'staff'@'localhost' IDENTIFIED BY 'staff123';

-- Step 3: Grant privileges
-- Admin has full access to companydb
GRANT ALL PRIVILEGES ON companydb.* TO 'admin'@'localhost';

-- Staff has limited access (can only SELECT and INSERT)
GRANT SELECT, INSERT ON companydb.* TO 'staff'@'localhost';

-- Step 4: Apply privilege changes
FLUSH PRIVILEGES;

-- Step 5: Verify the privileges for each user
SHOW GRANTS FOR 'admin'@'localhost';
SHOW GRANTS FOR 'staff'@'localhost';
