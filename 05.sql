SELECT code, Sum(sum)
FROM   ((SELECT code, 0 sum
         FROM   degrees)
        UNION
        (SELECT degree, Sum(credits)
         FROM   courses
                JOIN programmes
                  ON course = code
         GROUP  BY degree))ck
GROUP  BY code;  
