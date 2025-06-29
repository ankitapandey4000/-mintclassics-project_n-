SELECT 
    p.productLine, 
    COUNT(p.productCode) AS product_count, 
    SUM(p.quantityInStock) AS total_stock, 
    AVG(p.MSRP) AS avg_msrp
FROM 
    mintclassics.products p
GROUP BY 
    p.productLine
ORDER BY 
    total_stock DESC;