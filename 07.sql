SELECT course
FROM   (SELECT course, Count(type)
        FROM   (SELECT DISTINCT course,
                                type
                FROM   (programmes
                        JOIN degrees
                          ON degree = code)) aggTab
        GROUP  BY course) finTab
WHERE  count = 2;  
