SELECT a.student_id, a.student_name, sub.subject_name, COUNT(e.student_id) AS attended_exams
FROM Students a CROSS JOIN Subjects sub LEFT JOIN Examinations e
ON a.student_id = e.student_id AND sub.subject_name = e.subject_name
GROUP BY 1,2 ORDER BY 1,2
