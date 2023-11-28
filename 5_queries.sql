

-------------------------------------------------------------------------------
--                              Einfache Queries                             --
-------------------------------------------------------------------------------

-- 1.2
-- Idea: Join over lecturer, lecturer_module, module, and/or rating

-------------------------------------------------------------------------------
--                Common Table Expressions & Window-Funktionen               --
-------------------------------------------------------------------------------


-- 2.1.1

-- selects all ratings (text) submitted by students with the first name 'Felix'.
SELECT rating.rating
FROM (SELECT * FROM student WHERE first_name = 'Felix') AS felix
JOIN rating ON rating.student = felix.matriculation_no;

-- 2.1.2

-- selects all ratings (text) submitted by students with the first name 'Felix'.
WITH felix AS (SELECT * FROM student WHERE first_name = 'Felix')
SELECT rating.rating
FROM felix
JOIN rating ON rating.student = felix.matriculation_no;

-- 2.2.1

-- selects all students (by first and last name) and how many ratings they submitted.
WITH rating_counts AS (
     SELECT rating.student, COUNT(*) AS count FROM rating GROUP BY rating.student ORDER BY count DESC
)
SELECT student.first_name, student.last_name, rating_counts.count
FROM rating_counts
JOIN student ON rating_counts.student = student.matriculation_no;


-- 2.2.2

-- selects all ratings (incl. student that wrote it) and which number of comment
-- of theirs it is (e.g. 1st comment, 2nd comment, ...)
SELECT
    student.first_name,
    student.last_name,
    rating.rating,
    row_number() OVER rw
FROM rating
JOIN student ON rating.student = student.matriculation_no
WINDOW rw AS (PARTITION BY rating.student ORDER BY rating.timestamp);


-------------------------------------------------------------------------------
--                                   Views                                   --
-------------------------------------------------------------------------------



-- 3.1

-- View over 3 tables
-- View combines 3 tables
CREATE VIEW ratings AS
SELECT
  student.first_name,
  student.last_name,
  rating.rating,
  lecturer.first_name,
  lecturer.last_name
FROM 
    student
JOIN rating ON student.matriculation_no = rating.student
JOIN lecturer ON lecturer.id = rating.lecturer;


-- Call View as select
SELECT * from ratings;


-- 3.2

-- Updatable View
-- Creates a view that contains all lecturer with the name "Jöel"


