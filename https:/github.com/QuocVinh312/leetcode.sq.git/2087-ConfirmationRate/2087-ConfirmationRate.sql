-- Last updated: 5/4/2026, 11:36:47 AM

SELECT s.user_id, ROUND(IFNULL(AVG(IF(action = 'confirmed', 1, 0)),0),2) as confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c ON s.user_id = c.user_id
GROUP BY s.user_id
