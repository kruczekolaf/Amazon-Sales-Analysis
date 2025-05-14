-- 1. Spalte Customer_ID zur Haupttabelle hinzufügen (nur einmal notwendig)
ALTER TABLE sales_data
ADD COLUMN Customer_ID INT;

-- 2. Temporäre Tabelle mit eindeutigen Kundenkombinationen erzeugen
DROP TEMPORARY TABLE IF EXISTS customer_mapping;

CREATE TEMPORARY TABLE customer_mapping AS
SELECT 
    Customer_Name,
    City,
    DENSE_RANK() OVER (ORDER BY Customer_Name, City) AS Customer_ID
FROM (
    SELECT DISTINCT Customer_Name, City
    FROM sales_data
) AS unique_customers;

-- 3. Bestehende Customer_IDs zurücksetzen (optional, falls du sicherstellen willst, dass alles neu generiert wird)
UPDATE sales_data
SET Customer_ID = NULL;

-- 4. Customer_ID in der Haupttabelle anhand der Mapping-Tabelle aktualisieren
UPDATE sales_data AS t
JOIN customer_mapping AS c
  ON t.Customer_Name = c.Customer_Name AND t.City = c.City
SET t.Customer_ID = c.Customer_ID;
