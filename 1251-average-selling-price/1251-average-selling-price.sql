# Write your MySQL query statement below
WITH a AS(SELECT p.product_id , SUM(p.price*u.units) AS ct
FROM Prices p LEFT JOIN UnitsSold u
ON p.product_id = u.product_id
WHERE u.purchase_date between p.start_date and p.end_date
GROUP BY 1),

b AS (SELECT product_id , SUM(units) as pt
FROM UnitsSold
GROUP BY 1)

SELECT a.product_id , ROUND(ct/pt,2) AS average_price
FROM a JOIN b ON a.product_id = b.product_id