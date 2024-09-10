SELECT S.name FROM schools S
 LEFT JOIN districts d
ON S.district_id=  d.id
WHERE d.name='Cambridge';
