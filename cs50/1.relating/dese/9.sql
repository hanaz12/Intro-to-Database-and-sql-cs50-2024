SELECT D.name
FROM districts D
JOIN expenditures E
ON D.id=E.district_id
AND E.pupils=(SELECT MIN(pupils) FROM expenditures);
