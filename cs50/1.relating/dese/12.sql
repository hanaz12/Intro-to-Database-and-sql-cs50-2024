SELECT D.name , E.per_pupil_expenditure, st.exemplary FROM
districts D
JOIN expenditures  E  ON D.id= E.district_id
JOIN staff_evaluations st ON d.id=st.district_id
WHERE E.per_pupil_expenditure > (SELECT AVG(per_pupil_expenditure) FROM expenditures)
AND st.exemplary > (SELECT AVG(exemplary) FROM staff_evaluations)
AND d.type LIKE '%Public%'
AND d.state= 'MA'
ORDER BY exemplary DESC, per_pupil_expenditure DESC;
