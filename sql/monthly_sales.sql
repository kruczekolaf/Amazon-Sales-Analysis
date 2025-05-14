-- Monatlich aufgeteilte Umsätze für Januar & Februar 2025
SELECT MONTH(Order_Date) AS Monat_Nr, DATE_FORMAT(Order_Date, '%M') AS Month,SUM(Total_Sales) AS Total_Sales
FROM sales_data
WHERE YEAR(Order_Date) = 2025 AND MONTH(Order_Date) IN (2, 3, 4)
GROUP BY MONTH(Order_Date), DATE_FORMAT(Order_Date, '%M')
ORDER BY Monat_Nr;


