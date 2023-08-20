# Write your MySQL query statement below
WITH a AS (SELECT person_name , SUM(weight) OVER(ORDER BY turn) AS total_weight
FROM Queue)

SELECT a.person_name FROM a
WHERE a.total_weight <= 1000
ORDER BY a.total_weight DESC
LIMIT 1
