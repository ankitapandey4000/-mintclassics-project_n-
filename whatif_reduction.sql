 SELECT 
    p.productCode, 
    p.productName, 
    p.quantityInStock, 
    (p.quantityInStock * 0.95) AS reduced_stock
FROM 
    mintclassics.products p;