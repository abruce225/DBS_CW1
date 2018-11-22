SELECT student, maxi date
FROM   (SELECT student,
               maxi,
               date
        FROM   ((SELECT student studentMax, Max(date) maxi
                FROM   exams
                GROUP  BY student) myMax
                JOIN exams
                  ON studentmax = student)
        WHERE  maxi = date
        ORDER  BY student) bb
GROUP  BY student, maxi
HAVING Count(student) > 1;  
