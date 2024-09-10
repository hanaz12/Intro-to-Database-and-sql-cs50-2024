SELECT PL.first_name , PL.last_name,  S.salary ,P.HR , S.year 
FROM players PL
JOIN performances P ON P.player_id=PL.id
JOIN salaries S ON PL.id=S.player_id
WHERE S.year=P.year
ORDER BY PL.id,S.year DESC,HR DESC , S.salary DESC;
