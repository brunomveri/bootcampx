SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM cohorts
JOIN students ON cohorts.id = cohort_id
JOIN assistance_requests ON students.id = student_id
JOIN teachers ON teacher_id = teachers.id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;

-- COMPASS
-- SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
-- FROM teachers
-- JOIN assistance_requests ON teacher_id = teachers.id
-- JOIN students ON student_id = students.id
-- JOIN cohorts ON cohort_id = cohorts.id
-- WHERE cohorts.name = 'JUL02'
-- ORDER BY teacher;