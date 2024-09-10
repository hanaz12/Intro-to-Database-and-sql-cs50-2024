SELECT DISTINCT(T.name) FROM teams T
JOIN performances P ON T.id=P.team_id
JOIN players PL ON P.player_id=PL.id
WHERE PL.first_name='Satchel' AND PL.last_name='Paige';
