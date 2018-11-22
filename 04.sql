SELECT uun
FROM   (SELECT *
        FROM   ((SELECT uun,
                       Count(grade) fails
                FROM   students
                       JOIN exams
                         ON students.uun = exams.student
                WHERE  grade < 40
                GROUP  BY uun) tFail
                natural JOIN (SELECT uun,
                                     Count(grade) passes
                              FROM   students
                                     JOIN exams
                                       ON students.uun = exams.student
                              WHERE  grade >= 40
                              GROUP  BY uun) tPass)) t3
WHERE  ( Cast(fails AS FLOAT) / Cast(fails + passes AS FLOAT) ) > 0.3;  