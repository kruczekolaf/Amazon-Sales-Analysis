-- Datei importieren
LOAD DATA INFILE 'C:/Users/OlafK/Desktop/Dateien/Football/OutdoorEscape/GitHub/amazon_sales_data_2025.csv'
INTO TABLE sales_data
FIELDS TERMINATED BY ','  
ENCLOSED BY '"'  
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS  
(Order_ID, @Order_Date, Product, Category, Price, Quantity, Total_Sales, Customer_Name, City, Payment_Method, Order_Status)
SET Order_Date = STR_TO_DATE(CONCAT('2025-', SUBSTRING(@Order_Date, 4, 2), '-', SUBSTRING(@Order_Date, 7, 2)), '%Y-%m-%d');