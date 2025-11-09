-- Create database
CREATE DATABASE normalforms3;
USE normalforms3;
-- Tables for 3NF
CREATE TABLE city (
  city_name VARCHAR(30) PRIMARY KEY,
  state VARCHAR(30)
);
CREATE TABLE customer (
  cust_id INT PRIMARY KEY,
  cust_name VARCHAR(30),
  city_name VARCHAR(30),
  FOREIGN KEY (city_name) REFERENCES city(city_name)
);
CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  cust_id INT,
  product VARCHAR(30),
  quantity INT,
  FOREIGN KEY (cust_id) REFERENCES customer(cust_id)
);
-- Insert data
INSERT INTO city VALUES 
('Vijayawada', 'Andhra Pradesh'),
('Hyderabad', 'Telangana');
INSERT INTO customer VALUES
(1, 'Manasa', 'Vijayawada'),
(2, 'Ravi', 'Hyderabad');
INSERT INTO orders VALUES
(101, 1, 'Pen', 10),
(102, 1, 'Book', 5),
(103, 2, 'Pencil', 6);
-- Display result
SELECT o.order_id, c.cust_name, c.city_name, ci.state, o.product, o.quantity
FROM orders o
JOIN customer c ON o.cust_id = c.cust_id
JOIN city ci ON c.city_name = ci.city_name;
