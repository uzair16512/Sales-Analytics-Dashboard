CREATE VIEW v_sales AS
SELECT
  o.order_id,
  o.order_date,
  o.channel,
  o.status,
  c.customer_name,
  c.region,
  p.product_name,
  p.category,
  oi.quantity,
  oi.unit_price,
  oi.discount_pct,
  ROUND(oi.quantity * oi.unit_price * (1 - oi.discount_pct/100),2) AS net_sales
FROM orders o
JOIN customers c ON c.customer_id = o.customer_id
JOIN order_items oi ON oi.order_id = o.order_id
JOIN products p ON p.product_id = oi.product_id;
