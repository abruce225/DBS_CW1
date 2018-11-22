SELECT uun,
       name
FROM   students
WHERE  uun IN (SELECT uun
               FROM   students
               EXCEPT
               (SELECT uun
                FROM   (SELECT uun,
                               course
                        FROM   (SELECT uun,
                                       course
                                FROM   students
                                       JOIN programmes
                                         ON students.degree = programmes.degree
                                ORDER  BY uun)ab
                        EXCEPT
                        (SELECT student uun,
                                course
                         FROM   exams))hulk));
