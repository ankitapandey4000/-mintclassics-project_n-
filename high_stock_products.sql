SELECT 
    p.productCode, 
    p.productName, 
    p.quantityInStock, 
    p.buyPrice, 
    p.MSRP
FROM 
    mintclassics.products p
WHERE 
    p.quantityInStock > 5000
ORDER BY 
    p.quantityInStock DESC;