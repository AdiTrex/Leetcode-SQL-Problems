With a AS(SELECT contest_id,COUNT(user_id) as ct
FROM Register
GROUP BY 1),

b As (SELECT COUNT(user_id) as pt
FROM Users)

SELECT a.contest_id,ROUND((a.ct/b.pt)*100,2) AS percentage
FROM a,b
ORDER BY 2 DESC , 1 ASC