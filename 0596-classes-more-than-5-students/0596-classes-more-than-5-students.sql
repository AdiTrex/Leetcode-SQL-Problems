# Write your MySQL query statement below
with a AS (SELECT COUNT(distinct(student)) AS ct , class
FROM Courses
GROUP BY 2 )

SELECT a.class FROM a
WHERE a.ct > 4