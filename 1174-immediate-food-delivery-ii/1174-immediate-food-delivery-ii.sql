WITH a AS ( SELECT *, RANK() OVER(PARTITION BY customer_id ORDER BY order_date ASC) AS r FROM Delivery d)

SELECT ROUND(AVG(CASE WHEN order_date = customer_pref_delivery_date THEN 1.0 ELSE 0.0 END)*100,2) AS immediate_percentage
FROM a
WHERE r = 1;

