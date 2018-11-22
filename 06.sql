SELECT student uun,
       Sum(CASE
             WHEN grade >= 80 THEN 1
             ELSE 0
           END) a,
       Sum(CASE
             WHEN grade < 80 AND grade >= 60 THEN 1
             ELSE 0
           END) b,
       Sum(CASE
             WHEN grade < 60 AND grade >= 40 THEN 1
             ELSE 0
           END) c,
       Sum(CASE
             WHEN grade < 40 THEN 1
             ELSE 0
           END) d
FROM   exams
GROUP  BY student
ORDER  BY student;  
