SELECT DISTINCT uun
FROM   students
WHERE  uun NOT IN (SELECT DISTINCT student
                   FROM   exams);  
