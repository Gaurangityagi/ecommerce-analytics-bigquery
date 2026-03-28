-- First purchase month per user
WITH first_purchase AS (
  SELECT
    user_id,
    MIN(FORMAT_DATE('%Y-%m', created_at)) AS cohort_month
  FROM `bigquery-public-data.thelook_ecommerce.orders`
  GROUP BY user_id
),
purchases AS (
  SELECT
    o.user_id,
    fp.cohort_month,
    FORMAT_DATE('%Y-%m', o.created_at) AS purchase_month
  FROM `bigquery-public-data.thelook_ecommerce.orders` o
  JOIN first_purchase fp ON o.user_id = fp.user_id
)
SELECT
  cohort_month,
  purchase_month,
  COUNT(DISTINCT user_id) AS active_users
FROM purchases
GROUP BY cohort_month, purchase_month
ORDER BY cohort_month, purchase_month;