# Write your MySQL query statement below
WITH a AS (SELECT product_id,year,quantity,price,
DENSE_RANK() OVER (Partition BY product_id ORDER BY year ASC) AS ct 
FROM Sales)

SELECT a.product_id,a.year AS first_year,a.quantity,a.price
FROM a
WHERE ct = 1
