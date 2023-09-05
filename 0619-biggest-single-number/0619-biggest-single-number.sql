# Write your MySQL query statement below
WITH a AS (SELECT num,COUNT(num) as ct FROM MyNumbers
GROUP BY 1
having ct = 1)

SELECT MAX(a.num) AS num
FROM a