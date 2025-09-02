SELECT category, AVG(price) AS average_course FROM sql_truc.courses GROUP BY category;

SELECT MIN(price) AS minimum_course, MAX(price) AS maximum_course FROM sql_truc.courses;

SELECT course_id, COUNT(course_id) AS total_registrations FROM sql_truc.enrollments GROUP BY course_id;





SELECT course_id, AVG(completed) AS average_completion FROM sql_truc.enrollments GROUP BY course_id HAVING AVG(completed) > 0.8;