SELECT city, COUNT(*) AS public_school_cnt
FROM schools
WHERE type = 'Public School'
GROUP BY city
ORDER BY public_school_cnt DESC, city ASC
LIMIT 10;
