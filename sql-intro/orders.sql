drop TABLE if exists orders

CREATE TABLE orders(
    orders_id SERIAL PRIMARY KEY,
    person_id INT,
    product_name VARCHAR(50),
    product_price DECIMAL(10, 2),
    quantity INT
);

INSERT INTO orders (order_id, person_id, product_name, product_price, quantity)
VALUES 
    ( 1, 'Product A', 10.00, 2),
    ( 1, 'Product B', 15.00, 1),
    ( 2, 'Product C', 20.00, 3),
    ( 3, 'Product D', 12.50, 2),
    ( 3, 'Product E', 8.00, 4);

SELECT * FROM orders
SELECT SUM(quantity) FROM orders
SELECT SUM(product_price) FROM orders
SELECT SUM(product_price) FROM orders GROUP BY person_id