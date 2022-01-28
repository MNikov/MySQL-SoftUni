SELECT 
    *
FROM
    towns
WHERE
    `name` REGEXP '^s*[MKBEmkbe]'
ORDER BY `name`