SELECT T.name , SUM(P.H) AS "total hits" FROM teams T
JOIN performances P ON T.id=P.team_id
WHERE P.year=2001
GROUP BY p.team_id
ORDER BY "total hits" DESC LIMIT 5;
