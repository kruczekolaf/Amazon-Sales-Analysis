-- Anzahl der stornierten Bestellungen nach Kategorie
SELECT Category, COUNT(*) AS Cancelled_Orders
FROM sales_data
WHERE REPLACE(TRIM(Order_Status), '\r', '') = 'Cancelled'
GROUP BY Category
ORDER BY Cancelled_Orders DESC;