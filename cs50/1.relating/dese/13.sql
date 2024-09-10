SELECT S.name , D.name
FROM schools S
JOIN districts D ON
S.district_id=d.id;
