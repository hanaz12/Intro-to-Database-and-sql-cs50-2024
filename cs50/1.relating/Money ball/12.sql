SELECT * FROM (SELECT PL.first_name , PL.last_name
FROM players PL
JOIN performances P ON PL.id=P.player_id
JOIN salaries S ON PL.id=S.player_id
WHERE S.year=P.year AND S.year=2001 AND P.RBI > 0
ORDER BY (S.salary/P.RBI) , pL.first_name, PL.last_name LIMIT 10)
INTERSECT
SELECT * FROM (SELECT PL.first_name , PL.last_name
FROM players PL
JOIN performances P ON PL.id=P.player_id
JOIN salaries S ON PL.id=S.player_id
WHERE S.year=P.year AND S.year=2001 AND P.H > 0
ORDER BY (S.salary/P.H) , pL.first_name, PL.last_name LIMIT 10)
ORDER BY last_name
;
