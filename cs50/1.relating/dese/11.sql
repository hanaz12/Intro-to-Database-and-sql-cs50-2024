SELECT S.name ,E.per_pupil_expenditure,G.graduated
FROM schools S
JOIN expenditures E ON S.district_id=E.district_id
JOIN graduation_rates G ON S.id=G.school_id
ORDER BY E.per_pupil_expenditure DESC, S.name ASC;
