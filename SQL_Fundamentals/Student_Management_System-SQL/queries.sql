--------------------------------------------------
-- To View all students
--------------------------------------------------

SELECT *
FROM students;

--------------------------------------------------
-- To Display only first and last name
--------------------------------------------------

SELECT first_name,
       last_name
FROM students;

--------------------------------------------------
-- To Display Students from Pune
--------------------------------------------------

SELECT *
FROM students
WHERE city='Pune';

--------------------------------------------------
-- To Display AI & ML department
--------------------------------------------------

SELECT *
FROM students
WHERE department='AI & ML';

--------------------------------------------------
-- To Display Students having CGPA above 9
--------------------------------------------------

SELECT *
FROM students
WHERE cgpa>9;

--------------------------------------------------
-- To Display Students age less than 21
--------------------------------------------------

SELECT *
FROM students
WHERE age<21;

--------------------------------------------------
-- To Display Top 5 students
--------------------------------------------------

SELECT *
FROM students
ORDER BY cgpa DESC
LIMIT 5;

--------------------------------------------------
-- To Display Order students by CGPA
--------------------------------------------------

SELECT *
FROM students
ORDER BY cgpa DESC;

--------------------------------------------------
-- To Display in Alphabetical order
--------------------------------------------------

SELECT *
FROM students
ORDER BY first_name;

--------------------------------------------------
-- To Display First 3 Computer Science students
--------------------------------------------------

SELECT *
FROM students
WHERE department='Computer Science'
LIMIT 3;