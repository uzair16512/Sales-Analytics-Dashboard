-- Total Revenue & Orders
SELECT COUNT(DISTINCT order_id) AS total_orders,
ROUND(SUM(quantity * unit_price * (1 - discount_pct/100)),2) AS total_revenue
FROM order_items;

-- Revenue by Product
SELECT product_id,
ROUND(SUM(quantity * unit_price * (1 - discount_pct/100)),2) AS revenue
FROM order_items
GROUP BY product_id
ORDER BY revenue DESC;

-- Units Sold by Category
SELECT p.category,
SUM(oi.quantity) AS units_sold
FROM order_items oi
JOIN products p ON p.product_id = oi.product_id
GROUP BY p.category;
