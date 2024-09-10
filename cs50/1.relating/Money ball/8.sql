SELECT S.salary FROM salaries S
JOIN performances P ON S.player_id= p.player_id
WHERE P.HR=(SELECT MAX(HR) FROM performances WHERE P.year=2001) AND S.year=2001;

