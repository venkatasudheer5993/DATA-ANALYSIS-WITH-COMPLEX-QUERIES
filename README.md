# DATA-ANALYSIS-WITH-COMPLEX-QUERIES

"COMPANY": COTECH IT SOLUTIONS

"NAME": THIRUVEEDHULA VENKATA SUDHEER

"INTERN ID": CT06DF153

"DOMAIN": SQL INTERN

"DURATION": 6 WEEKS

"MENTOR": Neela Santhosh Kumar

######################
# Summary of SQL Report: Trends and Patterns in Sales Data

In this task, I designed and executed a comprehensive sales analysis report using SQL. The objective was to generate insights and uncover patterns or trends by leveraging relational database design, data insertion, and advanced querying techniques such as window functions, subqueries, and Common Table Expressions (CTEs).

# Database Setup and Data Population

I began by creating a sample database named SalesAnalysis containing four core tables:

Customers – Stores customer information including ID, name, city, country, and registration date.

Products – Includes product details such as name, category, price, and supplier.

Orders – Captures order-related information like customer ID and order dates.

OrderDetails – Links orders and products with details on quantity, price, and discounts.

After creating the schema, I inserted a rich dataset that simulates real-world sales activity, with a diverse mix of customers, products across categories (Electronics, Grocery, Accessories, etc.), and a detailed order history.

# Analysis Performed

# 1.Sales Trend by Month

Used a CTE to calculate monthly sales.

Applied window functions to compute moving averages, month-over-month changes, and percentage contributions to total sales.

This identified temporal sales trends and seasonal patterns.

# 2.Customer Purchasing Patterns

Aggregated data per customer to analyze total spending, order frequency, and recent activity.

Ranked customers by total revenue, segmented them into quartiles, and calculated their revenue contribution percentages.

This revealed top-performing customers and buying behaviors.

# 3.Product Performance

Analyzed each product’s total units sold, revenue, and customer reach using subqueries.

Assigned ranks within each product category based on revenue, offering insights into best-selling items and underperformers.

# 4.Customer Cohort and Retention Analysis

Grouped customers by their first purchase month to form cohorts.

Tracked how many of each cohort’s customers returned in subsequent months.

Calculated retention rates and cohort sizes using window functions, aiding in understanding customer loyalty and engagement trends.

# 5.Category-Level Sales Insights

Summarized sales by product category.

Calculated cumulative sales, percentage contributions, and running totals.

This provided a clear view of which product categories drive the most revenue.

# Component               	Details

  Database           	MySQL (or compatible SQL-based RDBMS)
  
  Language	          SQL (Structured Query Language)
  
  Data Modeling      	  Tables created for Customers, Products, Orders, OrderDetails
  
SQL Features Used	        CREATE, INSERT, SELECT, JOIN, GROUP BY, ORDER BY, WHERE

Advanced SQL Window Functions:   RANK(), NTILE(), LAG(), SUM() OVER, AVG() OVER
                                 CTEs (WITH clause), Subqueries, Aggregations (SUM, COUNT, ROUND)
                                 
Date Functions         	DATE_FORMAT, MIN, MAX, FIRST_VALUE()  



# Conclusion
This SQL-driven report showcases the ability to structure, manage, and analyze relational sales data using sophisticated techniques. The insights derived can inform decision-making in areas such as inventory planning, customer segmentation, and marketing strategies.









