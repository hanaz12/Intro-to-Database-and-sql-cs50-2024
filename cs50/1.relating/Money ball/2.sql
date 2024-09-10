SELECT S.year, S.salary
FROM salaries S
JOIN players P
ON S.player_id=P.id
AND p.first_name='Cal' AND p.last_name LIKE '%Ripken%'
ORDER BY S.year DESC;
