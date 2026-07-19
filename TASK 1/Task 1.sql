-- 1. Total Sales
SELECT SUM(sales) AS total_sales
FROM store;
-- 2. Total Profit
SELECT SUM(profit) AS total_profit
FROM store;
-- 3. Total Customers
SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM store;
-- 4. Sales by Category
SELECT category,
SUM(sales) AS total_sales
FROM store
GROUP BY category
ORDER BY total_sales DESC;
-- 5. Profit by Category
SELECT category,
SUM(profit) AS total_profit
FROM store
GROUP BY category
ORDER BY total_profit DESC;
-- 6. Sales by Segment
SELECT segment,
SUM(sales) AS total_sales
FROM store
GROUP BY segment
ORDER BY total_sales DESC;
-- 7. Monthly Sales
SELECT
    EXTRACT(MONTH FROM TO_DATE(order_date, 'MM/DD/YYYY')) AS month,
    SUM(sales) AS total_sales
FROM store
GROUP BY month
ORDER BY month;
-- 8. Monthly Profit
SELECT
    EXTRACT(MONTH FROM TO_DATE(order_date, 'MM/DD/YYYY')) AS month,
    SUM(sales) AS total_sales
FROM store
GROUP BY month
ORDER BY month;
-- 9. Top 10 Products by Sales
SELECT product_name,
SUM(sales) AS total_sales
FROM store
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;
-- 10. Top 10 Products by Profit
SELECT product_name,
SUM(profit) AS total_profit
FROM store
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;
-- 11. Top 10 Sub-Categories by Sales
SELECT "sub-category",
SUM(sales) AS total_sales
FROM store
GROUP BY "sub-category"
ORDER BY total_sales DESC
LIMIT 10;
-- 12. Top 10 Sub-Categories by Profit
SELECT "sub-category",
SUM(profit) AS total_profit
FROM store
GROUP BY "sub-category"
ORDER BY total_profit DESC
LIMIT 10;