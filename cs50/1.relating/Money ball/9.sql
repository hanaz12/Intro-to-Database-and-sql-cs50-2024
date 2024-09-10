SELECT T.name, ROUND(AVG(S.salary),2) AS "average salary"
FROM teams T
JOIN salaries S  ON T.id=S.team_id
WHERE S.year=2001
GROUP BY S.team_id
ORDER BY "average salary" LIMIT 5;
