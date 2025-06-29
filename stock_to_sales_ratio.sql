SELECT 
    p.productCode, 
    p.productName, 
    p.quantityInStock, 
    COALESCE(SUM(od.quantityOrdered), 0) AS total_sold, 
    (p.quantityInStock / NULLIF(SUM(od.quantityOrdered) / 12, 0)) AS months_of_stock
FROM 
    mintclassics.products p
    LEFT JOIN mintclassics.orderdetails od ON p.productCode = od.productCode
    LEFT JOIN mintclassics.orders o ON od.orderNumber = o.orderNumber
WHERE 
    o.orderDate >= DATE_SUB('2025-06-29', INTERVAL 12 MONTH)
GROUP BY 
    p.productCode, p.productName, p.quantityInStock
HAVING 
    total_sold > 0
ORDER BY 
    months_of_stock DESC;