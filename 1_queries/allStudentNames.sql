SELECT id , name FROM students WHERE cohort_id = 1 ORDER BY name; 
SELECT count(*) FROM students WHERE cohort_id < 4;
SELECT count(id) FROM students WHERE cohort_id IN (1,2,3);
-- both line 2 and 3 2 ways to do same thing. use 3 ver
--gets selected things from table that doesnt have email and phone #
SELECT name, id, cohort_id FROM students WHERE email IS NULL OR phone IS NULL;
--gets selected things from table that doesnt have gmail as email type and phone #
SELECT name, id,email, cohort_id FROM students WHERE email NOT LIKE '%gmail.com' AND phone IS NULL;
-- Get all of the students currently enrolled.
SELECT name,id , cohort_id FROM students WHERE end_date IS NULL ORDER BY cohort_id;
-- Get all graduates without a linked Github account.
SELECT name, email, phone FROM students WHERE github IS NULL AND end_date IS NOT NULL;
