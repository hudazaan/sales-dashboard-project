-- Use database
USE sales_db;

-- Total revenue
SELECT SUM(Sales) AS total_revenue 
FROM sales;

-- Revenue by category
SELECT Category, SUM(Sales) AS revenue
FROM sales
GROUP BY Category
ORDER BY revenue DESC;

-- Monthly sales trend
SELECT MONTH(`Order Date`) AS month, SUM(Sales) AS revenue
FROM sales
GROUP BY month
ORDER BY month;

-- Revenue by Segment
SELECT Segment, SUM(Sales) AS revenue
FROM sales
GROUP BY Segment
ORDER BY revenue DESC;

-- Revenue by region
SELECT Region, SUM(Sales) AS revenue
FROM sales
GROUP BY Region;
ORDER BY revenue DESC;

-- Revenue by Sub-Category
SELECT `Sub-Category`, SUM(Sales) AS revenue
FROM sales
GROUP BY `Sub-Category`
ORDER BY revenue DESC;


