with a AS (SELECT product_id,new_price,change_date, DENSE_RANK() OVER(PARTITION BY product_id ORDER BY change_date DESC ) As ct
FROM Products
WHERE change_date <= '2019-08-16' ),

b AS ( SELECT a.product_id,a.new_price FROM a
where a.ct=1)

SELECT DISTINCT(p.product_id) AS product_id, IFNULL(b.new_price,10) AS price
FROM Products p LEFT JOIN b ON p.product_id = b.product_id 

