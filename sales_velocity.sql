SELECT 
    p.productCode, 
    p.productName, 
    COALESCE(SUM(od.quantityOrdered), 0) AS units_sold, 
    DATEDIFF('2025-06-29', MIN(o.orderDate)) AS days_since_first_sale, 
    (COALESCE(SUM(od.quantityOrdered), 0) / NULLIF(DATEDIFF('2025-06-29', MIN(o.orderDate)), 0)) AS daily_sales_rate
FROM 
    mintclassics.products p
    LEFT JOIN mintclassics.orderdetails od ON p.productCode = od.productCode
    LEFT JOIN mintclassics.orders o ON od.orderNumber = o.orderNumber
WHERE 
    o.orderDate >= DATE_SUB('2025-06-29', INTERVAL 12 MONTH) OR o.orderDate IS NULL
GROUP BY 
    p.productCode, p.productName
ORDER BY 
    daily_sales_rate ASC;