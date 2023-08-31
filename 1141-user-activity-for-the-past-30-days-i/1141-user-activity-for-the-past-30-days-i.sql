# Write your MySQL query statement below
SELECT activity_date AS day,COUNT(distinct(user_id)) as active_users
FROM Activity
Where activity_date BETWEEN date_add('2019-07-27', interval - 29 day) AND '2019-07-27'
group by activity_date;
