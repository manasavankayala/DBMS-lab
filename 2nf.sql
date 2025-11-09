-- Clean safely (drop children first)
DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS orders_2nf;
DROP TABLE IF EXISTS customer;
-- Recreate tables
CREATE TABLE customer (
  cust_id INT PRIMARY KEY,
  cust_name VARCHAR(30)
);
CREATE TABLE orders_2nf (
  order_id INT PRIMARY KEY,
  cust_id INT,
  FOREIGN KEY (cust_id) REFERENCES customer(cust_id)
);
CREATE TABLE items (
  item_id INT PRIMARY KEY,
  order_id INT,
  product VARCHAR(30),
  quantity INT,
  FOREIGN KEY (order_id) REFERENCES orders_2nf(order_id)
);
-- Insert data
INSERT INTO customer VALUES (1, 'Manasa'), (2, 'Ravi');
INSERT INTO orders_2nf VALUES (101, 1), (102, 2);
INSERT INTO items VALUES 
  (1, 101, 'Pen', 10),
  (2, 101, 'Book', 2),
  (3, 102, 'Pencil', 5);
-- Verify
SELECT o.order_id, c.cust_name, i.product, i.quantity
FROM orders_2nf o
JOIN customer c ON o.cust_id = c.cust_id
JOIN items i ON o.order_id = i.order_id;
