-- Höchste Sales nach Städten sortiert
SELECT City, SUM(Total_Sales) AS Sum_Total_Sales
FROM sales_data
GROUP BY City
ORDER BY Sum_Total_Sales DESC;

