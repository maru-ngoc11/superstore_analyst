CREATE DATABASE superstore;
use superstore;
select * from superstore;
-- Q1: Total revenue and Profit by region/state
SELECT
    state,
    region,
    ROUND(SUM(sales), 2) AS revenue,
    ROUND(SUM(profit), 2) AS profit
FROM superstore
GROUP BY state, region
ORDER BY revenue DESC;

-- Q2: Average order of value by category
SELECT
    category,
    ROUND(SUM(sales) / COUNT(DISTINCT order_id), 2) AS aov
FROM superstore
GROUP BY category
ORDER BY aov DESC;

-- Q3: How does discount affect profit margin
SELECT
    CASE
        WHEN discount = 0 THEN 'No Discount'
        ELSE 'Discount'
    END AS discount_group,
    ROUND(SUM(sales),2) AS revenue,
    ROUND(SUM(profit),2) AS profit,
    ROUND(SUM(profit)/SUM(sales)*100,2) AS profit_margin_pct
FROM superstore
GROUP BY discount_group;

-- Q4: Which year had the highest number of active customers?
SELECT
    YEAR(order_date) AS year,
    COUNT(DISTINCT customer_id) AS customers
FROM superstore
GROUP BY year
ORDER BY year;

-- Q5: Top 5 products generating the highest total profit
SELECT 
	product_name,
	ROUND(SUM(profit),2) as profit,
	ROUND(SUM(profit)/SUM(sales)*100,2) AS profit_margin_pct
FROM superstore
GROUP BY product_name
ORDER BY profit DESC
LIMIT 5; 

-- Q6: Top 5 products generating the lower total profit 
SELECT
    product_name,
    ROUND(SUM(profit),2) AS total_loss
FROM superstore
GROUP BY product_name
HAVING SUM(profit) < 0
ORDER BY total_loss ASC
LIMIT 5;
