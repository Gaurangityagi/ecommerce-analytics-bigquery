-- RFM base query
SELECT
  user_id,
  DATE_DIFF(CURRENT_DATE(), MAX(DATE(created_at)), DAY) AS recency,
  COUNT(DISTINCT order_id) AS frequency,
  ROUND(SUM(sale_price), 2) AS monetary
FROM `bigquery-public-data.thelook_ecommerce.order_items`
WHERE status = 'Complete'
GROUP BY user_id;