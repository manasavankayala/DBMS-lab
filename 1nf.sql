DROP DATABASE IF EXISTS normalforms;
CREATE DATABASE normalforms;
USE normalforms;

CREATE TABLE orders_1nf (
    order_id INT,
    customer_name VARCHAR(30),
    product VARCHAR(30),
    quantity INT
);

INSERT INTO orders_1nf VALUES
(1, 'Manasa', 'Pen', 10),
(1, 'Manasa', 'Book', 2),
(2, 'Ravi', 'Pencil', 5);
SELECT * FROM orders_1nf;
