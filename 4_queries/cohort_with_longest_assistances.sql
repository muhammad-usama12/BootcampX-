SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests 
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1;


-- SELECT max (average_assistance_time) as average_assistance_time
-- FROM (
-- SELECT cohorts.name, avg(assistance_requests.completed_at - assistance_requests.started_at) as average_assistance_time
-- FROM assistance_requests
-- JOIN students ON students.id = assistance_requests.student_id
-- JOIN cohorts ON cohorts.id = cohort_id
-- GROUP BY cohorts.name
-- ORDER BY average_assistance_time ASC
-- ) AS average_assistance_time;

