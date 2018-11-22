SELECT course
FROM   (SELECT course
        FROM   (degrees
                JOIN programmes
                  ON degrees.code = degree)
        WHERE  type = 'PG') pgcourses
GROUP  BY course
HAVING Count(course) = 1;  
