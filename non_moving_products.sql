SELECT 
    p.productCode, 
    p.productName, 
    p.quantityInStock, 
    MAX(o.orderDate) AS last_ordered
FROM 
    mintclassics.products p
    LEFT JOIN mintclassics.orderdetails od ON p.productCode = od.productCode
    LEFT JOIN mintclassics.orders o ON od.orderNumber = o.orderNumber
GROUP BY 
    p.productCode, p.productName, p.quantityInStock
HAVING 
    last_ordered IS NULL OR last_ordered < DATE_SUB('2025-06-29', INTERVAL 12 MONTH)
ORDER BY 
    p.quantityInStock DESC;