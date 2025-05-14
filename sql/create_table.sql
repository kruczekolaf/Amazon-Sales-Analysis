-- Tabelle erstellen
CREATE TABLE IF NOT EXISTS sales_data (
    Order_ID VARCHAR(255),
    Order_Date DATE,
    Product VARCHAR(255),
    Category VARCHAR(255),
	Price DECIMAL(10, 2),
    Quantity INT,
    Total_Sales INT,
    Customer_Name VARCHAR(255),
    City VARCHAR(255),
    Payment_Method VARCHAR(255),
	Order_Status VARCHAR(255)
);