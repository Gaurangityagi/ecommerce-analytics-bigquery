# E-Commerce Customer & Revenue Intelligence Dashboard

## Business Problem
How are customers distributed by value, and which segments 
drive the most revenue? This project analyzes 1M+ transactions 
from a global e-commerce dataset to answer this using SQL, 
BigQuery, and Power BI.

## Dataset
- Source: Google BigQuery Public Dataset (thelook_ecommerce)
- Scale: 1M+ order items, 30,000+ customers, 8 tables
- Tool: Google BigQuery (cloud SQL)

## Key Findings
- Top 41% of customers drive 80% of total revenue (Pareto Analysis)
- Revenue peaked in [month] with $X in sales
- [Top category] contributed the highest revenue at $X
- Cohort analysis shows highest drop-off after first purchase month
- RFM segmentation identified 4 distinct customer tiers

## Dashboard Panels
1. Monthly Revenue & Order Volume Trend
2. Pareto Analysis — Customer Revenue Concentration  
3. Product Category Performance
4. Cohort Retention Heatmap
5. RFM Customer Segmentation

## Tools Used
- Google BigQuery (SQL — joins, window functions, CTEs)
- Power BI (DAX measures, calculated columns, combo charts)
- Power Query (data transformation)
- Google Cloud Platform

## How to Run
1. Open BigQuery → run queries in /queries folder in order
2. Export each result as CSV
3. Load CSVs into Power BI Desktop
4. Open ecommerce_dashboard.pbix
