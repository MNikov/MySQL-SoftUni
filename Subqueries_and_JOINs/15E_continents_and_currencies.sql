SELECT 
    c1.continent_code,
    c1.currency_code,
    COUNT(*) AS currency_usage
FROM
    countries AS c1
GROUP BY c1.continent_code , c1.currency_code
HAVING currency_usage > 1
    AND currency_usage = (SELECT 
        COUNT(*) AS highest_usage_count
    FROM
        countries AS c2
    WHERE
        c1.continent_code = c2.continent_code
    GROUP BY c2.currency_code
    ORDER BY highest_usage_count DESC
    LIMIT 1)
ORDER BY c1.continent_code , c1.currency_code