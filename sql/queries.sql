-- =====================================================
-- E-COMMERCE SALES ANALYSIS - CORE QUERIES
-- Author: Patrick Adu Osei
-- Dataset: Sample Superstore
-- Tool: SQLite
-- Purpose: Business performance and customer insights
-- =====================================================


-- =====================================================
-- 1. TOP 10 CUSTOMERS BY REVENUE
-- Purpose: Identify high-value customers contributing most revenue
-- =====================================================

SELECT 
    "Customer Name" AS customer_name,
    ROUND(SUM(Sales), 2) AS total_revenue
FROM sales_data
GROUP BY "Customer Name"
ORDER BY total_revenue DESC
LIMIT 10;


-- =====================================================
-- 2. REVENUE BY REGION
-- Purpose: Understand geographic performance distribution
-- =====================================================

SELECT 
    Region,
    ROUND(SUM(Sales), 2) AS total_revenue
FROM sales_data
GROUP BY Region
ORDER BY total_revenue DESC;


-- =====================================================
-- 3. MONTHLY SALES TREND
-- Purpose: Analyse sales trends and seasonality over time
-- =====================================================

SELECT 
    STRFTIME('%Y-%m', Order_Date) AS month,
    ROUND(SUM(Sales), 2) AS monthly_sales
FROM sales_data
GROUP BY month
ORDER BY month;


-- =====================================================
-- 4. TOP 10 PRODUCT SUB-CATEGORIES BY REVENUE
-- Purpose: Identify best-performing product types
-- =====================================================

SELECT 
    "Sub-Category" AS sub_category,
    ROUND(SUM(Sales), 2) AS total_revenue
FROM sales_data
GROUP BY "Sub-Category"
ORDER BY total_revenue DESC
LIMIT 10;
