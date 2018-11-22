 SELECT count(DISTINCT uun) FROM students WHERE degree IN
       (SELECT code degree
       FROM   degrees
       WHERE  type = 'PG');
