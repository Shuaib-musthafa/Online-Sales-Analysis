create database salesdb;
USE salesdb;

CREATE TABLE online_sales (
    Transaction_ID INT,
    Date DATE,
    Product_Category VARCHAR(255),
    Product_Name VARCHAR(255),
    Units_Sold INT,
    Unit_Price DECIMAL(10,2),
    Total_Revenue DECIMAL(10,2),
    Region VARCHAR(100),
    Payment_Method VARCHAR(50)
);

INSERT INTO online_sales 
    (Transaction_ID, Date, Product_Category, Product_Name, Units_Sold, Unit_Price, Total_Revenue, Region, Payment_Method) 
    VALUES (10001, '2024-01-01', 'Electronics', 'iPhone 14 Pro', 2, 999.99, 1999.98, 'North America', 'Credit Card');
INSERT INTO online_sales 
    (Transaction_ID, Date, Product_Category, Product_Name, Units_Sold, Unit_Price, Total_Revenue, Region, Payment_Method) 
    VALUES (10002, '2024-01-02', 'Home Appliances', 'Dyson V11 Vacuum', 1, 499.99, 499.99, 'Europe', 'PayPal');
INSERT INTO online_sales 
    (Transaction_ID, Date, Product_Category, Product_Name, Units_Sold, Unit_Price, Total_Revenue, Region, Payment_Method) 
    VALUES (10003, '2024-01-03', 'Clothing', 'Levi''s 501 Jeans', 3, 69.99, 209.97, 'Asia', 'Debit Card');
INSERT INTO online_sales 
    (Transaction_ID, Date, Product_Category, Product_Name, Units_Sold, Unit_Price, Total_Revenue, Region, Payment_Method) 
    VALUES (10004, '2024-01-04', 'Books', 'The Da Vinci Code', 4, 15.99, 63.96, 'North America', 'Credit Card');
INSERT INTO online_sales 
    (Transaction_ID, Date, Product_Category, Product_Name, Units_Sold, Unit_Price, Total_Revenue, Region, Payment_Method) 
    VALUES (10005, '2024-01-05', 'Beauty Products', 'Neutrogena Skincare Set', 1, 89.99, 89.99, 'Europe', 'PayPal');
    
SELECT Date, EXTRACT(YEAR FROM Date) AS order_year, EXTRACT(MONTH FROM Date) AS order_month FROM  online_sales;

SELECT  * FROM online_sales WHERE Date BETWEEN '2024-01-01' AND '2024-12-31';

SELECT YEAR(Date) AS order_year, MONTH(Date) AS order_month, SUM(Total_Revenue) AS total_revenue FROM online_sales WHERE Date BETWEEN '2024-01-01' AND '2024-12-31' GROUP BY YEAR(Date), MONTH(Date);

SELECT YEAR(Date) AS order_year,MONTH(Date) AS order_month,COUNT(DISTINCT Transaction_ID) AS total_orders FROM online_sales WHERE Date BETWEEN '2024-01-01' AND '2024-12-31' GROUP BY YEAR(Date), MONTH(Date);

    
SELECT YEAR(Date) AS order_year,MONTH(Date) AS order_month,SUM(Total_Revenue) AS total_revenue,COUNT(DISTINCT Transaction_ID) AS total_orders FROM online_sales WHERE  Date BETWEEN '2024-01-01' AND '2024-12-31' GROUP BY  YEAR(Date), MONTH(Date) ORDER BY  order_year, order_month;
 


