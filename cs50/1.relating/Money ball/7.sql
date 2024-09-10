SELECT PL.first_name, PL.last_name
FROM players PL
JOIN salaries S ON PL.id=S.player_id
WHERE S.salary=(SELECT MAx(salary) FROM salaries);
