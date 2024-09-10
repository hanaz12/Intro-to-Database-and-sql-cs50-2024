SELECT "city",COUNT("type") AS "Number of Schools" FROM schools
WHERE type = "Public School"
GROUP BY "city"
HAVING COUNT("type") <= 3
ORDER BY "Number of Schools" DESC,"city";
