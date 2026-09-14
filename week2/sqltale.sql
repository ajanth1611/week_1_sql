CREATE TABLE sales (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(250),
    order_date DATE,
    category VARCHAR(100),
    sub_category VARCHAR(100),
    product_name VARCHAR(250),
    quantity INT,
    unit_price NUMERIC(10, 2),
    total_price NUMERIC(10, 2),
    region VARCHAR(50)
);
SELECT 
    customer_name,
    COUNT(order_id) AS total_orders,
    SUM(total_price) AS total_spent
FROM sales
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 5;