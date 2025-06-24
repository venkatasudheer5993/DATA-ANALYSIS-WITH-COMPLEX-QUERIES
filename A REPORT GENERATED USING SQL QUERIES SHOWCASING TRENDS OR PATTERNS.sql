/*First, let's create a sample database (if it doesn't exist)*/
CREATE DATABASE IF NOT EXISTS SalesAnalysis;
USE SalesAnalysis;
/*creating  Customers table, products table,Orders table,Orderdetails table. Performing Sales Anaiysis on these tables.*/
/*Creatinfg Customer table in SalesAnalysis database*/
CREATE TABLE IF NOT EXISTS Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(100),
    country VARCHAR(100),
    registration_date DATE
);
/*Inserting  data into the Customer table*/
iNSERT iNTO Customers(customer_id,customer_name,city, country,registration_date)
VALUES (1,'John Doe','New York','USA','2024-01-15'),
(2,'Alice Smith','Los Angeles','USA','2024-02-20'),
(3,'Ravi Kumar','Hyderabad','India','2025-03-05'),
(4,'Mei Lin','Beijing','China','2024-01-25'),
(11,'Aarav Sharma','Delhi','India','2024-01-10'),
(12,'Saanvi Verma','Mumbai','India','2025-01-15'),
(13,'Vivaan Joshi','Bangalore','India','2024-02-05'),
(14,'Diya Mehta','Hyderabad','India','2024-02-10'),
(15,'Aditya Rao','Chennai','India','2025-02-25'),
(16,'Ishita Singh','Pune','India','2024-03-01'),
(17,'Krishna Desai','Ahmedabad','India','2024-03-08'),
(18,'Ananya Iyer','Kolkata','India','2025-03-15'),
(5,'Carlos Ruiz','Madrid','Spain','2024-04-10'),
(6,'Fatima Zahra','Casablanca','Morocco','2024-05-12'),
(7,'David Miller','Toronto','Canada','2025-03-30'),
(19,'Arjun Nair','Thiruvananthapuram','India','2024-03-20'),
(20,'Meera Kapoor','Jaipur','India','2024-04-05'),
(21,'Rohan Patil','Nagpur','India','2025-04-15'),
(22,'Sneha Reddy','Vijayawada','India','2024-04-20'),
(10,'Liam O\'Connor','Dublin','Ireland','2025-05-10');
/*Fetching the customer details from the salesAnalysis database*/
select*from Customers;
/*creating products table in SalesAnalysis database*/
CREATE TABLE IF NOT EXISTS Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    unit_price DECIMAL(10,2),
    supplier_id INT
);
/*inserting data into the products table */
INSERT INTO Products(product_id,product_name,category,unit_price,supplier_id)
VALUES
(1,'Samsung Galaxy M14','Electronics',13999.00,101),
(2,'Apple iPhone 13','Electronics',58999.00,102),
(3,'Realme Narzo 60x','Electronics',11499.00,103),
(4,'LG 32" Smart TV','Home Appliance',15999.00,104),
(5,'HP Laptop 15s','Computers',46999.00,105),
(6,'Tata Salt 1kg','Grocery',28.00,106),
(7,'Fortune Sunflower Oil 1L','Grocery',145.00,107),
(8,'Nike Running Shoes','Footwear',3299.00,108),
(9,'Adidas Sports Cap','Accessories',899.00,109),
(10,'Fastrack Watch','Accessories',1999.00,110),
(11,'OnePlus Nord CE 3','Electronics',24999.00,103),
(12,'Samsung Fridge 190L','Home Appliance',17999.00,104),
(13,'Lenovo ThinkPad E14','Computers',59999.00,105),
(14,'Aashirvaad Atta 5kg','Grocery',220.00,106),
(15,'Parachute Coconut Oil 200ml','Grocery',55.00,107),
(16,'Puma Sneakers','Footwear',3499.00,108),
(17,'Sony Headphones','Electronics',2499.00,101),
(18,'Boat Smart Watch','Accessories',1899.00,110),
(19,'Philips Trimmer','Electronics',1099.00,109),
(20,'Prestige Pressure Cooker','Home Appliance',2499.00,104);
/*Fetching the Products details from the salesAnalysis database*/
select*from Products;
/*creating Orders table in SalesAnalysis database*/
CREATE TABLE IF NOT EXISTS Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    required_date DATE,
    shipped_date DATE
);
/*inserting data into the Orders table */
INSERT INTO Orders(order_id,customer_id,order_date,required_date,shipped_date)
 VALUES (1001,2,'2025-06-01','2025-06-05','2025-06-03'),
(1002,14,'2025-06-02','2025-06-07','2025-06-04'),
(1003,16,'2025-06-03','2025-06-08','2025-06-05'),
(1004,18,'2025-06-04','2025-06-09','2025-06-06'),
(1005,7,'2025-06-05','2025-06-10','2025-06-07'),
(1006,13,'2025-06-06','2025-06-11','2025-06-08'),
(1007,3,'2025-06-07','2025-06-12','2025-06-09'),
(1008,21,'2025-06-08','2025-06-13','2025-06-10'),
(1009,12,'2025-06-09','2025-06-14','2025-06-11'),
(1010,6,'2025-06-10','2025-06-15','2025-06-12'),
(1011,23,'2025-06-11','2025-06-16','2025-06-13'),
(1012,4,'2025-06-12','2025-06-17','2025-06-14'),
(1013,17,'2025-06-13','2025-06-18','2025-06-15'),
(1014,22,'2025-06-14','2025-06-19','2025-06-16'),
(1015,5,'2025-06-15','2025-06-20','2025-06-17'),
(1016,10,'2025-06-16','2025-06-21','2025-06-18'),
(1017,24,'2025-06-17','2025-06-22','2025-06-19'),
(1018,8,'2025-06-18','2025-06-23','2025-06-20'),
(1019,18,'2025-06-19','2025-06-24','2025-06-21'),
(1020,19,'2025-06-20','2025-06-25','2025-06-22');
/*Fetching the  Orders details from the salesAnalysis database*/
select * from Orders;
/*creating OrderDetails table in SalesAnalysis database*/ 
CREATE TABLE IF NOT EXISTS OrderDetails (
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    discount DECIMAL(4,2)
);
/*inserting data into the OrderDetails table */
INSERT INTO OrderDetails(order_detail_id, order_id, product_id, quantity, unit_price, discount)
 VALUES (1, 1005, 2, 3, 199.00, 1.50),
(2, 1010, 11, 1, 17999.00, 5.00),
(3, 1003, 6, 2, 299.00, 0.00),
(4, 1017, 14, 4, 220.00, 2.00),
(5, 1012, 19, 1, 1099.00, 0.00),
(6, 1014, 9, 5, 450.00, 1.00),
(7, 1015, 3, 2, 149.00, 0.50),
(8, 1009, 18, 1, 1899.00, 0.00),
(9, 1001, 8, 2, 220.00, 0.00),
(10, 1006, 20, 3, 2499.00, 1.00),
(11, 1016, 1, 2, 799.00, 0.00),
(12, 1007, 10, 1, 750.00, 0.00),
(13, 1018, 5, 4, 1499.00, 3.00),
(14, 1011, 7, 1, 55.00, 0.00),
(15, 1002, 16, 2, 3499.00, 2.50),
(16, 1020, 4, 1, 399.00, 0.00),
(17, 1008, 17, 1, 2499.00, 1.00),
(18, 1019, 13, 1, 59999.00, 10.00),
(19, 1004, 12, 3, 17999.00, 5.00),
(20, 1013, 15, 2, 55.00, 0.00),
(21, 1012, 6, 2, 299.00, 0.00),
(22, 1004, 11, 1, 17999.00, 2.00),
(23, 1015, 19, 2, 1099.00, 1.00),
(24, 1001, 2, 3, 199.00, 0.00),
(25, 1006, 14, 4, 220.00, 1.50),
(26, 1002, 10, 2, 750.00, 0.00),
(27, 1010, 1, 1, 799.00, 0.00),
(28, 1003, 20, 2, 2499.00, 0.00),
(29, 1017, 8, 3, 220.00, 0.00),
(30, 1007, 18, 2,3798.00,0.00);
/*Fetching the  OrderDetails from the salesAnalysis database*/
select*from OrderDetails;


/* Now, let's perform the analysis using window functions, subqueries, and CTEs*/

/*1. Sales Trend Analysis by Month using Window Functions*/
WITH MonthlySales AS (
    SELECT 
        DATE_FORMAT(o.order_date, '%Y-%m') AS month,
        SUM(od.quantity * od.unit_price * (1 - od.discount)) AS monthly_sales
    FROM Orders o
    JOIN OrderDetails od ON o.order_id = od.order_id
    GROUP BY DATE_FORMAT(o.order_date, '%Y-%m')
)
SELECT 
    month,
    monthly_sales,
    ROUND(monthly_sales / SUM(monthly_sales) OVER () * 100, 2) AS pct_of_total,
    ROUND(AVG(monthly_sales) OVER (ORDER BY month ROWS BETWEEN 2 PRECEDING AND CURRENT ROW), 2) AS moving_avg_3month,
    monthly_sales - LAG(monthly_sales, 1) OVER (ORDER BY month) AS month_over_month_change
FROM MonthlySales
ORDER BY month;

/* 2. Customer Purchasing Patterns using Window Functions and CTE*/

WITH CustomerPurchases AS (
    SELECT 
        c.customer_id,
        c.customer_name,
        COUNT(DISTINCT o.order_id) AS order_count,
        SUM(od.quantity * od.unit_price * (1 - od.discount)) AS total_spent,
        MAX(o.order_date) AS last_order_date
    FROM Customers c
    JOIN Orders o ON c.customer_id = o.customer_id
    JOIN OrderDetails od ON o.order_id = od.order_id
    GROUP BY c.customer_id, c.customer_name
)
SELECT 
    customer_id,
    customer_name,
    order_count,
    total_spent,
    last_order_date,
    RANK() OVER (ORDER BY total_spent DESC) AS customer_rank,
    NTILE(4) OVER (ORDER BY total_spent DESC) AS customer_quartile,
    ROUND(total_spent / SUM(total_spent) OVER () * 100, 2) AS pct_of_total_revenue
FROM CustomerPurchases
ORDER BY total_spent DESC;

/* 3. Product Performance Analysis with Subqueries and Window Functions*/

SELECT 
    p.product_id,
    p.product_name,
    p.category,
    (SELECT COUNT(DISTINCT o.customer_id) 
     FROM Orders o 
     JOIN OrderDetails od ON o.order_id = od.order_id 
     WHERE od.product_id = p.product_id) AS unique_customers,
    (SELECT SUM(od.quantity) 
     FROM OrderDetails od 
     WHERE od.product_id = p.product_id) AS total_units_sold,
    (SELECT SUM(od.quantity * od.unit_price * (1 - od.discount)) 
     FROM OrderDetails od 
     WHERE od.product_id = p.product_id) AS total_revenue,
    RANK() OVER (PARTITION BY p.category ORDER BY 
        (SELECT SUM(od.quantity * od.unit_price * (1 - od.discount)) 
         FROM OrderDetails od 
         WHERE od.product_id = p.product_id) DESC) AS category_rank
FROM Products p
ORDER BY total_revenue DESC;

/*4. Customer Cohort Analysis (Retention) using CTEs and Window Functions*/

WITH FirstPurchases AS (
    SELECT 
        customer_id,
        MIN(order_date) AS first_order_date
    FROM Orders
    GROUP BY customer_id
),
MonthlyCohorts AS (
    SELECT 
        DATE_FORMAT(fp.first_order_date, '%Y-%m') AS cohort_month,
        DATE_FORMAT(o.order_date, '%Y-%m') AS order_month,
        COUNT(DISTINCT o.customer_id) AS customers
    FROM FirstPurchases fp
    JOIN Orders o ON fp.customer_id = o.customer_id
    GROUP BY DATE_FORMAT(fp.first_order_date, '%Y-%m'), DATE_FORMAT(o.order_date, '%Y-%m')
)
SELECT 
    cohort_month,
    order_month,
    customers,
    FIRST_VALUE(customers) OVER (PARTITION BY cohort_month ORDER BY order_month) AS cohort_size,
    ROUND(customers * 100.0 / FIRST_VALUE(customers) OVER (PARTITION BY cohort_month ORDER BY order_month), 2) AS retention_rate
FROM MonthlyCohorts
ORDER BY cohort_month, order_month;

/* 5. Running Total and Percentage of Sales by Product Category*/

WITH CategorySales AS (
    SELECT 
        p.category,
        SUM(od.quantity * od.unit_price * (1 - od.discount)) AS category_sales
    FROM Products p
    JOIN OrderDetails od ON p.product_id = od.product_id
    GROUP BY p.category
)
SELECT 
    category,
    category_sales,
    SUM(category_sales) OVER (ORDER BY category_sales DESC ROWS UNBOUNDED PRECEDING) AS running_total,
    ROUND(category_sales / SUM(category_sales) OVER () * 100, 2) AS pct_of_total,
    ROUND(SUM(category_sales) OVER (ORDER BY category_sales DESC ROWS UNBOUNDED PRECEDING) / 
          SUM(category_sales) OVER () * 100, 2) AS cumulative_pct
FROM CategorySales
ORDER BY category_sales DESC;

