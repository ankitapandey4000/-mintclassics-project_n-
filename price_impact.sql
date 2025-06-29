SELECT 
    p.productCode, 
    p.productName, 
    p.MSRP, 
    SUM(od.quantityOrdered) AS total_sold
FROM 
    mintclassics.products p
    JOIN mintclassics.orderdetails od ON p.productCode = od.productCode
    JOIN mintclassics.orders o ON od.orderNumber = o.orderNumber
WHERE 
    o.orderDate >= DATE_SUB('2025-06-29', INTERVAL 12 MONTH)
GROUP BY 
    p.productCode, p.productName, p.MSRP
ORDER BY 
    total_sold DESC;