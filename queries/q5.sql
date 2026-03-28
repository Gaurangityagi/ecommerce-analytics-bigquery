-- Rank customers by revenue with running total
SELECT
  user_id,
  ROUND(SUM(sale_price), 2) AS total_spent,
  RANK() OVER (ORDER BY SUM(sale_price) DESC) AS revenue_rank,
  ROUND(SUM(SUM(sale_price)) OVER (ORDER BY SUM(sale_price) DESC), 2) AS running_total
FROM `bigquery-public-data.thelook_ecommerce.order_items`
WHERE status = 'Complete'
GROUP BY user_id;


