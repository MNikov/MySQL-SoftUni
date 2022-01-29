SELECT 
    c.country_code, COUNT(m.mountain_range) AS mountain_range
FROM
    countries AS c
        JOIN
    mountains_countries AS mc USING (country_code)
        JOIN
    mountains AS m ON mc.mountain_id = m.id
GROUP BY c.country_code
HAVING c.country_code IN ('BG' , 'US', 'RU')
ORDER BY mountain_range DESC