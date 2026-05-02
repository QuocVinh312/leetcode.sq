-- Last updated: 5/2/2026, 5:01:59 PM
# Write your MySQL query statement below
SELECT 
    s.student_id, 
    student_name, 
    su.subject_name, 
    COUNT(e.student_id) AS attended_exams
FROM 
    Students AS s
CROSS JOIN 
    Subjects AS su
LEFT JOIN 
    Examinations AS e ON s.student_id = e.student_id 
    AND e.subject_name = su.subject_name
GROUP BY 
    s.student_id, 
    su.subject_name
ORDER BY 
    s.student_id, 
    su.subject_name
