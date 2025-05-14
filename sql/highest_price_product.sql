-- Produkt mit dem höchsten Preis
SELECT Product, MAX(Price) AS HighestPrice
FROM sales_data
GROUP BY Product;