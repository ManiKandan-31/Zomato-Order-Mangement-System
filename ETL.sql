## **ETL**

1. Total Revenue from All Orders

SELECT SUM(oi.price * oi.quantity) AS total_revenue
FROM order_items oi;

2. Revenue by Item

SELECT i.item_name, SUM(oi.price * oi.quantity) AS total_revenue
FROM order_items oi
JOIN items i ON oi.item_id = i.item_id
GROUP BY i.item_name
ORDER BY total_revenue DESC;

3. Revenue by Payment Method

SELECT p.payment_method, SUM(p.amount) AS total_revenue
FROM payments p
JOIN orders o ON p.order_id = o.order_id
GROUP BY p.payment_method;

4. Total Revenue by Date

SELECT DATE(p.paid_at) AS date, SUM(p.amount) AS daily_revenue
FROM payments p
GROUP BY DATE(p.paid_at)
ORDER BY date;

5. Total Orders and Revenue by User

SELECT
    u.first_name,
    u.last_name,
    u.phone_number,
    u.email,
    COUNT(o.order_id) AS total_orders,
    SUM(oi.price * oi.quantity) AS total_revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN users u ON o.user_id = u.user_id
GROUP BY u.user_id
ORDER BY total_revenue DESC;

6. Items Ordered by Category

SELECT c.category_name, i.item_name, SUM(oi.quantity) AS total_quantity_ordered
FROM order_items oi
JOIN items i ON oi.item_id = i.item_id
JOIN categories c ON i.category_id = c.category_id
GROUP BY c.category_name, i.item_name
ORDER BY total_quantity_ordered DESC;

7. Orders by Payment Status

SELECT p.payment_status, COUNT(o.order_id) AS total_orders
FROM payments p
JOIN orders o ON p.order_id = o.order_id
GROUP BY p.payment_status;

8. Users with Most Orders

SELECT
    u.first_name,
    u.last_name,
    COUNT(o.order_id) AS total_orders
FROM users u
JOIN orders o ON u.user_id = o.user_id
GROUP BY u.user_id
ORDER BY total_orders DESC
LIMIT 5;

9. Revenue by Category

SELECT c.category_name, SUM(oi.price * oi.quantity) AS total_revenue
FROM order_items oi
JOIN items i ON oi.item_id = i.item_id
JOIN categories c ON i.category_id = c.category_id
GROUP BY c.category_name;

10. Items Purchased in Specific Order

SELECT oi.order_id, i.item_name, oi.quantity, oi.price
FROM order_items oi
JOIN items i ON oi.item_id = i.item_id
WHERE oi.order_id = 1;

11. Customer Details with Orders

SELECT
    c.first_name,
    c.last_name,
    c.phone_number,
    c.email,
    o.order_id,
    o.delivery_address,
    oi.item_id,
    oi.quantity
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN customers c ON o.user_id = c.user_id;

12. Revenue by Customer

SELECT
    c.first_name,
    c.last_name,
    c.phone_number,
    c.email,
    SUM(oi.price * oi.quantity) AS total_revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN customers c ON o.user_id = c.user_id
GROUP BY c.user_id
ORDER BY total_revenue DESC;
