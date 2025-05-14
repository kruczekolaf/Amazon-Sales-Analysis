-- Verwendete Zahlungsarten, sortiert nach Häufigkeit
SELECT Payment_Method, COUNT(*) AS PaymentCount
FROM sales_data
GROUP BY Payment_Method
ORDER BY PaymentCount DESC;