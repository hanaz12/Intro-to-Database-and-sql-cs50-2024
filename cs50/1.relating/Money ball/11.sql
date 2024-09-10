SELECT PL.first_name , PL.last_name , (S.salary/P.H) AS
"dollars per hit"
FROM players PL
JOIN performances P ON p.player_id = PL.id
JOIN salaries S ON PL.id=S.player_id
WHERE P.H > 0 AND S.year=2001 AND S.year=P.year
ORDER BY "dollars per hit",PL.first_name,Pl.last_name LIMIT 10;

