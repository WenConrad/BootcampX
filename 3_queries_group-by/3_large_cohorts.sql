SELECT cohorts.name, count(students.*) AS student_count
FROM students
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.id
HAVING count(students.*) >= 18
ORDER BY student_count;