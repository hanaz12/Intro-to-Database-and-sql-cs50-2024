SELECT PL.first_name , PL.last_name, S.salary
FROM players PL
JOIN salaries S ON PL.id=S.player_id
WHERE S.year=2001
ORDER BY S.salary , PL.first_name,PL.last_name,PL.id
LIMIT 50;
