-- Verkaufte Gesamtmenge für jedes Produkt:
SELECT Product, Category, SUM(Quantity) AS TotalQuantitySold
FROM sales_data
GROUP BY Product, Category
ORDER BY TotalQuantitySold DESC;

