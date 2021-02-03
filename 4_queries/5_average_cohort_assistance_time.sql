SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
FROM students
JOIN cohorts ON cohort_id = cohorts.id
JOIN assistance_requests ON students.id = student_id
GROUP BY cohorts.name
ORDER BY average_assistance_time;

-- COMPASS
-- SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
-- FROM assistance_requests 
-- JOIN students ON students.id = assistance_requests.student_id
-- JOIN cohorts ON cohorts.id = cohort_id
-- GROUP BY cohorts.name
-- ORDER BY average_assistance_time;