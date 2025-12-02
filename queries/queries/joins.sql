SELECT
    o.order_id,
    c.name,
    o.total_amount
FROM orders o
JOIN customers c ON c.id = o.customer_id;
