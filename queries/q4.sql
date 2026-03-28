SELECT
  p.category,
  COUNT(oi.id) AS items_sold,
  ROUND(SUM(oi.sale_price), 2) AS revenue,
  ROUND(AVG(oi.sale_price), 2) AS avg_price
FROM `bigquery-public-data.thelook_ecommerce.order_items` oi
JOIN `bigquery-public-data.thelook_ecommerce.products` p
  ON oi.product_id = p.id
WHERE oi.status = 'Complete'
GROUP BY p.category
ORDER BY revenue DESC;