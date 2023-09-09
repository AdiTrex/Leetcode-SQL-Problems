# Write your MySQL query statement below
SELECT sell_date,COUNT(DISTINCT(product)) AS num_sold,
GROUP_CONCAT(DISTINCT(Product) ORDER BY Product) AS products
FROM Activities
GROUP BY 1
ORDER BY 1


