-- Last updated: 5/2/2026, 3:26:16 PM
# Write your MySQL query statement below

SELECT 
    a.machine_id, 
    ROUND(AVG(a.timestamp - b.timestamp),3) AS processing_time
FROM 
    Activity AS a, 
    Activity AS b
WHERE 
    a.machine_id = b.machine_id AND
    a.process_id = b.process_id AND 
    a.activity_type = 'end' AND
    b.activity_type = 'start'
GROUP BY machine_id
