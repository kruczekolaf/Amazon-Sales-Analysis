-- Kunden nach Gesamtausgaben sortieren
SELECT Customer_ID, SUM(Total_Sales) AS TotalAmountSpent
FROM sales_data
GROUP BY Customer_ID
ORDER BY TotalAmountSpent DESC;