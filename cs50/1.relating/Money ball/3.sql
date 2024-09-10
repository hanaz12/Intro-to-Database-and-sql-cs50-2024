SELECT P.year,P.HR
FROM performances P
JOIN players PL ON p.player_id = PL.id
WHERE PL.first_name='Ken' AND PL.last_name= 'Griffey'
AND PL.birth_year=1969
ORDER BY P.year DESC;
