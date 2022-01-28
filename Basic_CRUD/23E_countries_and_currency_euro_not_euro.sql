SELECT 
    country_name,
    country_code,
    CASE
        WHEN currency_code != 'EUR' THEN 'Not Euro'
        ELSE 'Euro'
    END AS 'currency_code'
FROM
    countries
ORDER BY country_name;

-- ----------

SELECT 
    country_name,
    country_code,
    IF(currency_code = 'EUR',
        'Euro',
        'Not Euro') AS currency_code
FROM
    countries
ORDER BY country_name;