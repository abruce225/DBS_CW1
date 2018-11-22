SELECT uun,
       Cast(Avg(grade) AS NUMERIC (5, 2))
FROM   students
       JOIN exams
         ON students.uun = exams.student
GROUP  BY uun
HAVING Avg(grade) >= 75;  
