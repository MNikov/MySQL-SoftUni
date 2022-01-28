SELECT 
    *
FROM
    towns
WHERE
    `name` REGEXP '^s*[^RBDrbd]'
ORDER BY `name`