-- Monthly revenue trend
SELECT
  FORMAT_DATE('%Y-%m', created_at) AS month,
  ROUND(SUM(sale_price), 2) AS total_revenue,
  COUNT(DISTINCT order_id) AS total_orders,
  ROUND(SUM(sale_price) / COUNT(DISTINCT order_id), 2) AS avg_order_value
FROM `bigquery-public-data.thelook_ecommerce.order_items`
WHERE status = 'Complete'
GROUP BY month
ORDER BY month;