WITH a AS(SELECT m.user_id , COUNT(m.user_id),u.name As results
FROM MovieRating m JOIN Users u 
ON m.user_id = u.user_id 
GROUP BY 1
ORDER BY 2 DESC , 3
LIMIT 1) ,
b AS (
  SELECT m.movie_id , p.title AS results , AVG(rating) AS ct 
FROM MovieRating m JOIN Movies p 
ON m.movie_id = p.movie_id
WHERE created_at LIKE '2020-02-%'
GROUP BY 1
ORDER BY ct DESC, 2
LIMIT 1

)

SELECT a.results
FROM a
UNION ALL
SELECT b.results
FROM b



